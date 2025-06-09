-- 1. 기초 참조 테이블
CREATE TABLE skill_category_list (
    skill_category_id   INT UNSIGNED      NOT NULL AUTO_INCREMENT,
    skill_category_name VARCHAR(100)      NOT NULL UNIQUE,
    PRIMARY KEY (skill_category_id)
); 

CREATE TABLE option_category_list (
    option_category_id          INT UNSIGNED      NOT NULL AUTO_INCREMENT,
    option_category_name        VARCHAR(100)      NOT NULL UNIQUE,
    option_category_description VARCHAR(255),
    PRIMARY KEY (option_category_id)
);

CREATE TABLE trait_list (
    trait_id   INT UNSIGNED   NOT NULL AUTO_INCREMENT,
    trait_name VARCHAR(100)   NOT NULL UNIQUE,
    description VARCHAR(255),
    PRIMARY KEY (trait_id)
);

CREATE TABLE certificate_list (
    cert_id     INT UNSIGNED   NOT NULL AUTO_INCREMENT,
    cert_name   VARCHAR(255)   NOT NULL,
    cert_issuer VARCHAR(255)   NOT NULL,
    PRIMARY KEY (cert_id),
    UNIQUE KEY ux_cert_name_issuer (cert_name, cert_issuer)
); 

CREATE TABLE job_list (
    job_role_id INT UNSIGNED   NOT NULL AUTO_INCREMENT,
    role_name   VARCHAR(255)   NOT NULL UNIQUE,
    PRIMARY KEY (job_role_id)
); 

CREATE TABLE company_type_list (
    company_type_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    type_name       VARCHAR(50)   NOT NULL UNIQUE,
    description     VARCHAR(255),
    PRIMARY KEY (company_type_id)
); 

-- 2. 스킬 테이블
CREATE TABLE skill_list (
    skill_id    INT UNSIGNED      NOT NULL AUTO_INCREMENT,
    category_id INT UNSIGNED      NOT NULL,
    skill_name  VARCHAR(100)      NOT NULL,
    PRIMARY KEY (skill_id),                         -- 단일 PK로 변경
    UNIQUE KEY ux_skill_category_name (category_id, skill_name),  -- 카테고리별 스킬명 중복 방지
    INDEX idx_skill_category (category_id),         -- 조회 성능용 인덱스
    FOREIGN KEY (category_id)
        REFERENCES skill_category_list(skill_category_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT                            -- 카테고리 삭제 시 스킬 보존
); 


-- 3. 회원 관리
CREATE TABLE member_list (
    member_id     CHAR(36)    NOT NULL DEFAULT (UUID()),
    role          ENUM('admin','user','company') NOT NULL DEFAULT 'user',
    registered_at DATETIME    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (member_id),
    INDEX idx_member_role (role)  -- 역할별 조회를 위해 인덱스 추가
); 

CREATE TABLE admin_list (
    admin_id      CHAR(36)    NOT NULL,
    created_at    DATETIME    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    last_login_at DATETIME    NULL,
    PRIMARY KEY (admin_id),

    FOREIGN KEY (admin_id)
        REFERENCES member_list(member_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
); 

CREATE TABLE user_list (
    user_id      CHAR(36)     NOT NULL DEFAULT (UUID()),
    name         VARCHAR(100) NOT NULL,
    birth        DATE         NOT NULL,
    gender       ENUM('male','female','other') NOT NULL,   -- 허용 가능한 값 강제
    password     VARCHAR(255) NOT NULL,
    phone_number VARCHAR(30)  NOT NULL UNIQUE,             -- 중복 방지
    email        VARCHAR(255) NOT NULL UNIQUE,             -- 중복 방지
    address      VARCHAR(255) NOT NULL,
    PRIMARY KEY (user_id),
    FOREIGN KEY (user_id)
        REFERENCES member_list(member_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE                                -- 회원 삭제 시 연쇄 제거
); 


-- 4. 회사 및 지점
CREATE TABLE company_list (
    company_id      CHAR(36)     NOT NULL DEFAULT (UUID()),
    company_type_id INT UNSIGNED NOT NULL,
    company_name    VARCHAR(100) NOT NULL,
    homepage_url    VARCHAR(200),
    type_code       VARCHAR(20)  NOT NULL,
    founded_year    YEAR         NOT NULL,
    contact_tel     VARCHAR(30)  NOT NULL,
    contact_email   VARCHAR(100) NOT NULL UNIQUE,    -- 이메일 중복 방지
    PRIMARY KEY (company_id),
    FOREIGN KEY (company_type_id)
        REFERENCES company_type_list(company_type_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
); 

CREATE TABLE company_branch_list (
    branch_id       CHAR(36)    NOT NULL DEFAULT (UUID()),
    company_id      CHAR(36)    NOT NULL,
    branch_name     VARCHAR(100) NOT NULL,
    address         VARCHAR(255) NOT NULL,
    city            VARCHAR(50)  NOT NULL,
    contact_number  VARCHAR(30)  NOT NULL,
    is_main_branch  BOOLEAN      NOT NULL DEFAULT FALSE,
    is_active       BOOLEAN      NOT NULL DEFAULT TRUE,
    created_at      DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at      DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP 
                                      ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (branch_id),
    -- 회사 내 지점명이 중복 등록되지 않도록 방지
    UNIQUE KEY ux_company_branch_name (company_id, branch_name),
    
    -- company_id로 자주 조회할 경우를 대비한 인덱스
    INDEX idx_company (company_id),
    
    FOREIGN KEY (company_id)
        REFERENCES company_list(company_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE    -- 회사 삭제 시 지점도 함께 삭제
); 

CREATE TABLE company_branch_department (
    department_id        CHAR(36)     NOT NULL DEFAULT (UUID()),
    branch_id            CHAR(36)     NOT NULL,
    department_name      VARCHAR(100) NOT NULL,
    business_description TEXT         NOT NULL,
    PRIMARY KEY (department_id),
    UNIQUE (branch_id, department_name),

    FOREIGN KEY (branch_id)
        REFERENCES company_branch_list(branch_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
); 

CREATE TABLE company_user_list (
    company_user_id    CHAR(36)     NOT NULL DEFAULT (UUID()),
    branch_id          CHAR(36)     NOT NULL,
    company_id         CHAR(36)     NOT NULL,
    is_certified       BOOLEAN      NOT NULL DEFAULT FALSE,
    certified_at       DATETIME     NULL,
    company_user_email VARCHAR(255) NOT NULL UNIQUE,
    name               VARCHAR(100) NOT NULL,
    password           VARCHAR(255) NOT NULL,
    address            VARCHAR(255) NOT NULL,
    birth              DATE         NOT NULL,
    phone_number       VARCHAR(30)  NOT NULL UNIQUE,
    PRIMARY KEY (company_user_id),
    UNIQUE (branch_id, company_user_id),

    FOREIGN KEY (company_user_id)
        REFERENCES member_list(member_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    FOREIGN KEY (branch_id)
        REFERENCES company_branch_list(branch_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    FOREIGN KEY (company_id)
        REFERENCES company_list(company_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
); 

-- 5. 팀 관리
CREATE TABLE user_team (
    team_id   CHAR(36)     NOT NULL DEFAULT (UUID()),
    team_name VARCHAR(100) NOT NULL UNIQUE,  -- 팀명 중복 방지
    PRIMARY KEY (team_id)
); 

CREATE TABLE user_team_detail (
    team_id          CHAR(36)     NOT NULL,
    member_id        CHAR(36)     NOT NULL,
    team_description VARCHAR(255) NULL,
    is_leader        BOOLEAN      NOT NULL DEFAULT FALSE,   -- 리더 여부 기본값 지정
    PRIMARY KEY (team_id, member_id),
    FOREIGN KEY (team_id)
        REFERENCES user_team(team_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,                                -- 팀 삭제 시 상세도 함께 삭제
    FOREIGN KEY (member_id)
        REFERENCES user_list(user_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE                                 -- 사용자 삭제 시 상세도 함께 삭제
); 

-- 6. 추가 사용자 정보
CREATE TABLE user_reference (
    user_id         CHAR(36)     NOT NULL,
    github_url      VARCHAR(255) NOT NULL UNIQUE,   -- 깃허브 URL 중복 방지
    baekjoon_id     VARCHAR(255) NULL UNIQUE,       -- 백준 아이디 중복 방지
    programmers_id  VARCHAR(255) NULL UNIQUE,       -- 프로그래머스 아이디 중복 방지
    expertise_field           VARCHAR(255) NULL,
    PRIMARY KEY (user_id),
    FOREIGN KEY (user_id)
        REFERENCES user_list(user_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE                       -- 사용자 삭제 시 참조도 함께 삭제
); 

CREATE TABLE user_certificate_detail (
    cert_id         INT UNSIGNED NOT NULL,
    user_id         CHAR(36)     NOT NULL,
    cert_issue_date DATE         NOT NULL,
    cert_number     BIGINT       NOT NULL UNIQUE,     -- 증명서 번호는 중복 방지

    PRIMARY KEY (cert_id, user_id),

    FOREIGN KEY (cert_id)
        REFERENCES certificate_list(cert_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,                          -- 자격증 유형 삭제는 막기

    FOREIGN KEY (user_id)
        REFERENCES user_list(user_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE                            -- 사용자 삭제 시 상세도 함께 삭제
); 

CREATE TABLE user_skill (
    member_id        CHAR(36)     NOT NULL,
    skill_id         INT UNSIGNED NOT NULL,
    skill_level            ENUM('1','2','3','4','5') NOT NULL,
    experience_years INT UNSIGNED NOT NULL,
    PRIMARY KEY (member_id, skill_id),
    FOREIGN KEY (member_id)
        REFERENCES user_list(user_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY (skill_id)
        REFERENCES skill_list(skill_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
); 


-- 7. 직무·공고·지원
CREATE TABLE job_posting_list (
    job_posting_id  INT UNSIGNED   NOT NULL AUTO_INCREMENT,
    branch_id       CHAR(36)       NOT NULL,
    job_role_id     INT UNSIGNED   NOT NULL,
    author_id       CHAR(36)       NOT NULL,
    title           VARCHAR(200)   NOT NULL,
    content         TEXT           NOT NULL,
    start_date      DATE           NOT NULL,
    end_date        DATE           NOT NULL,
    contact_info    VARCHAR(100)   NOT NULL,
    status          ENUM('OPEN','CLOSED','DRAFT') NOT NULL DEFAULT 'DRAFT',
    salary          INT UNSIGNED   NOT NULL,
    required_career INT UNSIGNED   NOT NULL,
    PRIMARY KEY (job_posting_id),

    FOREIGN KEY (branch_id)
        REFERENCES company_branch_list(branch_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (author_id)
        REFERENCES company_user_list(company_user_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (job_role_id)
        REFERENCES job_list(job_role_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CHECK (end_date >= start_date)
); 

CREATE TABLE job_application_list (
    job_posting_id     INT UNSIGNED     NOT NULL,
    member_id          CHAR(36)         NOT NULL,
    application_reason VARCHAR(500)     NOT NULL,
    career_plan        VARCHAR(500)     NOT NULL,
    applied_at         DATETIME         NOT NULL DEFAULT CURRENT_TIMESTAMP,
    archived_at        DATETIME         NULL,  
    status             ENUM('APPLIED','ARCHIVED') NOT NULL DEFAULT 'APPLIED',
    PRIMARY KEY (job_posting_id, member_id),

    FOREIGN KEY (job_posting_id)
        REFERENCES job_posting_list(job_posting_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (member_id)
        REFERENCES user_list(user_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
); 

CREATE TABLE option_list (
    option_id           INT UNSIGNED   NOT NULL AUTO_INCREMENT,
    option_category_id  INT UNSIGNED   NOT NULL,
    option_name         VARCHAR(100)   NOT NULL,
    option_description  VARCHAR(255),
    PRIMARY KEY (option_id),
    UNIQUE (option_category_id, option_name),   -- 카테고리별 옵션명 중복 방지
    FOREIGN KEY (option_category_id)
        REFERENCES option_category_list(option_category_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT                       -- 카테고리 삭제 시 옵션 남김
); 

CREATE TABLE job_posting_detail_option (
    job_posting_detail_id INT UNSIGNED   NOT NULL AUTO_INCREMENT,
    job_posting_id        INT UNSIGNED   NOT NULL,
    option_id             INT UNSIGNED   NOT NULL,
    skill_category_id     INT UNSIGNED   NOT NULL,
    PRIMARY KEY (job_posting_detail_id),
    UNIQUE (job_posting_id, option_id, skill_category_id),
    FOREIGN KEY (job_posting_id)
        REFERENCES job_posting_list(job_posting_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY (option_id)
        REFERENCES option_list(option_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    FOREIGN KEY (skill_category_id)
        REFERENCES skill_category_list(skill_category_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
); 

-- 8. 선호·옵션 설정
CREATE TABLE user_preference (
    user_preference_id CHAR(36)     NOT NULL DEFAULT (UUID()),
    user_id            CHAR(36)     NOT NULL,
    company_type_id    INT UNSIGNED NOT NULL,
    min_salary         INT UNSIGNED,
    max_salary         INT UNSIGNED,
    PRIMARY KEY (user_preference_id),
    UNIQUE (user_id, company_type_id),

    FOREIGN KEY (user_id)
        REFERENCES user_list(user_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    FOREIGN KEY (company_type_id)
        REFERENCES company_type_list(company_type_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
); 

CREATE TABLE user_preference_option (
    option_detail_id    CHAR(36)     NOT NULL DEFAULT (UUID()),
    option_id           INT UNSIGNED NOT NULL,
    user_preference_id  CHAR(36)     NOT NULL,
    option_category_id  INT UNSIGNED NOT NULL,
    PRIMARY KEY (option_detail_id),

    -- 동일 선호에 같은 옵션·카테고리 조합 중복 방지
    UNIQUE (user_preference_id, option_category_id, option_id),

    FOREIGN KEY (option_id)
        REFERENCES option_list(option_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (user_preference_id)
        REFERENCES user_preference(user_preference_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    FOREIGN KEY (option_category_id)
        REFERENCES option_category_list(option_category_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
); 

CREATE TABLE user_preferred_culture (
    user_culture_id    CHAR(36)     NOT NULL DEFAULT (UUID()),
    user_preference_id CHAR(36)     NOT NULL,
    trait_id           INT UNSIGNED NOT NULL,
    PRIMARY KEY (user_culture_id),
    UNIQUE (user_preference_id, trait_id),
    FOREIGN KEY (user_preference_id)
        REFERENCES user_preference(user_preference_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY (trait_id)
        REFERENCES trait_list(trait_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
); 

CREATE TABLE user_prefered_job (
    job_role_id        INT UNSIGNED   NOT NULL,
    company_type_id    INT UNSIGNED   NOT NULL,
    user_id            CHAR(36)       NOT NULL,
    user_preference_id CHAR(36)       NOT NULL,
    PRIMARY KEY (job_role_id, company_type_id, user_id, user_preference_id),

    FOREIGN KEY (job_role_id)
        REFERENCES job_list(job_role_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (company_type_id)
        REFERENCES company_type_list(company_type_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (user_id)
        REFERENCES user_list(user_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    FOREIGN KEY (user_preference_id)
        REFERENCES user_preference(user_preference_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
); 

-- 9. 기타 설정 테이블
CREATE TABLE branch_preferences (
    branch_id   CHAR(36)     NOT NULL,
    trait_id    INT UNSIGNED NOT NULL,
    description VARCHAR(255) NOT NULL,
    PRIMARY KEY (branch_id, trait_id),              -- company_id 제거 후 PK 단순화
    FOREIGN KEY (branch_id)
        REFERENCES company_branch_list(branch_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,                         -- 지점 삭제 시 선호도 자동 삭제
    FOREIGN KEY (trait_id)
        REFERENCES trait_list(trait_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT                         -- 트레이트 삭제는 막기
); 

CREATE TABLE department_preferences (
    preference_id CHAR(36)     NOT NULL DEFAULT (UUID()),
    department_id CHAR(36)     NOT NULL,
    trait_id      INT UNSIGNED NOT NULL,
    description   VARCHAR(255) NOT NULL,

    PRIMARY KEY (preference_id),
    UNIQUE (department_id, trait_id),

    FOREIGN KEY (department_id)
        REFERENCES company_branch_department(department_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    FOREIGN KEY (trait_id)
        REFERENCES trait_list(trait_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
); 

-- 10. 도전 과제(Challenges)
CREATE TABLE company_challenges_category (
    company_category_id   INT UNSIGNED   NOT NULL AUTO_INCREMENT,  -- 컬럼명에 _id를 붙여 PK 명명 일관성 확보
    category_name         VARCHAR(100)   NOT NULL UNIQUE,         -- 중복 카테고리명 방지
    category_description  TEXT           NOT NULL,
    PRIMARY KEY (company_category_id)
); 

CREATE TABLE company_challenges_list (
    challenge_id            INT UNSIGNED    NOT NULL AUTO_INCREMENT,
    company_id              CHAR(36)        NULL,
    challenge_category_id   INT UNSIGNED    NOT NULL,  
    member_id               CHAR(36)        NOT NULL,
    challenge_name          VARCHAR(100)    NOT NULL,
    is_team                 BOOLEAN         NOT NULL DEFAULT FALSE,
    PRIMARY KEY (challenge_id),
    UNIQUE (company_id, challenge_name),

    FOREIGN KEY (company_id)
        REFERENCES company_list(company_id)
        ON UPDATE CASCADE
        ON DELETE SET NULL,

    FOREIGN KEY (challenge_category_id)
        REFERENCES company_challenges_category(company_category_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (member_id)
        REFERENCES company_user_list(company_user_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
); 

CREATE TABLE company_challenges_submit (
    submit_id     CHAR(36)     NOT NULL DEFAULT (UUID()),
    challenge_id  INT UNSIGNED NULL,
    team_id       CHAR(36)     NULL,
    member_id     CHAR(36)     NULL,
    submit_time   DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (submit_id),

    FOREIGN KEY (challenge_id)
        REFERENCES company_challenges_list(challenge_id)
        ON UPDATE CASCADE
        ON DELETE SET NULL,

    FOREIGN KEY (team_id)
        REFERENCES user_team(team_id)
        ON UPDATE CASCADE
        ON DELETE SET NULL,

    FOREIGN KEY (member_id)
        REFERENCES user_list(user_id)
        ON UPDATE CASCADE
        ON DELETE SET NULL

); 



-- 11. 친구·차단·경력·금지 목록
CREATE TABLE user_friends_list (
    friend_id       CHAR(36)      NOT NULL DEFAULT (UUID()),      -- 고유 식별자
    member_id       CHAR(36)      NOT NULL,                       -- 요청한 사용자
    requested_id    CHAR(36)      NOT NULL,                       -- 요청받은 사용자
    status          ENUM('FOLLOW','UNFOLLOW') NOT NULL DEFAULT 'FOLLOW',  
    requested_time  DATETIME      NOT NULL DEFAULT CURRENT_TIMESTAMP,
    accepted_time   DATETIME      NULL,                            -- 수락 전에는 NULL
    PRIMARY KEY (friend_id),
    UNIQUE (member_id, requested_id),     -- 중복 요청 방지

    FOREIGN KEY (member_id)
        REFERENCES user_list(user_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,                -- 사용자 삭제 시 관계 제거

    FOREIGN KEY (requested_id)
        REFERENCES user_list(user_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE                 -- 요청받은 사용자 삭제 시 관계 제거
); 

-- 별도 쿼리 편집 창에서 적용
DELIMITER $$

CREATE TRIGGER trg_user_friends_ins
BEFORE INSERT ON user_friends_list
FOR EACH ROW
BEGIN
  IF NEW.member_id = NEW.requested_id THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'member_id and requested_id must differ';
  END IF;
END$$

CREATE TRIGGER trg_user_friends_upd
BEFORE UPDATE ON user_friends_list
FOR EACH ROW
BEGIN
  IF NEW.member_id = NEW.requested_id THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'member_id and requested_id must differ';
  END IF;
END$$

DELIMITER ;

CREATE TABLE user_banned_list (
    userbanned_id   CHAR(36)      NOT NULL DEFAULT (UUID()),  -- 고유 식별자
    member_id       CHAR(36)      NOT NULL,                  -- 차단된 사용자
    userbanned_time DATETIME      NOT NULL DEFAULT CURRENT_TIMESTAMP,  -- 차단 시각 자동 기록
    userbanned_memo VARCHAR(255)  NULL,                      -- 차단 사유

    PRIMARY KEY (userbanned_id),
    UNIQUE (member_id),                                      -- 중복 차단 방지

    FOREIGN KEY (member_id)
        REFERENCES user_list(user_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE                                  -- 사용자가 삭제되면 차단 기록도 삭제
); 

CREATE TABLE user_career (
    career_id         CHAR(36)    NOT NULL DEFAULT (UUID()),
    user_id           CHAR(36)    NOT NULL,
    start_date        DATE        NOT NULL,            -- 경력 시작일은 필수
    end_date          DATE        NULL,                -- 아직 재직 중이면 NULL 허용
    company_name      VARCHAR(255) NOT NULL,           -- 회사명은 필수
    position          VARCHAR(100) NOT NULL,           -- 직위는 필수
    department        VARCHAR(100) NULL,               -- 부서는 옵션
    career_description TEXT       NULL,                -- 상세 설명은 옵션
    PRIMARY KEY (career_id),                          -- 단일 PK로 간소화
    FOREIGN KEY (user_id)
        REFERENCES user_list(user_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,                           -- 사용자 삭제 시 경력도 함께 삭제
    CHECK (end_date IS NULL OR end_date >= start_date)  -- 날짜 논리 검증
); 

CREATE TABLE banned_list (
    ban_id       CHAR(36)     NOT NULL DEFAULT (UUID()),  
    admin_id     CHAR(36)     NOT NULL,
    member_id    CHAR(36)     NOT NULL,
    ban_time     DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ban_memo     VARCHAR(255) NULL,

    PRIMARY KEY (ban_id),
    UNIQUE (admin_id, member_id),                  -- 중복 차단 방지

    FOREIGN KEY (admin_id)
        REFERENCES admin_list(admin_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,                        -- 참조 무결성 유지

    FOREIGN KEY (member_id)
        REFERENCES member_list(member_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT                         -- 참조 무결성 유지
);

-- 별도 쿼리 편집 창에서 적용
DELIMITER $$

-- 동일한 admin_id와 member_id일 경우 차단 불가(자기 차단 방지)
CREATE TRIGGER trg_banned_list_ins
BEFORE INSERT ON banned_list
FOR EACH ROW
BEGIN
  IF NEW.admin_id = NEW.member_id THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'admin_id and member_id must differ';
  END IF;
END$$

CREATE TRIGGER trg_banned_list_upd
BEFORE UPDATE ON banned_list
FOR EACH ROW
BEGIN
  IF NEW.admin_id = NEW.member_id THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'admin_id and member_id must differ';
  END IF;
END$$

DELIMITER ;
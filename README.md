# be16-1st-Nullbase-IntelliB

## 🚀 행동 기반 커리어 매칭 DB 프로젝트 - Intelli-B

<p align="center">
  <strong><font size="20">IntelliJ + Bridge</font></strong>
</p>

🔷 Intellib – Intelligent Bridge for Talent & Opportunity
Intellib는 “Intelligent”와 “Bridge”의 합성어로,
단순한 채용 플랫폼을 넘어 인재와 기업을 가장 똑똑하게 연결하는 지능형 다리 역할을 합니다.

IntelliJ처럼 직관적이고 강력한 사용 경험을 제공하며,
AI를 통해 개인의 역량을 분석하고, 기업의 니즈에 정밀하게 매칭되도록 지원합니다.


사용자의 **실질적인 협업 행동 데이터**를 기반으로, 개인과 기업 간의 정교한 커리어 매칭을 가능하게 하는 **DB 중심의 프로젝트**입니다.  
기존 자가 응답형 성향 테스트의 한계를 극복하고, 실제 과제 수행을 통한 행동 기반 데이터를 수집·분석하여, 보다 **신뢰도 높은 직무-조직문화 매칭**을 추구합니다.



---


## 📚 목차  
- [📁 1. 프로젝트 기획](#-1-프로젝트-기획)  
  - [1-1. 개요](#1-1-개요)  
  - [1-2. 배경-및-필요성](#1-2-배경-및-필요성)  
  - [1-3. 주요-기능](#1-3-주요-기능)  
- [📋 2. WBS](#-2-wbs)  
- [🧾 3. 요구사항 명세서](#-3-요구사항-명세서)  
- [🔎 4. DB 모델링](#-4-db-모델링)   
- [5. SQL](#5-sql)  
  - [5-1. DDL (데이터 정의어)](#5-1-ddl-데이터-정의어)  
  - [5-2. DML (데이터 조작어)](#5-2-dml-데이터-조작어)  
- [✍🏻 6. 테스트 케이스](#-6-테스트-케이스)  
  - [6-1. 테스트 케이스 정의서](#6-1-테스트-케이스-정의서)  
  - [6-2. 주요 쿼리문](#6-2-주요-쿼리문)  
- [🎮 7. 기술 스택](#-7-기술-스택)  
- [🧑‍💻 8. 팀원 소개](#-8팀원-소개)  


---



## 📁 1. 프로젝트 기획

### 1-1. 개요

‘intelliB’는 실제 협업 행동 데이터를 기반으로 한 커리어 매칭 DB 프로젝트입니다.  
단순히 스펙이나 자가진단 테스트에 의존하지 않고, **사용자의 실제 행동**을 통해 자기이해 및 채용 적합성을 판단할 수 있도록 설계되었습니다.



### 1-2. 배경 및 필요성

#### 🔹 내부적 동기

> “졸업하고 나서 뭐 할 거야?”

이 질문은 막연함과 두려움에서 출발했습니다.  
형식적인 이력서, 반복되는 자가진단 테스트, 어울리는 팀인지조차 모른 채 진행되는 협업…

우리는 ‘신뢰할 수 있는 팀원 매칭’에서 출발했지만, 그 이전 단계인 **자기이해**의 중요성을 깨달았습니다.

> “내가 생각한 나와 실제로 행동한 나는 달랐다”  
> “내가 중요하게 여기는 가치를 처음 알게 됐다”

이러한 피드백은 단순한 역량 확인이 아닌, **자기이해의 출발점**으로서 행동 기반 평가의 필요성을 입증하였습니다.


#### 🔹 외부적 배경

- 경험 중심의 커리어 준비 구조는 ‘왜 필요한가’라는 질문을 하지 않습니다.  
- 그 결과, **이해 없는 경험의 반복**, **조직문화 미스매칭**, **조기 퇴사** 등이 발생합니다.

> 📌 국내 신입사원 중 약 60%가 1~3년 이내 퇴사  
> 📌 그로 인한 채용/교육 손실 비용은 1인당 약 2천만 원  
> 📌 HR Tech 시장은 컬처핏 기반 선발 중심으로 빠르게 전환 중  
> 📌 그러나 여전히 MBTI, DISC 등 자가 응답형 테스트에 의존 중

‘intelliB’는 이러한 문제를 해결하고자 합니다.  
행동 기반 실무 데이터를 중심으로 **정확한 자기이해와 커리어 매칭**을 가능하게 하는 시스템을 지향합니다.




### 1-3. 주요 기능

| 기능 | 설명 |
|------|------|
| 🔎 사용자 매칭 | 직무/경력/연봉/복지 등 희망 조건 기반 기업 추천 |
| 📝 기업 과제 수행 | 실제 기업 과제를 수행하며 행동 데이터 수집 |
| 📊 행동 데이터 분석 | 협업 방식, 태도, 몰입도 등 정량·정성 평가 |
| 🤝 기업용 인재 추천 | 기업이 설정한 조건에 맞는 인재 자동 매칭 |

> 프로젝트명은 단순 경험 축적이 아닌, **이해 기반 성장**을 가능하게 하는 행동 중심 커리어 플랫폼입니다.



---

## 📋 2. WBS

> ✅ WBS
![image](https://github.com/user-attachments/assets/5c37f5ef-f581-4563-8e6a-21801e7a11b6)
[스프레드시트 링크](https://docs.google.com/spreadsheets/d/1My5BWvqLY4lW46_LrQkGH1FloUsK28uX1NTKQ4Nn3cI/edit?usp=sharing)


---

## 🧾 3. 요구사항 명세서

> ✅ 요구사항 명세서 
![image](https://github.com/user-attachments/assets/c7031567-e038-455a-99e0-bb6c5b0d7c8f)
[스프레드시트 링크](https://docs.google.com/spreadsheets/d/1AOHNwO3hZ75bkLxjJUvlybHucFR371B5GThIEw2e2tg/edit?usp=sharing)

---

## 🔎 4. DB 모델링
![DB_AI_FIXED (2)](https://github.com/user-attachments/assets/2a365604-e41c-4d87-adbb-b24c9698123e)

### 데이터베이스 아키텍처 및 복제 구성

![image](https://github.com/user-attachments/assets/f32b518f-c344-4669-81d8-d7abfe363bfd)

#### 1. Master-Slave 구조
- **Master 노드**  
  - 모든 쓰기 작업(INSERT, UPDATE, DELETE)을 처리하여 데이터 정합성을 보장합니다.  
  - 변경 내역을 바이너리 로그(binlog)에 기록하여 복제를 준비합니다.  
- **Slave 노드**  
  - Master의 binlog를 실시간으로 수신하여 동일한 데이터를 유지합니다.  
  - 읽기 전용(SELECT) 트래픽을 처리하여 읽기 처리량을 분산합니다.  
- **프록시 계층**  
  - 애플리케이션과 Master/Slave 클러스터 사이에 위치하며, 쿼리 유형에 따라 자동으로 라우팅을 수행합니다.  
  - 쓰기 트래픽은 Master로, 읽기 트래픽은 Slave로 전달함으로써 노드별 역할을 명확히 분리합니다.  

#### 2. 읽기·쓰기 분리(Read/Write Splitting)  
- 애플리케이션에서는 별도의 커넥션 풀을 구성하여 쓰기용과 읽기용 연결을 분리 관리합니다.  
- 프록시 계층이 각 쿼리의 특성을 분석하여 적절한 노드로 전달하며, 애플리케이션 코드에는 변경이 최소화됩니다. 

#### Replica 시연 영상
 - [시연영상](https://drive.google.com/file/d/1lpBg8DbP7Qv6F3YsMLQBx8KGE51GFP5U/view?usp=drive_link)

---

## 5. SQL

### 5-1. DDL (데이터 정의어)

<details>
  <summary>-- 1. 기초 참조 테이블</summary>

해당 테이블들은 다른 테이블에서 공통적으로 사용되는 기본 카테고리나 목록성 데이터를 저장하여 데이터의 일관성을 유지합니다.

- skill_category_list: 스킬의 대분류(예: 프로그래밍 언어, 프레임워크, 툴)를 관리합니다.
- option_category_list: 채용 공고나 사용자 선호도에 사용될 옵션의 카테고리(예: 근무 형태, 복지)를 저장합니다.
- trait_list: 기업 문화나 인재상을 나타내는 특성(예: 수평적 문화, 성과 중심) 목록을 관리합니다.
- certificate_list: 자격증의 이름과 발급 기관 정보를 저장합니다.
- job_list: 다양한 직무(예: 백엔드 개발자, 프론트엔드 개발자) 목록을 관리합니다.
- company_type_list: 회사의 유형(예: 대기업, 스타트업, 중소기업)을 정의합니다.

```sql
    CREATE TABLE skill_category_list (
      skill_category_id   INT UNSIGNED      NOT NULL AUTO_INCREMENT,
      skill_category_name VARCHAR(100)      NOT NULL UNIQUE,
      PRIMARY KEY (skill_category_id)
      );
```

```sql
CREATE TABLE option_category_list (
    option_category_id          INT UNSIGNED      NOT NULL AUTO_INCREMENT,
    option_category_name        VARCHAR(100)      NOT NULL UNIQUE,
    option_category_description VARCHAR(255),
    PRIMARY KEY (option_category_id)
);
```

```sql
CREATE TABLE trait_list (
    trait_id   INT UNSIGNED   NOT NULL AUTO_INCREMENT,
    trait_name VARCHAR(100)   NOT NULL UNIQUE,
    description VARCHAR(255),
    PRIMARY KEY (trait_id)
);
```

```sql
CREATE TABLE certificate_list (
    cert_id     INT UNSIGNED   NOT NULL AUTO_INCREMENT,
    cert_name   VARCHAR(255)   NOT NULL,
    cert_issuer VARCHAR(255)   NOT NULL,
    PRIMARY KEY (cert_id),
    UNIQUE KEY ux_cert_name_issuer (cert_name, cert_issuer)
);
```

```sql
CREATE TABLE job_list (
    job_role_id INT UNSIGNED   NOT NULL AUTO_INCREMENT,
    role_name   VARCHAR(255)   NOT NULL UNIQUE,
    PRIMARY KEY (job_role_id)
);
```

```sql
CREATE TABLE company_type_list (
    company_type_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    type_name       VARCHAR(50)   NOT NULL UNIQUE,
    description     VARCHAR(255),
    PRIMARY KEY (company_type_id)
);
```
</details>

<details>
  <summary> --2. 스킬 테이블</summary>

- skill_list: 개별 스킬 정보를 저장합니다. skill_category_list와 연결되어 어떤 카테고리에 속하는 스킬인지 명시합니다. 
 카테고리가 삭제되면 해당 카테고리의 스킬은 삭제되지 않도록 ON DELETE RESTRICT 제약조건이 설정되어 있습니다.
  
```sql
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
```

</details>

<details>
  <summary>--3. 회원 관리</summary>

  회원 정보를 역할에 따라 구조적으로 관리합니다.

- member_list: 시스템의 모든 회원(관리자, 일반 사용자, 기업)을 통합 관리하는 최상위 테이블입니다.
   role 컬럼을 통해 회원의 역할을 구분합니다.
- admin_list: 관리자 계정의 상세 정보를 저장하며, member_list에 외래 키로 연결됩니다.
- user_list: 일반 사용자(구직자)의 개인 정보(이름, 생년월일, 연락처 등)를 관리합니다. 
- member_list에 연결되며, 회원 탈퇴 시 관련 정보가 함께 삭제되도록 ON DELETE CASCADE가 설정되어 있습니다.

```sql
CREATE TABLE member_list (
    member_id     CHAR(36)    NOT NULL DEFAULT (UUID()),
    role          ENUM('admin','user','company') NOT NULL DEFAULT 'user',
    registered_at DATETIME    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (member_id),
    INDEX idx_member_role (role)  -- 역할별 조회를 위해 인덱스 추가
);
```

```sql
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
```

```sql
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
```
</details>

<details>
  <summary>-- 4. 회사 및 지점</summary>

 회사, 지점, 부서 및 회사 소속 사용자 정보를 관리합니다.
 
- company_list: 기업의 기본 정보(회사명, 홈페이지, 설립 연도 등)를 저장합니다.
- company_branch_list: 각 회사의 지점 정보를 관리합니다. 본사 여부를 is_main_branch로 표시합니다.
- company_branch_department: 특정 지점 내의 부서 정보를 저장합니다.
- company_user_list: 기업 회원(예: 인사 담당자)의 정보를 관리합니다. member_list의 하위 테이블로서 기업 회원의 상세 정보를 담고 있으며, 
 특정 지점(branch_id)과 회사(company_id)에 소속됩니다.
 
```sql
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
```

```sql
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
```

```sql
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
```

```sql
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
```
</details>

<details>
  <summary>-- 5. 팀 관리</summary>

  사용자들이 구성하는 팀 정보를 관리합니다.

- user_team: 사용자들이 생성한 팀의 기본 정보를 저장합니다.
- user_team_detail: 어떤 사용자가 어떤 팀에 속해 있는지, 그리고 팀의 리더인지 여부를 저장하는 연결 테이블입니다.

```sql
CREATE TABLE user_team (
    team_id   CHAR(36)     NOT NULL DEFAULT (UUID()),
    team_name VARCHAR(100) NOT NULL UNIQUE,  -- 팀명 중복 방지
    PRIMARY KEY (team_id)
);
```

```sql
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
```
</details>

<details>
  <summary>--6. 추가 사용자 정보</summary>

사용자의 전문성과 관련된 상세 정보를 관리합니다.

- user_reference: 사용자의 외부 전문 활동 링크(GitHub, 백준 등)와 전문 분야를 저장합니다.
- user_certificate_detail: 사용자가 취득한 자격증의 상세 정보(취득일, 증명서 번호)를 관리하는 연결 테이블입니다.
- user_skill: 사용자가 보유한 스킬과 해당 스킬의 숙련도 및 경력 기간을 저장하는 연결 테이블입니다  
  
```sql
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
```

```sql
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
```

```sql
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
```
</details>

<details>
  <summary> --7. 직무·공고·지원</summary>

  채용 공고 등록부터 지원까지의 과정을 관리합니다.

- job_posting_list: 기업이 등록한 채용 공고의 상세 내용을 저장합니다. 공고 상태(status), 급여(salary), 요구 경력(required_career) 등의 정보를 포함합니다.
- job_application_list: 사용자가 채용 공고에 지원한 내역을 관리합니다. 지원 동기, 경력 계획 등의 정보를 포함합니다.
- option_list: 채용 공고에 추가될 세부 옵션(예: 재택근무, 유연근무제)을 정의합니다. option_category_list에 연결됩니다.
- job_posting_detail_option: 채용 공고와 세부 옵션을 연결해주는 테이블입니다.

```sql
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
```

```sql
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
```

```sql
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
```

```sql
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
```
</details>

<details>
  <summary>-- 8. 선호·옵션 설정</summary>

  사용자의 구직 선호도를 관리하여 맞춤형 추천에 활용합니다.

- user_preference: 사용자가 선호하는 회사의 유형, 희망 연봉 범위 등을 저장합니다.
- user_preference_option: 사용자의 선호도와 세부 옵션(option_list)을 연결합니다.
- user_preferred_culture: 사용자가 선호하는 기업 문화(trait_list)를 저장합니다.
- user_prefered_job: 사용자가 선호하는 직무(job_list)와 회사 유형을 연결합니다.  

```sql
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
```

```sql
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
```

```sql
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
```

```sql
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
```
</details>

<details>
  <summary>-- 9. 기타 설정 테이블</summary>

  기업의 지점 및 부서별 특성을 관리합니다.

- branch_preferences: 회사 지점별 문화적 특성(trait_list)을 저장합니다.
- department_preferences: 지점 내 부서별 문화적 특성(trait_list)을 저장합니다.

```sql
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
```

```sql
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
```
</details>

<details>
  <summary>-- 10. 도전 과제(Challenges)</summary>

  기업이 주최하는 코딩 과제나 챌린지 정보를 관리합니다.

- company_challenges_category: 기업 챌린지의 카테고리를 정의합니다.
- company_challenges_list: 기업이 등록한 챌린지의 목록을 관리합니다.
- company_challenges_submit: 사용자가 챌린지에 제출한 내역을 관리하며, 개인 제출과 팀 제출을 모두 지원합니다

```sql
CREATE TABLE company_challenges_category (
    company_category_id   INT UNSIGNED   NOT NULL AUTO_INCREMENT,  -- 컬럼명에 _id를 붙여 PK 명명 일관성 확보
    category_name         VARCHAR(100)   NOT NULL UNIQUE,         -- 중복 카테고리명 방지
    category_description  TEXT           NOT NULL,
    PRIMARY KEY (company_category_id)
);
```

```sql
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
```

```sql
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
```
</details>

<details>
  <summary>-- 11. 친구·차단·경력·금지 목록</summary>

  사용자 간의 관계, 경력, 그리고 제재 내역을 관리합니다.

- user_friends_list: 사용자 간의 '팔로우' 관계를 관리합니다. 스스로를 팔로우할 수 없도록 트리거가 설정되어 있습니다.
- user_banned_list: 사용자가 특정 사용자를 차단한 목록을 관리합니다.
- user_career: 사용자의 상세 경력 사항을 관리합니다.
- banned_list: 관리자가 특정 회원을 활동 정지시킨 내역을 관리합니다. 관리자 자신을 정지시킬 수 없도록 트리거가 설정되어 있습니다.

```sql
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
```

```sql
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
```

```sql
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
```

```sql
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
```

```sql
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
```

```sql
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
```
</details>

### 5-2. DML (데이터 조작어)

> ✅ *추후 추가 예정*

---

## ✍🏻 6. 테스트 케이스

### 6-1. 테스트 케이스 정의서

> ✅ *추후 추가 예정*

### 6-2. 주요 쿼리문

> ✅ *추후 추가 예정*

---

## 🎮 7. 기술 스택
![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)
![EC2](https://img.shields.io/badge/Amazon%20EC2-FF9900?style=for-the-badge&logo=Amazon%20EC2&logoColor=white)
![MariaDB](https://img.shields.io/badge/MariaDB-003545?style=for-the-badge&logo=MariaDB&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=Linux&logoColor=white)
![Discord](https://img.shields.io/badge/Discord-%235865F2.svg?style=for-the-badge&logo=discord&logoColor=white)

---

## 🧑‍💻 8. 팀원 소개

| 이름      | GitHub                                                      |
|-----------|-------------------------------------------------------------|
| 🧑‍💻 김강산 | [@rm2001kr](https://github.com/rm2001kr)                    |
| 👩‍💻 김하은 | [@KimHaeun123](https://github.com/KimHaeun123)              |
| 🧑‍💻 박혜성 | [@solidify-d](https://github.com/solidify-d)                |
| 🧑‍💻 윤세진 | [@AstroJini](https://github.com/AstroJini?tab=repositories) |

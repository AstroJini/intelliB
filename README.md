[message (9).txt](https://github.com/user-attachments/files/20648243/message.9.txt)# be16-1st-Nullbase-Intelli-B

## 🚀 행동 기반 커리어 매칭 DB 프로젝트 - Intelli-B

<p align="center">
  <strong><font size="20">Intelli + Bridge</font></strong>
</p>

<p align="center">
  <img src="https://github.com/user-attachments/assets/1301345c-a698-4bb4-ab5e-26e922dd51d1" alt="Demo" width="400" />
</p>

🔷 Intelli-B – Intelligent Bridge for Talent & Opportunity

Intelli-B는 “Intelligent”와 “Bridge”의 합성어로,
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

이러한 피드백은 단순한 역량 확인이 아닌, 자기이해의 출발점으로서 행동 기반 평가의 필요성을 입증하였고
‘Intelli-B’는 이러한 문제를 해결하고자 행동 기반 실무 데이터를 중심으로 
정확한 자기이해와 커리어 매칭 두 가지를 지향하는 시스템을 구현하였습니다.


#### 🔹 외부적 배경

커리어 기반의 시스템은 ‘왜 필요한가’ 라는 질문을 요구하지 않아
이해 없는 경험의 반복, 조직문화 미스매칭으로 인한 조기 퇴사 등의 문제가 발생합니다.

> 📌 국내 신입사원 중 약 60%가 1~3년 이내 퇴사  
> 📌 그로 인한 채용/교육 손실 비용은 1인당 약 2천만 원  
> 📌 HR Tech 시장은 컬처핏 기반 선발 중심으로 빠르게 전환 중  
> 📌 그러나 여전히 MBTI, DISC 등 자가 응답형 테스트에 의존 중

‘Intelli-B’는 이러한 문제를 해결하고자 합니다.  
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
<p align="center">
  <img src="https://github.com/user-attachments/assets/f32b518f-c344-4669-81d8-d7abfe363bfd" alt="Demo" width="400" />
</p>

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

> ✅ DML LINK
[Uploading mesINSERT INTO skill_category_list (skill_category_name) VALUES
  ('Frontend Development'),
  ('Backend Development'),
  ('DevOps'),
  ('Data Science'),
  ('Security');
  
INSERT INTO skill_list (category_id, skill_name) VALUES
  (1, 'HTML'),
  (1, 'CSS'),
  (1, 'JavaScript'),
  (2, 'Java'),
  (2, 'Python'),
  (2, 'Node.js'),
  (3, 'Docker'),
  (3, 'Kubernetes'),
  (4, 'SQL'),
  (4, 'R'),
  (4, 'Python'),           -- Data Science용 Python
  (5, 'Penetration Testing'),
  (5, 'OWASP Top 10');
  
INSERT INTO option_category_list (option_category_name, option_category_description) VALUES
  ('Work Location',  '선호하는 근무 장소(예: 원격, 사무실, 하이브리드)'),
  ('Employment Type', '고용 형태(예: 정규직, 계약직, 인턴)'),
  ('Team Size',       '희망 팀 규모(예: 소규모, 중규모, 대규모)'),
  ('Industry',        '관심 산업 분야(예: 금융, 게임, 헬스케어)'),
  ('Seniority Level','경력 수준(예: 주니어, 미드, 시니어)');
  
INSERT INTO option_list (option_category_id, option_name, option_description) VALUES
  (1, 'Remote',       '완전 원격 근무'),
  (1, 'On-site',      '출근 중심 사무실 근무'),
  (1, 'Hybrid',       '하이브리드(원격 + 사무실)'),
  
  (2, 'Full-time',    '정규직'),
  (2, 'Contract',     '계약직'),
  (2, 'Internship',   '인턴십'),
  
  (3, 'Small (1-10)',  '소규모 팀'),
  (3, 'Medium (11-50)','중규모 팀'),
  (3, 'Large (51+)',   '대규모 팀'),
  
  (4, 'Finance',      '금융'),
  (4, 'Gaming',       '게임'),
  (4, 'Healthcare',   '헬스케어'),
  
  (5, 'Junior',       '주니어'),
  (5, 'Mid-level',    '미드 레벨'),
  (5, 'Senior',       '시니어');
  
INSERT INTO trait_list (trait_name, description) VALUES
  ('Team Player',     '팀워크와 협업을 중요시하는 성향'),
  ('Problem Solver',  '문제 해결 능력이 뛰어난 성향'),
  ('Detail Oriented', '세부사항에 주의를 기울이는 성향'),
  ('Innovative',      '창의적이고 혁신적인 아이디어를 추구하는 성향'),
  ('Adaptable',       '변화에 유연하게 대응하는 성향');

INSERT INTO certificate_list (cert_name, cert_issuer) VALUES
  ('AWS Certified Solutions Architect – Associate', 'Amazon'),
  ('Certified Information Systems Security Professional (CISSP)', 'ISC²'),
  ('Oracle Certified Professional, Java SE 11 Developer', 'Oracle'),
  ('Google Professional Cloud Architect', 'Google'),
  ('Microsoft Certified: Azure Fundamentals', 'Microsoft');
  
INSERT INTO job_list (role_name) VALUES
  ('Software Engineer'),
  ('Data Scientist'),
  ('DevOps Engineer'),
  ('Product Manager'),
  ('UX/UI Designer');

INSERT INTO company_type_list (type_name, description) VALUES
  ('Startup',      '초기 단계의 혁신적 기업'),
  ('Enterprise',   '대기업 및 중견기업'),
  ('Non-Profit',   '비영리 단체'),
  ('Government',   '공공 기관'),
  ('Agency',       '컨설팅 또는 에이전시');

INSERT INTO member_list (role) VALUES
  ('admin'),
  ('user'),
  ('user'),
  ('user'),
  ('user'),
  ('company'),
  ('company'),
  ('company');

INSERT INTO admin_list (admin_id) VALUES
  ('1e0cb6f9-43c2-11f0-a5ac-00155dfa4261');

UPDATE admin_list
SET last_login_at = '2025-06-08 02:45:05'
WHERE admin_id = '1e0cb6f9-43c2-11f0-a5ac-00155dfa4261';

INSERT INTO user_list (
  user_id, name, birth, gender, password, phone_number, email, address
) VALUES
  (
    '1e0cc793-43c2-11f0-a5ac-00155dfa4261',
    'Alice Kim',
    '1998-03-15',
    'female',
    'alicePass!23',
    '010-1234-5678',
    'alice.kim@example.com',
    'Seoul, Korea'
  ),
  (
    '1e0cc848-43c2-11f0-a5ac-00155dfa4261',
    'Bob Lee',
    '1997-07-22',
    'male',
    'bobSecure#45',
    '010-2345-6789',
    'bob.lee@example.com',
    'Busan, Korea'
  ),
  (
    '1e0cc8a2-43c2-11f0-a5ac-00155dfa4261',
    'Charlie Park',
    '1999-01-30',
    'other',
    'charliePwd$67',
    '010-3456-7890',
    'charlie.park@example.com',
    'Incheon, Korea'
  ),
  (
    '1e0cc911-43c2-11f0-a5ac-00155dfa4261',
    'Diana Choi',
    '1998-11-05',
    'female',
    'dianaKey%89',
    '010-4567-8901',
    'diana.choi@example.com',
    'Daegu, Korea'
  );

INSERT INTO company_list (
  company_id,
  company_type_id,
  company_name,
  homepage_url,
  type_code,
  founded_year,
  contact_tel,
  contact_email
) VALUES
  (
    '1e0cc95d-43c2-11f0-a5ac-00155dfa4261',  -- company member #1
    1,                                       -- Startup
    'InnovateX',
    'https://www.innovatex.com',
    'STP',
    2015,
    '02-1234-5678',
    'contact@innovatex.com'
  ),
  (
    '1e0cc9fe-43c2-11f0-a5ac-00155dfa4261',  -- company member #2
    2,                                       -- Enterprise
    'BlueChip Solutions',
    'https://www.bluechip.co.kr',
    'ENT',
    2000,
    '02-2345-6789',
    'info@bluechip.co.kr'
  ),
  (
    '1e0cca3f-43c2-11f0-a5ac-00155dfa4261',  -- company member #3
    5,                                       -- Agency
    'Prime Agency',
    'https://www.primeagency.kr',
    'AGY',
    1990,
    '02-3456-7890',
    'hello@primeagency.kr'
  );

INSERT INTO company_branch_list (
  company_id, branch_name, address, city, contact_number, is_main_branch, is_active
) VALUES
  -- InnovateX 지점
  (
    '1e0cc95d-43c2-11f0-a5ac-00155dfa4261',
    'InnovateX HQ',
    '123 Teheran-ro, Gangnam-gu, Seoul, Korea',
    'Seoul',
    '02-1111-2222',
    TRUE,
    TRUE
  ),
  (
    '1e0cc95d-43c2-11f0-a5ac-00155dfa4261',
    'InnovateX Busan Office',
    '45 Haeundaehaebyeon-ro, Haeundae-gu, Busan, Korea',
    'Busan',
    '051-123-4567',
    FALSE,
    TRUE
  ),

  -- BlueChip Solutions 지점
  (
    '1e0cc9fe-43c2-11f0-a5ac-00155dfa4261',
    'BlueChip HQ',
    '200 Jungang-daero, Jung-gu, Busan, Korea',
    'Busan',
    '051-234-5678',
    TRUE,
    TRUE
  ),
  (
    '1e0cc9fe-43c2-11f0-a5ac-00155dfa4261',
    'BlueChip Daegu Office',
    '10 Dongseong-ro, Jung-gu, Daegu, Korea',
    'Daegu',
    '053-345-6789',
    FALSE,
    TRUE
  ),

  -- Prime Agency 지점
  (
    '1e0cca3f-43c2-11f0-a5ac-00155dfa4261',
    'Prime Agency HQ',
    '77 Bupyeong-daero, Bupyeong-gu, Incheon, Korea',
    'Incheon',
    '032-456-7890',
    TRUE,
    TRUE
  ),
  (
    '1e0cca3f-43c2-11f0-a5ac-00155dfa4261',
    'Prime Agency Gwangju Office',
    '5 Nongseon-ro, Buk-gu, Gwangju, Korea',
    'Gwangju',
    '062-567-8901',
    FALSE,
    TRUE
  );

INSERT INTO company_branch_department (branch_id, department_name, business_description) VALUES
  -- InnovateX HQ
  ('d3cfe649-43c2-11f0-a5ac-00155dfa4261', 'Engineering',    '제품 개발 및 시스템 운영을 담당하는 부서'),
  ('d3cfe649-43c2-11f0-a5ac-00155dfa4261', 'Human Resources','인사 관리 및 채용 업무를 담당하는 부서'),
  
  -- InnovateX Busan Office
  ('d3cfe9c5-43c2-11f0-a5ac-00155dfa4261', 'Sales',          '부산 지역 영업 및 고객 관리를 담당하는 부서'),
  ('d3cfe9c5-43c2-11f0-a5ac-00155dfa4261', 'Support',        '고객 지원 및 기술 지원을 담당하는 부서'),
  
  -- BlueChip HQ
  ('d3cfeadf-43c2-11f0-a5ac-00155dfa4261', 'Marketing',      '시장 조사 및 마케팅 전략을 담당하는 부서'),
  ('d3cfeadf-43c2-11f0-a5ac-00155dfa4261', 'Finance',        '회계 및 재무 관리를 담당하는 부서'),
  
  -- BlueChip Daegu Office
  ('d3cfeb7a-43c2-11f0-a5ac-00155dfa4261', 'R&D',            '연구 개발 및 기술 혁신을 담당하는 부서'),
  ('d3cfeb7a-43c2-11f0-a5ac-00155dfa4261', 'Admin',          '행정 업무 및 지원을 담당하는 부서'),
  
  -- Prime Agency HQ
  ('d3cfec05-43c2-11f0-a5ac-00155dfa4261', 'Creative',       '광고 및 크리에이티브 콘텐츠 제작을 담당하는 부서'),
  ('d3cfec05-43c2-11f0-a5ac-00155dfa4261', 'Client Services','클라이언트 커뮤니케이션을 담당하는 부서'),
  
  -- Prime Agency Gwangju Office
  ('d3cfec8a-43c2-11f0-a5ac-00155dfa4261', 'Operations',     '프로젝트 운영 및 일정 관리를 담당하는 부서'),
  ('d3cfec8a-43c2-11f0-a5ac-00155dfa4261', 'QA',             '품질 보증 및 검수 업무를 담당하는 부서');

INSERT INTO company_user_list (
  company_user_id,
  branch_id,
  company_id,
  is_certified,
  certified_at,
  company_user_email,
  name,
  password,
  address,
  birth,
  phone_number
) VALUES
  -- InnovateX 본사 인사 담당자
  (
    '1e0cc95d-43c2-11f0-a5ac-00155dfa4261',  -- member_list의 회사 사용자
    'd3cfe649-43c2-11f0-a5ac-00155dfa4261',  -- InnovateX HQ 지점
    '1e0cc95d-43c2-11f0-a5ac-00155dfa4261',  -- InnovateX 회사
    TRUE,
    '2025-05-15 09:00:00',
    'hr@innovatex.com',
    'Eunji Park',
    'parkEunji#123',
    '123 Teheran-ro, Gangnam-gu, Seoul, Korea',
    '1990-08-10',
    '010-5678-1234'
  ),
  -- BlueChip Solutions 본사 채용 담당자
  (
    '1e0cc9fe-43c2-11f0-a5ac-00155dfa4261',
    'd3cfeadf-43c2-11f0-a5ac-00155dfa4261',  -- BlueChip HQ
    '1e0cc9fe-43c2-11f0-a5ac-00155dfa4261',  -- BlueChip Solutions
    FALSE,
    NULL,
    'recruit@bluechip.co.kr',
    'Minho Lee',
    'leeMinho$456',
    '200 Jungang-daero, Jung-gu, Busan, Korea',
    '1988-12-05',
    '010-6789-2345'
  ),
  -- Prime Agency 본사 대표
  (
    '1e0cca3f-43c2-11f0-a5ac-00155dfa4261',
    'd3cfec05-43c2-11f0-a5ac-00155dfa4261',  -- Prime Agency HQ
    '1e0cca3f-43c2-11f0-a5ac-00155dfa4261',  -- Prime Agency
    TRUE,
    '2025-05-20 14:30:00',
    'contact@primeagency.kr',
    'Suyeon Kim',
    'kimSuyeon*789',
    '77 Bupyeong-daero, Bupyeong-gu, Incheon, Korea',
    '1992-04-18',
    '010-7890-3456'
  );

INSERT INTO user_team (team_name) VALUES
  ('Alpha Developers'),
  ('Beta Testers'),
  ('Gamma Innovators');

INSERT INTO user_team_detail (team_id, member_id, team_description, is_leader) VALUES
  -- Alpha Developers 팀: 1e0cc793 리더, 1e0cc848 참여
  (
    '4ab019ae-43c3-11f0-a5ac-00155dfa4261',
    '1e0cc793-43c2-11f0-a5ac-00155dfa4261',
    'Alpha Developers 프로젝트 총괄',
    TRUE
  ),
  (
    '4ab019ae-43c3-11f0-a5ac-00155dfa4261',
    '1e0cc848-43c2-11f0-a5ac-00155dfa4261',
    'Frontend 모듈 개발 담당',
    FALSE
  ),

  -- Beta Testers 팀: 1e0cc8a2 리더, 1e0cc911 참여
  (
    '4ab01c17-43c3-11f0-a5ac-00155dfa4261',
    '1e0cc8a2-43c2-11f0-a5ac-00155dfa4261',
    'Beta Testers QA 총괄',
    TRUE
  ),
  (
    '4ab01c17-43c3-11f0-a5ac-00155dfa4261',
    '1e0cc911-43c2-11f0-a5ac-00155dfa4261',
    '테스트 케이스 설계 및 실행',
    FALSE
  ),

  -- Gamma Innovators 팀: 1e0cc848 리더, 1e0cc793 보조
  (
    '4ab01cba-43c3-11f0-a5ac-00155dfa4261',
    '1e0cc848-43c2-11f0-a5ac-00155dfa4261',
    'Gamma Innovators 혁신 아이디어 기획',
    TRUE
  ),
  (
    '4ab01cba-43c3-11f0-a5ac-00155dfa4261',
    '1e0cc793-43c2-11f0-a5ac-00155dfa4261',
    '아이디어 검증 및 프로토타입 제작',
    FALSE
  );

INSERT INTO user_reference (
  user_id,
  github_url,
  baekjoon_id,
  programmers_id,
  expertise_field
) VALUES
  (
    '1e0cc793-43c2-11f0-a5ac-00155dfa4261',
    'https://github.com/alicekim',
    'alice_kim98',
    'aliceK',
    'Frontend Development'
  ),
  (
    '1e0cc848-43c2-11f0-a5ac-00155dfa4261',
    'https://github.com/boblee',
    'bob_dev97',
    'bobLeeDev',
    'Backend Development'
  ),
  (
    '1e0cc8a2-43c2-11f0-a5ac-00155dfa4261',
    'https://github.com/charliepark',
    'charlie_p',
    'charlieP',
    'Data Science'
  ),
  (
    '1e0cc911-43c2-11f0-a5ac-00155dfa4261',
    'https://github.com/dianachoi',
    'diana_c98',
    'dianaC',
    'Security'
  );

INSERT INTO user_certificate_detail (cert_id, user_id, cert_issue_date, cert_number) VALUES
  (1, '1e0cc793-43c2-11f0-a5ac-00155dfa4261', '2023-08-15', 10001),
  (2, '1e0cc848-43c2-11f0-a5ac-00155dfa4261', '2024-02-20', 10002),
  (3, '1e0cc8a2-43c2-11f0-a5ac-00155dfa4261', '2022-11-05', 10003),
  (4, '1e0cc911-43c2-11f0-a5ac-00155dfa4261', '2025-01-10', 10004),
  (5, '1e0cc793-43c2-11f0-a5ac-00155dfa4261', '2024-06-01', 10005);

INSERT INTO user_skill (member_id, skill_id, skill_level, experience_years) VALUES
  -- Alice Kim (1e0cc793): Frontend 및 Security
  ('1e0cc793-43c2-11f0-a5ac-00155dfa4261', 1, '4', 3),  -- HTML, level 4, 3년
  ('1e0cc793-43c2-11f0-a5ac-00155dfa4261', 3, '5', 2),  -- JavaScript, level 5, 2년
  ('1e0cc793-43c2-11f0-a5ac-00155dfa4261', 13, '3', 1), -- OWASP Top 10, level 3, 1년

  -- Bob Lee (1e0cc848): Backend 및 DevOps
  ('1e0cc848-43c2-11f0-a5ac-00155dfa4261', 4, '5', 4),  -- Java, level 5, 4년
  ('1e0cc848-43c2-11f0-a5ac-00155dfa4261', 5, '4', 3),  -- Python, level 4, 3년
  ('1e0cc848-43c2-11f0-a5ac-00155dfa4261', 7, '3', 2),  -- Docker, level 3, 2년

  -- Charlie Park (1e0cc8a2): Data Science
  ('1e0cc8a2-43c2-11f0-a5ac-00155dfa4261', 9, '4', 2),  -- SQL, level 4, 2년
  ('1e0cc8a2-43c2-11f0-a5ac-00155dfa4261', 11, '5', 3), -- Python(Data Science), level 5, 3년
  ('1e0cc8a2-43c2-11f0-a5ac-00155dfa4261', 10, '3', 1), -- R, level 3, 1년

  -- Diana Choi (1e0cc911): Security
  ('1e0cc911-43c2-11f0-a5ac-00155dfa4261', 12, '4', 2), -- Penetration Testing, level 4, 2년
  ('1e0cc911-43c2-11f0-a5ac-00155dfa4261', 13, '5', 3); -- OWASP Top 10, level 5, 3년

INSERT INTO job_posting_list (
  branch_id,
  job_role_id,
  author_id,
  title,
  content,
  start_date,
  end_date,
  contact_info,
  status,
  salary,
  required_career
) VALUES
  -- InnovateX HQ에서 Software Engineer 채용 공고
  (
    'd3cfe649-43c2-11f0-a5ac-00155dfa4261',
    1,
    '1e0cc95d-43c2-11f0-a5ac-00155dfa4261',
    'Frontend Software Engineer',
    'HTML/CSS/JavaScript 기반의 웹 프론트엔드 개발 및 유지보수 담당자를 찾습니다.',
    '2025-06-09',
    '2025-07-09',
    'hr@innovatex.com',
    'OPEN',
    60000000,
    2
  ),
  -- InnovateX Busan Office에서 DevOps Engineer 채용 공고
  (
    'd3cfe9c5-43c2-11f0-a5ac-00155dfa4261',
    3,
    '1e0cc95d-43c2-11f0-a5ac-00155dfa4261',
    'DevOps Engineer',
    'Docker, Kubernetes를 이용한 CI/CD 파이프라인 구축 및 운영 담당자 모집.',
    '2025-06-10',
    '2025-08-10',
    'hr@innovatex.com',
    'OPEN',
    65000000,
    3
  ),
  -- BlueChip HQ에서 Data Scientist 채용 공고
  (
    'd3cfeadf-43c2-11f0-a5ac-00155dfa4261',
    2,
    '1e0cc9fe-43c2-11f0-a5ac-00155dfa4261',
    'Data Scientist',
    'SQL/R/Python 활용한 데이터 분석 및 모델 개발 경험자 우대.',
    '2025-06-11',
    '2025-07-11',
    'recruit@bluechip.co.kr',
    'OPEN',
    70000000,
    2
  ),
  -- Prime Agency HQ에서 UX/UI Designer 채용 공고
  (
    'd3cfec05-43c2-11f0-a5ac-00155dfa4261',
    5,
    '1e0cca3f-43c2-11f0-a5ac-00155dfa4261',
    'UX/UI Designer',
    'Figma/Sketch 활용한 사용자 경험 및 인터페이스 디자인 담당자 모집.',
    '2025-06-12',
    '2025-07-12',
    'contact@primeagency.kr',
    'OPEN',
    55000000,
    1
  );

INSERT INTO job_application_list (
  job_posting_id,
  member_id,
  application_reason,
  career_plan,
  applied_at,
  status
) VALUES
  -- Alice Kim 지원 (Frontend Software Engineer)
  (
    1,
    '1e0cc793-43c2-11f0-a5ac-00155dfa4261',
    '웹 프론트엔드 개발 경험을 살려 InnovateX에 기여하고 싶습니다.',
    '1년 내 React 전문성을 강화하여 팀 리드를 목표로 합니다.',
    '2025-06-09 10:00:00',
    'APPLIED'
  ),
  -- Bob Lee 지원 (DevOps Engineer)
  (
    2,
    '1e0cc848-43c2-11f0-a5ac-00155dfa4261',
    'Docker/Kubernetes 운영 경험을 바탕으로 CI/CD 파이프라인을 개선하고 싶습니다.',
    '6개월 내 자동화 스크립트 작성 역량을 고도화할 계획입니다.',
    '2025-06-10 11:30:00',
    'APPLIED'
  ),
  -- Charlie Park 지원 (Data Scientist)
  (
    3,
    '1e0cc8a2-43c2-11f0-a5ac-00155dfa4261',
    '데이터 분석 및 머신러닝 모델 개발 경험으로 실질적 비즈니스 가치를 창출하고 싶습니다.',
    '데이터 엔지니어링 역량을 강화하여 전체 데이터 파이프라인을 설계할 예정입니다.',
    '2025-06-11 09:15:00',
    'APPLIED'
  ),
  -- Diana Choi 지원 (UX/UI Designer)
  (
    4,
    '1e0cc911-43c2-11f0-a5ac-00155dfa4261',
    '사용자 관점의 UI/UX 개선을 통해 고객 만족도를 높이고 싶습니다.',
    '3개월 내 Figma 고급 기능을 마스터하여 프로토타이핑 시간을 단축할 계획입니다.',
    '2025-06-12 14:45:00',
    'APPLIED'
  );

INSERT INTO job_posting_detail_option (
  job_posting_id,
  option_id,
  skill_category_id
) VALUES
  -- 공고 1: Frontend Software Engineer
  (1, 1, 1),  -- Remote (Work Location)
  (1, 4, 2),  -- Full-time (Employment Type)
  (1, 7, 3),  -- Small (1-10) (Team Size)

  -- 공고 2: DevOps Engineer
  (2, 3, 1),  -- Hybrid (Work Location)
  (2, 4, 2),  -- Full-time (Employment Type)
  (2, 8, 3),  -- Medium (11-50) (Team Size)

  -- 공고 3: Data Scientist
  (3, 1, 1),  -- Remote (Work Location)
  (3, 6, 2),  -- Internship (Employment Type)
  (3, 9, 3),  -- Large (51+) (Team Size)

  -- 공고 4: UX/UI Designer
  (4, 2, 1),  -- On-site (Work Location)
  (4, 5, 2),  -- Contract (Employment Type)
  (4, 7, 3);  -- Small (1-10) (Team Size)

INSERT INTO user_preference (
  user_id,
  company_type_id,
  min_salary,
  max_salary
) VALUES
  -- Alice Kim: Startup 선호, 연봉 40M~60M
  (
    '1e0cc793-43c2-11f0-a5ac-00155dfa4261',
    1,
    40000000,
    60000000
  ),
  -- Alice Kim: Enterprise 선호, 연봉 50M~70M
  (
    '1e0cc793-43c2-11f0-a5ac-00155dfa4261',
    2,
    50000000,
    70000000
  ),
  -- Bob Lee: Agency 선호, 연봉 30M~50M
  (
    '1e0cc848-43c2-11f0-a5ac-00155dfa4261',
    5,
    30000000,
    50000000
  ),
  -- Charlie Park: Government 선호, 연봉 45M~65M
  (
    '1e0cc8a2-43c2-11f0-a5ac-00155dfa4261',
    4,
    45000000,
    65000000
  ),
  -- Diana Choi: Non-Profit 선호, 연봉 35M~55M
  (
    '1e0cc911-43c2-11f0-a5ac-00155dfa4261',
    3,
    35000000,
    55000000
  );

INSERT INTO user_preference_option (option_id, user_preference_id, option_category_id) VALUES
  -- Alice Kim’s Startup 선호: 원격, 정규직, 소규모 팀
  (1, 'ef71bc9b-43c5-11f0-a5ac-00155dfa4261', 1),
  (4, 'ef71bc9b-43c5-11f0-a5ac-00155dfa4261', 2),
  (7, 'ef71bc9b-43c5-11f0-a5ac-00155dfa4261', 3),

  -- Alice Kim’s Enterprise 선호: 사무실 출근, 계약직, 중규모 팀
  (2, 'ef71c188-43c5-11f0-a5ac-00155dfa4261', 1),
  (5, 'ef71c188-43c5-11f0-a5ac-00155dfa4261', 2),
  (8, 'ef71c188-43c5-11f0-a5ac-00155dfa4261', 3),

  -- Bob Lee’s Agency 선호: 하이브리드, 인턴십, 대규모 팀
  (3, 'ef71c25b-43c5-11f0-a5ac-00155dfa4261', 1),
  (6, 'ef71c25b-43c5-11f0-a5ac-00155dfa4261', 2),
  (9, 'ef71c25b-43c5-11f0-a5ac-00155dfa4261', 3),

  -- Charlie Park’s Government 선호: 원격, 금융, 주니어
  (1, 'ef71c2fa-43c5-11f0-a5ac-00155dfa4261', 1),
  (10,'ef71c2fa-43c5-11f0-a5ac-00155dfa4261', 4),
  (13,'ef71c2fa-43c5-11f0-a5ac-00155dfa4261', 5),

  -- Diana Choi’s Non-Profit 선호: 사무실 출근, 게임, 미드 레벨
  (2, 'ef71c372-43c5-11f0-a5ac-00155dfa4261', 1),
  (11,'ef71c372-43c5-11f0-a5ac-00155dfa4261', 4),
  (14,'ef71c372-43c5-11f0-a5ac-00155dfa4261', 5);

INSERT INTO user_preferred_culture (user_preference_id, trait_id) VALUES
  -- Alice Kim’s Startup 선호에 대한 성향
  ('ef71bc9b-43c5-11f0-a5ac-00155dfa4261', 1),  -- Team Player
  ('ef71bc9b-43c5-11f0-a5ac-00155dfa4261', 3),  -- Detail Oriented

  -- Alice Kim’s Enterprise 선호에 대한 성향
  ('ef71c188-43c5-11f0-a5ac-00155dfa4261', 2),  -- Problem Solver
  ('ef71c188-43c5-11f0-a5ac-00155dfa4261', 4),  -- Innovative

  -- Bob Lee’s Agency 선호에 대한 성향
  ('ef71c25b-43c5-11f0-a5ac-00155dfa4261', 5),  -- Adaptable

  -- Charlie Park’s Government 선호에 대한 성향
  ('ef71c2fa-43c5-11f0-a5ac-00155dfa4261', 2),  -- Problem Solver
  ('ef71c2fa-43c5-11f0-a5ac-00155dfa4261', 3),  -- Detail Oriented

  -- Diana Choi’s Non-Profit 선호에 대한 성향
  ('ef71c372-43c5-11f0-a5ac-00155dfa4261', 1),  -- Team Player
  ('ef71c372-43c5-11f0-a5ac-00155dfa4261', 5); -- Adaptable

INSERT INTO user_prefered_job (
  job_role_id,
  company_type_id,
  user_id,
  user_preference_id
) VALUES
  -- Alice Kim’s Startup 선호에 대한 직무
  (1, 1, '1e0cc793-43c2-11f0-a5ac-00155dfa4261', 'ef71bc9b-43c5-11f0-a5ac-00155dfa4261'),  -- Software Engineer
  (2, 1, '1e0cc793-43c2-11f0-a5ac-00155dfa4261', 'ef71bc9b-43c5-11f0-a5ac-00155dfa4261'),  -- Data Scientist

  -- Alice Kim’s Enterprise 선호에 대한 직무
  (3, 2, '1e0cc793-43c2-11f0-a5ac-00155dfa4261', 'ef71c188-43c5-11f0-a5ac-00155dfa4261'),    -- DevOps Engineer
  (4, 2, '1e0cc793-43c2-11f0-a5ac-00155dfa4261', 'ef71c188-43c5-11f0-a5ac-00155dfa4261'),    -- Product Manager

  -- Bob Lee’s Agency 선호에 대한 직무
  (5, 5, '1e0cc848-43c2-11f0-a5ac-00155dfa4261', 'ef71c25b-43c5-11f0-a5ac-00155dfa4261'),    -- UX/UI Designer
  (2, 5, '1e0cc848-43c2-11f0-a5ac-00155dfa4261', 'ef71c25b-43c5-11f0-a5ac-00155dfa4261'),    -- Data Scientist

  -- Charlie Park’s Government 선호에 대한 직무
  (2, 4, '1e0cc8a2-43c2-11f0-a5ac-00155dfa4261', 'ef71c2fa-43c5-11f0-a5ac-00155dfa4261'),    -- Data Scientist
  (3, 4, '1e0cc8a2-43c2-11f0-a5ac-00155dfa4261', 'ef71c2fa-43c5-11f0-a5ac-00155dfa4261'),    -- DevOps Engineer

  -- Diana Choi’s Non-Profit 선호에 대한 직무
  (4, 3, '1e0cc911-43c2-11f0-a5ac-00155dfa4261', 'ef71c372-43c5-11f0-a5ac-00155dfa4261'),    -- Product Manager
  (1, 3, '1e0cc911-43c2-11f0-a5ac-00155dfa4261', 'ef71c372-43c5-11f0-a5ac-00155dfa4261');    -- Software Engineer

INSERT INTO branch_preferences (branch_id, trait_id, description) VALUES
  -- InnovateX HQ: 팀워크와 협업 중시
  ('d3cfe649-43c2-11f0-a5ac-00155dfa4261', 1, 'InnovateX HQ는 크로스팩션 협업을 장려합니다.'),
  -- InnovateX HQ: 문제 해결 능력 강조
  ('d3cfe649-43c2-11f0-a5ac-00155dfa4261', 2, '복잡한 기술적 과제 해결을 주요 목표로 합니다.'),

  -- InnovateX Busan Office: 세부사항 주의
  ('d3cfe9c5-43c2-11f0-a5ac-00155dfa4261', 3, '세부 요건 준수와 문서화에 집중합니다.'),

  -- BlueChip HQ: 혁신적 아이디어 권장
  ('d3cfeadf-43c2-11f0-a5ac-00155dfa4261', 4, '신규 금융 서비스 모델 개발을 장려합니다.'),
  -- BlueChip HQ: 적응력 강조
  ('d3cfeadf-43c2-11f0-a5ac-00155dfa4261', 5, '금융 시장 변화 대응을 위한 유연성을 중요시합니다.'),

  -- BlueChip Daegu Office: 팀워크 강조
  ('d3cfeb7a-43c2-11f0-a5ac-00155dfa4261', 1, '지역 기반 협업과 팀 단합을 중시합니다.'),

  -- Prime Agency HQ: 창의성 중시
  ('d3cfec05-43c2-11f0-a5ac-00155dfa4261', 4, '광고 캠페인에 혁신적 아이디어를 반영합니다.'),
  -- Prime Agency HQ: 문제 해결 능력 권장
  ('d3cfec05-43c2-11f0-a5ac-00155dfa4261', 2, '고객 요구사항에 맞춘 솔루션 개발을 강조합니다.'),

  -- Prime Agency Gwangju Office: 세부사항 주의
  ('d3cfec8a-43c2-11f0-a5ac-00155dfa4261', 3, '프로젝트 검수 및 세부 QA 절차를 중요시합니다.'),
  -- Prime Agency Gwangju Office: 팀워크 권장
  ('d3cfec8a-43c2-11f0-a5ac-00155dfa4261', 1, '지역 팀 간 협업과 커뮤니케이션을 장려합니다.');

INSERT INTO department_preferences (department_id, trait_id, description) VALUES
  -- InnovateX HQ Engineering 부서
  ('01a3706f-43c3-11f0-a5ac-00155dfa4261', 2, 'Engineering 팀은 복잡한 문제를 해결하는 역량을 중시합니다.'),
  ('01a3706f-43c3-11f0-a5ac-00155dfa4261', 4, '새로운 기술과 혁신을 끊임없이 탐구합니다.'),

  -- InnovateX HQ Human Resources 부서
  ('01a373fd-43c3-11f0-a5ac-00155dfa4261', 1, 'HR 부서는 팀워크와 협업을 최우선으로 합니다.'),
  ('01a373fd-43c3-11f0-a5ac-00155dfa4261', 3, '세부 정책과 절차를 철저히 준수합니다.'),

  -- InnovateX Busan Office Sales 부서
  ('01a374c8-43c3-11f0-a5ac-00155dfa4261', 5, 'Sales 팀은 변화에 유연하게 대응하며 신속히 적응합니다.'),
  ('01a374c8-43c3-11f0-a5ac-00155dfa4261', 1, '협업을 통해 최적의 영업 전략을 수립합니다.'),

  -- InnovateX Busan Office Support 부서
  ('01a3754f-43c3-11f0-a5ac-00155dfa4261', 3, 'Support 부서는 세부 고객 요구사항을 세심히 관리합니다.'),
  ('01a3754f-43c3-11f0-a5ac-00155dfa4261', 2, '문제 해결을 신속하게 수행하는 것을 목표로 합니다.'),

  -- BlueChip HQ Marketing 부서
  ('01a375bc-43c3-11f0-a5ac-00155dfa4261', 4, 'Marketing 팀은 창의적이고 혁신적인 아이디어를 장려합니다.'),
  ('01a375bc-43c3-11f0-a5ac-00155dfa4261', 5, '시장 변화에 빠르게 적응하는 능력을 중시합니다.'),

  -- BlueChip HQ Finance 부서
  ('01a37627-43c3-11f0-a5ac-00155dfa4261', 3, 'Finance 부서는 숫자와 세부 절차에 집중합니다.'),
  ('01a37627-43c3-11f0-a5ac-00155dfa4261', 2, '재무 문제 해결 능력을 중요시합니다.'),

  -- BlueChip Daegu Office R&D 부서
  ('01a37691-43c3-11f0-a5ac-00155dfa4261', 4, 'R&D 팀은 혁신적 연구를 통해 신기술을 개발합니다.'),
  ('01a37691-43c3-11f0-a5ac-00155dfa4261', 1, '협업을 통한 시너지 효과를 추구합니다.'),

  -- BlueChip Daegu Office Admin 부서
  ('01a376f4-43c3-11f0-a5ac-00155dfa4261', 3, 'Admin 부서는 세부 업무 관리에 철저합니다.'),
  ('01a376f4-43c3-11f0-a5ac-00155dfa4261', 5, '변화하는 조직 환경에 유연하게 대응합니다.'),

  -- Prime Agency HQ Creative 부서
  ('01a377a1-43c3-11f0-a5ac-00155dfa4261', 4, 'Creative 팀은 창의적 콘텐츠 제작을 장려합니다.'),
  ('01a377a1-43c3-11f0-a5ac-00155dfa4261', 2, '문제 해결을 통해 클라이언트 요구에 부응합니다.'),

  -- Prime Agency HQ Client Services 부서
  ('01a3780e-43c3-11f0-a5ac-00155dfa4261', 1, 'Client Services는 팀워크로 고객 만족을 극대화합니다.'),
  ('01a3780e-43c3-11f0-a5ac-00155dfa4261', 2, '고객 요구사항 해결 능력을 중시합니다.'),

  -- Prime Agency Gwangju Office Operations 부서
  ('01a37874-43c3-11f0-a5ac-00155dfa4261', 2, 'Operations는 문제 해결과 프로세스 최적화를 목표로 합니다.'),
  ('01a37874-43c3-11f0-a5ac-00155dfa4261', 3, '세부 일정 관리와 실행에 집중합니다.'),

  -- Prime Agency Gwangju Office QA 부서
  ('01a378db-43c3-11f0-a5ac-00155dfa4261', 3, 'QA 팀은 제품 품질 세부 검수에 주력합니다.'),
  ('01a378db-43c3-11f0-a5ac-00155dfa4261', 1, '협업을 통해 높은 품질 기준을 달성합니다.');

INSERT INTO company_challenges_category (category_name, category_description) VALUES
  ('Hackathon',       '사내·외 해커톤 및 아이디어 경진대회 카테고리'),
  ('Bug Bounty',      '보안 취약점 발견 및 보고 챌린지 카테고리'),
  ('Feature Sprint',  '새로운 기능 설계·개발 집중 챌린지 카테고리'),
  ('Design Sprint',   'UI/UX 및 서비스 개선을 위한 디자인 집중 챌린지'),
  ('Performance Test','시스템 성능 측정 및 최적화 챌린지');

INSERT INTO company_challenges_list (
  company_id,
  challenge_category_id,
  member_id,
  challenge_name,
  is_team
) VALUES
  -- InnovateX: Hackathon (팀 참여)
  (
    '1e0cc95d-43c2-11f0-a5ac-00155dfa4261',
    1,
    '1e0cc95d-43c2-11f0-a5ac-00155dfa4261',
    'InnovateX Global Hackathon 2025',
    TRUE
  ),
  -- InnovateX: Bug Bounty (개인 참여)
  (
    '1e0cc95d-43c2-11f0-a5ac-00155dfa4261',
    2,
    '1e0cc95d-43c2-11f0-a5ac-00155dfa4261',
    'InnovateX Spring Bug Bounty',
    FALSE
  ),
  -- BlueChip Solutions: Feature Sprint (팀 참여)
  (
    '1e0cc9fe-43c2-11f0-a5ac-00155dfa4261',
    3,
    '1e0cc9fe-43c2-11f0-a5ac-00155dfa4261',
    'BlueChip Q3 Feature Sprint',
    TRUE
  ),
  -- BlueChip Solutions: Design Sprint (개인 참여)
  (
    '1e0cc9fe-43c2-11f0-a5ac-00155dfa4261',
    4,
    '1e0cc9fe-43c2-11f0-a5ac-00155dfa4261',
    'BlueChip UX Design Sprint',
    FALSE
  ),
  -- Prime Agency: Performance Test (개인 참여)
  (
    '1e0cca3f-43c2-11f0-a5ac-00155dfa4261',
    5,
    '1e0cca3f-43c2-11f0-a5ac-00155dfa4261',
    'Prime Agency Performance Blitz',
    FALSE
  );

INSERT INTO company_challenges_submit (challenge_id, team_id, member_id, submit_time) VALUES
  -- Challenge 1: Alpha Developers 팀 제출
  (1, '4ab019ae-43c3-11f0-a5ac-00155dfa4261', NULL, '2025-06-09 10:00:00'),

  -- Challenge 2: 개인 제출 (Alice Kim)
  (2, NULL, '1e0cc793-43c2-11f0-a5ac-00155dfa4261', '2025-06-09 14:30:00'),

  -- Challenge 3: Beta Testers 팀 제출
  (3, '4ab01c17-43c3-11f0-a5ac-00155dfa4261', NULL, '2025-06-10 11:15:00'),

  -- Challenge 4: 개인 제출 (Bob Lee)
  (4, NULL, '1e0cc848-43c2-11f0-a5ac-00155dfa4261', '2025-06-11 09:45:00'),

  -- Challenge 5: 개인 제출 (Charlie Park)
  (5, NULL, '1e0cc8a2-43c2-11f0-a5ac-00155dfa4261', '2025-06-12 13:20:00'),

  -- Challenge 1: Gamma Innovators 팀 추가 제출
  (1, '4ab01cba-43c3-11f0-a5ac-00155dfa4261', NULL, '2025-06-10 15:00:00');

INSERT INTO user_friends_list (member_id, requested_id, status, requested_time, accepted_time) VALUES
  -- Alice Kim follows Bob Lee (pending)
  ('1e0cc793-43c2-11f0-a5ac-00155dfa4261', '1e0cc848-43c2-11f0-a5ac-00155dfa4261', 'FOLLOW', '2025-06-08 10:00:00', NULL),

  -- Alice Kim follows Charlie Park (accepted)
  ('1e0cc793-43c2-11f0-a5ac-00155dfa4261', '1e0cc8a2-43c2-11f0-a5ac-00155dfa4261', 'FOLLOW', '2025-06-08 10:05:00', '2025-06-08 10:20:00'),

  -- Bob Lee follows Diana Choi (pending)
  ('1e0cc848-43c2-11f0-a5ac-00155dfa4261', '1e0cc911-43c2-11f0-a5ac-00155dfa4261', 'FOLLOW', '2025-06-08 11:00:00', NULL),

  -- Charlie Park unfollows Alice Kim
  ('1e0cc8a2-43c2-11f0-a5ac-00155dfa4261', '1e0cc793-43c2-11f0-a5ac-00155dfa4261', 'UNFOLLOW', '2025-06-08 12:00:00', '2025-06-08 12:10:00'),

  -- Diana Choi follows Alice Kim (accepted)
  ('1e0cc911-43c2-11f0-a5ac-00155dfa4261', '1e0cc793-43c2-11f0-a5ac-00155dfa4261', 'FOLLOW', '2025-06-08 13:00:00', '2025-06-08 13:15:00');

INSERT INTO user_banned_list (member_id, userbanned_memo) VALUES
  ('1e0cc8a2-43c2-11f0-a5ac-00155dfa4261', 'Repeated spamming in comments'),
  ('1e0cc911-43c2-11f0-a5ac-00155dfa4261', 'Unprofessional behavior in chat');

INSERT INTO user_career (
  user_id,
  start_date,
  end_date,
  company_name,
  position,
  department,
  career_description
) VALUES
  -- Alice Kim의 경력
  (
    '1e0cc793-43c2-11f0-a5ac-00155dfa4261',
    '2020-03-01',
    '2022-08-31',
    'TechNova Inc.',
    'Junior Frontend Developer',
    'Web Development',
    'React 및 Vue.js 기반 웹 애플리케이션 개발'
  ),
  (
    '1e0cc793-43c2-11f0-a5ac-00155dfa4261',
    '2022-09-01',
    NULL,
    'InnovateX',
    'Frontend Engineer',
    'Product Team',
    '주요 고객 대시보드 UI/UX 개선 및 신규 모듈 개발'
  ),

  -- Bob Lee의 경력
  (
    '1e0cc848-43c2-11f0-a5ac-00155dfa4261',
    '2018-07-15',
    '2021-12-31',
    'DataWorks Co.',
    'Backend Developer',
    'API Team',
    '.NET 및 Node.js 기반 RESTful API 설계·구현'
  ),
  (
    '1e0cc848-43c2-11f0-a5ac-00155dfa4261',
    '2022-01-05',
    NULL,
    'BlueChip Solutions',
    'Senior DevOps Engineer',
    'Infrastructure',
    'CI/CD 파이프라인 구축 및 클라우드 인프라 자동화'

  ),

  -- Charlie Park의 경력
  (
    '1e0cc8a2-43c2-11f0-a5ac-00155dfa4261',
    '2019-05-01',
    '2023-02-28',
    'Insight Analytics',
    'Data Analyst',
    NULL,
    'SQL 기반 데이터 분석 및 보고서 작성'
  ),
  (
    '1e0cc8a2-43c2-11f0-a5ac-00155dfa4261',
    '2023-03-01',
    NULL,
    'Prime Agency',
    'Data Scientist',
    'Research',
    '머신러닝 모델 개발 및 A/B 테스트 설계'

  ),

  -- Diana Choi의 경력
  (
    '1e0cc911-43c2-11f0-a5ac-00155dfa4261',
    '2021-01-10',
    '2022-06-30',
    'SecureGuard Ltd.',
    'Security Analyst',
    'Security Operations',
    '침투 테스트 및 보안 모니터링 운영'
  ),
  (
    '1e0cc911-43c2-11f0-a5ac-00155dfa4261',
    '2022-07-01',
    NULL,
    'CyberShield Inc.',
    'Security Engineer',
    NULL,
    '네트워크 보안 설계 및 취약점 진단 자동화'
  );
  
-- 밴용 테스트 유저 2개 생성
INSERT INTO member_list (role) VALUES
  ('user'),
  ('user');

-- 밴용 테스트 유저 상세 정보 2개 입력
INSERT INTO user_list (
  user_id,
  name,
  birth,
  gender,
  password,
  phone_number,
  email,
  address
) VALUES
  (
    '1cf82d86-43cc-11f0-a5ac-00155dfa4261',
    'Eunwoo Park',
    '1995-04-12',
    'male',
    'parkEunwoo!95',
    '010-9012-3456',
    'eunwoo.park@example.com',
    'Seoul, Korea'
  ),
  (
    '1cf830d5-43cc-11f0-a5ac-00155dfa4261',
    'Jiyeon Lee',
    '1996-09-30',
    'female',
    'leeJiyeon#96',
    '010-0123-4567',
    'jiyeon.lee@example.com',
    'Busan, Korea'
  );

-- 밴
INSERT INTO banned_list (admin_id, member_id, ban_memo) VALUES
  (
    '1e0cb6f9-43c2-11f0-a5ac-00155dfa4261',  -- 관리자
    '1cf82d86-43cc-11f0-a5ac-00155dfa4261',  -- 밴 대상 #1
    '테스트용 밴 기록 1'
  ),
  (
    '1e0cb6f9-43c2-11f0-a5ac-00155dfa4261',  -- 관리자
    '1cf830d5-43cc-11f0-a5ac-00155dfa4261',  -- 밴 대상 #2
    '테스트용 밴 기록 2'
  );sage (9).txt…]()


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

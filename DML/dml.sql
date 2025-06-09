INSERT INTO skill_category_list (skill_category_name) VALUES
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
  );
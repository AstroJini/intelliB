-- 1. InnovateX 본사 지점 정보 (alias: 지점ID, 지점명, 도시, 연락처)
SELECT
  b.branch_id AS 지점ID,
  b.branch_name AS 지점명,
  b.city AS 도시,
  b.contact_number AS 연락처
FROM company_branch_list b
JOIN company_list c ON b.company_id = c.company_id
WHERE c.company_name = 'InnovateX';

-- 2. Alice Kim 스킬 현황 (스킬명, 레벨, 경력年)
SELECT
  s.skill_name   AS 스킬명,
  us.skill_level AS 레벨,
  us.experience_years AS 경력
FROM user_skill us
JOIN skill_list s ON us.skill_id = s.skill_id
WHERE us.member_id = '1e0cc793-43c2-11f0-a5ac-00155dfa4261';

-- 3. DevOps Engineer 지원자 현황 (지원자, 상태, 지원일)
SELECT
  u.name        AS 지원자,
  ja.status     AS 지원상태,
  ja.applied_at AS 지원일
FROM job_application_list ja
JOIN user_list u ON ja.member_id = u.user_id
JOIN job_posting_list jp ON ja.job_posting_id = jp.job_posting_id
JOIN job_list j ON jp.job_role_id = j.job_role_id
WHERE j.role_name = 'DevOps Engineer';

-- 4. Remote 옵션 포함 공고 (회사명, 공고제목)
SELECT DISTINCT
  c.company_name AS 회사명,
  jp.title        AS 공고제목
FROM job_posting_detail_option dpo
JOIN option_list o ON dpo.option_id = o.option_id
JOIN job_posting_list jp ON dpo.job_posting_id = jp.job_posting_id
JOIN company_branch_list b ON jp.branch_id = b.branch_id
JOIN company_list c ON b.company_id = c.company_id
WHERE o.option_name = 'Remote';

-- 5. Bob Lee 소속 팀 (팀명, 리더여부)
SELECT
  t.team_name  AS 팀명,
  utd.is_leader AS 리더여부
FROM user_team_detail utd
JOIN user_team t ON utd.team_id = t.team_id
WHERE utd.member_id = '1e0cc848-43c2-11f0-a5ac-00155dfa4261';

-- 6. 모든 챌린지의 참여자 및 참여자 수 조회
SELECT
  cl.challenge_name                                  AS 챌린지명,
  cl.is_team                                         AS 팀참여여부,
  COUNT(cs.submit_id)                                AS '제출 횟수',
  GROUP_CONCAT(
    CASE
      WHEN cs.team_id IS NOT NULL THEN t.team_name
      ELSE u.name
    END
    ORDER BY cs.submit_time
    SEPARATOR ', '
  )                                                   AS 참여자목록
FROM company_challenges_list cl
LEFT JOIN company_challenges_submit cs
  ON cl.challenge_id = cs.challenge_id
LEFT JOIN user_team t
  ON cs.team_id = t.team_id
LEFT JOIN user_list u
  ON cs.member_id = u.user_id
GROUP BY cl.challenge_id;

-- 7. Alpha Developers 제출내역 (챌린지명, 제출시간)
SELECT
  cl.challenge_name AS 챌린지명,
  cs.submit_time    AS 제출시간
FROM company_challenges_submit cs
JOIN user_team t ON cs.team_id = t.team_id
JOIN company_challenges_list cl ON cs.challenge_id = cl.challenge_id
WHERE t.team_name = 'Alpha Developers';

-- 8. 지점별 선호 성향 (지점명, 성향명, 설명)
SELECT
  b.branch_name    AS 지점명,
  tr.trait_name    AS 성향명,
  bp.description   AS 설명
FROM branch_preferences bp
JOIN company_branch_list b ON bp.branch_id = b.branch_id
JOIN trait_list tr ON bp.trait_id = tr.trait_id
ORDER BY b.branch_name, tr.trait_name;

-- 9. 특정 Admin이 밴한 유저 (밴대상ID, 유저명, 사유)
SELECT
  bl.member_id   AS 밴대상ID,
  u.name         AS 유저명,
  bl.ban_memo    AS 밴사유
FROM banned_list bl
JOIN user_list u ON bl.member_id = u.user_id
WHERE bl.admin_id = '1e0cb6f9-43c2-11f0-a5ac-00155dfa4261';

-- 10. 사용자별 선호 요약 (사용자명, 회사유형, 연봉범위, 옵션목록, 성향목록, 희망직무)
SELECT
  u.name                           AS 사용자명,
  cp.type_name                     AS 회사유형,
  CONCAT(up.min_salary,'~',up.max_salary) AS 연봉범위,
  GROUP_CONCAT(DISTINCT o.option_name)    AS 옵션목록,
  GROUP_CONCAT(DISTINCT tr.trait_name)    AS 성향목록,
  GROUP_CONCAT(DISTINCT j.role_name)      AS 희망직무
FROM user_preference up
JOIN user_list u ON up.user_id = u.user_id
JOIN company_type_list cp ON up.company_type_id = cp.company_type_id
LEFT JOIN user_preference_option upo ON up.user_preference_id = upo.user_preference_id
LEFT JOIN option_list o ON upo.option_id = o.option_id
LEFT JOIN user_preferred_culture uc ON up.user_preference_id = uc.user_preference_id
LEFT JOIN trait_list tr ON uc.trait_id = tr.trait_id
LEFT JOIN user_prefered_job uj ON up.user_preference_id = uj.user_preference_id
LEFT JOIN job_list j ON uj.job_role_id = j.job_role_id
GROUP BY up.user_preference_id;

-- 11. 지점별 부서별 선호 (지점명, 부서명, 성향, 설명)
SELECT
  b.branch_name      AS 지점명,
  d.department_name  AS 부서명,
  tr.trait_name      AS 성향명,
  dp.description     AS 설명
FROM department_preferences dp
JOIN company_branch_department d ON dp.department_id = d.department_id
JOIN company_branch_list b ON d.branch_id = b.branch_id
JOIN trait_list tr ON dp.trait_id = tr.trait_id;

-- 12. 사용자별 최근 경력 (사용자명, 회사명, 직위, 종료일)
SELECT
  u.name            AS 사용자명,
  uc.company_name   AS 회사명,
  uc.position       AS 직위,
  CASE
    WHEN uc.end_date IS NULL THEN '재직중'
    ELSE DATE_FORMAT(uc.end_date, '%Y-%m-%d')
  END AS 종료일
FROM user_career uc
JOIN user_list u
  ON uc.user_id = u.user_id
WHERE
  uc.end_date IS NULL
  OR uc.end_date = (
    SELECT MAX(end_date)
      FROM user_career
     WHERE user_id = uc.user_id
  );

-- 13. 회사별 등록 사용자 수 (회사명, 지점수, 사용자수)
SELECT
  c.company_name        AS 회사명,
  COUNT(DISTINCT b.branch_id) AS 지점수,
  COUNT(DISTINCT cu.company_user_id) AS 사용자수
FROM company_list c
LEFT JOIN company_branch_list b ON c.company_id = b.company_id
LEFT JOIN company_user_list cu ON cu.company_id = c.company_id
GROUP BY c.company_id;

-- 14. 공고 지원 세부 정보 출력 (공고ID, 회사명, 제목, 지원자ID, 지원자명, 지원시간)
SELECT
  ja.job_posting_id      AS 공고ID,
  c.company_name         AS 회사명,
  jp.title               AS 제목,
  ja.member_id           AS 지원자ID,
  u.name                 AS 지원자명,
  ja.applied_at          AS 지원시간
FROM job_application_list ja
JOIN job_posting_list jp
  ON ja.job_posting_id = jp.job_posting_id
JOIN company_branch_list b
  ON jp.branch_id = b.branch_id
JOIN company_list c
  ON b.company_id = c.company_id
JOIN user_list u
  ON ja.member_id = u.user_id
ORDER BY
  ja.job_posting_id,
  ja.applied_at;

-- 15. 각 사용자별 챌린지 참여 횟수 (사용자명, 챌린지명, 주최회사, 참여형태, 제출시간)
SELECT
  u.name                     AS 사용자명,
  cl.challenge_name          AS 챌린지명,
  COALESCE(comp.company_name, 'Unknown') AS 주최회사,
  CASE
    WHEN cs.team_id IS NOT NULL THEN '팀참여'
    ELSE '개인참여'
  END                         AS 참여형태,
  cs.submit_time             AS 제출시간
FROM company_challenges_submit cs
JOIN user_list u
  ON cs.member_id = u.user_id
JOIN company_challenges_list cl
  ON cs.challenge_id = cl.challenge_id
LEFT JOIN company_list comp
  ON cl.company_id = comp.company_id
ORDER BY u.name, cs.submit_time;

-- 16. 기술 카테고리별 스킬 개수 (카테고리, 스킬수)
SELECT
  sc.skill_category_name AS 카테고리,
  COUNT(sl.skill_id)     AS 스킬수
FROM skill_category_list sc
LEFT JOIN skill_list sl ON sl.category_id = sc.skill_category_id
GROUP BY sc.skill_category_id;

-- 17. 각 옵션 카테고리별 옵션 목록 (옵션카테고리, 옵션목록)
SELECT
  oc.option_category_name AS 옵션카테고리,
  GROUP_CONCAT(o.option_name) AS 옵션목록
FROM option_category_list oc
LEFT JOIN option_list o ON o.option_category_id = oc.option_category_id
GROUP BY oc.option_category_id;

-- 18. 최근 가입 사용자 5명 (고유 아이디, 이름, 이메일, 가입일)
SELECT
  m.member_id    AS 회원ID,
  COALESCE(u.name, cu.name, 'admin')                AS 이름,
  COALESCE(u.email, cu.company_user_email, 'admin') AS 이메일,
  m.registered_at AS 가입일
FROM member_list m
LEFT JOIN user_list u
  ON m.member_id = u.user_id
LEFT JOIN company_user_list cu
  ON m.member_id = cu.company_user_id
ORDER BY m.registered_at DESC
LIMIT 5;

-- 19. 각 팀별 평균 스킬 레벨 (팀명, 평균레벨)
SELECT
  t.team_name AS 팀명,
  CONCAT(
    ROUND(AVG(CAST(us.skill_level AS UNSIGNED)), 2),
    '/5'
  ) AS 평균레벨
FROM user_team_detail utd
JOIN user_team t ON utd.team_id = t.team_id
JOIN user_skill us ON utd.member_id = us.member_id
GROUP BY t.team_id;

-- 20. 사용자별 팔로우 수 (사용자명, 팔로우한수, 팔로우당한수)
SELECT
  u.name AS 사용자명,
  SUM(CASE WHEN uf.status='FOLLOW' THEN 1 ELSE 0 END) AS 팔로우한수,
  (SELECT COUNT(*) FROM user_friends_list uf2 WHERE uf2.requested_id = u.user_id AND uf2.status='FOLLOW') AS 팔로우당한수
FROM user_friends_list uf
JOIN user_list u ON uf.member_id = u.user_id
GROUP BY u.user_id;


-- 21. 사용자별 선호하는 회사, 지점, 부서와의 매칭 결과
SELECT
  u.user_id                     AS 사용자ID,
  u.name                        AS 사용자명,
  c.company_name                AS 회사명,
  b.branch_name                 AS 지점명,
  d.department_name             AS 부서명,
  tr.trait_name                 AS 매칭성향,
  COUNT(tr.trait_id) OVER (PARTITION BY u.user_id, b.branch_id, d.department_id) AS 매칭성향갯수
FROM user_preferred_culture uc
JOIN user_preference up
  ON uc.user_preference_id = up.user_preference_id
JOIN user_list u
  ON up.user_id = u.user_id
JOIN branch_preferences bp
  ON uc.trait_id = bp.trait_id
JOIN company_branch_list b
  ON bp.branch_id = b.branch_id
JOIN company_list c
  ON b.company_id = c.company_id
JOIN company_branch_department d
  ON b.branch_id = d.branch_id
JOIN department_preferences dp
  ON d.department_id = dp.department_id AND uc.trait_id = dp.trait_id
JOIN trait_list tr
  ON bp.trait_id = tr.trait_id
ORDER BY u.user_id, 매칭성향갯수 DESC, 회사명, 지점명, 부서명;

-- 22. 사용자별 선호하는 회사, 지점, 부서, 공고와의 매칭 결과
SELECT
  u.user_id                     AS 사용자ID,
  u.name                        AS 사용자명,
  c.company_name                AS 회사명,
  b.branch_name                 AS 지점명,
  d.department_name             AS 부서명,
  jp.title                      AS 공고명,
  tr.trait_name                 AS 매칭성향,
  COUNT(tr.trait_id) OVER (PARTITION BY u.user_id, b.branch_id, d.department_id, jp.job_posting_id) AS 매칭성향갯수
FROM user_preferred_culture uc
JOIN user_preference up
  ON uc.user_preference_id = up.user_preference_id
JOIN user_list u
  ON up.user_id = u.user_id
JOIN branch_preferences bp
  ON uc.trait_id = bp.trait_id
JOIN company_branch_list b
  ON bp.branch_id = b.branch_id
JOIN company_list c
  ON b.company_id = c.company_id
JOIN company_branch_department d
  ON b.branch_id = d.branch_id
JOIN department_preferences dp
  ON d.department_id = dp.department_id AND uc.trait_id = dp.trait_id
JOIN job_posting_list jp
  ON jp.branch_id = b.branch_id
JOIN trait_list tr
  ON bp.trait_id = tr.trait_id
ORDER BY u.user_id, 매칭성향갯수 DESC, 회사명, 지점명, 부서명, 공고명;
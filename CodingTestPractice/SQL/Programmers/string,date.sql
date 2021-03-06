-- [1] 루시와 엘라 찾기
SELECT ANIMAL_ID, NAME, SEX_UPON_INTAKE
FROM ANIMAL_INS
WHERE NAME IN ('Lucy', 'Ella', 'Pickle', 'Rogan', 'Sabrina', 'Mitty');

-- [2] 이름에 el이 들어가는 동물 찾기
SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE ANIMAL_TYPE = 'Dog' AND NAME LIKE '%EL%'
ORDER BY NAME;

-- [3] 중성화 여부 파악하기
SELECT ANIMAL_ID, NAME, IF((SEX_UPON_INTAKE LIKE 'Neutered%' OR SEX_UPON_INTAKE LIKE 'Spayed%'),'O','X') 중성화
FROM ANIMAL_INS
ORDER BY ANIMAL_ID;

-- [4] 오랜 기간 보호한 동물(2) 
SELECT OUTS.ANIMAL_ID, OUTS.NAME
FROM ANIMAL_OUTS OUTS LEFT JOIN ANIMAL_INS INS ON OUTS.ANIMAL_ID = INS.ANIMAL_ID
ORDER BY (OUTS.DATETIME - INS.DATETIME) DESC
LIMIT 2

-- [5] DATETIME에서 DATE로 형 변환
SELECT ANIMAL_ID, NAME, DATE_FORMAT(DATETIME,'%Y-%m-%d') 날짜
FROM ANIMAL_INS
ORDER BY ANIMAL_ID;
-- 실수형 데이터가 있는 테이블 생성
USE doitsql;
CREATE TABLE doit_float (col_1 FLOAT);
INSERT INTO doit_float VALUES (0.7);

SELECT * FROM doit_float WHERE col_1 = 0.7;

-- 암시적 형 변환으로 계산 결과가 출력된 예
SELECT 10/3;

-- 문자열 데이터의 길이와 크기 확인
USE doitsql;
CREATE TABLE doit_char_varchar (
col_1 CHAR(5),
col_2 VARCHAR(5)
);

INSERT INTO doit_char_varchar VALUES ('12345', '12345');
INSERT INTO doit_char_varchar VALUES ('ABCDE', 'ABCDE');
INSERT INTO doit_char_varchar VALUES ('가나다라마', '가나다라마');
INSERT INTO doit_char_varchar VALUES ('hello', '안녕하세요');
INSERT INTO doit_char_varchar VALUES ('田田田田田', '田田田田田');

SELECT
col_1, CHAR_LENGTH(col_1) as char_length, LENGTH(col_1) AS char_byte,
col_2, CHAR_LENGTH(col_2) as char_length, LENGTH(col_2) AS char_byte
FROM doit_char_varchar;

-- MYSQL의 문자 집합 확인
SHOW CHARACTER SET;

-- 데이터 유형에 따른 현재 시간 조회
CREATE TABLE date_table (
justdata DATE,
justtime TIME,
justdatatime DATETIME,
justtimestamp TIMESTAMP);

INSERT INTO date_table VALUES (now(), now(), now(), now());

SELECT * FROM date_table;


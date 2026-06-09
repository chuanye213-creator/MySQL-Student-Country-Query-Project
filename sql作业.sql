SELECT * FROM student;
SELECT NAME,age FROM student;
SELECT DISTINCT address FROM student;
SELECT DISTINCT NAME,address FROM student;
SELECT NAME,chinese+english+math AS total_score FROM student ORDER BY total_score DESC;
SELECT id,NAME,age,CASE sex WHEN 1 THEN '男' ELSE '女' END AS sex,address,chinese,english,math FROM student;

SELECT * FROM student WHERE age != 20;
SELECT * FROM student WHERE age BETWEEN 18 AND 22;
SELECT * FROM student WHERE age IN(19,21,23);
SELECT NAME FROM student WHERE english < 90 ORDER BY (chinese+english+math) DESC;
SELECT * FROM student WHERE address='北京' ORDER BY chinese ASC LIMIT 1;

SELECT * FROM student WHERE NAME LIKE '小%';
SELECT * FROM student WHERE NAME LIKE '_菲%';
SELECT * FROM student WHERE NAME LIKE '___';
SELECT * FROM student WHERE NAME LIKE '%莉%' OR NAME LIKE '%小%';

SELECT id,NAME,age,chinese,english,math FROM student ORDER BY math DESC;
SELECT COUNT(id) AS total_student FROM student;
SELECT COUNT(DISTINCT NAME) AS unique_name_count FROM student;
SELECT 
  MAX(chinese) AS chinese_max,
  MIN(english) AS english_min,
  AVG(math) AS math_avg 
FROM student;

SELECT NAME, address AS country FROM student;

SELECT sex, AVG(math) AS math_avg, COUNT(id) AS total_num
FROM student
GROUP BY sex
ORDER BY math_avg ASC;

SELECT sex, AVG(chinese) AS chinese_avg, COUNT(id) AS total_num
FROM student
WHERE chinese >= 85
GROUP BY sex
ORDER BY chinese_avg DESC;

SELECT address, MAX(chinese) AS chinese_max, MIN(english) AS english_min, AVG(math) AS math_avg
FROM student
GROUP BY address
ORDER BY chinese_max ASC, math_avg DESC;

SELECT address, COUNT(id) AS student_count
FROM student
GROUP BY address;

SELECT age, chinese AS max_chinese, chinese+english+math AS total
FROM student s
WHERE math BETWEEN 80 AND 95
AND (age,chinese) IN(
    SELECT age,MAX(chinese)
    FROM student
    WHERE math BETWEEN 80 AND 95
    GROUP BY age
);

SELECT country AS `国家`, population AS `人数(百万)`
FROM country
WHERE population > 50
ORDER BY population DESC;

SELECT * FROM country;

SELECT SUM(population) AS `总人口数(百万)`, AVG(population) AS `平均人口数(百万)`
FROM country
WHERE country IN('中国','日本','韩国');

SELECT COUNT(*) AS `符合条件国家数`, SUM(population) AS `总人数(百万)`
FROM country
WHERE cid BETWEEN 5 AND 15 AND population > 100;

SELECT country AS `国家`, population AS `人口(百万)`
FROM country
WHERE population > 100
ORDER BY population ASC LIMIT 1;

SELECT 
CASE country
WHEN '中国' THEN '亚洲' WHEN '日本' THEN '亚洲' WHEN '韩国' THEN '亚洲' WHEN '印度' THEN '亚洲' WHEN '印度尼西亚' THEN '亚洲' WHEN '巴基斯坦' THEN '亚洲'
WHEN '美国' THEN '北美洲' WHEN '加拿大' THEN '北美洲'
WHEN '巴西' THEN '南美洲' WHEN '阿根廷' THEN '南美洲'
WHEN '俄罗斯' THEN '欧洲' WHEN '德国' THEN '欧洲' WHEN '英国' THEN '欧洲' WHEN '法国' THEN '欧洲'
WHEN '南非' THEN '非洲' WHEN '埃及' THEN '非洲'
WHEN '澳大利亚' THEN '大洋洲' WHEN '新西兰' THEN '大洋洲'
END AS `大洲名称`,
SUM(population) AS `总人口数(百万)`
FROM country
GROUP BY `大洲名称`
ORDER BY SUM(population) ASC;
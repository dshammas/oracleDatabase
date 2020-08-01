-- SECTION 4

SELECT 'I Love DataBase'
 FROM DUAL;

-- CONCAT: Joins two values together. 
SELECT CONCAT(fname, lname)
 FROM employee;

-- SUBSTR: Extracts a string of a determined length. 
-- The arguments are (character String, starting position, length). 
SELECT SUBSTR (FNAME, 1, 3)
 FROM EMPLOYEE;

-- LENGTH: Shows the length of a string as a number value. 
SELECT LENGTH (CITY)
 FROM EMPLOYEE
 WHERE LNAME = 'Jad';

-- INSTR: Finds the numeric position of the specified character(s). 
SELECT employee_type, INSTR (employee_type, 'p') AS POSITION
 FROM EMPLOYEE;

-- LPAD: Pads the left side of a character string, resulting in a right-justified value. 
-- FORMAT: (character string, the total number of characters in the padded string, and the character to pad with.)
SELECT LPAD (FNAME, 10, '@') AS LPDA
 FROM EMPLOYEE;

-- RPAD: Pads the right-hand side of a character string, resulting in a left-justified value.
SELECT RPAD (FNAME, 10, '*') AS RPDA
 FROM EMPLOYEE;

-- TRIM: Removes all specified characters from either the beginning, the end, or both beginning and end of a string.
SELECT SONG_NAME, TRIM (TRAILING 'd' FROM SONG_NAME) as REMOVE
 FROM album_song
 WHERE SONG_NAME = 'Small world';

SELECT TRIM (LEADING 'I' FROM SONG_NAME) as REMOVE
 FROM album_song;

SELECT TRIM (BOTH 'I' FROM SONG_NAME) as REMOVE
 FROM album_song;

-- REPLACE: Replaces a sequence of characters in a string with another set of characters.
-- REPLACE (string1, string_to_replace, [replacement_string] )
SELECT REPLACE(SONG_NAME, 'e', '*') AS REPLACE
 FROM SONG;

SELECT LOWER (SUBSTR(FNAME, 1, 1)) || LOWER (LNAME) AS USERNAME
 FROM EMPLOYEE;

-- ROUND can be used with both numbers and dates.
-- It is mainly used to round numbers to a specified number of decimal places, but it can also be used to round numbers to the left of the decimal point.
SELECT FNAME, HOURLY_PAY, ROUND (HOURLY_PAY, 5)
 FROM EMPLOYEE;

-- The TRUNC function can be used with both numbers and dates. It is mainly used to terminate the column, expression, or value to a specified number of decimal places.
-- When TRUNC is used, if the number of decimal places is not specified, then like ROUND, the specified number defaults to zero.
SELECT FNAME, HOURLY_PAY, TRUNC (HOURLY_PAY, 5)
 FROM EMPLOYEE;

-- The MOD function finds the remainder after one value is divided by another value.
-- For example, the MOD of 5 divided by 2 is 1.
-- The "Mod Demo" column will show if number of HOURLY_PAY for each EMPLOYEE is an odd or even number.
SELECT FNAME, HOURLY_PAY, MOD (HOURLY_PAY, 2)
 FROM EMPLOYEE;

SELECT CONCAT(fname, lname)  AS NAME, 
       HOURLY_PAY AS CURRENT_PAY, 
       HOURLY_PAY + (HOURLY_PAY * 0.10) AS BONUS, 
       (HOURLY_PAY + (HOURLY_PAY * 0.10)) - HOURLY_PAY AS INCREASED_AMOUNT
 FROM EMPLOYEE;

SELECT ALBUM_NAME, RELEASE_DATE 
 FROM ALBUM
 WHERE RELEASE_DATE >= '01-JAN-2019';

-- MONTHS_BETWEEN: takes 2 DATE arguments and returns the number of calendar months between the 2 dates.
-- If the first argument is an earlier date than the second, the number returned is negative
SELECT ALBUM_NAME, RELEASE_DATE 
 FROM ALBUM
 WHERE MONTHS_BETWEEN
      (SYSDATE, RELEASE_DATE) < 4;

-- ROUND: returns a DATE rounded to the unit specified by the second argument.
SELECT RELEASE_DATE, ROUND (RELEASE_DATE, 'YEAR')
 FROM ALBUM;

-- SECTION 5
-- VARCHAR2: Used for character data of variable length, including numbers, dashes, and special characters.
-- CHAR: Used for text and character data of fixed length, including numbers, dashes, and special characters.
-- NUMBER: Used to store variable-length numeric data. No dashes, text, or other nonnumeric data are allowed. Currency is stored as a number data type.
-- DATE: Used for date and time values. Internally, Oracle stores dates as numbers and, by default, DATE information is displayed as DD-Mon-YYYY (for example, 23-Oct-2013).


-- YYYY             Full year in numbers
-- YEAR             Year spelled out
-- MM               Two-digit value for month
-- MONTH            Full name of the month
-- MON              Three-letter abbreviation of the month
-- DY               Three-letter abbreviation of the day of the week
-- DAY              Full name of the day of the week
-- DD               Numeric day of the month
-- DDspth           FOURTEENTH
-- Ddspth           Fourteenth
-- ddspth           fourteenth
-- DDD or DD or D   Day of year, month or week
-- HH24:MI:SS AM    15:45:32 PM
-- DD "of" MONTH    12 of October
SELECT  SONG_NAME, TO_CHAR(COPYWRITE, 'Month dd, YYYY')
 FROM SONG;
SELECT  SONG_NAME, TO_CHAR(COPYWRITE, 'fmMonth ddth, YYYY')
 FROM SONG;
SELECT  SONG_NAME, TO_CHAR(COPYWRITE, 'fmDay, ddthsp "of" Month, Year') AS OUTPUT
 FROM SONG;

-- You can use the NVL function to convert column values containing nulls to a number before doing calculations.
SELECT CONCAT(fname, lname) AS NAME, EMPLOYEE_ID,  NVL (MANAGER_ID, 0) AS "0 IS THE BOSS"
 FROM EMPLOYEE
 ORDER BY MANAGER_ID DESC;

-- NVL2:_ An easy way to remember NVL2 is to think, "if
-- expression 1 has a value, substitute expression 2; if
-- expression 1 is null, substitute expression 3."
SELECT CONCAT(fname, lname) AS NAME, EMPLOYEE_ID,  NVL2 (MANAGER_ID, 1, 0) AS "0 IS THE BOSS"
 FROM EMPLOYEE
 ORDER BY MANAGER_ID DESC;

-- NULLIF compares the length of employees first and last names. 
SELECT FNAME, 
       LNAME, LENGTH(FNAME) AS "LENGTH FIRST NAME", 
       LENGTH(LNAME) AS "LENGTH LAST NAME" , 
       NULLIF(LENGTH (FNAME), LENGTH(LNAME)) AS "COMPARE THEM"
 FROM EMPLOYEE; 

SELECT FNAME, 
       LNAME, LENGTH(FNAME) AS "LENGTH FIRST NAME", 
       LENGTH(LNAME) AS "LENGTH LAST NAME" , 
       NULLIF(LENGTH (FNAME), LENGTH(LNAME)) AS "COMPARE THEM"
 FROM EMPLOYEE
 ORDER BY "COMPARE THEM" ASC;

-- The CASE expression basically does the work of an IFTHEN-ELSE statement. 
SELECT SONG_NAME, ALBUM_NAME, LENGTH,
 CASE LENGTH
     WHEN 2 THEN 'SHORT'
     WHEN 3 THEN 'SHORT'
     WHEN 4 THEN 'MEDIUM'
     WHEN 5 THEN 'MEDIUM'
     ELSE 'LONG'
 END AS "SONG LENGTH"
 FROM ALBUM_SONG
 ORDER BY LENGTH ASC;

-- The DECODE function evaluates an expression in a similar way to the IF-THEN-ELSE logic. 
SELECT SONG_NAME, ALBUM_NAME, LENGTH,
 DECODE (LENGTH,
     2, 'SHORT',
     3, 'SHORT',
     4, 'MEDIUM',
     5, 'MEDIUM',
     'LONG')
 AS "SONG LENGTH"
 FROM ALBUM_SONG
 ORDER BY LENGTH DESC;


-- SECTION 6
-- A natural join is based on all columns in two tables that
-- have the same name and selects rows from the two
-- tables that have equal values in all matched columns. 
SELECT BAND_NAME, ALBUM_NAME, PRODUCER_EMP_ID, RELEASE_DATE 
 FROM BAND NATURAL JOIN ALBUM
 WHERE RELEASE_DATE > '01-JAN-2019';

SELECT BAND_NAME, ALBUM_NAME, RELEASE_DATE, AUTHOR
 FROM BAND NATURAL JOIN ALBUM_SONG
 WHERE SINGER = 'Kadem Al Saher';

-- The result set represents all possible row combinations from the two tables. 
-- If you CROSS JOIN a table with 20 rows with a table with
-- 100 rows, the query will return 2000 rows.
SELECT FNAME, LNAME
 FROM EMPLOYEE CROSS JOIN BAND;

-- • In a natural join, if the tables have columns with the
-- same names but different data types, the join causes an
-- error.
-- • To avoid this situation, the join clause can be modified
-- with a USING clause.
-- • The USING clause specifies the columns that should be
-- used for the join. 
SELECT BAND_NAME, ALBUM_NAME, RELEASE_DATE
 FROM BAND JOIN ALBUM USING (BAND_NAME);

SELECT BAND_NAME, ALBUM_NAME, SONG_NAME
 FROM BAND JOIN ALBUM_SONG USING (BAND_NAME);

-- ALIASES
SELECT BAND_NAME, ALBUM_NAME, SONG_NAME, B.MGR_FNAME
 FROM BAND B JOIN ALBUM_SONG USING (BAND_NAME);

SELECT BAND_NAME, ALBUM_NAME, S.SONG_NAME, S.AUTHOR, SINGER, S.COPYWRITE 
 FROM ALBUM_SONG albumSong,  SONG S
 WHERE S.AUTHOR = albumSong.AUTHOR
 AND LENGTH >= 7;

-- join ON clause is required when the common columns have different names in the two tables.
-- When using an ON clause on columns with the same name in both tables, you need to add a qualifier (either
-- the table name or alias) otherwise an error will be returned. The example
-- above uses table aliases as a qualifier e.job_id = j.job_id, but could also
-- have been written using the table names (employees.job_id = jobs.job_id).
SELECT BAND_NAME, ALBUM_NAME, S.AUTHOR, S.SONG_NAME
 FROM ALBUM_SONG B JOIN SONG S
 ON (B.SONG_NAME = S.SONG_NAME);

SELECT BAND_NAME, ALBUM_NAME, S.AUTHOR, S.SONG_NAME
 FROM ALBUM_SONG B JOIN SONG S
 ON (B.SONG_NAME = S.SONG_NAME)
 WHERE S.AUTHOR LIKE 'D%' 
 AND BAND_NAME = 'Yes';

-- This right outer join would return all department IDs and department names, both those that have employees assigned to them and those that do not.
-- SELECT e.last_name, d.department_id, d.department_name
-- FROM employees e RIGHT OUTER JOIN departments d
-- ON (e.department_id = d.department_id);

-- left outer join will return all employee last names, both those that are assigned to a department and those that are not.
-- SELECT e.last_name, d.department_id, d.department_name
-- FROM employees e LEFT OUTER JOIN departments d
-- ON (e.department_id = d.department_id);

-- The result set of a full outer join includes all rows from a left outer join and all rows from a right outer join
-- combined together without duplication.

SELECT FNAME, LNAME, E.EMPLOYEE_ID
 FROM EMPLOYEE E RIGHT OUTER JOIN BAND B
 ON (E.EMPLOYEE_ID = B.PRODUCER_EMP_ID);

SELECT FNAME, LNAME, E.EMPLOYEE_ID
 FROM EMPLOYEE E LEFT OUTER JOIN BAND B
 ON (E.EMPLOYEE_ID = B.PRODUCER_EMP_ID);

SELECT FNAME, LNAME, E.EMPLOYEE_ID
 FROM EMPLOYEE E FULL OUTER JOIN BAND B
 ON (E.EMPLOYEE_ID = B.PRODUCER_EMP_ID);

-- To join a table to itself, the table is given two names or aliases. This will make the database "think" that there are two tables. 
SELECT MANAGER.MEMBER_ID, MEMBER.FNAME, MEMBER.LNAME, MANAGER.FNAME
 FROM BAND_MEMBER MEMBER JOIN BAND_MEMBER MANAGER
 ON (MEMBER.MEMBER_ID = MANAGER.MENTOR_ID);

SELECT BAND_NAME, ALBUM_NAME, S.SONG_NAME, S.AUTHOR, SINGER, S.COPYWRITE 
 FROM ALBUM_SONG albumSong,  SONG S
 WHERE (LENGTH BETWEEN 5 AND 15);
  

-- SECTION 8
-- MIN: Used with columns that store any data type to return the minimum value.
-- MIN: Used with columns that store any data type to return the minimum value.

-- MAX: Used with columns that store any data type to return the maximum value.
-- MAX: Used with columns that store any data type to return the maximum value.

-- SUM: Used with columns that store numeric data to find the total or sum of values.
-- SUM: Used with columns that store numeric data to find the total or sum of values.

-- AVG: Used with columns that store numeric data to compute the average.
-- AVG: Used with columns that store numeric data to compute the average.
-- COUNT: Returns the number of rows. 

-- VARIANCE: Used with columns that store numeric data to calculate the spread of data around the mean. 
-- VARIANCE: Used with columns that store numeric data to calculate the spread of data around the mean.

-- STDDEV: Similar to variance, standard deviation measures the spread of data. 
-- STDDEV: Similar to variance, standard deviation measures the spread of data.

-- Group Functions operate on sets of rows to give one result per group.
-- Group functions cannot be used in the WHERE clause:
-- Group functions ignore NULL values.
-- Group functions cannot be used in the WHERE clause.

-- NOTE: MIN, MAX and COUNT can be used with any data type;
-- SUM, AVG, STDDEV, and VARIANCE can be used only with numeric data types.

SELECT MIN (HOURLY_PAY) AS"MIN SALARY"
 FROM EMPLOYEE;

SELECT MIN (EMPLOYEE_ID) AS"MIN ID"
 FROM EMPLOYEE;

SELECT MAX (EMPLOYEE_ID) AS"MAX ID"
 FROM EMPLOYEE;

SELECT MAX (LENGTH) AS"MAX SONG LENGTH"
 FROM ALBUM_SONG;

SELECT MAX (RELEASE_DATE) AS"NEWEST SONG"
 FROM ALBUM_SONG;

SELECT SUM(HOURLY_PAY * 40 * 4 *12) AS "SUM OF SALARY"
 FROM EMPLOYEE
 WHERE IS_SALARY = 'Y';

SELECT SUM(LENGTH) AS "SUM OF SONGS LENGTH"
 FROM ALBUM_SONG;

SELECT ROUND (AVG(LENGTH), 2) AS "AVERAGE SONG LENGTH"
 FROM ALBUM_SONG;

SELECT ROUND (AVG(LENGTH), 2) AS "AVERAGE SONG LENGTH"
 FROM ALBUM_SONG
 WHERE SINGER = 'Shakira';

SELECT ROUND (VARIANCE(LENGTH), 4) AS "AVERAGE SONG LENGTH"
 FROM ALBUM_SONG;

SELECT ROUND (STDDEV(LENGTH), 4) AS "AVERAGE SONG LENGTH"
 FROM ALBUM_SONG;

SELECT SUM(HOURLY_PAY * 40 * 4 *12) AS "SUM OF SALARY", 
       MIN (HOURLY_PAY * 40 * 4 *12) AS"MIN SALARY", 
       MAX (HOURLY_PAY * 40 * 4 *12) AS"MAX SALARY"
 FROM EMPLOYEE
 WHERE IS_SALARY = 'Y';


-- COUNT(expression) returns the number of non-null values in the expression column.
SELECT COUNT (EMPLOYEE_ID)
 FROM EMPLOYEE;

-- We use COUNT(*) when we want to make sure that we count all the rows (including duplicates), as well as those that may have nulls in one or more columns.
SELECT COUNT (*)
 FROM EMPLOYEE;

-- The keyword DISTINCT is used to return only nonduplicate values or combinations of non-duplicate values in a query.
-- To eliminate duplicate rows, use the DISTINCT keyword 
SELECT DISTINCT EMPLOYEE_TYPE
 FROM employee;

SELECT SUM(DISTINCT LENGTH) AS "SUM OF SONGS LENGTH"
 FROM ALBUM_SONG;

SELECT ROUND (AVG (NVL(LENGTH, 2))) AS "AVERAGE SONG LENGTH"
 FROM ALBUM_SONG;


-- SECTION 9
-- Group functions ignore null values
-- GROUP BY Guidelines
-- • Important guidelines to remember when using a
-- GROUP BY clause are:
-- – If you include a group function (AVG, SUM, COUNT, MAX, MIN, STDDEV, VARIANCE) in a SELECT clause along with any other individual columns, each individual column must also appear in the GROUP BY clause.
-- – You cannot use a column alias in the GROUP BY clause.
-- – The WHERE clause excludes rows before they are divided into groups.

SELECT  EMPLOYEE_TYPE, MAX(HOURLY_PAY)
 FROM EMPLOYEE
 GROUP BY EMPLOYEE_TYPE;

SELECT  SONG_TYPE, SUM (LENGTH)
 FROM ALBUM_SONG
 GROUP BY SONG_TYPE;

SELECT  SONG_TYPE, COUNT (SONG_NAME) AS "SONG_COUNT"
 FROM ALBUM_SONG
 GROUP BY SONG_TYPE;

SELECT  SONG_TYPE, COUNT (SONG_NAME) AS "SONG_COUNT"
 FROM ALBUM_SONG
 WHERE SINGER = 'Shakira'
 GROUP BY SONG_TYPE;

SELECT  SONG_TYPE, COUNT (SONG_NAME) AS "SONG_COUNT"
 FROM ALBUM_SONG
 WHERE SINGER != 'Shakira'
 GROUP BY SONG_TYPE;

SELECT  SONG_TYPE, SINGER, COUNT (*) AS "SONG_COUNT"
 FROM ALBUM_SONG
 GROUP BY SINGER, SONG_TYPE;

-- The ORDER BY clause (if used) is always last!
-- SELECT column, group_function
-- FROM table
-- WHERE
-- GROUP BY
-- HAVING
-- ORDER BY
SELECT SINGER, COUNT (*) AS "SONG_COUNT"
 FROM ALBUM_SONG
 GROUP BY SINGER
 HAVING MIN (LENGTH) > 2;


-- The action of ROLLUP is straightforward: it creates subtotals that roll up from the most detailed level to a grand total
-- • ROLLUP uses an ordered list of grouping columns in its argument list.
-- • First, it calculates the standard aggregate values specified in the GROUP BY clause.
-- • Next, it creates progressively higher-level subtotals, moving from right to left through the list of grouping columns.
-- • Finally, it creates a grand total.
SELECT  EMPLOYEE_TYPE, SUM(HOURLY_PAY)
 FROM EMPLOYEE
 GROUP BY  ROLLUP (EMPLOYEE_TYPE);

SELECT  EMPLOYEE_TYPE, IS_SALARY, SUM(HOURLY_PAY)
 FROM EMPLOYEE
 GROUP BY  ROLLUP (EMPLOYEE_TYPE, IS_SALARY);


-- CUBE, like ROLLUP, is an extension to the GROUP BY
-- clause.
-- • It produces cross-tabulation reports.
-- • It can be applied to all aggregate functions including
-- AVG, SUM, MIN, MAX, and COUNT.
-- • Columns listed in the GROUP BY clause are crossreferenced to create a superset of groups.
-- • The aggregate functions specified in the SELECT list are
-- applied to this group to create summary values for the
-- additional super-aggregate rows. 

-- Every possible combination of rows is aggregated by
-- CUBE.
-- • If you have n columns in the GROUP BY clause, there
-- will be 2n possible super-aggregate combinations.
-- • Mathematically these combinations form an ndimensional cube, which is how the operator got its
-- name.

SELECT  EMPLOYEE_TYPE, IS_SALARY, SUM(HOURLY_PAY)
 FROM EMPLOYEE
 GROUP BY  CUBE (EMPLOYEE_TYPE, IS_SALARY);

SELECT  EMPLOYEE_TYPE, IS_SALARY, SUM(HOURLY_PAY)
 FROM EMPLOYEE
 WHERE IS_SALARY ='Y'
 GROUP BY  CUBE (EMPLOYEE_TYPE, IS_SALARY);

-- The UNION operator returns all rows from both tables, after eliminating duplicates.
-- The UNION ALL operator returns all rows from both tables, without eliminating duplicates.
-- The INTERSECT operator returns all rows common to both tables.
-- The MINUS operator returns all rows found in one table but not the other.

SELECT SONG_NAME, COPYWRITE
 FROM SONG
 UNION
 SELECT SONG_NAME, RELEASE_DATE
 FROM ALBUM_SONG
 ORDER BY COPYWRITE;

SELECT SONG_NAME, COPYWRITE
 FROM SONG
 INTERSECT
 SELECT SONG_NAME, RELEASE_DATE
 FROM ALBUM_SONG
 ORDER BY COPYWRITE;

SELECT SONG_NAME, COPYWRITE
 FROM SONG
 MINUS
 
 SELECT SONG_NAME, RELEASE_DATE
 FROM ALBUM_SONG
 ORDER BY COPYWRITE;


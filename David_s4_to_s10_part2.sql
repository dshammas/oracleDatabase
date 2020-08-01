-- SECTION 10
-- A subquery is a SELECT statement that is embedded in a clause of another SELECT statement.
-- • A subquery executes once before the main query.
-- • The result of the subquery is used by the main or outer query.
-- • Subqueries can be placed in a number of SQL clauses, including the WHERE clause, the HAVING clause, and the FROM clause.

-- • Guidelines:
-- – The subquery is enclosed in parentheses.
-- – The subquery is placed on the right side of the comparison condition.
-- – The outer and inner queries can get data from different tables.
-- – Only one ORDER BY clause can be used for a SELECT statement; if used, it must be the last clause in the outer query.
-- – A subquery cannot have its own ORDER BY clause.
-- – The only limit on the number of subqueries is the buffer size the query uses.

SELECT SONG_NAME, COPYWRITE, AUTHOR
 FROM SONG
 WHERE AUTHOR = (
     SELECT AUTHOR
     FROM ALBUM_SONG
     WHERE AUTHOR ='Dawood Dawood'
     AND SINGER = 'Shakira'
);

SELECT MEMBER_ID, FNAME, LNAME, BAND_NAME
 FROM BAND_MEMBER
 WHERE BAND_NAME = (
      SELECT BAND_NAME
      FROM BAND
      WHERE BAND_NAME = 'Yes'
);


SELECT SONG_NAME, COPYWRITE, AUTHOR
 FROM SONG
 WHERE AUTHOR = (
     SELECT CONCAT(fname ||' ', lname) AS NAME
     FROM EMPLOYEE
     WHERE EMPLOYEE_ID = 70
)
AND COPYWRITE <= (
    SELECT RELEASE_DATE
    FROM ALBUM_SONG
    WHERE RELEASE_DATE BETWEEN '01-DEC-2019' AND '01-JAN-2020'
    AND SONG_NAME = 'Waka Waka'
);

SELECT SINGER, COUNT (*) AS "SONG_COUNT"
 FROM ALBUM_SONG
 GROUP BY SINGER
 HAVING MAX (LENGTH) < (
       SELECT LENGTH
       FROM ALBUM_SONG
       WHERE SONG_NAME = 'Waka Waka'
);


-- The IN operator is used within the outer query WHERE clause to select only those rows which are IN the list of
-- values returned from the inner query.
SELECT MEMBER_ID, FNAME, LNAME, BAND_NAME
 FROM BAND_MEMBER
 WHERE MEMBER_ID = MENTOR_ID
 AND BAND_NAME IN (
      SELECT BAND_NAME
      FROM BAND
);

-- The ANY operator is used when we want the outerquery WHERE clause to select the rows which match
-- the criteria (<, >, =, etc.) of at least one value in the
-- subquery result set.
SELECT FNAME, LNAME, EMPLOYEE_ID
 FROM EMPLOYEE
 WHERE EMPLOYEE_ID > ANY (
      SELECT MANAGER_ID
      FROM EMPLOYEE
);

-- • The ALL operator is used when we want the outer-query
-- WHERE clause to select the rows which match the criteria
-- ( <, >, =, etc.) of all of the values in the subquery result set.
-- • The ALL operator compares a value to every value returned
-- by the inner query.
SELECT FNAME, LNAME, EMPLOYEE_ID
 FROM EMPLOYEE
 WHERE EMPLOYEE_ID > ALL (
      SELECT MANAGER_ID
      FROM EMPLOYEE
      WHERE MANAGER_ID IS NOT NULL
);

SELECT SINGER, COUNT (*) AS "SONG_COUNT"
 FROM ALBUM_SONG
 GROUP BY SINGER
 HAVING MAX (LENGTH) < ANY (
       SELECT LENGTH
       FROM ALBUM_SONG
);

SELECT EMPLOYEE_ID, MANAGER_ID
 FROM EMPLOYEE
 WHERE (EMPLOYEE_ID, MANAGER_ID) IN (
      SELECT EMPLOYEE_ID, MANAGER_ID
      FROM EMPLOYEE
      WHERE EMPLOYEE_ID IN (70, 80)
);

SELECT FNAME, LNAME, HOURLY_PAY
 FROM EMPLOYEE
 WHERE HOURLY_PAY > (
      SELECT HOURLY_PAY
      FROM EMPLOYEE e
      WHERE e.EMPLOYEE_ID = 70
);

-- Write the query for the following requirement:
-- – Display a list of employee last names that are not managers.
-- • To construct this query, you will first need to get a list of manager_ids from the employee table, then return the names of the employees whose employee id is not on the managers list.
-- • We can create a named subquery using the WITH clause to retrieve the manager_id from the employees table, then the outer query will return the employees that do not appear on that list.

-- syntax for the WITH clause is as follows:
-- WITH subquery-name AS (subquery),
-- subquery-name AS (subquery)
-- SELECT column-list
-- FROM {table | subquery-name | view}
-- WHERE condition is true;

WITH MANAGER AS (
     SELECT  DISTINCT MANAGER_ID
     FROM EMPLOYEE
     WHERE MANAGER_ID IS NOT NULL
)
SELECT LNAME AS "NOT A MANAGER"
       FROM EMPLOYEE
       WHERE EMPLOYEE_ID NOT IN (
                      SELECT * 
                      FROM MANAGER
);


WITH MANAGER AS (
     SELECT  DISTINCT MANAGER_ID
     FROM EMPLOYEE
     WHERE MANAGER_ID IS NOT NULL
)
SELECT LNAME AS "MANAGER"
       FROM EMPLOYEE
       WHERE EMPLOYEE_ID IN (
                      SELECT * 
                      FROM MANAGER
);

SELECT EMP.EMPLOYEE_ID, FNAME
 FROM EMPLOYEE EMP, BAND BAN
 WHERE EMP.EMPLOYEE_ID = BAN.PRODUCER_EMP_ID;

SELECT EMP.EMPLOYEE_ID, FNAME, lname, hourly_pay
 FROM EMPLOYEE EMP
 where ( hourly_pay between 49 and 99);

select emp.fname, emp.lname
 from employee emp, employee manager
 where emp.employee_id = manager.manager_id (+);

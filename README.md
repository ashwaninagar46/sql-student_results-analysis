# SQL Student Results Analysis 📊

A complete SQL project to learn and practice SQL using student performance data.  
Includes:
- Table schema
- 50+ INSERT records
- 100+ real-world queries
- Practice problems with solutions

## 📁 File Structure

| File | Description |
|------|-------------|
| `01_create_table.sql` | Creates the `student_results` table |
| `02_insert_data.sql` | Inserts 50+ sample records |
| `03_sql_basics.sql` | SELECT, WHERE, ORDER BY, LIKE, BETWEEN, etc. |
| `04_aggregate_functions.sql` | COUNT, SUM, AVG, MIN, MAX |
| `05_groupby_having.sql` | GROUP BY, HAVING examples |
| `06_subqueries.sql` | Subqueries for MAX, AVG, etc. |
| `07_case_logic.sql` | CASE statement & conditional logic |
| `08_dml_operations.sql` | INSERT, UPDATE, DELETE, SET NULL |
| `09_advanced_queries.sql` | Ranking, duplicates, percent, top scorers |
| `10_backup.sql` | Backup using INSERT INTO SELECT |
| `_50_sql_practice_questions.sql`|  Practice questions with answers
| `90_sql_practice_questions.sql` | Practice questions with answers |

## 📌 Table Structure

```sql
CREATE TABLE student_results (
  student_id INT,
  name VARCHAR(50),
  subject VARCHAR(30),
  marks INT,
  grade CHAR(1)
);

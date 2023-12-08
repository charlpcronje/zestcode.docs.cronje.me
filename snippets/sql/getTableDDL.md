# Get tables, Columns, Indexes and Foreign Keys

The following SQL Query for Mysql / MariaDB will output the database structure in the smallest output possible with an explanation in the column names. This is very handy if you want to include the DB Structure in your questions to a LLM

## Expected Output

> This query will return a result set where each row has three columns:

- **InfoType**: The type of information (TABLE, INDEX, or FOREIGN_KEY).
- **TableName**: The name of the table.
- **Info**: The columns, index columns, or foreign key columns, depending on the InfoType.


##Design Pattern and Optimization
For reusable queries like this, the CQRS (Command Query Responsibility Segregation) pattern remains a good fit. It allows you to separate complex queries from the write operations, making it easier to optimize and manage.

```sql
-- This query fetches all tables, columns, indexes, and foreign keys from the current database and includes explanations in the output.

SELECT 
  'EXPLANATION' AS InfoType, 
  'InfoType: Indicates the type of information (TABLE, INDEX, FOREIGN_KEY).' AS TableName,
  'TableName: The name of the table. Info: The columns, index columns, or foreign key columns, depending on the InfoType.' AS Info
UNION ALL

-- Fetching table names and their columns
SELECT 
  'TABLE' AS InfoType,
  TABLE_NAME AS TableName,
  GROUP_CONCAT(COLUMN_NAME ORDER BY ORDINAL_POSITION) AS Info
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = DATABASE()
GROUP BY TABLE_NAME

UNION ALL

-- Fetching index names and their columns
SELECT 
  'INDEX' AS InfoType,
  TABLE_NAME AS TableName,
  CONCAT(INDEX_NAME, '(', GROUP_CONCAT(COLUMN_NAME ORDER BY SEQ_IN_INDEX), ')') AS Info
FROM INFORMATION_SCHEMA.STATISTICS
WHERE TABLE_SCHEMA = DATABASE()
GROUP BY TABLE_NAME, INDEX_NAME

UNION ALL

-- Fetching foreign key names and their columns along with referenced tables and columns
SELECT 
  'FOREIGN_KEY' AS InfoType,
  TABLE_NAME AS TableName,
  CONCAT(TABLE_NAME, ' - ', CONSTRAINT_NAME, ' RELATED TO ', REFERENCED_TABLE_NAME, ':', REFERENCED_COLUMN_NAME) AS Info
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE TABLE_SCHEMA = DATABASE() AND REFERENCED_TABLE_NAME IS NOT NULL;
```

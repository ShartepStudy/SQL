use Petrash;
go

SELECT OBJECT_NAME(OBJECT_ID) AS NameofConstraint,
SCHEMA_NAME(schema_id) AS SchemaName,
OBJECT_NAME(parent_object_id) AS TableName,
type_desc AS ConstraintType
FROM sys.objects
WHERE type_desc LIKE '%CONSTRAINT'
GO
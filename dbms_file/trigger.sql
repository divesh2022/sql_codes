CREATE TRIGGER log_changes
ON Student
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;

    -- Handle INSERT operations
    INSERT INTO log_record (log_message, old_value, new_value, table_name, column_name, operation_type)
    SELECT 
        'INSERT operation performed on Student table',
        NULL,
        CONCAT('Student_Id: ', Student_Id, ', Name: ', Student_name),
        'Student',
        NULL,
        'INSERT'
    FROM INSERTED;

    -- Handle DELETE operations
    INSERT INTO log_record (log_message, old_value, new_value, table_name, column_name, operation_type)
    SELECT 
        'DELETE operation performed on Student table',
        CONCAT('Student_Id: ', Student_Id, ', Name: ', Student_name),
        NULL,
        'Student',
        NULL,
        'DELETE'
    FROM DELETED;

    -- Handle UPDATE operations
    INSERT INTO log_record (log_message, old_value, new_value, table_name, column_name, operation_type)
    SELECT 
        'UPDATE operation performed on Student table',
        CONCAT('Student_Id: ', d.Student_Id, ', Name: ', d.Student_name),
        CONCAT('Student_Id: ', i.Student_Id, ', Name: ', i.Student_name),
        'Student',
        NULL,
        'UPDATE'
    FROM DELETED d
    INNER JOIN INSERTED i ON d.Student_Id = i.Student_Id;
END;


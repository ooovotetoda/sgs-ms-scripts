DECLARE @ContainerID UNIQUEIDENTIFIER = '<container-id>';

SELECT
    '[' + STRING_AGG(
        '{' +
        '"ID": "' + CAST(ID AS NVARCHAR(36)) + '", ' +
        '"ContainerID": "' + CAST(ContainerID AS NVARCHAR(36)) + '", ' +
        '"StartDate": "' + CONVERT(NVARCHAR, StartDate, 120) + '", ' +
        '"EndDate": "' + CONVERT(NVARCHAR, EndDate, 120) + '", ' +
        '"OperationType": "' + OperationType + '", ' +
        '"OperatorName": "' + OperatorName + '", ' +
        '"InspectionLocation": "' + InspectionLocation + '"' +
        '}', ','
    ) + ']'
AS JsonOutput
FROM Operations
WHERE ContainerID = @ContainerID;

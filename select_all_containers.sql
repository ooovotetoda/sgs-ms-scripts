SELECT
    '[' + STRING_AGG(
        '{' +
        '"ID": "' + CAST(ID AS NVARCHAR(36)) + '", ' +
        '"Number": ' + CAST(Number AS NVARCHAR(10)) + ', ' +
        '"Type": "' + Type + '", ' +
        '"Length": ' + CAST(Length AS NVARCHAR(20)) + ', ' +
        '"Width": ' + CAST(Width AS NVARCHAR(20)) + ', ' +
        '"Height": ' + CAST(Height AS NVARCHAR(20)) + ', ' +
        '"Weight": ' + CAST(Weight AS NVARCHAR(20)) + ', ' +
        '"IsEmpty": ' + CAST(CASE WHEN IsEmpty = 1 THEN 'true' ELSE 'false' END AS NVARCHAR(5)) + ', ' +
        '"ArrivalDate": "' + CONVERT(NVARCHAR, ArrivalDate, 120) + '"' +
        '}', ','
    ) + ']'
AS JsonOutput
FROM Containers;

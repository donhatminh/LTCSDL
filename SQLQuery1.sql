
/*
	*CAU 1 Viết stored-procedure tính tổng 2 số a, b và in kết quả theo định dạng sau:
	*‘Tổng 2 số’ + @a + ‘và’ + @b ‘là:’ + @kq
*/
IF OBJECT_ID('uspt' , 'P') IS NOT NULL
DROP PROC uspt
GO

 CREATE PROC uspt
	@a int,
	@b int
	
AS
	return (@a +@b) 
GO

DECLARE @TONG int = 0
EXEC @TONG = uspt 2,3 
PRINT CAST (@tong AS varchar(10))

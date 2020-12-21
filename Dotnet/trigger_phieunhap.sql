CREATE TRIGGER Cap_Nhat_SL_Kho_Them ON PHIEU_NHAP AFTER INSERT AS 
BEGIN
	UPDATE SAN_PHAM
	SET SLTon = SLTon + (
		SELECT inserted.SLN
		FROM inserted
	)where MaSP = ( select inserted.MaSP from inserted)
end

create TRIGGER Huy_Dat_Hang ON PHIEU_NHAP FOR DELETE AS 
BEGIN
	UPDATE SAN_PHAM
	SET SLTon = SLTon - (SELECT SLN FROM deleted WHERE MaSP = SAN_PHAM.MaSP)
	FROM SAN_PHAM 
	JOIN deleted ON SAN_PHAM.MaSP = deleted.MaSP
END


CREATE TRIGGER Cap_Nhat_Dat_Hang on PHIEU_NHAP after update AS
BEGIN
   UPDATE SAN_PHAM SET SLTon = SLTon +
	   (SELECT inserted.SLN FROM inserted WHERE MaSP = inserted.MaSP) -
	   (SELECT deleted.SLN FROM deleted WHERE MaSP = deleted.MaSP)
   FROM SAN_PHAM 
   JOIN deleted ON deleted.MaSP = deleted.MaSP
END
create view Hien_thi_HH as
select MaSP as "MÃ SP",TenNhom as "TÊN NHÓM",TenSP AS "TÊN SẢN PHẨM",DonViTinh AS "DVT",SLTon AS "SLT",GiaBan AS "GIÁ BÁN",GiaNhap AS "GIÁ NHẬP",TenNCC AS "NHÀ CUNG CẤP"

from SAN_PHAM,NHA_CUNG_CAP,NHOM_SAN_PHAM

where SAN_PHAM.MaNhom = NHOM_SAN_PHAM.MaNhom and SAN_PHAM.MaNCC = NHA_CUNG_CAP.MaNCC

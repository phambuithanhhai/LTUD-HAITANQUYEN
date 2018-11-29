CREATE DATABASE QLOTO
GO
USE QLOTO
GO
--tao bang admin
CREATE TABLE ADMIN(
MASO INT,USERNAME NVARCHAR(20),MATKHAU CHAR(20) ,CHUCVU NVARCHAR(20),PRIMARY KEY(MASO)
)
---tao bang hopdong
CREATE TABLE HOPDONG(
MASOPHIEU INT, SOHOPDONG NVARCHAR(15), LOAIHINH NVARCHAR(15),
 NGAYTHUE DATE, NGAYTRA DATE, NGAYKYHOPDONG DATE, 
 MASOTHUE CHAR(20),THANHTIEN FLOAT ,GHICHU NVARCHAR(50),MAKHACHHANG NVARCHAR(20),MASOXE CHAR(20),TRANGTHAI NVARCHAR(50),
 PRIMARY KEY(MASOPHIEU)
 )
--tao bang khach hang
CREATE TABLE KHACHHANG(
MAKHACHHANG NVARCHAR(20),HOTEN NVARCHAR(50), DIACHI NVARCHAR(100), STD INT, CMND INT, NGAYCAPCMND DATE,
 NOICAPCMND NVARCHAR(50), SOGPLX INT, NGAYCAPGPLX DATE, NOICAPGPLX NVARCHAR(50), NGHENGHIEP NVARCHAR(50),PRIMARY KEY(MAKHACHHANG)
 )
---tao bang xe
CREATE TABLE XE(
MASOXE CHAR(20),NHANHIEU NVARCHAR(50), TENXE NVARCHAR(50),BIENSO CHAR(20),LOAIXE NVARCHAR(20),
DIACHIBAIXE NVARCHAR(50),TINHTRANG NVARCHAR(50),PRIMARY KEY(MASOXE)
)

CREATE TABLE LOAIHINH(
LOAIHINH NVARCHAR(15),TENLOAIHINH NVARCHAR(20),THOIGIAN NVARCHAR(50),KHUYENMAI FLOAT,PRIMARY KEY(LOAIHINH)
)
----Bảng Sửa Chữa - Bảo Trì Xe ----
CREATE TABLE SUACHUABAOTRI(
MAHOADON CHAR(10), NHACUNGCAP CHAR(10), NGAYSUACHUA DATE, NGAYHOANTAT DATE, MASOXE CHAR(20), NOIDUNGCHITIET NVARCHAR(100), TONGTIEN float, THANHTOAN CHAR(10)
PRIMARY KEY(MAHOADON))
---XOA BANG
DROP TABLE ADMIN
DROP TABLE HOPDONG
DROP TABLE KHACHHANG
DROP TABLE LOAIHINH
DROP TABLE XE

---THEM DU LIEU ADMIN---
INSERT INTO ADMIN(MASO,USERNAME,MATKHAU,CHUCVU) VALUES (1,'Ho Van Quyen','12345','Admin')
INSERT INTO ADMIN(MASO,USERNAME,MATKHAU,CHUCVU) VALUES (2,'Nguyen Chi Tan','123','Admin')
INSERT INTO ADMIN(MASO,USERNAME,MATKHAU,CHUCVU) VALUES (3,'Bui Thi Nhut Anh','nhutanh','Admin')
INSERT INTO ADMIN(MASO,USERNAME,MATKHAU,CHUCVU) VALUES (4,'Pham Bui Thanh Hai','12345','Admin')


--THEM DU LIEU HOPDONG--
INSERT INTO HOPDONG
VALUES (01,'A1','DL','05/08/2018','08/08/2018','04/08/2018','1',300000,'','KH1',1,'DANG THUE')
INSERT INTO HOPDONG
VALUES (02,'A2','KD','08/01/2018','05/03/2018','07/01/2018','1',15000000,'','KH2',1,'DA THANH LY')


---THEM DU LIEU KHACH HANG---
INSERT INTO KHACHHANG(MAKHACHHANG,HOTEN , DIACHI , STD , CMND , NGAYCAPCMND ,
 NOICAPCMND , SOGPLX , NGAYCAPGPLX, NOICAPGPLX , NGHENGHIEP )
 VALUES ('KH1','NGUYEN VAN A','THU DUC',012369745,126485629,'05/02/1999','THU DUC',1234568,'02/08/2004','THU DUC','KY SU')
 INSERT INTO KHACHHANG(MAKHACHHANG,HOTEN , DIACHI , STD , CMND , NGAYCAPCMND ,
 NOICAPCMND , SOGPLX , NGAYCAPGPLX, NOICAPGPLX , NGHENGHIEP )
 VALUES ('KH2','NGUYEN VAN B','BINH DUONG',01236425,12545629,'06/08/1999','THU DUC',1275568,'03/05/2004','BINH DUONG','NVVP')
 INSERT INTO KHACHHANG(MAKHACHHANG,HOTEN , DIACHI , STD , CMND , NGAYCAPCMND ,
 NOICAPCMND , SOGPLX , NGAYCAPGPLX, NOICAPGPLX , NGHENGHIEP )
 VALUES ('KH3','NGUYEN VAN C','DONG NAI',0151215745,056512629,'08/06/2001','DONG NAI',1523568,'06/10/2005','DONG NAI','GIAM DOC')
 
 
 ---THEM DU LIEU LOAI HINH
 INSERT INTO LOAIHINH(LOAIHINH,TENLOAIHINH,THOIGIAN,KHUYENMAI)
 VALUES('DL','DU LICH','3',0.1)
 INSERT INTO LOAIHINH(LOAIHINH,TENLOAIHINH,THOIGIAN,KHUYENMAI)
 VALUES('KD','KINH DOANH','6',0.15)
 INSERT INTO LOAIHINH(LOAIHINH,TENLOAIHINH,THOIGIAN,KHUYENMAI)
 VALUES('CN','CA NHAN','3',0.1)
 INSERT INTO LOAIHINH(LOAIHINH,TENLOAIHINH,THOIGIAN,KHUYENMAI)
 VALUES('CT','CONG TY','12',0.2)
 
 
 ---THEM DU LIEU XE---

 INSERT INTO XE(MASOXE ,NHANHIEU, TENXE,BIENSO,LOAIXE,DIACHIBAIXE,TINHTRANG)
 VALUES(1,'TOYOTA','TOYOTA WIGO','51C-878.49','4 CHO','THU DUC','YES')
  INSERT INTO XE(MASOXE ,NHANHIEU, TENXE,BIENSO,LOAIXE,DIACHIBAIXE,TINHTRANG)
 VALUES(2,'TOYOTA','TOYOTA VIOS','51C-875.46','4 CHO','THU DUC','NO')
  INSERT INTO XE(MASOXE ,NHANHIEU, TENXE,BIENSO,LOAIXE,DIACHIBAIXE,TINHTRANG)
 VALUES(3,'TOYOTA','TOYOTA ALTIS','51C-845.06','4 CHO','BINH DUONG','NO')
  INSERT INTO XE(MASOXE ,NHANHIEU, TENXE,BIENSO,LOAIXE,DIACHIBAIXE,TINHTRANG)
 VALUES(4,'TOYOTA','TOYOTA YARIS','59C-878.46','4 CHO','TAN BINH','YES')
  INSERT INTO XE(MASOXE ,NHANHIEU, TENXE,BIENSO,LOAIXE,DIACHIBAIXE,TINHTRANG)
 VALUES(5,'TOYOTA','TOYOTA CAMRY','59C-848.05','4 CHO','DI AN','NO')
  INSERT INTO XE(MASOXE ,NHANHIEU, TENXE,BIENSO,LOAIXE,DIACHIBAIXE,TINHTRANG)
 VALUES(6,'TOYOTA','TOYOTA AVANZA','60C-846.49','4 CHO','DONG NAI','YES')
  INSERT INTO XE(MASOXE ,NHANHIEU, TENXE,BIENSO,LOAIXE,DIACHIBAIXE,TINHTRANG)
 VALUES(7,'TOYOTA','TOYOTA RUSH','60C-878.49','4 CHO','DONG NAI','NO')
  INSERT INTO XE(MASOXE ,NHANHIEU, TENXE,BIENSO,LOAIXE,DIACHIBAIXE,TINHTRANG)
 VALUES(8,'TOYOTA','TOYOTA INNOVA','60C-475.49','7 CHO','THU DUC','YES')
  INSERT INTO XE(MASOXE ,NHANHIEU, TENXE,BIENSO,LOAIXE,DIACHIBAIXE,TINHTRANG)
 VALUES(9,'TOYOTA','TOYOTA FORTUNE','61C-478.49','7 CHO','BINH TAN','NO')
  INSERT INTO XE(MASOXE ,NHANHIEU, TENXE,BIENSO,LOAIXE,DIACHIBAIXE,TINHTRANG)
 VALUES(10,'KIA','KIA MORNING','51C-848.01','4 CHO','THU DUC','NO')
   INSERT INTO XE(MASOXE ,NHANHIEU, TENXE,BIENSO,LOAIXE,DIACHIBAIXE,TINHTRANG)
 VALUES(11,'KIA','KIA CERATO','61C-868.01','4 CHO','BINH DUONG','NO')
 --tao khoa ngoai
ALTER TABLE HOPDONG ADD CONSTRAINT FK_LH_LH FOREIGN KEY (LOAIHINH) REFERENCES LOAIHINH(LOAIHINH)
ALTER TABLE HOPDONG ADD CONSTRAINT FK_KH_MKH FOREIGN KEY (MAKHACHHANG) REFERENCES KHACHHANG(MAKHACHHANG)
ALTER TABLE HOPDONG ADD CONSTRAINT FK_XE_MX FOREIGN KEY (MASOXE) REFERENCES XE(MASOXE)
ALTER TABLE SUACHUABAOTRI ADD CONSTRAINT FK_X FOREIGN KEY(MASOXE) REFERENCES XE(MASOXE)
---TAO STOREPROCEDURE
--LAY DANH SACH ADMIN
CREATE PROC sp_layDsAdmin
AS
SELECT * FROM ADMIN
GO
---LAY DS HOPDONG
CREATE PROC sp_LayDsHD
AS
SELECT * FROM HOPDONG
GO
---LAY DS KHACH HANG
 CREATE PROC sp_LayDsKH
AS
SELECT * FROM KHACHHANG
GO
---LAY DS LOAIHINH
CREATE PROC sp_LayDsLH
AS
SELECT * FROM LOAIHINH
GO
---LAY DS XE
CREATE PROC sp_LayDsXE
AS
SELECT * FROM XE
GO
---LAY DS SUACHUA
CREATE PROC sp_LayDsSC
AS
SELECT * FROM SUACHUABAOTRI
GO
---SP-THEM ADMIN
CREATE PROC sp_themAdmin(@MASO INT,@USERNAME NVARCHAR(20),@MATKHAU CHAR(20) ,@CHUCVU NVARCHAR(20))
AS 
INSERT INTO ADMIN(MASO,USERNAME,MATKHAU,CHUCVU)
VALUES(@MASO , @USERNAME , @MATKHAU , @CHUCVU)
EXEC  sp_themAdmin 5,N'NGUYEN THANH CONG','123',N'NHAN VIEN'
EXEC sp_layDsAdmin

-----THEM LOAIHINH
CREATE PROC sp_themLoaihinh(@LOAIHINH NVARCHAR(15),@TENLOAIHINH NVARCHAR(20),@THOIGIAN NVARCHAR(50),@KHUYENMAI FLOAT)
AS
INSERT INTO LOAIHINH(LOAIHINH,TENLOAIHINH ,THOIGIAN ,KHUYENMAI)
VALUES (@LOAIHINH,@TENLOAIHINH ,@THOIGIAN ,@KHUYENMAI)
EXEC sp_themLoaihinh N'HD',N'HOPDONG',N'4',0.5
EXEC sp_LayDsLH

---THEM HOPDONG
CREATE PROC sp_themHopdong(@MASOPHIEU INT, @SOHOPDONG NVARCHAR(15), @LOAIHINH NVARCHAR(15),
 @NGAYTHUE DATE, @NGAYTRA DATE, @NGAYKYHOPDONG DATE, 
 @MASOTHUE CHAR(20),@THANHTIEN FLOAT ,@GHICHU NVARCHAR(50),@MAKHACHHANG NVARCHAR(20),
 @MASOXE CHAR(20),@TRANGTHAI NVARCHAR(50))
 AS
 INSERT INTO HOPDONG(MASOPHIEU, SOHOPDONG, LOAIHINH ,
 NGAYTHUE, NGAYTRA , NGAYKYHOPDONG , 
 MASOTHUE ,THANHTIEN  ,GHICHU ,
 MAKHACHHANG,MASOXE ,TRANGTHAI)
 VALUES (@MASOPHIEU , @SOHOPDONG, @LOAIHINH ,
 @NGAYTHUE , @NGAYTRA , @NGAYKYHOPDONG , 
 @MASOTHUE,@THANHTIEN  ,@GHICHU ,@MAKHACHHANG ,
 @MASOXE ,@TRANGTHAI)
 EXEC sp_themHopdong 03,N'A3',N'HD','12/08/2018','12/14/2018','12/07/2018','1',300000,N'',N'KH3',1,N'DANG THUE'
 EXEC sp_LayDsHD
 
---THEM KHACHHANG
CREATE PROC sp_themKH(@MAKHACHHANG NVARCHAR(20),@HOTEN NVARCHAR(50),@DIACHI NVARCHAR(100), @STD INT,
 @CMND INT, @NGAYCAPCMND DATE,@NOICAPCMND NVARCHAR(50), @SOGPLX INT, @NGAYCAPGPLX DATE, @NOICAPGPLX NVARCHAR(50), 
 @NGHENGHIEP NVARCHAR(50))
 AS
 INSERT INTO KHACHHANG(MAKHACHHANG,HOTEN , DIACHI , STD , CMND , NGAYCAPCMND ,
 NOICAPCMND , SOGPLX , NGAYCAPGPLX, NOICAPGPLX , NGHENGHIEP)
 VALUES (@MAKHACHHANG,@HOTEN , @DIACHI , @STD , @CMND , @NGAYCAPCMND ,
 @NOICAPCMND , @SOGPLX , @NGAYCAPGPLX, @NOICAPGPLX , @NGHENGHIEP)
 EXEC sp_themKH N'KH4',N'NGUYEN VAN D',N'Go Vap',012369745,126485629,'05/02/1999',N'Go Vap',1234568,'05/08/2004',N'Go Vap',N'giao vien'
 EXEC sp_LayDsKH
 
 ---THEM XE
 CREATE PROC sp_themXe(@MASOXE CHAR(20),@NHANHIEU NVARCHAR(50), @TENXE NVARCHAR(50),@BIENSO CHAR(20),
 @LOAIXE NVARCHAR(20),@DIACHIBAIXE NVARCHAR(50),@TINHTRANG NVARCHAR(50))
 AS
 INSERT INTO XE(MASOXE ,NHANHIEU, TENXE,BIENSO,LOAIXE,DIACHIBAIXE,TINHTRANG)
 VALUES (@MASOXE ,@NHANHIEU, @TENXE,@BIENSO,@LOAIXE,@DIACHIBAIXE,@TINHTRANG)
 EXEC sp_themXe 12,N'KIA',N'KIA taco','51C-568.01',N'7 CHO',N'tp.HCM',N'NO'
 EXEC sp_LayDsXE
 ---THEM SUACHUA
 CREATE PROC sp_themSuaChua(@MAHOADON CHAR(10), @NHACUNGCAP CHAR(10), @NGAYSUACHUA DATE, @NGAYHOANTAT DATE, @MASOXE CHAR(20), @NOIDUNGCHITIET NVARCHAR(100), @TONGTIEN float, @THANHTOAN CHAR(10))
 AS
 INSERT INTO SUACHUABAOTRI(MAHOADON, NHACUNGCAP , NGAYSUACHUA , NGAYHOANTAT , MASOXE, NOIDUNGCHITIET , TONGTIEN, THANHTOAN )
VALUES(@MAHOADON, @NHACUNGCAP , @NGAYSUACHUA , @NGAYHOANTAT , @MASOXE, @NOIDUNGCHITIET , @TONGTIEN, @THANHTOAN)
EXEC sp_themSuaChua '1','Nguyen Van Linh','12/8/2018','12/15/2018',2,N'thay lop xe',500000,'YES'
EXEC  sp_LayDsSC

-----XOA----
 --XOA DANH SACH ADMIN 
 CREATE PROC sp_xoaAdmin(@MASO INT)
 AS
	DELETE ADMIN 
	
	WHERE MASO = @MASO

	EXEC sp_xoaAdmin 1
	EXEC sp_layadmin
	
---XOA DANHSACH KHACHHANG
CREATE PROC	sp_xoaKhachhang(@MAKHACHHANG NVARCHAR(20))
AS
DELETE KHACHHANG
WHERE MAKHACHHANG = @MAKHACHHANG

EXEC sp_xoaKhachhang KH2
EXEC sp_khachhang

--xoa danhsach XE

CREATE PROC sp_xoaXe(@MASOXE CHAR(20))
AS
DELETE XE
WHERE MASOXE = @MASOXE

EXEC sp_xoaXe 1
EXEC sp_xe

-- XOA DANH SACH LOAI HINH
CREATE PROC sp_xoaLoaiHinh(@LOAIHINH NVARCHAR(15))
AS
DELETE LOAIHINH
WHERE LOAIHINH = @LOAIHINH

EXEC sp_xoaLoaiHinh CN
EXEC sp_loaihinh

---XOA DANH SACHHOPDONG
CREATE PROC sp_xoaHopDong(@MASOPHIEU INT)
AS
DELETE HOPDONG
WHERE MASOPHIEU = @MASOPHIEU

EXEC sp_xoaHopDong 1
EXEC sp_hopdong

--xoa danh sach sua chua bao tri
CREATE PROC sp_xoaBaoTri(@MAHOADON CHAR(10))
AS
DELETE SUACHUABAOTRI
WHERE MAHOADON = @MAHOADON

EXEC sp_xoaBaoTri 1
EXEC sp_suaxe

---update hop dong
CREATE PROC sp_updateHopDong(@MASOPHIEU INT, @SOHOPDONG NVARCHAR(15), @LOAIHINH NVARCHAR(15),
 @NGAYTHUE DATE, @NGAYTRA DATE, @NGAYKYHOPDONG DATE, @MASOTHUE CHAR(20),@THANHTIEN FLOAT ,
 @GHICHU NVARCHAR(50),@MAKHACHHANG NVARCHAR(20),@MASOXE CHAR(20),@TRANGTHAI NVARCHAR(50))
AS
UPDATE HOPDONG 
SET SOHOPDONG = @SOHOPDONG, LOAIHINH = @LOAIHINH,
NGAYTHUE = @NGAYTHUE, NGAYTRA = @NGAYTRA, NGAYKYHOPDONG = @NGAYKYHOPDONG, MASOTHUE = @MASOTHUE,
THANHTIEN = @THANHTIEN, GHICHU = @GHICHU, MAKHACHHANG = @MAKHACHHANG, MASOXE = @MASOXE, TRANGTHAI = @TRANGTHAI
WHERE MASOPHIEU = @MASOPHIEU
EXEC  sp_updateHopDong 07,N'A3',N'DL','05/08/2018','08/08/2018','04/08/2018','1',300000,'',N'KH1',1,N'DANG THUE'
EXEC sp_LayDsHD

---update khach hang
CREATE PROC sp_updateKhachHang(@MAKHACHHANG NVARCHAR(20),@HOTEN NVARCHAR(50), @DIACHI NVARCHAR(100), @STD INT, 
@CMND INT, @NGAYCAPCMND DATE,@NOICAPCMND NVARCHAR(50), @SOGPLX INT, @NGAYCAPGPLX DATE, @NOICAPGPLX NVARCHAR(50), 
@NGHENGHIEP NVARCHAR(50)
)
AS
UPDATE KHACHHANG
SET HOTEN = @HOTEN, DIACHI = @DIACHI, STD = @STD, CMND = @CMND, 
NGAYCAPCMND = @NGAYCAPCMND, NOICAPCMND = @NOICAPCMND, SOGPLX = @SOGPLX, NGAYCAPGPLX = @NGAYCAPGPLX,
NOICAPGPLX = @NOICAPGPLX, NGHENGHIEP = @NGHENGHIEP
WHERE MAKHACHHANG = @MAKHACHHANG
EXEC  sp_updateKhachHang 'KH1','NGUYEN K','THU DUC',012369745,126485629,'05/02/1999','THU DUC',1234568,'02/08/2004','THU DUC','KY SU'
EXEC sp_LayDsKH

---update loai hinh
CREATE PROC sp_updateLoaiHinh(@LOAIHINH NVARCHAR(15),@TENLOAIHINH NVARCHAR(20),@THOIGIAN NVARCHAR(50),@KHUYENMAI FLOAT)
AS
UPDATE LOAIHINH
SET TENLOAIHINH = @TENLOAIHINH,THOIGIAN = @THOIGIAN,KHUYENMAI = @KHUYENMAI
WHERE LOAIHINH = @LOAIHINH
EXEC  sp_updateLoaiHinh N'DL',N'DU LICH',N'9:08 3/4/2017',0.1
EXEC sp_LayDsLH

---update xe
CREATE PROC sp_updateXe(@MASOXE CHAR(20),@NHANHIEU NVARCHAR(50), @TENXE NVARCHAR(50),@BIENSO CHAR(20),
@LOAIXE NVARCHAR(20),@DIACHIBAIXE NVARCHAR(50),@TINHTRANG NVARCHAR(50))
AS
UPDATE XE
SET  NHANHIEU = @NHANHIEU, TENXE = @TENXE,BIENSO = @BIENSO, LOAIXE = @LOAIXE, 
DIACHIBAIXE = @DIACHIBAIXE ,TINHTRANG = @TINHTRANG
WHERE MASOXE = @MASOXE
EXEC  sp_updateXe 1,'TOYOTy','TOYOTA WIGO','51C-878.49','4 CHO','THU DUC','YES'
EXEC sp_LayDsXE

---update sua chua
CREATE PROC sp_updateSuaChua(@MAHOADON CHAR(10), @NHACUNGCAP CHAR(10), @NGAYSUACHUA DATE, @NGAYHOANTAT DATE, 
@MASOXE CHAR(20), @NOIDUNGCHITIET NVARCHAR(100), @TONGTIEN float, @THANHTOAN CHAR(10))
AS
UPDATE SUACHUABAOTRI
SET  NHACUNGCAP = @NHACUNGCAP, NGAYSUACHUA = @NGAYSUACHUA, NGAYHOANTAT = @NGAYHOANTAT, 
MASOXE = @MASOXE , NOIDUNGCHITIET = @NOIDUNGCHITIET, TONGTIEN = @TONGTIEN, THANHTOAN = @THANHTOAN
WHERE MAHOADON = @MAHOADON 
EXEC  sp_updateSuaChua '1','Nguyen Van Long','12/8/2018','12/15/2018',2,N'thay lop xe',500000,'YES'
EXEC sp_LayDsSC






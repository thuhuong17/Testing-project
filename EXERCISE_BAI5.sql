﻿CREATE DATABASE QLSV1;

CREATE TABLE SINH_VIEN
(
ID_SV INT PRIMARY KEY NOT NULL,
TEN_SV NVARCHAR(30),
NAM_SINH DATE,
QUE_QUAN NVARCHAR(100)
)

CREATE TABLE GIANG_VIEN
(
ID_GV INT PRIMARY KEY NOT NULL,
TEN_GV NVARCHAR(30),
NAM_SINH DATE,
QUE_QUAN NVARCHAR(100)
)

CREATE TABLE KHOA_HOC
(
ID_KH INT PRIMARY KEY NOT NULL,
TEN_KHOA_HOC NVARCHAR(100),
ID_GV INT,
FOREIGN KEY (ID_GV) REFERENCES GIANG_VIEN(ID_GV)
)

CREATE TABLE PHIEU_DK
(
ID_PHIEU INT PRIMARY KEY NOT NULL,
ID_SV INT,
ID_KH INT,
FOREIGN KEY (ID_SV) REFERENCES SINH_VIEN(ID_SV),
FOREIGN KEY (ID_KH) REFERENCES KHOA_HOC(ID_KH)
)

INSERT INTO SINH_VIEN VALUES (20,N'NGUYEN VAN A', '2000-05-20', 'HAI PHONG')
INSERT INTO SINH_VIEN VALUES (21, N'TRẦN THỊ B', '2001-03-05',N'HÀ NỘI' )
INSERT INTO SINH_VIEN (ID_SV, QUE_QUAN) VALUES (22, 'HAI DUONG')
insert into Sinh_vien values (1,N'Đặng Tuấn Anh','1999-08-08',N'Hải Phòng');
insert into Sinh_vien values (2,N'Hoàng Đức Anh','1999-08-09',N'Hà Nội');
insert into Sinh_vien values (3,N'Lưu Trang Anh','1999-08-10',N'Bắc Ninh');
insert into Sinh_vien values (4,N'Phạm Hoàng Anh','2000-08-11',N'Nam Định');
insert into Sinh_vien values (5,N'Phạm Thị Hiền Anh','2000-07-12',N'Hưng Yên');
insert into Sinh_vien values (6,N'Phạm Khắc Việt Anh','2000-07-13',N'Hải Phòng');
insert into Sinh_vien values (7,N'Đỗ Hoàng Gia Bảo','2000-07-14',N'Hà Nội');
insert into Sinh_vien values (8,N'Trần Thị Minh Châu','1998-07-15',N'Bắc Ninh');
insert into Sinh_vien values (9,N'Tăng Phương Chi','1998-09-16',N'Nam Định');
insert into Sinh_vien values (10,N'Gan Feng Du','1998-09-17',N'Hưng Yên');
insert into Sinh_vien values (11,N'Phạm Tiến Dũng','1998-09-19',N'Hải Phòng');
insert into Sinh_vien values (12,N'Nguyễn Thái Dương','1997-09-19',N'Hà Nội');
insert into Sinh_vien values (13,N'Trần An Dương','1997-05-20',N'Bắc Ninh');
insert into Sinh_vien values (14,N'Mạc Trung Đức','1997-05-21',N'Nam Định');
insert into Sinh_vien values (15,N'Vũ Hương Giang','1997-05-22',N'Hưng Yên');
insert into Sinh_vien values (16,N'Nguyễn Thị Ngân Hà','1997-01-23',N'Hải Phòng');
insert into Sinh_vien values (17,N'Nguyễn Lê Hiếu','1996-01-24',N'Hà Nội');
insert into Sinh_vien values (18,N'Phạm Xuân Hòa','1996-01-25',N'Bắc Ninh');
insert into Sinh_vien values (19,N'Khoa Minh Hoàng','1996-01-26',N'Nam Định');
insert into Sinh_vien values (20,N'Nguyễn Hữu Hiệp Hoàng','1996-01-27',N'Hưng Yên');
insert into Giang_vien values (1,N'Đặng Quốc Việt','1987-7-01',N'Hải Phòng');
insert into Giang_vien values (2,N'Hoàng Văn Bảo','1987-7-02',N'Hà Nội');
insert into Giang_vien values (3,N'Lưu Thanh Tuấn','1987-7-03',N'Bắc Ninh');
insert into Giang_vien values (4,N'Hoàng Thị Thanh Mai','1987-7-04',N'Nam Định');
insert into Giang_vien values (5,N'Nguyễn Quỳnh Hoa','1987-7-05',N'Hưng Yên');
insert into Giang_vien values (6,N'Cao Thị Xuân Dung','1992-6-06',N'Hải Phòng');
insert into Giang_vien values (7,N'Đỗ Hồng Việt','1992-6-07',N'Hà Nội');
insert into Giang_vien values (8,N'Phạm Thị Thu Hương','1992-6-08',N'Bắc Ninh');
insert into Giang_vien values (9,N'Bùi Thị Vân Thiện','1992-6-6',N'Nam Định');
insert into Giang_vien values (10,N'Nguyễn Thị Thu Hiền','1990-5-10',N'Hưng Yên');
insert into Giang_vien values (11,N'Nguyễn Thị Trà My','1990-5-11',N'Hải Phòng');
insert into Giang_vien values (12,N'Trần Thị Thúy','1990-5-12',N'Hà Nội');
insert into Giang_vien values (13,N'Trần Trọng Dũng','1990-5-13',N'Bắc Ninh');
insert into Giang_vien values (14,N'Mạc Văn Việt','1990-1-14',N'Nam Định');
insert into Giang_vien values (15,N'Bùi Thị Thu Hương','1993-1-15',N'Hưng Yên');
insert into Giang_vien values (16,N'Nguyễn Văn Đạm','1993-1-16',N'Hải Phòng');
insert into Giang_vien values (17,N'Lê Thị Hợi','1993-1-17',N'Hà Nội');
insert into Giang_vien values (18,N'Phạm Văn Cường','1993-2-18',N'Bắc Ninh');
insert into Giang_vien values (19,N'Khoa Năng Tùng','1991-2-19',N'Nam Định');
insert into Khoa_hoc values (1,'Tester basic',1);
insert into Khoa_hoc values (2,'Tester advance',2);
insert into Khoa_hoc values (3,'Automation test',1);
insert into Khoa_hoc values (4,'API testing',4);
insert into Khoa_hoc values (5,'DB testing',5);
insert into Khoa_hoc values (6,'Performance testing',3);
insert into Khoa_hoc values (7,'GUI testing',7);
insert into Khoa_hoc values (8,'Mobile testing',8);
insert into Khoa_hoc values (9,'Game testing',9);
insert into Phieu_DK values (1,1,1);
insert into Phieu_DK values (2,2,2);
insert into Phieu_DK values (3,3,3);
insert into Phieu_DK values (4,4,4);
insert into Phieu_DK values (5,5,5);
insert into Phieu_DK values (6,6,6);
insert into Phieu_DK values (7,7,7);
insert into Phieu_DK values (8,8,8);
insert into Phieu_DK values (9,9,9);
insert into Phieu_DK values (10,1,10);
insert into Phieu_DK values (11,2,11);
insert into Phieu_DK values (12,3,12);
insert into Phieu_DK values (13,4,13);
insert into Phieu_DK values (14,5,14);
insert into Phieu_DK values (15,6,15);
insert into Phieu_DK values (16,7,16);
insert into Phieu_DK values (17,8,17);
insert into Phieu_DK values (18,9,18);
insert into Phieu_DK values (19,1,19);
insert into Phieu_DK values (20,2,20);
insert into Phieu_DK values (21,3,1);
insert into Phieu_DK values (22,4,2);
insert into Phieu_DK values (23,5,3);
insert into Phieu_DK values (24,6,4);
insert into Phieu_DK values (25,7,5);
insert into Phieu_DK values (26,8,6);
insert into Phieu_DK values (27,9,7);
insert into Phieu_DK values (28,1,8);
insert into Phieu_DK values (29,2,9);
insert into Phieu_DK values (30,3,10);

------------------------MOT SO CAU LENH TRUY VAN-------------
--SELECT
--    bieu_thuc1,  bieu_thuc2,...  bieu_thuc_n, 
--       ham_tong_hop (bieu_thuc)
--FROM
--    ten_bang
--[WHERE dieukien]
--GROUP BY
--    bieu_thuc1,
--    bieu_thuc2,...;
---------------------------------------------------
--SELECT bieuthuc1, bieuthuc2, … bieuthuc_n,
--       ham_tong (bieuthuc)
--FROM bang
--[WHERE dieukien]
--GROUP BY bieuthuc1, bieuthuc2, … bieuthuc_n
--HAVING dieukien_having;
--------------------------------------------------------------------------------------
--Hàm DATEPART	Tham số	Ý nghĩa
--Year	Yy, yyyy	Lấy năm
--Quarter	Qq, q	Lấy quý
--Month	mm, m	Lấy tháng
--DayOfYear	dy, y	Lấy ngày của năm
--Day	Dd, d	Lấy ngày
--Week	Wk, ww	Lấy tuần
--Hour	Hh	Lấy giờ
--Minute	Mi, n	Lấy phút
--Second	Ss, s	Lấy giây
--Milisecond	Ms	Lấy mili giây
//////////////////////////////////////////////CAU HOI LAM BAI ////////////////////////////////////////////////////////
-- 1.xem danh sách tất cả sinh viên có trong hệ thống
-- 2.XEM DS TẤT CẢ MÃ VÀ TÊN GIÁO VIÊN TRÊN HỆ THỐNG
-- 3.XEM TOÀN BỘ THÔNG TIN CỦA SINH VIÊN CÓ MÃ LÀ 5
-- 4.CẬP NHÂT TÊN CỦA SINH VIÊN CO MÃ 10 THÀNH NGUYÊN NGỌC NGẠN
-- 5.XEM DANH SÁCH TOÀN BỘ HỌC VIÊN
-- 6.Xem danh sách sinh viên quê Hải phòng
-- 7.Xem danh sách tên và năm sinh sinh viên có quê ở Hà Nội (gán tên cột thành tiếng việt có dấu)
-- 8.Xem danh sách sinh viên có ID > 5
-- 9.xem danh sách sinh viên có ID từ 1-10
-- 10.Xem danh sách sinh viên có Quê khác Hải Phòng
-- 11.Xem danh sách sinh viên có id từ 10-15 (bao gồm cả 10 và 15)
-- 12.xem danh sách các sinh viên có id 1,5,7
-- 13.Xem danh sách sinh viên có tên Anh
-- 14.Xem danh sách sinh viên có họ NGuyễn
-- 15.Xem danh sách sinh viên có tên đệm là Thị
-- 16.xem danh sách sinh viên có tên khác Anh
-- 17.Xem danh sách sinh viên có ID có 2 chữ số và bắt đầu bằng số 1
-- 18.xem danh sách sinh viên có ID có 2 chữ số và bắt đầu bằng số 0
-- 19.xem danh sách sv có id có 3 chữ số và số giữa là 3
-- 20.Xem danh sách sv và xếp theo thứ tự tên từ a-z
-- 21.Xem danh sách sv và xếp theo thứ tự tên từ z-a
-- 22.xem danh sách quê quán sinh viên và loại bỏ dữ liệu trùng rồi xếp theo thứ tự z-a
-- 23.xem tổng số sinh viên có trong bảng sinh viên
-- 24.xem có bao nhiêu giá trị ở cột quê quán
-- 25.xem  id lớn nhất bảng sinh viên là bn
-- 26.xem  id nhỏ nhất bảng sinh viên là bn
-- 27.xem  id trung bình bảng sinh viên là bn
-- 28.tính tổng số ID cột id
-- 29.xem có bao nhiêu sinh viên quê ở hà nội
-- 30.xem trong số các sinh viên quê Hải Phòng thì ID lớn nhất là bn
-- 31.tính tổng id của sinh viên có quê Nam định
-- 32.xem các tỉnh thành đang có trong cột quê quán
-- 33.tính tổng id sinh viên của từng quê quán
-- 34.Xem thông tin sinh viên có ID lớn nhất
-- 35.xem quê quán nào xuất hiện nhiều hơn 3 lần
-- 36.Tính tổng id của từng quê quán và show ra nơi nào có tổng > 40
-- 37.Xem thông tin ngày giờ hiện tại
-- 38.Lấy ra phần ngày trong chuỗi ngày '19-10-1995'
-- 39.Lấy ra phần tháng trong chuỗi ngày '19-10-1995'
-- 40.Lấy ra phần năm trong chuỗi ngày '19-10-1995'
-- Lấy ra phần ngày của ngày hiện tại
-- 41.xem từ ngày 1-1-1994 tới ngày 10-9-1994 có bao nhiêu ngày
-- 42.xem từ ngày 1-1-1994 tới ngày 10-9-1994 có bao nhiêu tháng
-- 43.xem từ ngày sinh của bạn tới ngày hiện tại là bao nhiêu năm (tính tuổi của bạn)
-- 44.Xem danh sách những học viên trên 25 tuổi
-- 45.xem danh sách sinh viên sinh nhật vào tháng 5
-- 46.xem danh sách sinh viên có sinh nhật tháng này
-- 47. xem danh sách sinh viên chưa có thông tin quê quán
-- 48.xem danh sách khóa học mà giáo viên có ID = 1 dậy
-- 49.xem danh sách khóa học mà giáo viên có ID = 1 dậy và tên của giáo viên đó
-- 50.Đếm xem khóa học Tester basic có bn học viên đăng ký
-- 51.Xem danh sách tên sinh viên đăng ký học lớp Tester basic
-- 52.xem danh sách giảng viên nào chưa được phân công dậy
-- 53.xem danh sách khóa học nào chưa được phân công dậy
-- 54.cập nhật quê quán giáo viên Lưu Thanh Tuấn  thành Sài Gòn
-- 55.cập nhật quê quán và tên của Giáo viên có id = 1 thành 'Lưu Hà An, hải phòng
-- 56.cập nhật tất cả quê quán sv thành Việt Nam
-- 57.xóa sinh viên có id = 20
-- 58.xóa tất dữ liệu bảng khóa học
----------------------DAP AN -------------------------------------------
-- 1.xem danh sách tất cả sinh viên có trong hệ thống
select * from SINH_VIEN
--2. XEM DS TẤT CẢ MÃ VÀ TÊN GIÁO VIÊN TRÊN HỆ THỐNG
select ID_GV as 'id',TEN_GV as 'ten giao vien' from GIANG_VIEN
-- 3.XEM TOÀN BỘ THÔNG TIN CỦA SINH VIÊN CÓ MÃ LÀ 5
select * from SINH_VIEN where ID_SV=10
-- 4.CẬP NHÂT TÊN CỦA SINH VIÊN CO MÃ 10 THÀNH NGUYÊN NGỌC NGẠN
SELECT * FROM SINH_VIEN WHERE ID_SV=10
UPDATE SINH_VIEN SET TEN_SV=N'NGUYÊN NGỌC NGẠN' WHERE ID_SV=10
--5.XEM DANH SÁCH TOÀN BỘ HỌC VIÊN
SELECT * FROM SINH_VIEN
-- 6.Xem danh sách sinh viên quê Hải phòng
SELECT *FROM SINH_VIEN WHERE QUE_QUAN=N'Hải Phòng'
-- --7.Xem danh sách tên và năm sinh sinh viên có quê ở Hà Nội (gán tên cột thành tiếng việt có dấu)
SELECT TEN_SV, NAM_SINH FROM SINH_VIEN WHERE QUE_QUAN=N'Hà Nội'
-- 8.Xem danh sách sinh viên có ID > 5
SELECT *FROM SINH_VIEN WHERE ID_SV>5
-- 9.xem danh sách sinh viên có ID từ 1-10
SELECT *FROM SINH_VIEN WHERE ID_SV>1 AND ID_SV<10
-- 10.Xem danh sách sinh viên có Quê khác Hải Phòng
SELECT *FROM SINH_VIEN WHERE QUE_QUAN!=N'Hải Phòng'
-- 11.Xem danh sách sinh viên có id từ 10-15 (bao gồm cả 10 và 15)
SELECT *FROM SINH_VIEN WHERE ID_SV>=10 AND ID_SV<=15 
SELECT *FROM SINH_VIEN WHERE ID_SV between 10 and 15
-- 12.xem danh sách các sinh viên có id 1,5,7
SELECT *FROM SINH_VIEN WHERE ID_SV IN(1,5,7)
-- 13.Xem danh sách sinh viên có tên Anh
SELECT *FROM SINH_VIEN WHERE TEN_SV like '%Anh'
-- 14.Xem danh sách sinh viên có họ NGuyễn
SELECT *FROM SINH_VIEN WHERE TEN_SV like N'Nguyễn%'
-- 15.Xem danh sách sinh viên có tên đệm là Thị
SELECT *FROM SINH_VIEN WHERE TEN_SV like N'%Thị%'
-- 16.xem danh sách sinh viên có tên khác Anh
SELECT *FROM SINH_VIEN WHERE TEN_SV not like '%Anh'
-- 17.Xem danh sách sinh viên có ID có 2 chữ số và bắt đầu bằng số 1
SELECT *FROM SINH_VIEN WHERE ID_SV like '1_'
-- 18.xem danh sách sinh viên có ID có 2 chữ số và bắt đầu bằng số 0
SELECT *FROM SINH_VIEN WHERE ID_SV like '0_'
-- 19.xem danh sách sv có id có 3 chữ số và số giữa là 3
SELECT *FROM SINH_VIEN WHERE ID_SV like '_3_'
-- 20.Xem danh sách sv và xếp theo thứ tự tên từ a-z
SELECT *FROM SINH_VIEN order by ID_SV asc
-- 21.Xem danh sách sv và xếp theo thứ tự tên từ z-a
SELECT *FROM SINH_VIEN order by ID_SV desc
-- 22.xem danh sách quê quán sinh viên và loại bỏ dữ liệu trùng rồi xếp theo thứ tự z-a
SELECT distinct QUE_QUAN FROM SINH_VIEN order by QUE_QUAN desc
-- 23.xem tổng số sinh viên có trong bảng sinh viên
SELECT count(*) as 'tong so sinh vien' FROM SINH_VIEN 
-- 24.xem có bao nhiêu giá trị ở cột quê quán
SELECT count(QUE_QUAN) as 'tong so que' FROM SINH_VIEN 
-- 25.xem  id lớn nhất bảng sinh viên là bn
SELECT max(ID_SV) FROM SINH_VIEN 
-- 26.xem  id nhỏ nhất bảng sinh viên là bn
SELECT min(ID_SV) FROM SINH_VIEN 
-- 27.xem  id trung bình bảng sinh viên là bn
SELECT avg(ID_SV) FROM SINH_VIEN 
-- 28.tính tổng số ID cột id
SELECT sum(ID_SV) FROM SINH_VIEN 
-- 29.xem có bao nhiêu sinh viên quê ở hà nội
SELECT count(*) as 'so luong sinh vien que ha noi' FROM SINH_VIEN where QUE_QUAN=N'Hà Nội'
-- 30.xem trong số các sinh viên quê Hải Phòng thì ID lớn nhất là bn
SELECT MAX(ID_SV) FROM SINH_VIEN where QUE_QUAN=N'Hải Phòng'
-- 31.tính tổng id của sinh viên có quê Nam định
SELECT sum(ID_SV) FROM SINH_VIEN where QUE_QUAN=N'Nam Định'
-- 32.xem các tỉnh thành đang có trong cột quê quán
select QUE_QUAN from SINH_VIEN group by QUE_QUAN
-- 33.tính tổng id sinh viên của từng quê quán
select sum(ID_SV) as 'tong id sv', QUE_QUAN as 'que quan' from SINH_VIEN group by QUE_QUAN
-- 34.Xem thông tin sinh viên có ID lớn nhất
select * from SINH_VIEN where ID_SV=(select max(ID_SV) from SINH_VIEN)
-- 35.xem quê quán nào xuất hiện nhiều hơn 3 lần
select que_quan,count(que_quan) from sinh_vien group by que_quan having count(que_quan) >3
-- 36.Tính tổng id của từng quê quán và show ra nơi nào có tổng > 40
select que_quan, sum(id_sv) from sinh_vien group by que_quan having sum(id_sv) > 40
-----------///////////////////////////
--------- dang nam-thang-ngay: yyyy-mm-dd ->>>>yeu minh di
-- 37.Xem thông tin ngày giờ hiện tại
select GETDATE() as 'thoi gian hien tai' 
-- 38.Lấy ra phần ngày trong chuỗi ngày '19-10-1995'
select DATEPART(dd,'1995-10-19')
-- 39.Lấy ra phần tháng trong chuỗi ngày '19-10-1995'
select DATEPART(mm,'1995-10-19')
-- 40.Lấy ra phần năm trong chuỗi ngày '19-10-1995'
select DATEPART(YYYY,'1995-10-19')
-- Lấy ra phần ngày của ngày hiện tại
select DATEPART(dd, GETDATE())
-- 41.xem từ ngày 1-1-1994 tới ngày 10-9-1994 có bao nhiêu ngày
select DATEDIFF(DD,'1994-1-1','1994-9-10')
-- 42.xem từ ngày 1-1-1994 tới ngày 10-9-1994 có bao nhiêu tháng
select DATEDIFF(MM,'1994-1-1','1994-9-10')
-- 43.xem từ ngày sinh của bạn tới ngày hiện tại là bao nhiêu năm (tính tuổi của bạn)
select DATEDIFF(YYYY,'2001-7-1',GETDATE())
-- 44.Xem danh sách những học viên trên 25 tuổi
select *from SINH_VIEN where DATEDIFF(YYYY,nam_sinh,getdate())>25
-- 45.xem danh sách sinh viên sinh nhật vào tháng 7
select * from SINH_VIEN where DATEPART(mm, NAM_SINH)=7
-- 46.xem danh sách sinh viên có sinh nhật tháng này
select * from SINH_VIEN where DATEPART(mm, NAM_SINH)=datepart(mm, GETDATE())
-- 47. xem danh sách sinh viên chưa có thông tin quê quán
select * from SINH_VIEN where QUE_QUAN= '' or QUE_QUAN is null
----------------------------------------------------------------------------
-- 48.xem danh sách khóa học mà giáo viên có ID = 1 day
select * from KHOA_HOC where ID_GV = 1
-- 49.xem danh sách khóa học mà giáo viên có ID = 1 dậy và tên của giáo viên đó
select a.TEN_KHOA_HOC, b.TEN_GV from KHOA_HOC a join GIANG_VIEN b on a.ID_GV=b.ID_GV
where a.ID_GV = 1 
select a.*,b.ten_gv from khoa_hoc a join giang_vien b on a.id_gv=b.id_gv where a.id_gv=1
-- 50.Đếm xem khóa học Tester basic có bn học viên đăng ký
select count(b.id_kh), a.TEN_KHOA_HOC from khoa_hoc a join phieu_dk b on a.id_kh=b.id_kh where a.TEN_KHOA_HOC = 'Tester basic' group by a.TEN_KHOA_HOC
-- 51.Xem danh sách tên sinh viên đăng ký học lớp Tester basic
select a.ten_sv,c.TEN_KHOA_HOC from sinh_vien a join phieu_dk b on a.id_Sv=b.id_Sv join khoa_hoc c on b.id_kh=c.id_kh where c.TEN_KHOA_HOC='Tester basic' 
-- 52.xem danh sách giảng viên nào chưa được phân công dậy
select * from giang_vien a left join khoa_hoc b on a.id_gv=b.id_gv where b.id_gv is null
-- 53.xem danh sách khóa học nào chưa được phân công dậy
select * from giang_vien a right join khoa_hoc b on a.id_gv=b.id_gv where a.id_gv is null
-- 54.cập nhật quê quán giáo viên Lưu Thanh Tuấn  thành Sài Gòn
update GIANG_VIEN set QUE_QUAN =N'Sài Gòn' where TEN_GV=N'Lưu Thanh Tuấn'
select *from GIANG_VIEN where TEN_GV=N'Lưu Thanh Tuấn'
-- 55.cập nhật quê quán và tên của Giáo viên có id = 1 thành 'Lưu Hà An, hải phòng
update GIANG_VIEN set QUE_QUAN =N'Hải phòng', TEN_GV=N'Lưu Hà An' where ID_GV=1
select *from GIANG_VIEN where ID_GV=1
-- 56.cập nhật tất cả quê quán sv thành Việt Nam
update SINH_VIEN set QUE_QUAN =N'Việt Nam'
-- 57.xóa sinh viên có id = 20
delete from SINH_VIEN where ID_SV=20
-- 58.xóa tất dữ liệu bảng khóa học
delete from KHOA_HOC







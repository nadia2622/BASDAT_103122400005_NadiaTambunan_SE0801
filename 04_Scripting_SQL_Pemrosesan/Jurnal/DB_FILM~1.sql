/*
 
 Source Server         : DBSE
 Source Server Type    : Oracle
 Source Server Version : 110200 (Oracle Database 11g Enterprise Edition Release 11.2.0.1.0 - 64bit Production
With the Partitioning, OLAP, Data Mining and Real Application Testing options)
 Source Schema         : DBSE

 Target Server Type    : Oracle
 Target Server Version : 110200 (Oracle Database 11g Enterprise Edition Release 11.2.0.1.0 - 64bit Production
With the Partitioning, OLAP, Data Mining and Real Application Testing options)
 File Encoding         : 65001

 Date: 04/03/2024 10:42:47
*/


-- ----------------------------
-- Table structure for FILM
-- ----------------------------
DROP TABLE FILM;
CREATE TABLE FILM_103122400028 (
  "ID_FILM" CHAR(5 BYTE) NOT NULL,
  "JUDUL" VARCHAR2(100 BYTE) NOT NULL,
  "SINOPSIS" VARCHAR2(1000 BYTE),
  "TAHUN" NUMBER,
  "DURASI" NUMBER
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of FILM
-- ----------------------------
INSERT INTO FILM_103122400028 VALUES ('F0101', 'Keluarga Cemara', 'Fokus cerita ini masih soal, Emak serta kedua anak mereka, Euis dan Ara . Persis dengan cerita di sinetronnya, film ini mengisahkan tentang bagaimana perjalanan hidup keluarga Abah yang semula nyaman dan mapan lalu kemudian mendadak bangkrut. Abah pun mengajak keluarganya pindah ke rumah warisan yang cukup jauh dari kota. Dengan segala keterbatasan dan kekurangan yang ia memiliki, Abah berusaha menjadi kepala keluarga serta ayah yang baik untuk anak-anaknya. Untung saja, Emak tak pernah lelah mendampinginya dan berusaha menjadi sandaran di saat mereka sedih.', '2019', '110');
INSERT INTO FILM_103122400028 VALUES ('F0102', 'Habibie Ainun 3', 'Habibie Ainun 3 adalah sebuah film Indonesia tahun 2019 yang disutradarai oleh Hanung Bramantyo dan diproduksi oleh Manoj Punjabi (MD Pictures). Film ini adalah film ketiga dari seri film Habibie Ainun. Bila Rudy Habibie merupakan prekuel dari kisah Habibie muda, maka Habibie Ainun 3 ini adalah prekuel dari kisah Ainun muda. Film ini dijadwalkan rilis pada 19 Desember 2019.', '2019', '96');
INSERT INTO FILM_103122400028 VALUES ('F0103', 'Taufiq', 'Kisah penjalanan hidup politisi yang juga suami Mantan Presiden RI, Megawati Soekarnoputri, Taufiq Kiemas diangkat dalam sebuah film tayang 14 Maret 2019. Film yang diangkat dari kisah nyata itu disutradarai sekaligus skenarionya ditulis oleh Ismail Basbeth. Perjalanan hidup membawanya ke Jakarta dan bertemu langsung dengan Soekarno, menjalin persahabatan dengan Guntur Soekarnoputra serta bertemu Megawati Soekarnoputri untuk pertama kalinya. Taufiq akan memahami arti dari persahabatan, keluarga, cinta dan negara ketika dia menjalani ujian hidup sebagai seorang nasionalis. Setelah itu Ia dijebloskan ke penjara bersama sahabatnya dituduh sebagai anggota Komunis. Dalam penjara Taufiq banyak bertemu orang-orang hebat. Dari situlah perjalanan seorang lelaki yang menantang badai.', '2019', '105');
INSERT INTO FILM_103122400028 VALUES ('F0104', 'Buya Hamka', 'Buya Hamka adalah film drama biografi Indonesia tentang Abdul Malik Karim Amrullah atau Hamka, seorang ulama Indonesia yang dikenal sebagai penulis, pujangga, dan politisi. Buya Hamka akan mengisahkan kehidupan Hamka sejak lahir sampai meninggal dunia. Sebelum menjadi sosok yang dikenal banyak orang, Hamka telah melewati beberapa perubahan, mulai dari kanak-kanak, remaja, hingga berkeluarga. Sebagai ulama, film ini menyoroti bagaimana cara Hamka menyampaikan dakwahnya secara santun. Selain itu, Buya Hamka menyoroti aspek humanis Hamka dan prosesnya menggapai semua pencapaian.', '2019', '110');

-- ----------------------------
-- Table structure for INVENTORI
-- ----------------------------
DROP TABLE "INVENTORI";
CREATE TABLE INVENTORI_103122400028 (
  "ID_INVENTORI" CHAR(6 BYTE) NOT NULL,
  "ID_THEATER" VARCHAR2(20 BYTE) NOT NULL,
  "NOMOR_KURSI" VARCHAR2(5 BYTE)
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of INVENTORI
-- ----------------------------
INSERT INTO INVENTORI_103122400028 VALUES ('IN1001', 'Teater 1', 'A1');
INSERT INTO INVENTORI_103122400028 VALUES ('IN1002', 'Teater 1', 'A2');
INSERT INTO INVENTORI_103122400028 VALUES ('IN1003', 'Teater 1', 'A3');
INSERT INTO INVENTORI_103122400028 VALUES ('IN1004', 'Teater 1', 'A4');
INSERT INTO INVENTORI_103122400028 VALUES ('IN1005', 'Teater 1', 'A5');
INSERT INTO INVENTORI_103122400028 VALUES ('IN1006', 'Teater 2', 'A6');
INSERT INTO INVENTORI_103122400028 VALUES ('IN1007', 'Teater 2', 'A7');
INSERT INTO INVENTORI_103122400028 VALUES ('IN1008', 'Teater 2', 'A8');
INSERT INTO INVENTORI_103122400028 VALUES ('IN1009', 'Teater 2', 'B1');
INSERT INTO INVENTORI_103122400028 VALUES ('IN1010', 'Teater 2', 'B2');
INSERT INTO INVENTORI_103122400028 VALUES ('IN1011', 'Teater 3', 'C1');
INSERT INTO INVENTORI_103122400028 VALUES ('IN1012', 'Teater 3', 'C2');

-- ----------------------------
-- Table structure for JADWAL
-- ----------------------------
DROP TABLE "JADWAL";
CREATE TABLE JADWAL_103122400028 (
  "ID_JADWAL" CHAR(5 BYTE) NOT NULL,
  "ID_FILM" CHAR(5 BYTE) NOT NULL,
  "ID_THEATER" VARCHAR2(20 BYTE) NOT NULL,
  "PERIODE_START" DATE,
  "PERIODE_END" DATE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of JADWAL
-- ----------------------------
INSERT INTO JADWAL_103122400028 VALUES ('JT001', 'F0101', 'Teater 1', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO JADWAL_103122400028 VALUES ('JT002', 'F0101', 'Teater 1', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO JADWAL_103122400028 VALUES ('JT003', 'F0102', 'Teater 1', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO JADWAL_103122400028 VALUES ('JT004', 'F0101', 'Teater 2', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO JADWAL_103122400028 VALUES ('JT005', 'F0103', 'Teater 2', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO JADWAL_103122400028 VALUES ('JT006', 'F0102', 'Teater 2', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO JADWAL_103122400028 VALUES ('JT007', 'F0104', 'Teater 2', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO JADWAL_103122400028 VALUES ('JT008', 'F0102', 'Teater 3', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO JADWAL_103122400028 VALUES ('JT009', 'F0101', 'Teater 1', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO JADWAL_103122400028 VALUES ('JT010', 'F0102', 'Teater 1', TO_DATE('2019-01-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for MEMBER
-- ----------------------------
DROP TABLE "MEMBER";
CREATE TABLE MEMBER_103122400028 (
  "ID_MEMBER" CHAR(6 BYTE) NOT NULL,
  "NAMA" VARCHAR2(255 BYTE) NOT NULL,
  "NO_HP" VARCHAR2(20 BYTE) NOT NULL,
  "EMAIL" VARCHAR2(20 BYTE),
  "TGL_LAHIR" DATE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of MEMBER
-- ----------------------------
INSERT INTO MEMBER_103122400028 VALUES ('MM0111', 'Anto', '085267656789', 'Anto2016@gmail.com', TO_DATE('1989-07-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO MEMBER_103122400028 VALUES ('MM0112', 'Budi', '081367589632', 'Budi2016@gmail.com', TO_DATE('1985-01-03 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO MEMBER_103122400028 VALUES ('MM0113', 'Ari', '081267867543', 'Ari2016@gmail.com', TO_DATE('1983-11-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO MEMBER_103122400028 VALUES ('MM0114', 'Rahmi', '085267935678', 'Rahmi2016@gmail.com', TO_DATE('1981-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO MEMBER_103122400028 VALUES ('MM0115', 'Fahmi', '085767298908', 'Fahmi2016@gmail.com', TO_DATE('1986-07-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO MEMBER_103122400028 VALUES ('MM0116', 'Rusli', '085643755398', 'Rusli2016@gmail.com', TO_DATE('1988-02-26 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO MEMBER_103122400028 VALUES ('MM0117', 'Doni', '081398426789', 'Doni2016@gmail.com', TO_DATE('1986-04-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO MEMBER_103122400028 VALUES ('MM0118', 'Tati', '085245289074', 'Tati2016@gmail.com', TO_DATE('1985-06-22 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO MEMBER_103122400028 VALUES ('MM0119', 'Dono', '081287234567', 'Dono2016@gmail.com', TO_DATE('1990-07-03 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO MEMBER_103122400028 VALUES ('MM0120', 'Joko', '081223670942', 'Joko2016@gmail.com', TO_DATE('1988-07-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));


-- ----------------------------
-- Table structure for THEATER
-- ----------------------------
DROP TABLE "THEATER";
CREATE TABLE THEATER_103122400028 (
  "ID_THEATER" VARCHAR2(20 BYTE) NOT NULL,
  "KELAS" VARCHAR2(20 BYTE),
  "HARGA" NUMBER NOT NULL,
  "KAPASITAS" NUMBER
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of THEATER
-- ----------------------------
INSERT INTO THEATER_103122400028 VALUES ('Teater 1', 'Reguler', '30000', '50');
INSERT INTO THEATER_103122400028 VALUES ('Teater 2', 'Sweetbox', '100000', '50');
INSERT INTO THEATER_103122400028 VALUES ('Teater 3', '4D', '75000', '50');
INSERT INTO THEATER_103122400028 VALUES ('Teater 4', 'Velvet', '80000', '50');
INSERT INTO THEATER_103122400028 VALUES ('Teater 5', '3D', '50000', '50');

-- ----------------------------
-- Table structure for TRANSAKSI
-- ----------------------------
DROP TABLE "TRANSAKSI";
CREATE TABLE TRANSAKSI_103122400028 (
  "KODE_PEMESANAN" CHAR(7 BYTE) NOT NULL,
  "ID_MEMBER" CHAR(6 BYTE) NOT NULL,
  "ID_JADWAL" CHAR(5 BYTE) NOT NULL,
  "ID_INVENTORI" CHAR(6 BYTE) NOT NULL,
  "TANGGAL" DATE NOT NULL,
  "STATUS" VARCHAR2(20 BYTE) NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of TRANSAKSI
-- ----------------------------
INSERT INTO TRANSAKSI_103122400028 VALUES ('P10001', 'MM0111', 'JT001', 'IN1010', TO_DATE('2019-06-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan');
INSERT INTO TRANSAKSI_103122400028 VALUES ('P10002', 'MM0112', 'JT006', 'IN1009', TO_DATE('2019-06-16 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan');
INSERT INTO TRANSAKSI_103122400028 VALUES ('P10003', 'MM0113', 'JT008', 'IN1008', TO_DATE('2019-06-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan');
INSERT INTO TRANSAKSI_103122400028 VALUES ('P10004', 'MM0114', 'JT001', 'IN1007', TO_DATE('2019-06-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan');
INSERT INTO TRANSAKSI_103122400028 VALUES ('P10005', 'MM0115', 'JT006', 'IN1006', TO_DATE('2019-06-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan');
INSERT INTO TRANSAKSI_103122400028 VALUES ('P10006', 'MM0116', 'JT001', 'IN1001', TO_DATE('2019-06-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'bayar');
INSERT INTO TRANSAKSI_103122400028 VALUES ('P10007', 'MM0117', 'JT008', 'IN1011', TO_DATE('2019-06-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan');
INSERT INTO TRANSAKSI_103122400028 VALUES ('P10008', 'MM0118', 'JT001', 'IN1003', TO_DATE('2019-06-22 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan');
INSERT INTO TRANSAKSI_103122400028 VALUES ('P10009', 'MM0119', 'JT006', 'IN1004', TO_DATE('2019-06-23 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan');
INSERT INTO TRANSAKSI_103122400028 VALUES ('P10010', 'MM0120', 'JT008', 'IN1005', TO_DATE('2019-06-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'checkin');
INSERT INTO TRANSAKSI_103122400028 VALUES ('P10011', 'MM0111', 'JT009', 'IN1012', TO_DATE('2019-06-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan');
INSERT INTO TRANSAKSI_103122400028 VALUES ('P10012', 'MM0111', 'JT009', 'IN1012', TO_DATE('2019-07-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pesan');


select * from transaksi_103122400028;
-- ----------------------------
-- Primary Key structure for table FILM
-- ----------------------------
ALTER TABLE FILM_103122400028 ADD CONSTRAINT "FILM_PK" PRIMARY KEY ("ID_FILM");


-- ----------------------------
-- Primary Key structure for table INVENTORI
-- ----------------------------
ALTER TABLE INVENTORI_103122400028 ADD CONSTRAINT "INVENTORI_PK" PRIMARY KEY ("ID_INVENTORI");


-- ----------------------------
-- Primary Key structure for table JADWAL
-- ----------------------------
ALTER TABLE JADWAL_103122400028 ADD CONSTRAINT "JADWAL_PK" PRIMARY KEY ("ID_JADWAL");


-- ----------------------------
-- Primary Key structure for table MEMBER
-- ----------------------------
ALTER TABLE MEMBER_103122400028 ADD CONSTRAINT "MEMBER_PK" PRIMARY KEY ("ID_MEMBER");


-- ----------------------------
-- Primary Key structure for table THEATER
-- ----------------------------
ALTER TABLE THEATER_103122400028 ADD CONSTRAINT "THEATER_PK" PRIMARY KEY ("ID_THEATER");


-- ----------------------------
-- Primary Key structure for table TRANSAKSI
-- ----------------------------
ALTER TABLE TRANSAKSI_103122400028 ADD CONSTRAINT "TRANSAKSI_PK" PRIMARY KEY ("KODE_PEMESANAN");

-- ----------------------------
-- Foreign Keys structure for table INVENTORI
-- ----------------------------
ALTER TABLE INVENTORI_103122400028 ADD CONSTRAINT "INVENTORI_FK1" FOREIGN KEY ("ID_THEATER") REFERENCES THEATER_103122400028 ("ID_THEATER") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table JADWAL
-- ----------------------------
ALTER TABLE JADWAL_103122400028 ADD CONSTRAINT "JADWAL_FK1" FOREIGN KEY ("ID_FILM") REFERENCES FILM_103122400028 ("ID_FILM") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE JADWAL_103122400028 ADD CONSTRAINT "JADWAL_FK2" FOREIGN KEY ("ID_THEATER") REFERENCES THEATER_103122400028 ("ID_THEATER") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table TRANSAKSI
-- ----------------------------
ALTER TABLE TRANSAKSI_103122400028 ADD CONSTRAINT "TRANSAKSI_FK1" FOREIGN KEY ("ID_JADWAL") REFERENCES JADWAL_103122400028 ("ID_JADWAL") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE TRANSAKSI_103122400028 ADD CONSTRAINT "TRANSAKSI_FK2" FOREIGN KEY ("ID_INVENTORI") REFERENCES INVENTORI_103122400028 ("ID_INVENTORI") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE TRANSAKSI_103122400028 ADD CONSTRAINT "TRANSAKSI_FK3" FOREIGN KEY ("ID_MEMBER") REFERENCES MEMBER_103122400028 ("ID_MEMBER") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

------------------------------------------------
-------Najwa Areefa Ghaisani_103122400028-------
------------------------------------------------
-- TP 04 --
-- ini buat nampilin tabel beserta data nya
select * from MEMBER_103122400028;
select * from FILM_103122400028;
select * from JADWAL_103122400028;
select * from INVENTORI_103122400028;
select * from TRANSAKSI_103122400028;
select * from THEATER_103122400028;

-- ini buat nampilin tabel yang udah di Altered
SELECT TABLE_NAME FROM USER_TABLES 
WHERE TABLE_NAME LIKE '%103122400028%'
ORDER BY TABLE_NAME;

-- Query untuk menampilkan semua teater tetapi harganya didiskon 15% dari harga awal
SELECT ID_THEATER, KELAS, HARGA AS HARGA_AWAL, HARGA * 0.85 AS HARGA_DISKON_15 FROM THEATER_103122400028;

-- Query untuk menampilkan total pemasukan masing – masing teater
SELECT T.ID_THEATER, T.KELAS, T.HARGA, COUNT(TR.KODE_PEMESANAN) AS JUMLAH_TRANSAKSI, T.HARGA * COUNT(TR.KODE_PEMESANAN) AS TOTAL_PEMASUKAN
FROM THEATER_103122400028 T
JOIN JADWAL_103122400028 J ON T.ID_THEATER = J.ID_THEATER
JOIN TRANSAKSI_103122400028 TR ON J.ID_JADWAL = TR.ID_JADWAL
GROUP BY T.ID_THEATER, T.KELAS, T.HARGA
ORDER BY T.ID_THEATER;

------------------------------------------------
-------Najwa Areefa Ghaisani_103122400028-------
------------------------------------------------
-- Jurnal 04 --

-- 1. 
SELECT 
    F.JUDUL, 
    J.ID_THEATER, 
    J.PERIODE_START, 
    EXTRACT(DAY FROM NUMTODSINTERVAL(J.PERIODE_END - J.PERIODE_START, 'DAY')) || ' hari' AS LAMA_WAKTU
FROM FILM_103122400028 F
JOIN JADWAL_103122400028 J ON F.ID_FILM = J.ID_FILM
WHERE F.JUDUL = 'Habibie Ainun 3';

-- 2. 
SELECT 
    J.ID_THEATER, 
    F.JUDUL, 
    T.KELAS, 
    T.HARGA,
    CASE 
        WHEN T.HARGA < 50000 THEN 'Murah'
        WHEN T.HARGA > 75000 THEN 'Mahal'
        ELSE 'Normal'
    END AS KATEGORI
FROM FILM_103122400028 F
JOIN JADWAL_103122400028 J ON F.ID_FILM = J.ID_FILM
JOIN THEATER_103122400028 T ON J.ID_THEATER = T.ID_THEATER;

--3. 
SELECT 
    M.ID_MEMBER, 
    T.HARGA, 
    EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM M.TGL_LAHIR) AS UMUR,
    CASE 
        WHEN (EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM M.TGL_LAHIR)) <= 32 
        THEN T.HARGA * 0.9
        ELSE T.HARGA
    END AS SALE
FROM MEMBER_103122400028 M
JOIN TRANSAKSI_103122400028 TR ON M.ID_MEMBER = TR.ID_MEMBER
JOIN JADWAL_103122400028 J ON TR.ID_JADWAL = J.ID_JADWAL
JOIN THEATER_103122400028 T ON J.ID_THEATER = T.ID_THEATER
ORDER BY UMUR;

--4. 
SELECT 
    M.ID_MEMBER, 
    M.NAMA, 
    F.JUDUL
FROM MEMBER_103122400028 M
JOIN TRANSAKSI_103122400028 TR ON M.ID_MEMBER = TR.ID_MEMBER
JOIN JADWAL_103122400028 J ON TR.ID_JADWAL = J.ID_JADWAL
JOIN FILM_103122400028 F ON J.ID_FILM = F.ID_FILM
WHERE F.DURASI >= 100 
AND TO_NUMBER(SUBSTR(M.NO_HP, -1)) = 8;


--5. 
SELECT 
    TR.ID_MEMBER, 
    F.ID_FILM, 
    J.ID_THEATER, 
    T.HARGA AS HARGA_ASLI,
    CASE 
        WHEN F.JUDUL = 'Keluarga Cemara' AND J.PERIODE_START >= TO_DATE('2019-12-19', 'YYYY-MM-DD')
        THEN T.HARGA * 0.3
        ELSE T.HARGA
    END AS SALE
FROM TRANSAKSI_103122400028 TR
JOIN JADWAL_103122400028 J ON TR.ID_JADWAL = J.ID_JADWAL
JOIN FILM_103122400028 F ON J.ID_FILM = F.ID_FILM
JOIN THEATER_103122400028 T ON J.ID_THEATER = T.ID_THEATER;


---------------------------------------------------------------------------------------

-- Najwa Areefa Ghaisani --
------ 103122400028 -------

-- TP Week 5 Scripting Agregate Function --

-- 1. Cari berapa jumlah film yang tersedia di bioskop ini. 
SELECT COUNT(id_film) AS jumlah_film
FROM film_103122400028;


-- 2. Cari berapa jumlah film yang sedang diputar dibioskop ini. Satu judul film hanya boleh dihitung satu kali. 
SELECT COUNT(DISTINCT id_film) AS jumlah_film_tayang
FROM jadwal_103122400028;


-- 3. Cari id_member yang sudah menonton lebih dari 2 kali. Lakukan hal yang sama untuk 3 kali, 4 kali dan 5 kali.  
select id_member, count (kode_pemesanan) as jumlah_nonton
from transaksi_103122400028
group by id_member
having count(kode_pemesanan) > 2;


-- 4. Cari member termuda dan jumlah film yang sudah ditontonnya. 
SELECT m.id_member, m.nama, m.tgl_lahir,
       COUNT(o.kode_pemesanan) AS jumlah_film_ditonton
FROM member_103122400028 m
JOIN transaksi_103122400028 o ON m.id_member = o.id_member
WHERE m.tgl_lahir = (SELECT MAX(tgl_lahir) FROM member_103122400028)
GROUP BY m.id_member, m.nama, m.tgl_lahir;


-- 5. Cari jumlah member yang lahir untuk setiap bulannya.	
SELECT EXTRACT(MONTH FROM  tgl_lahir) AS bulan,
       COUNT(id_member) AS jumlah_member
FROM member_103122400028
GROUP BY EXTRACT(MONTH FROM tgl_lahir)
ORDER BY bulan;

-- 6. Berapa jumlah jadwal tayang per film pada periode aktif?
SELECT f.id_film, f.judul, COUNT(j.id_jadwal) AS jumlah_jadwal
FROM film_103122400028 f
JOIN jadwal_103122400028 j ON F.id_film = J.id_film
GROUP BY F.id_film, F.judul
ORDER BY jumlah_jadwal DESC;





CREATE TABLE mahasiswa (
    id_number NUMBER PRIMARY KEY,
    nama VARCHAR2(100),
    tempat_lahir VARCHAR2(50),
    tanggal_lahir DATE,
    no_hp  VARCHAR2(20),
    email VARCHAR2(150),
    tinggi_badan NUMBER,
    berat_badan NUMBER
);
DROP TABLE mahasiswa;


INSERT INTO mahasiswa VALUES (1,'Nadia','Jakarta',DATE '2003-01-10','081234567001','najwa@email.com',160,65);
INSERT INTO mahasiswa VALUES (2,'Nadnad','Bandung',DATE '2002-05-12','081234567002','areefa@email.com',168,60);
INSERT INTO mahasiswa VALUES (3,'Sitamboen','Surabaya',DATE '2003-07-20','081234567003','nadia@email.com',160,50);
INSERT INTO mahasiswa VALUES (4,'Tambunan','Medan',DATE '2002-03-18','081234567004','sukma@email.com',158,48);
INSERT INTO mahasiswa VALUES (5,'Sangkam','Makassar',DATE '2001-11-22','081234567005','abby@email.com',172,70);
INSERT INTO mahasiswa VALUES (6,'Fatikhah','Semarang',DATE '2003-09-14','081234567006','fatikhah@email.com',175,72);
INSERT INTO mahasiswa VALUES (7,'Zahra','Yogyakarta',DATE '2002-12-05','081234567007','zahra@email.com',162,55);
INSERT INTO mahasiswa VALUES (8,'Nayya','Padang',DATE '2003-02-28','081234567008','nayya@email.com',169,63);
INSERT INTO mahasiswa VALUES (9,'Qeela','Bali',DATE '2002-08-17','081234567009','qeela@email.com',157,47);
INSERT INTO mahasiswa VALUES (10,'Abi','Malang',DATE '2001-06-11','081234567010','abi@email.com',173,68);
INSERT INTO mahasiswa VALUES (11,'Dimas','Solo',DATE '2003-04-09','081234567011','dimas@email.com',170,50);
INSERT INTO mahasiswa VALUES (12,'Okta','Palembang',DATE '2002-10-30','081234567012','okta@email.com',171,52);
INSERT INTO mahasiswa VALUES (13,'Ardi','Pontianak',DATE '2003-01-25','081234567013','ardi@email.com',180,54);
INSERT INTO mahasiswa VALUES (14,'Andrew','Batam',DATE '2002-07-07','081234567014','andrew@email.com',174,71);
INSERT INTO mahasiswa VALUES (15,'Queen','Balikpapan',DATE '2001-12-19','081234567015','queen@email.com',171,67);

SELECT * FROM mahasiswa;

SELECT 
nama,
LOWER(nama) AS nama_lower,
UPPER(nama) AS nama_upper,
INITCAP(nama) AS nama_capital,
CONCAT(nama,' mahasiswa') AS gabung,
LENGTH(nama) AS panjang,
SUBSTR(nama,1,3) AS potong,
LPAD(nama,10,'*') AS lpad_nama,
RPAD(nama,10,'*') AS rpad_nama,
LTRIM('   '||nama) AS ltrim_nama,
RTRIM(nama||'   ') AS rtrim_nama,
INSTR(nama,'A') AS posisi_a,
REPLACE(nama,'A','@') AS ganti_huruf
FROM mahasiswa;

SELECT 
nama,
tanggal_lahir,
SYSDATE AS hari_ini,
ADD_MONTHS(tanggal_lahir,6) AS tambah_6_bulan,
LAST_DAY(tanggal_lahir) AS akhir_bulan,
NEXT_DAY(tanggal_lahir,'MONDAY') AS senin_berikutnya,
MONTHS_BETWEEN(SYSDATE,tanggal_lahir) AS selisih_bulan,
ROUND(MONTHS_BETWEEN(SYSDATE,tanggal_lahir)/12) AS umur
FROM mahasiswa;

SELECT
nama,
TO_CHAR(tanggal_lahir,'DD-MM-YYYY') AS tanggal_lahir_format,
TO_CHAR(tinggi_badan) AS tinggi_char,
TO_CHAR(berat_badan) AS berat_char,
TO_NUMBER(tinggi_badan) AS tinggi_number
FROM mahasiswa;

SELECT 
nama,
tinggi_badan,
berat_badan,
ABS(tinggi_badan-170) AS selisih_tinggi,
MOD(berat_badan,5) AS sisa_berat,
ROUND(berat_badan/tinggi_badan,2) AS rasio,
POWER(2,3) AS pangkat
FROM mahasiswa;



SELECT * FROM mahasiswa; 

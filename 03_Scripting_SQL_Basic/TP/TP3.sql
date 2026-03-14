CREATE TABLE mahasiswa (
id char(12), 
nama VARCHAR(100), 
tempat_lahir VARCHAR(100), 
tanggal_lahir DATE, 
nomor_hp char(14),
email VARCHAR(300), 
tinggi_badan INT,
berat_badan INT);

INSERT ALL 
INTO mahasiswa VALUES ('103122400001', 'Ahmad Wijaya', 'Jakarta', TO_DATE('2004-01-15', 'YYYY-MM-DD'), '0812345678901', 'ahmad@gmail.com', 175, 72)
INTO mahasiswa VALUES ('103122400002', 'Budi Santoso', 'Bandung', TO_DATE('2004-03-22', 'YYYY-MM-DD'), '0821234567890', 'budi@gmail.com', 172, 68)
INTO mahasiswa VALUES ('103122400003', 'Citra Dewi', 'Surabaya', TO_DATE('2004-05-10', 'YYYY-MM-DD'), '0831234567890', 'citra@gmail.com', 162, 55)
INTO mahasiswa VALUES ('103122400004', 'Doni Prasetyo', 'Medan', TO_DATE('2004-07-18', 'YYYY-MM-DD'), '0841234567890', 'doni@gmail.com', 178, 75)
INTO mahasiswa VALUES ('103122400005', 'Nadia Tambunan', 'Jakarta', TO_DATE('2004-02-06', 'YYYY-MM-DD'), '0882008729098', 'nadiatambunan@gmail.com', 164, 61)
INTO mahasiswa VALUES ('103122400006', 'Eka Putra', 'Yogyakarta', TO_DATE('2004-09-12', 'YYYY-MM-DD'), '0851234567890', 'eka@gmail.com', 170, 70)
INTO mahasiswa VALUES ('103122400007', 'Fiona Mayang', 'Semarang', TO_DATE('2004-11-28', 'YYYY-MM-DD'), '0861234567890', 'fiona@gmail.com', 165, 58)
INTO mahasiswa VALUES ('103122400008', 'Gina Septiani', 'Makassar', TO_DATE('2004-04-05', 'YYYY-MM-DD'), '0871234567890', 'gina@gmail.com', 160, 52)
INTO mahasiswa VALUES ('103122400009', 'Hendra Gunawan', 'Jakarta', TO_DATE('2004-06-14', 'YYYY-MM-DD'), '0881234567890', 'hendra@gmail.com', 180, 78)
INTO mahasiswa VALUES ('103122400010', 'Ica Ramadhani', 'Palembang', TO_DATE('2004-08-21', 'YYYY-MM-DD'), '0891234567890', 'ica@gmail.com', 163, 56)
INTO mahasiswa VALUES ('103122400011', 'Jaka Permana', 'Bogor', TO_DATE('2004-10-30', 'YYYY-MM-DD'), '0801234567890', 'jaka@gmail.com', 176, 74)
INTO mahasiswa VALUES ('103122400012', 'Karina Sari', 'Tangerang', TO_DATE('2004-12-11', 'YYYY-MM-DD'), '0811234567890', 'karina@gmail.com', 164, 60)
INTO mahasiswa VALUES ('103122400013', 'Luki Hermawan', 'Bekasi', TO_DATE('2004-02-25', 'YYYY-MM-DD'), '0821234567891', 'luki@gmail.com', 179, 76)
INTO mahasiswa VALUES ('103122400014', 'Maya Kusuma', 'Depok', TO_DATE('2004-04-17', 'YYYY-MM-DD'), '0831234567891', 'maya@gmail.com', 161, 54)
INTO mahasiswa VALUES ('103122400015', 'Novita Salam', 'Bandung', TO_DATE('2004-06-03', 'YYYY-MM-DD'), '0841234567891', 'novita@gmail.com', 166, 62)
SELECT * FROM DUAL;

-- ============================================================
-- 3. PROSES PEMROSESAN TABEL - FUNGSI-FUNGSI
-- ============================================================

-- 3.a. FUNGSI KARAKTER DAN STRING
-- ============================================================
-- LOWER: Mengubah nama menjadi huruf kecil
SELECT 
    id,
    LOWER(nama) AS nama_lowercase,
    nama
FROM mahasiswa;

-- UPPER: Mengubah nama menjadi huruf besar
SELECT 
    id,
    UPPER(nama) AS nama_uppercase,
    nama
FROM mahasiswa;

-- INITCAP: Huruf pertama setiap kata besar
SELECT 
    id,
    INITCAP(nama) AS nama_initcap,
    nama
FROM mahasiswa;

-- CONCAT: Menggabungkan kolom
SELECT 
    id,
    CONCAT(nama, ' dari ') || tempat_lahir AS nama_tempat
FROM mahasiswa;

-- LENGTH: Panjang string nama
SELECT 
    id,
    nama,
    LENGTH(nama) AS panjang_nama
FROM mahasiswa;

-- SUBSTR: Mengambil substring dari nama (3 karakter pertama)
SELECT 
    id,
    nama,
    SUBSTR(nama, 1, 3) AS nama_singkat
FROM mahasiswa;

-- LPAD: Menambah padding di kiri
SELECT 
    id,
    LPAD(id, 15, '*') AS id_lpad
FROM mahasiswa;

-- RPAD: Menambah padding di kanan
SELECT 
    id,
    RPAD(nama, 20, '.') AS nama_rpad
FROM mahasiswa;

-- LTRIM: Menghapus spasi di kiri
SELECT 
    id,
    LTRIM('   ' || nama) AS nama_ltrim
FROM mahasiswa;

-- RTRIM: Menghapus spasi di kanan
SELECT 
    id,
    RTRIM(nama || '   ') AS nama_rtrim
FROM mahasiswa;

-- INSTR: Mencari posisi karakter dalam string
SELECT 
    id,
    email,
    INSTR(email, '@') AS posisi_at
FROM mahasiswa;

-- REPLACE: Mengganti karakter dalam string
SELECT 
    id,
    email,
    REPLACE(email, '@gmail.com', '@yahoo.com') AS email_baru
FROM mahasiswa;

-- ============================================================
-- 3.b. FUNGSI TANGGAL DAN WAKTU
-- ============================================================
-- MM/MON/MONTH: Format bulan
SELECT 
    id,
    nama,
    tanggal_lahir,
    TO_CHAR(tanggal_lahir, 'MM') AS bulan_angka,
    TO_CHAR(tanggal_lahir, 'MON') AS bulan_singkat,
    TO_CHAR(tanggal_lahir, 'MONTH') AS bulan_lengkap
FROM mahasiswa;

-- DD/DY: Format hari
SELECT 
    id,
    nama,
    tanggal_lahir,
    TO_CHAR(tanggal_lahir, 'DD') AS tanggal,
    TO_CHAR(tanggal_lahir, 'DY') AS hari_singkat,
    TO_CHAR(tanggal_lahir, 'DAY') AS hari_lengkap
FROM mahasiswa;

-- YYYY/YY/RR: Format tahun
SELECT 
    id,
    nama,
    tanggal_lahir,
    TO_CHAR(tanggal_lahir, 'YYYY') AS tahun_4digit,
    TO_CHAR(tanggal_lahir, 'YY') AS tahun_2digit,
    TO_CHAR(tanggal_lahir, 'RR') AS tahun_rr
FROM mahasiswa;

-- AM/PM: Format waktu dengan AM/PM
SELECT 
    id,
    nama,
    SYSDATE,
    TO_CHAR(SYSDATE, 'HH:MI:SS AM') AS waktu_am_pm,
    TO_CHAR(SYSDATE, 'HH24:MI:SS') AS waktu_24jam
FROM mahasiswa
WHERE ROWNUM <= 3;

-- HH24/MI/SS: Format waktu 24 jam
SELECT 
    id,
    nama,
    SYSDATE,
    TO_CHAR(SYSDATE, 'HH24:MI:SS') AS waktu_24jam,
    TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS') AS waktu_lengkap
FROM mahasiswa
WHERE ROWNUM <= 3;

-- ADD_MONTHS: Menambah bulan ke tanggal lahir
SELECT 
    id,
    nama,
    tanggal_lahir,
    ADD_MONTHS(tanggal_lahir, 6) AS tanggal_plus_6bulan
FROM mahasiswa;

-- SYSDATE: Tanggal sistem saat ini
SELECT 
    id,
    nama,
    tanggal_lahir,
    SYSDATE AS tanggal_hari_ini
FROM mahasiswa
WHERE ROWNUM <= 5;

-- LAST_DAY: Hari terakhir bulan
SELECT 
    id,
    nama,
    tanggal_lahir,
    LAST_DAY(tanggal_lahir) AS hari_terakhir_bulan
FROM mahasiswa;

-- NEXT_DAY: Hari berikutnya dengan nama hari tertentu
SELECT 
    id,
    nama,
    tanggal_lahir,
    NEXT_DAY(tanggal_lahir, 'MONDAY') AS next_monday
FROM mahasiswa;

-- MONTHS_BETWEEN: Menghitung selisih bulan antara dua tanggal
SELECT 
    id,
    nama,
    tanggal_lahir,
    ROUND(MONTHS_BETWEEN(SYSDATE, tanggal_lahir)) AS umur_bulan
FROM mahasiswa;

-- ROUND dengan MONTH dan YEAR
SELECT 
    id,
    nama,
    tanggal_lahir,
    ROUND(tanggal_lahir, 'MONTH') AS dibulatkan_ke_bulan,
    ROUND(tanggal_lahir, 'YEAR') AS dibulatkan_ke_tahun
FROM mahasiswa;

-- ============================================================
-- 3.c. FUNGSI KONVERSI
-- ============================================================
-- TO_NUMBER: Konversi string ke angka
SELECT 
    id,
    TO_NUMBER('1234') AS angka_dari_string,
    TO_NUMBER('1234') + 100 AS hasil_operasi
FROM mahasiswa
WHERE ROWNUM <= 3;

-- TO_CHAR untuk date: Konversi tanggal ke string dengan format
SELECT 
    id,
    nama,
    tanggal_lahir,
    TO_CHAR(tanggal_lahir, 'DD/MM/YYYY') AS tanggal_format_1,
    TO_CHAR(tanggal_lahir, 'DD-MON-YYYY') AS tanggal_format_2
FROM mahasiswa;

-- TO_CHAR untuk number: Konversi angka ke string dengan format
SELECT 
    id,
    tinggi_badan,
    berat_badan,
    TO_CHAR(tinggi_badan, '999') AS tinggi_format,
    TO_CHAR(berat_badan, '99.99') AS berat_format
FROM mahasiswa;

-- TO_DATE: Konversi string ke tanggal
SELECT 
    id,
    nama,
    TO_DATE('25-12-2024', 'DD-MM-YYYY') AS tanggal_natal
FROM mahasiswa
WHERE ROWNUM <= 5;

-- ============================================================
-- 3.d. FUNGSI NUMERIK
-- ============================================================
-- ABS: Nilai absolut
SELECT 
    id,
    berat_badan,
    ABS(berat_badan - 70) AS selisih_dari_70
FROM mahasiswa;

-- MOD: Sisa pembagian
SELECT 
    id,
    berat_badan,
    MOD(berat_badan, 5) AS berat_mod_5
FROM mahasiswa;

-- FLOOR: Pembulatan ke bawah
SELECT 
    id,
    tinggi_badan,
    berat_badan,
    FLOOR(tinggi_badan / 10) * 10 AS tinggi_pembulatan_bawah
FROM mahasiswa;

-- POWER: Pangkat
SELECT 
    id,
    berat_badan,
    POWER(berat_badan, 2) AS berat_kuadrat,
    POWER(berat_badan, 0.5) AS akar_berat
FROM mahasiswa;

-- ROUND: Pembulatan
SELECT 
    id,
    tinggi_badan,
    berat_badan,
    ROUND(tinggi_badan / 10) * 10 AS tinggi_rounded,
    ROUND(berat_badan / 5) * 5 AS berat_rounded_5
FROM mahasiswa;

-- CEIL: Pembulatan ke atas
SELECT 
    id,
    tinggi_badan,
    berat_badan,
    CEIL(tinggi_badan / 10) * 10 AS tinggi_pembulatan_atas
FROM mahasiswa;

-- ============================================================
-- QUERY GABUNGAN DENGAN BERBAGAI FUNGSI
-- ============================================================
SELECT 
    id,
    UPPER(nama) AS nama_besar,
    LENGTH(nama) AS panjang_nama,
    tempat_lahir,
    TO_CHAR(tanggal_lahir, 'DD-MON-YYYY') AS tanggal_lahir_format,
    ROUND(MONTHS_BETWEEN(SYSDATE, tanggal_lahir) / 12) AS umur_tahun,
    SUBSTR(nomor_hp, 1, 4) || '-' || SUBSTR(nomor_hp, 5, 4) || '-' || SUBSTR(nomor_hp, 9) AS nomor_hp_format,
    LOWER(SUBSTR(email, 1, INSTR(email, '@') - 1)) AS username_email,
    tinggi_badan,
    berat_badan,
    ROUND(berat_badan / (POWER(tinggi_badan/100, 2)), 2) AS bmi
FROM mahasiswa
ORDER BY id;

SELECT * FROM mahasiswa;
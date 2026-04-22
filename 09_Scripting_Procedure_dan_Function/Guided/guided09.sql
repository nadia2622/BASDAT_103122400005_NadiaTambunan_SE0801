

-- MODUL 9 : Scripting Procedure & Function

SET SERVEROUTPUT ON;
SET SERVEROUTPUT OFF; 


-- Contoh procedure paling sederhana (Tanpa Parameter)
CREATE OR REPLACE PROCEDURE cetak AS
    d VARCHAR(10);
BEGIN
    d := q'(Coba Lagi)';
    DBMS_OUTPUT.PUT_LINE(d);
END;
/

-- Jalankan procedure
EXEC cetak;
EXECUTE cetak;

-- 1. Parameter IN - Kirim nilai ke procedure
CREATE OR REPLACE PROCEDURE sapa (nama IN VARCHAR2) AS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Halo, ' || nama || '!');
END;
/

EXEC sapa('Budi');
EXEC sapa('Siti');

-- 2. Parameter OUT - Ambil nilai dari procedure
CREATE OR REPLACE PROCEDURE hitung_luas_persegi (
    sisi    IN NUMBER,
    luas    OUT NUMBER
) AS
BEGIN
    luas := sisi * sisi;
END;
/

-- Panggil procedure dengan OUT parameter
DECLARE
    hasil NUMBER;
BEGIN
    hitung_luas_persegi(7, hasil);
    DBMS_OUTPUT.PUT_LINE('Luas persegi sisi 7 = ' || hasil);
END;
/

-- 3. Paramtere IN OUT - Kirim dan terima kembali nilai
CREATE OR REPLACE PROCEDURE format_phone
    (phone_num IN OUT VARCHAR2) IS
BEGIN
    phone_num := '(' || SUBSTR(phone_num, 1, 3) || ')' ||
                SUBSTR(phone_num, 4, 3) || '-' ||
                SUBSTR(phone_num, 7);
END format_phone;
/

-- Panggil procedure IN OUT
DECLARE
    phone VARCHAR2(20) := '234676NAD';
BEGIN
    format_phone(phone);
    DBMS_OUTPUT.PUT_LINE(phone);
    -- Output: (234)234-NAD
END;
/

-- ===================================
-- SUB-BAB 9.1.1.2 - PASSING PARAMETER
-- ===================================

-- Procedure untuk demo passing parameter
CREATE OR REPLACE PROCEDURE add_dept (
    name IN VARCHAR2,
    loc IN NUMBER
) AS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Dept: ' || name || ', Loc: ' || loc);
END;
/

-- 1. Positional - urutan sesuai definisi
EXECUTE add_dept('EDUCATION', 2400);

-- 2. Named - pakai => untuk spesifikasi nama 
EXECUTE add_dept(loc=> 2400, name=>'EDUCATION');

-- 3. Combination - gabungan positional dan named
EXECUTE add_dept('EDUCATION', loc=>2400);

-- ============================================
-- SUB-BAB 9.1.1.3 - PROCEDURE DALAM PROCEDURE
-- ============================================

-- Procedure 1: cetak angka 1 sampai x
CREATE OR REPLACE PROCEDURE cetak_angka (x IN INTEGER) AS
    j INTEGER;
BEGIN 
    FOR j IN 1..x LOOP
        DBMS_OUTPUT.PUT_LINE(TO_CHAR(J));
    END LOOP;
END;
/

-- Procedure 2: Memanggil procedure di atas
CREATE OR REPLACE PROCEDURE panggil AS
BEGIN 
    cetak_angka(5);
END;
/

EXECUTE cetak_angka;

EXECUTE panggil;

-- ============================================
-- SUB-BAB 9.3 - 
-- ============================================



-- Function tanpa parameter
CREATE OR REPLACE FUNCTION tulis
RETURN VARCHAR2 AS
BEGIN
    RETURN 'Hello World';
END;
/

-- Panggil function
SELECT tulis FROM dual;
EXECUTE DBMS_OUTPUT.PUT_LINE(tulis);
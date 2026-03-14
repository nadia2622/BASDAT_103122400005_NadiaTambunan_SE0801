Drop table TEATER cascade CONSTRAINTS;
CREATE TABLE TEATER (
    nomor_teater VARCHAR2(10) PRIMARY KEY,
    nama_teater  VARCHAR2(50),
    kapasitas    NUMBER,
    harga        NUMBER
);

Drop table KURSI cascade CONSTRAINTS;
CREATE TABLE KURSI (
    no_k         VARCHAR2(10),
    nomor_teater VARCHAR2(10),
    jenis        VARCHAR2(20),
    PRIMARY KEY (no_k, nomor_teater),
    FOREIGN KEY (nomor_teater) REFERENCES TEATER(nomor_teater)
);

INSERT INTO TEATER VALUES ('Teater 1', 'Teater Satu',  100, 75000);
INSERT INTO TEATER VALUES ('Teater 2', 'Teater Dua',   150, 50000);
INSERT INTO TEATER VALUES ('Teater 3', 'Teater Tiga',   80, 60000);
INSERT INTO TEATER VALUES ('Teater 4', 'Teater Empat', 120, 65000);
INSERT INTO TEATER VALUES ('Teater 5', 'Teater Lima',   80, 100000);

INSERT INTO KURSI VALUES ('A1', 'Teater 1', 'Reguler');
INSERT INTO KURSI VALUES ('A2', 'Teater 1', 'Reguler');
INSERT INTO KURSI VALUES ('A3', 'Teater 1', 'Reguler');
INSERT INTO KURSI VALUES ('A4', 'Teater 1', 'Reguler');
INSERT INTO KURSI VALUES ('A5', 'Teater 1', 'Reguler');
INSERT INTO KURSI VALUES ('A6', 'Teater 1', 'Reguler');
INSERT INTO KURSI VALUES ('A7', 'Teater 1', 'Reguler');
INSERT INTO KURSI VALUES ('A8', 'Teater 1', 'Reguler');
INSERT INTO KURSI VALUES ('B1', 'Teater 1', 'Reguler');
INSERT INTO KURSI VALUES ('B2', 'Teater 1', 'Reguler');

INSERT INTO KURSI VALUES ('E3', 'Teater 5', 'Premium');
INSERT INTO KURSI VALUES ('E4', 'Teater 5', 'Premium');
INSERT INTO KURSI VALUES ('E5', 'Teater 5', 'Premium');
INSERT INTO KURSI VALUES ('E6', 'Teater 5', 'Premium');
INSERT INTO KURSI VALUES ('E7', 'Teater 5', 'Premium');
INSERT INTO KURSI VALUES ('E8', 'Teater 5', 'Premium');

COMMIT;

SELECT t.nomor_teater,k.no_k
FROM   TEATER t
JOIN   KURSI k ON t.nomor_teater = k.nomor_teater
ORDER  BY t.nomor_teater, k.no_k;
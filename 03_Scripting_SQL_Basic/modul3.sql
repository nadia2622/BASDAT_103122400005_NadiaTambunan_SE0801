-- Tabel membership (jenis member)
CREATE TABLE membership ( --tabel 1
    idmembership  VARCHAR(5)    PRIMARY KEY,
    jenis         VARCHAR(20)   NOT NULL,
    diskon        NUMBER(5,2)   NOT NULL -- 5,2 means hanya 5 angka yang disimpan maksimal 2 angka dibelakang koma
);

-- Tabel member
CREATE TABLE memberr ( --tabel 2
    idmember      VARCHAR(10)   PRIMARY KEY,
    nmMember      VARCHAR(50)   NOT NULL,
    alamat        VARCHAR(100),
    telp          VARCHAR(15),
    idmembership  VARCHAR(5),
    FOREIGN KEY (idmembership) REFERENCES membership(idmembership)
);

-- Tabel produk
CREATE TABLE produk ( --tabel 3
    idproduk      VARCHAR(10)   PRIMARY KEY,
    nmProduk      VARCHAR(50)   NOT NULL,
    stok          NUMBER(10)    NOT NULL,
    harga         NUMBER(15)    NOT NULL
);

INSERT INTO membership (idmembership, jenis, diskon) VALUES ('M001','Platinum',20);
INSERT INTO membership (idmembership, jenis, diskon) VALUES ('M002','Gold',15);
INSERT INTO membership (idmembership, jenis, diskon) VALUES ('M003','Silver',10);
INSERT INTO membership (idmembership, jenis, diskon) VALUES ('M004','Regular',5);

INSERT INTO memberr VALUES ('MBR001','Siti Aminah','Jl. Merdeka No.1','081111111','M001');
INSERT INTO memberr VALUES ('MBR002','Andi Wijaya','Jl. Sudirman No.5','082222222','M002');
INSERT INTO memberr VALUES ('MBR003','Sari Dewi','Jl. Gatot No.12','083333333','M002');
INSERT INTO memberr VALUES ('MBR004','Budi Santoso','Jl. Pemuda No.8',NULL,'M003');
INSERT INTO memberr VALUES ('MBR005','Ani Rahayu','Jl. Ahmad Yani','085555555','M003');
INSERT INTO memberr VALUES ('MBR006','Zulfikar','Jl. Diponegoro','086666666','M004');
INSERT INTO memberr VALUES ('MBR007','Ahmad Fauzi','Jl. Veteran No.3',NULL,'M004');

INSERT INTO produk VALUES ('000001','Susu UHT',8,15000);
INSERT INTO produk VALUES ('000002','Mie Instan',50,3500);
INSERT INTO produk VALUES ('000003','Kopi Sachet',20,2500);
INSERT INTO produk VALUES ('000004','Sabun Mandi',12,12000);
INSERT INTO produk VALUES ('000005','Shampoo',7,25000);
INSERT INTO produk VALUES ('000006','Deterjen',30,8000);
INSERT INTO produk VALUES ('000007','Beras 5kg',15,65000);
INSERT INTO produk VALUES ('000008','Minyak Goreng',10,18000);

COMMIT;

SELECT * FROM memberr;
SELECT * FROM membership;
SELECT * FROM produk;

select nmproduk, harga, stok from produk where harga > 3000;

select distinct harga from produk;

--bikin kolom data baru namany jml
select jenis, count(*) jml from membership join memberr using (idmembership)
group by (jenis);

select * from memberr order by nmmember desc;
select * from produk order by harga desc;

select * from tab;

desc membership;
desc memberr;
desc produk;

--klausa aritmatika 
select nmproduk, stok-2 from produk where idproduk = '000004';

--kolom alias
select nmmember Nama, alamat as alamat, telp "nomor telepon" from memberr;

--kolom konkat (||): untuk menyatukan kolom - kolom tabel
select nmmember || ' - ' || alamat as "Data Member" from memberr;
select nmproduk || ' : ' || stok as "Data Produk" from produk;
select nmmember || ' beralamat di daerah ' || alamat as "Data Member" from memberr;

--literal
select nmmember, 'beralamat di daerah', alamat from memberr;

--Operator Logika 
select nmmember, idmembership from memberr where nmmember like 'A%' or nmmember like 'Z%';

--Operator pembanding
select nmproduk, harga, stok from produk where harga > 10000 and stok < 15;
select nmproduk, harga, stok from produk where harga >= 15000 and stok < 10;

--Operator in/not
select nmproduk, harga from produk where not harga < 10000;
select nmproduk, stok from produk where stok not in (10, 20);

--Operator between and not between
select nmproduk, stok from produk where stok between 10 and 20;

--Operator null
select * from memberr where telp is null;
select * from memberr where telp is not null;

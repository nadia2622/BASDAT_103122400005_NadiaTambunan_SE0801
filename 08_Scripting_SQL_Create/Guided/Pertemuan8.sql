drop table kebun_sawit;

create table kebun_sawit(
id_kebun varchar2(10),
nama_petani varchar2(100),
luas_lahan number,
jumlah_pohon number,
tahun_tanam number
);

INSERT ALL
  INTO kebun_sawit (id_kebun, nama_petani, luas_lahan, jumlah_pohon, tahun_tanam) 
    VALUES ('KBN-001', 'Budi Santoso', 15.5, 2000, 2015)
  INTO kebun_sawit (id_kebun, nama_petani, luas_lahan, jumlah_pohon, tahun_tanam) 
    VALUES ('KBN-002', 'Siti Aminah', 10.0, 1300, 2018)
  INTO kebun_sawit (id_kebun, nama_petani, luas_lahan, jumlah_pohon, tahun_tanam) 
    VALUES ('KBN-003', 'Ahmad Dahlan', 25.2, 3200, 2010)
  INTO kebun_sawit (id_kebun, nama_petani, luas_lahan, jumlah_pohon, tahun_tanam) 
    VALUES ('KBN-004', 'Wahyu Hidayat', 12.0, 1500, 2019)
  INTO kebun_sawit (id_kebun, nama_petani, luas_lahan, jumlah_pohon, tahun_tanam) 
    VALUES ('KBN-005', 'Ratna Sari', 8.5, 1100, 2020)
  INTO kebun_sawit (id_kebun, nama_petani, luas_lahan, jumlah_pohon, tahun_tanam) 
    VALUES ('KBN-006', 'Agus Prayitno', 30.0, 3900, 2008)
  INTO kebun_sawit (id_kebun, nama_petani, luas_lahan, jumlah_pohon, tahun_tanam) 
    VALUES ('KBN-007', 'Dewi Lestari', 18.3, 2300, 2016)
  INTO kebun_sawit (id_kebun, nama_petani, luas_lahan, jumlah_pohon, tahun_tanam) 
    VALUES ('KBN-008', 'Rudi Hermawan', 5.0, 650, 2022)
  INTO kebun_sawit (id_kebun, nama_petani, luas_lahan, jumlah_pohon, tahun_tanam) 
    VALUES ('KBN-009', 'Hendra Setiawan', 22.1, 2800, 2012)
  INTO kebun_sawit (id_kebun, nama_petani, luas_lahan, jumlah_pohon, tahun_tanam) 
    VALUES ('KBN-010', 'Joko Widodo', 14.8, 1900, 2017)
SELECT * FROM dual;

select * from kebun_sawit;

select table_name, num_rows, blocks, empty_blocks
from user_tables
where table_name = 'KEBUN_SAWIT';
-- under 8kb = 2 block, empty 6 (all 8 block)

analyze table kebun_sawit compute statistics;

analyze table kebun_sawit delete statistics;
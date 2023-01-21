select x.kode_produk from ms_produk;

-- nama kolom yang ditampilkan
select no_urut as nomor, nama_produk as nama from ms_produk;

-- menghilangkan as
select no_urut nomor, nama_produk nama from ms_produk;

select ms_produk.harga as harga_jual from ms_produk;

-- tanpa as pada tabel
select t2.nama_produk, t2.harga from ms_produk t2;
-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 13, 2021 at 02:30 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_ps`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_disposisi`
--

CREATE TABLE `tbl_disposisi` (
  `id_disposisi` int(10) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `isi_disposisi` mediumtext NOT NULL,
  `sifat` varchar(100) NOT NULL,
  `batas_waktu` date NOT NULL,
  `catatan` varchar(250) NOT NULL,
  `id_surat` int(10) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_disposisi`
--

INSERT INTO `tbl_disposisi` (`id_disposisi`, `tujuan`, `isi_disposisi`, `sifat`, `batas_waktu`, `catatan`, `id_surat`, `id_user`) VALUES
(1, 'Testing', 'coba koding', 'Penting', '2021-03-25', 'llll', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_instansi`
--

CREATE TABLE `tbl_instansi` (
  `id_instansi` tinyint(1) NOT NULL,
  `institusi` varchar(150) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `dekan` varchar(50) NOT NULL,
  `niy` varchar(25) NOT NULL,
  `website` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_instansi`
--

INSERT INTO `tbl_instansi` (`id_instansi`, `institusi`, `nama`, `status`, `alamat`, `dekan`, `niy`, `website`, `email`, `logo`, `id_user`) VALUES
(1, 'Muhammadiyah', 'SMA Muhammadiyah AL-Mujahidin', 'Akreditasi A', 'Jl. K. H. Agus Salim Gg. Bougenvil Ledoksari Kepek Gunungkidul', 'Wahyudi, S. Pd.I.,M.S.I.', '1082777', 'https://www.smamalmujahidin.sch.id/', 'info@smamalmujahidin.sch.id', 'Sekolah.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_klasifikasi`
--

CREATE TABLE `tbl_klasifikasi` (
  `id_klasifikasi` int(5) NOT NULL,
  `kode` varchar(30) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  `penerima` varchar(50) NOT NULL,
  `tujuan` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_klasifikasi`
--

INSERT INTO `tbl_klasifikasi` (`id_klasifikasi`, `kode`, `nama`, `id_user`, `penerima`, `tujuan`) VALUES
(10, 'B.2', 'Pendidikan dan Pelatihan', 1, '', ''),
(3, 'A.R', 'Rektor', 1, '', ''),
(4, 'A.R.1', 'Wakil Rektor bidang Al-Islam dan Kemuhammadiyahan', 1, '', ''),
(5, 'A.R.2', 'Wakil Rektor Bidang Akademik', 1, '', ''),
(6, 'A.R.3', 'Wakil Rektor Bidang Sumber Daya Manusia', 1, '', ''),
(7, 'A.R.4', 'Wakil Rektor Bidang Keuanganm Keharabendaan dan Administrasi Umum', 1, '', ''),
(8, 'A.R.5', 'Wakil Rektor Bidang Kemahasiswaan dan Alumni', 1, '', ''),
(9, 'E.2', 'Alat Kuliah', 1, '', ''),
(11, 'B.02', 'Pengangkatan', 1, '', ''),
(12, 'F2', 'Dekan Fakultas Teknologi Industri', 1, '', ''),
(13, 'F2.1', 'Wakil Dekan Fakultas Teknologi Industri', 1, '', ''),
(14, 'F2.A', 'Kepala Kantor Fakultas FTI', 1, '', ''),
(15, 'F.3', 'Hengki Prayoga', 1, '', ''),
(16, 'adit', 'aditya', 1, 'bobby', 'makan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sett`
--

CREATE TABLE `tbl_sett` (
  `id_sett` tinyint(1) NOT NULL,
  `surat_masuk` tinyint(2) NOT NULL,
  `surat_keluar` tinyint(2) NOT NULL,
  `referensi` tinyint(2) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  `surat_rahasia` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sett`
--

INSERT INTO `tbl_sett` (`id_sett`, `surat_masuk`, `surat_keluar`, `referensi`, `id_user`, `surat_rahasia`) VALUES
(1, 10, 10, 10, 7, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_surat_edaran`
--

CREATE TABLE `tbl_surat_edaran` (
  `id_surat` int(10) NOT NULL,
  `no_agenda` int(10) NOT NULL,
  `no_surat` varchar(50) CHARACTER SET latin1 NOT NULL,
  `asal_surat` varchar(250) CHARACTER SET latin1 NOT NULL,
  `isi` mediumtext CHARACTER SET latin1 NOT NULL,
  `kode` varchar(30) CHARACTER SET latin1 NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_diterima` date NOT NULL,
  `file` varchar(250) CHARACTER SET latin1 NOT NULL,
  `keterangan` varchar(250) CHARACTER SET latin1 NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_surat_edaran`
--

INSERT INTO `tbl_surat_edaran` (`id_surat`, `no_agenda`, `no_surat`, `asal_surat`, `isi`, `kode`, `tgl_surat`, `tgl_diterima`, `file`, `keterangan`, `id_user`) VALUES
(3, 1, '456 Tahun 2020', 'Rektor Universitas Ahmad Dahlan', 'Pemberhentian dan Pengangkatan Kepala Urusan pada Unit-Unit Kerja, di Lingkungan Universitas Ahmad Dahlan', 'A.R', '2020-12-31', '2021-02-27', '763-KEP-1 KR No 456 Tahun 2020 tentang Pemberhentian dan Pengangkatan Kepala Urusan pada Unit-Unit Kerja di Lingkungan UAD.pdf', 'Surat Keputusan', 1),
(4, 2, 'F2/476/B/IX/2020', 'Dekan Fakultas Teknologi Industri Universitas Ahmad Dahlan', 'Penugasan Mengajar Tahun Akademik 2020/2021 Semester Gasal', 'F2', '2020-09-01', '2021-02-27', '1523-KEP-2 KD Tentang Penugasan Mengajar Tahun Akademik 2020-2021 Semester Gasal (Teknik Industri).pdf', 'Surat Keputusan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_surat_keluar`
--

CREATE TABLE `tbl_surat_keluar` (
  `id_surat` int(10) NOT NULL,
  `no_agenda` int(10) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_catat` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_surat_keluar`
--

INSERT INTO `tbl_surat_keluar` (`id_surat`, `no_agenda`, `tujuan`, `no_surat`, `isi`, `kode`, `tgl_surat`, `tgl_catat`, `file`, `keterangan`, `id_user`) VALUES
(2, 1, 'Bapak Angga Suanggana, S.H., M.H.', 'F2/019/D.2/I/2021', 'Permohonan Dosen Pengampu', 'F2', '2021-01-07', '2021-02-27', '5318-F2-019 Surat Permohonan Dosen Pengampu Angga Suanggana.pdf', 'Surat Keluar', 1),
(3, 2, 'ahmad Azhari. S.Kom., M.Eng.', 'F2/106/J/I/2021', 'Surat Tugas Sebagai Narasumber Pelatihan Host Zoom Meeting yang diselenggarakan Kementerian Pendidikan dan Kebudayaan Balai Bahasa Provinsi Daerah Istimewa Yogyakarta', 'F2', '2021-02-01', '2021-02-27', '5215-F2-106J Surat Tugas  narasumber Ahmad Azhari.pdf', 'Surat Keluar', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_surat_masuk`
--

CREATE TABLE `tbl_surat_masuk` (
  `id_surat` int(10) NOT NULL,
  `no_agenda` int(10) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `asal_surat` varchar(250) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) NOT NULL,
  `indeks` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_diterima` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_surat_masuk`
--

INSERT INTO `tbl_surat_masuk` (`id_surat`, `no_agenda`, `no_surat`, `asal_surat`, `isi`, `kode`, `indeks`, `tgl_surat`, `tgl_diterima`, `file`, `keterangan`, `id_user`) VALUES
(4, 2, 'PS18/163/E.2/II/2021', 'Yogyakarta', 'Permohonan Surat Tugas Sebagai Pemateri', 'E.2', '02', '2021-02-13', '2021-02-27', '2648-PS18-163-E.2-II-2021 - Permohonan surat tugas sebagai pemateri - ahmad azhari (1).pdf', 'Surat Permohonan', 1),
(5, 3, 'PS19/024/B.02/I/2021', 'Yogyakarta', 'Permohonan Surat Ke Fakultas', 'B.02', '03', '2021-01-07', '2021-02-27', '2561-PS19-024-B.02-I-2021 Permohonan Dosen Ketenagakerjaan.pdf', 'Surat Permohonan', 1),
(6, 4, 'kjk7', 'jogja', 'lkllkj', 'F2.1', '2', '2021-06-18', '2021-06-13', '9239-1800018208.pdf', 'kokokoko', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_surat_rahasia`
--

CREATE TABLE `tbl_surat_rahasia` (
  `id_surat` int(10) NOT NULL,
  `no_agenda` int(10) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_catat` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_surat_rahasia`
--

INSERT INTO `tbl_surat_rahasia` (`id_surat`, `no_agenda`, `tujuan`, `no_surat`, `isi`, `kode`, `tgl_surat`, `tgl_catat`, `file`, `keterangan`, `id_user`) VALUES
(0, 1, '123', '1233', '1234567', 'F.3', '2021-08-18', '2021-08-11', '6972-checkout.png', '123', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` tinyint(2) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `nama`, `nip`, `admin`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', '52654765474', 1),
(5, 'pengguna', '8b097b8a86f9d6a991357d40d3d58634', 'Pengguna', '112233', 3),
(8, 'kepsek', 'd724ff7a24e1ad29a39c004bbd32bd18', 'kepala sekolah', '1122334455', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_disposisi`
--
ALTER TABLE `tbl_disposisi`
  ADD PRIMARY KEY (`id_disposisi`);

--
-- Indexes for table `tbl_instansi`
--
ALTER TABLE `tbl_instansi`
  ADD PRIMARY KEY (`id_instansi`);

--
-- Indexes for table `tbl_klasifikasi`
--
ALTER TABLE `tbl_klasifikasi`
  ADD PRIMARY KEY (`id_klasifikasi`);

--
-- Indexes for table `tbl_sett`
--
ALTER TABLE `tbl_sett`
  ADD PRIMARY KEY (`id_sett`);

--
-- Indexes for table `tbl_surat_edaran`
--
ALTER TABLE `tbl_surat_edaran`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `tbl_surat_keluar`
--
ALTER TABLE `tbl_surat_keluar`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `tbl_surat_masuk`
--
ALTER TABLE `tbl_surat_masuk`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_disposisi`
--
ALTER TABLE `tbl_disposisi`
  MODIFY `id_disposisi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_klasifikasi`
--
ALTER TABLE `tbl_klasifikasi`
  MODIFY `id_klasifikasi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_surat_edaran`
--
ALTER TABLE `tbl_surat_edaran`
  MODIFY `id_surat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_surat_keluar`
--
ALTER TABLE `tbl_surat_keluar`
  MODIFY `id_surat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_surat_masuk`
--
ALTER TABLE `tbl_surat_masuk`
  MODIFY `id_surat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

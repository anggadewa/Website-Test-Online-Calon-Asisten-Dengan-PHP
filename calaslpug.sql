-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2019 at 05:07 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `calaslpug`
--

-- --------------------------------------------------------

--
-- Table structure for table `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `soal` varchar(100) NOT NULL,
  `salah` int(11) NOT NULL,
  `benar` int(11) NOT NULL,
  `kosong` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Selesai'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `nama`, `soal`, `salah`, `benar`, `kosong`, `score`, `status`) VALUES
(13, 'Dumy', 'Matematika', 24, 3, 3, 30, 'Selesai'),
(14, 'Dumy', 'Bahasa Inggris', 8, 19, 3, 63, 'Selesai'),
(18, 'Dumy', 'Aritmatika', 1, 3, 26, 10, 'Selesai'),
(19, 'Dumy', 'TPA', 1, 4, 30, 11, 'Selesai'),
(20, 'Dumy2', 'Matematika', 1, 2, 7, 20, 'Selesai'),
(21, 'Dumy2', 'Bahasa Inggris', 2, 4, 24, 13, 'Selesai'),
(22, 'Dumy2', 'Aritmatika', 1, 3, 26, 10, 'Selesai'),
(23, 'Dumy2', 'TPA', 1, 3, 31, 8, 'Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `soalarit`
--

CREATE TABLE `soalarit` (
  `id_soal` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `a` text NOT NULL,
  `b` text NOT NULL,
  `c` text NOT NULL,
  `d` text NOT NULL,
  `jawaban` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soalarit`
--

INSERT INTO `soalarit` (`id_soal`, `pertanyaan`, `a`, `b`, `c`, `d`, `jawaban`) VALUES
(1, '1, 3, 2, 6, 5, 15, 14, ....', '24', '28', '32', '42', 'D'),
(2, 'Jika (a - 2ab)2 = 4, maka (a - 2ab) = ....', '1', '2', '3', '8', 'B'),
(3, 'Jika mathrm{k}k adalah bilangan bulat positif genap yang habis dibagi 3, 4 dan 8, maka 2k - 8 adalah ....', '>186', '>88', '>40', '>=40', 'D'),
(4, '600 - (19 x 31) = ...', '11', '21', '71', '81', 'B'),
(5, 'Jika 213cd + 4 = 421, maka 639cd == ...', '1275', '1263', '1251', '1242', 'C'),
(6, 'Sebuah barisan aritmatika memiliki jumlah suku ganjil. Jika suku pertamanyanya 4 dan suku terakhirnya adalah 20, maka suku tengahnya adalah:', '12', '10', '16', '14', 'A'),
(7, 'Dalam sebuah barisan aritmatika diketahui suku kedua adalah 5 dan suku kelima adalah 14. Maka berapakah jumlah 10 suku pertama dari barisan aritmatika tersebut ?', '210', '300', '430', '155', 'D'),
(8, 'Diketahui suatu suku ke-4 dan suku ke-9 dari deret aritmatika adalah 16 dan 51. Jumlah 25 suku pertama adalah ...', '163 ', '326', '1975 ', '3950', 'C'),
(9, 'Diketahui suatua barisan aritmatika :2, 5, 8, 11, 14, .........Un. Tentukan rumus suku ke-n dalam barisan aritmetika tersebut: ', 'Un = 3n - 1', 'Un = 3n - 2', 'Un = 3n + 1', 'Un = 3n + 3', 'A'),
(10, 'Terdapat sebuah barisan aritmatika sebanyak tujuh suku. Jika suku pertama dan nilai bedanya adalah 2. Berapakah suku tengahnya ?', '9', '8', '10', '12', 'B'),
(11, 'Jika a=5 dan b=2, maka nilai dari a^3- 3a^2b  + 3ab^2 - b^3 =....', '81', '-27', '27', '81', 'C'),
(12, 'Jika x + y = 100 dan x/y = 1/4, maka nilai y-x ...', '30', '50', '60', '75', 'C'),
(13, '248, 246, 242, ..., ..., 218, 206 <BR>\r\nAngka yang tepat untuk mengisi angka kosong tersebut adalah..\r\n', '241 dan 243', '255 dan 243', '256 dan 278', '298 dan 290', 'A'),
(14, 'Jika 3 + 1= 24; 5 + 2 = 37; 7 + 2 = 59; 8 + 1 = 79 , maka 7 + 5 = ?', '212', '213', '214', '215', 'A'),
(15, 'Berapa 5/8 dari 520...', '352', '523', '325', '125', 'C'),
(16, '(175 x 12) : (21,4 - 7/5) =....', '405', '210', '105', '325', 'C'),
(17, '2,20 x 0,75 + 3/5 : 1/8 = ......', '1,89', '10,5', '9,8', '5,9', 'D'),
(18, 'Suatu barisan aritmatika diketahui suku ke 7 adalah 48 dan suku ke 11 adalah 76, tentukan suku ke-45..', '314', '125', '215', '300', 'A'),
(19, 'Tentukan suku ke-9 dan rumus suku ke-n dari barisan aritmatika 7, 15, 23, 30, ...', '63', '73', '83', '70', 'A'),
(20, 'Sebuah  pabrik sepatu memproduksi 500 pasang sepatu pada awal tahun 2018, karena banyaknya permintaan sepatu di pasar, pabrik sepatu tersebut menambah produksi sepatu 25 pasang setiap bulannya. Berapa pasang jumlah sepatu yang diproduksi pabrik tersebut pada bulan terakhir tahun 2018?', '775', '770', '665', '765', 'A'),
(21, 'Diketahui suku terakhir suatu deret aritmatika adalah 185. Jika deret tersebut terdiri dari 12 suku dan jumlah total deret itu adalah 1.230, maka suku pertama deret itu adalah..', 'a=50', 'a=40', 'a=30', 'a=20', 'D'),
(22, 'jika suku ke-5 dan suku ke-10 suatu barisan aritmatika adalah 48 dan 98, maka suku pertama barisan tersebut adalah...', 'a=28', 'a=24', 'a=18', 'a=8', 'D'),
(23, 'dari suatu deret aritmatika dengan su ke-n adalah Un, diketahui U3 + U6 + U9 + U12 = 72. Maka jumlah 14 suku pertama sama dengan...', '252', '284', '320', '344', 'A'),
(24, 'Rumus suku ke-n suatu barisan adalah Un = n 2 - 2n. Jumlah suku ke-10 dan ke-11 barisan itu adalah ...', '189', '180', '179', '199', 'A'),
(25, 'Banyak kursi pada barisan pertama di gedung bioskop adalah 20. Banyak kursi pada baris di belakangnya 4 buah lebih banyak dari kursi pada garis di depannya. Banyak kursi pada baris ke-15 adalah...', '78', '76', '66', '56', 'B'),
(26, 'Tentang deret hitung 1,3,5,7, ... diketahui bahwa jumlah n suku pertama adalah 225, maka suku ke-n adalah ...', '28', '29', '30', '31', 'B'),
(27, 'Rumus suku ke-n barisan aritmatika 94, 90, 86, 82, ... adalah...', 'Un = 90 + 4n', 'Un = 94 + 4n', 'Un = 94 - 4n', 'Un = 98 - 4n', 'D'),
(28, 'Suatu tumpukan batu bata terdiri atas 15 lapis. Banyak batu bata pada lapis paling atas ada 10 buah, tepat di bawahnya ada 12 buah, di bawahnya lagi ada 14, dan seterusnya. Banyak batu bata pada lapisan paling bawah ada...', '30', '32', '36', '38', 'D'),
(29, 'Diketahui suatu barisan aritmatika. Suku pertama barisan tersebut 25 dan suku kesebelas 55. Suku ke-45 barisan tersebut adalah...', '157', '163', '169', '179', 'A'),
(30, 'Dalam ruang pertunjukkan, di baris paling depan tersedia 18 kursi. Baris di belakangnya selalu tersedia 1 kursi lebih banyak daripada baris di depannya. Jika dalam ruang itu terdapat 12 baris, banyak kursi seluruhnya adalah... buah.', '252', '282', '284', '296', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `soaling`
--

CREATE TABLE `soaling` (
  `id_soal` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `a` text NOT NULL,
  `b` text NOT NULL,
  `c` text NOT NULL,
  `d` text NOT NULL,
  `jawaban` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soaling`
--

INSERT INTO `soaling` (`id_soal`, `pertanyaan`, `a`, `b`, `c`, `d`, `jawaban`) VALUES
(1, 'BRILLIANCE', 'easy going', 'brightness', 'confidence', 'rudeness', 'B'),
(2, 'ALLOWABLE', 'capable', 'more than usual', 'strange', 'permissible', 'D'),
(3, 'ANNIVERSARY', 'celebration', 'bitter enemy', 'musical competition', 'yearly event', 'D'),
(4, 'BONUS', 'something to eat', 'center part', 'important part', 'reward', 'D'),
(5, 'FREQUENT', 'take care', 'careless', 'impolite', 'happening often', 'D'),
(6, 'CAPABLE', 'impatien', 'not needed', 'having great value', 'able to do', 'D'),
(7, 'LEADERSHIP', 'capable to manage', 'necessary action', 'willingness to give', 'ability to ask', 'A'),
(8, 'PORTABLE', 'hard to understand', 'easily to be carried', 'forbidden to be carried', 'hard to be carried', 'B'),
(9, 'ESTIMATE', 'judge approximately', 'follow close behind', 'make sure about something', 'recount', 'A'),
(10, 'LOYALITY', 'being patient', 'being uncertain', 'being faithful', 'being hopefully', 'C'),
(11, 'MAJORITY', 'the amount of a sum', 'the greatest part', 'the smallest part', 'the smallest amount', 'B'),
(12, 'SUPREME', 'the highest', 'the lowest', 'the weakness', 'the hottest', 'A'),
(13, 'MISSING', 'fail', 'absent', 'dirty', 'dark', 'B'),
(14, 'FALSE', 'not real', 'obstruct', 'failure', 'growing', 'C'),
(15, 'LOOSE', 'free', 'growing up', 'run away', 'depend on', 'A'),
(16, 'BITTER', 'bright looking', 'sharp looking', 'good looking', 'fascinating', 'B'),
(17, 'REPAY', 'take from others', 'give ot back to', 'ask for something', 'buy something', 'B'),
(18, 'STUPID', 'smart person', 'idiot', 'brilliant', 'brightness', 'B'),
(19, 'APPRECIATE', 'honor', 'expectation', 'wish something', 'take from someone', 'A'),
(20, 'DIFFICULT', 'hard', 'easy', 'enough', 'release', 'A'),
(21, 'Would you like (to come/come) to my house tonight? ', 'To come ', 'Come', '', '', 'A'),
(22, 'Sorry, I haven\'t (some/any) money', 'Some', 'Any', '', '', 'B'),
(23, 'It\'s very difficult (to be learn/to learn) this lesson', 'To be learn ', 'To Learn', '', '', 'B'),
(24, 'I bought (those/that) books yesterday', 'Those ', 'That', '', '', 'A'),
(25, 'She is beauty enough (to be/to) an artist. ', 'To be ', 'To', '', '', 'A'),
(26, 'I think, that pen costs (too many/too much). ', 'Too many ', 'Too much', '', '', 'B'),
(27, 'There are (fewer/less) employees in this office than next one', 'Fewer ', 'Less ', '', '', 'A'),
(28, 'Can you (give/to give) it back my book as soon as possible. ', 'Give ', 'To Give', '', '', 'B'),
(29, 'Where (were/was) you born', 'Were ', 'Was', '', '', 'A'),
(30, 'What time (do/did) you go to your office yesterday', 'Do ', 'Did', '', '', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `soalmtk`
--

CREATE TABLE `soalmtk` (
  `id_soal` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `a` text NOT NULL,
  `b` text NOT NULL,
  `c` text NOT NULL,
  `d` text NOT NULL,
  `jawaban` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soalmtk`
--

INSERT INTO `soalmtk` (`id_soal`, `pertanyaan`, `a`, `b`, `c`, `d`, `jawaban`) VALUES
(1, 'Untuk mengerjakan 1 unit rumah dibutuhkan waktu 36 hari, dengan 12 tenaga kerja. Berapa waktu akan dihabiskan bila menggunakan 24 Orang tenanga kerja?', '15', '16', '17', '18', 'D'),
(2, 'Sebuah pesawat terbang berangkat dari kota Kupang menuju kota Jakarta pukul 7 pagi dan perjalanan ke Jakarta selama 4 jam. Transit di Denpasar selama 30 menit. Pada pukul berapa pesawat tersebut tiba di Jakarta?', '10.45', '11.00', '11.15', '11.30', 'D'),
(3, 'Perbandingan uang Raka dan uang Sekar adalah 3 : 2. Jika uang Adi dan Ida berjumlah Rp. 150.000, berapa masing-masing uang Adi dan Ida?', 'Rp. 80.000 dan Rp. 60.000', 'Rp. 90.000 dan Rp. 60.000', ' Rp. 90.000 dan Rp. 70.000', ' Rp. 100.000 dan Rp. 80.000', 'B'),
(4, 'Angga mempunyai uang Rp. 4.500.000 dan ia berniat membeli sebuah handycam seharga Rp. 2.500.000 sebelum diskon. Harga diskon handycam tersebut adalah 20%. Selain itu, Angga juga membelanjakan uangnya untuk keperluan lain sebesar Rp. 1.500.000. Berapa sisa uang Angga saat ini?', ' Rp. 1.000.000', ' Rp. 1.200.000', 'Rp. 1.300.000', 'Rp. 1.400.000', 'A'),
(5, 'Putri membeli boneka seharga Rp. 50.000. Kemudian, boneka dijual lagi dengan harga Rp. 80.000. Berapa persen keuntungan Putri?', '30 %', '40 %', '50 %', '60 %', 'D'),
(6, 'Jarak antara kota A - Z 360 km. Jika ditempuh dengan sepeda motor berkecepatan 90 km/jam maka lama perjalanan...', '180 menit', '200 menit', '220 menit', '240 menit', 'D'),
(7, 'Defan menabung di Bank Rp. 150.000. Bunga 1 tahunnya adalah 12,5 %. Maka jumlah tabungan Defan setelah 1 tahun adalah...', 'Rp. 158.750', 'Rp. 168.750', 'Rp. 178.750', ' Rp. 188.750', 'B'),
(8, 'Pak RW mendapat sumbangan 8 karung beras. Tiap karung beratnya 50 kg. Beras dibagikan kepada 20 orang warga. Tiap warga memperoleh beras sebanyak...', '40 kg', '36 kg', '24 kg', '20 kg', 'D'),
(9, 'Ibu mempunyai uang sebesar Rp. 30.000. Uang itu dibelikan lauk pauk Rp. 12.000, sayuran Rp. 5.000, dan minyak goreng Rp. 4.000, sisa uang ibu adalah...', ' Rp. 10.000', 'Rp. 9.000', 'Rp. 8.000', 'Rp. 7.000', 'B'),
(10, 'Jika sebuah foto berukuran 12 cm dan 15 cm diletakkan disebuah karton. Pada bagian atas kiri dan kanan foto masih tersisa karton selebar 2 cm, jika foto dan karton sebangun maka luas karton adalaah...', '20 cm', '25 cm', '30 cm', '16 cm', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `soaltpa`
--

CREATE TABLE `soaltpa` (
  `id_soal` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `a` text NOT NULL,
  `b` text NOT NULL,
  `c` text NOT NULL,
  `d` text NOT NULL,
  `jawaban` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soaltpa`
--

INSERT INTO `soaltpa` (`id_soal`, `pertanyaan`, `a`, `b`, `c`, `d`, `jawaban`) VALUES
(1, 'Teller : Bank = ', 'Raja : Istana', 'Kulit : Sepatu', 'Besi : Sepeda', 'Kaki : Sepatu', 'A'),
(2, 'TUKANG : GERGAJI : PALU =', 'dokter : obat : stetoskop', 'penulis : kuas : cat', 'montir : obeng : tang', 'penari : topi : selendang', 'C'),
(3, '... berhubungan dengan PUISI, sebagaimana PEMAHAT berhubungan dengan ... ', 'Khairil Anwar - seniman', 'Syair - batu', 'Baca - seni', 'Penyair - patung', 'D'),
(4, 'PEMBALAP : SIRKUIT ', 'Joki : Kuda', 'Petinju : Ring', 'Sapi : Sawah', 'Harimau : Hutan', 'B'),
(5, 'BAIT : PUISI = ', 'Bendera : Lagu Kebangsaan', 'Loteng : Bangunan', 'Sajak : Prosa', 'Hiasan Dinding : Lukisan', 'B'),
(6, 'Cium : Hidung =  ', 'Panas : Keringat', 'Dahaga : Haus', 'Kaki : Sepatu', 'Lihat : Mata', 'D'),
(7, 'Makan : Lapar = Lampu : ... ', 'Pijar', 'Terang', 'Listrik', 'Gelap', 'D'),
(8, 'CACING : ULAR  = ', 'Kambing : sapi', 'Biawak : komodo', 'Hiu : paus', 'Merpati : elang', 'D'),
(9, 'Australia : Selandia Baru =  ', 'Papua : Papua Nugini ', 'Jerman : Turki', 'Mesir : Iran', 'Indonesia : Malaysia', 'D'),
(10, 'Bulan : Tahun =  ', 'Jam : Menit ', 'Buah : Daun ', 'Luluh : Utuh', 'Detik : Menit', 'D'),
(11, 'Tidak ada pemalas yang sukses. Semua yang sukses sejahtera hidupnya. Jadi . . . ', 'Sebagian pemalas tidak sukses', 'Tidak ada pemalas yang sejahtera hidupnya', 'Semua pemalas sukses', 'Sebagian yang sejahtera hidupnya bukan pemalas', 'D'),
(12, 'Semua yang memabukkan adalah haram. Alchohol adalah minuman yang memabukkan. Jadi . . . ', 'Sebagian Alchohol memabukkan', 'Semua Alchohol memabukkan', 'Alchohol tidak haram.', 'Alchohol haram', 'D'),
(13, 'Toni adalah orang desa. Toni bekerja sebagai buruh di sebuah pabrik. Banyak buruh-buruh yang malas. Malik adalah teman Toni. Jadi . . . .', 'Malik mungkin sedesa dengan Toni', 'Teman-teman Toni semuanya malas', 'Malik adalah orang kota', 'Malik itu malas', 'A'),
(14, 'Semua orang tua menyayangi anaknya. Sebagian guru menyayangi anaknya. Jadi . . . .', 'Sebagian orang tua menyayangi anaknya', 'Sebagian guru adalah orang tua', 'Semua guru menyayangi anaknya', 'Semua orang tua adalah guru', 'B'),
(15, 'Semua kendaraan berbahan bakar bensin. Tak sebuah motor pun berbahan bakar bensin. Jadi . . . . ', 'Kendaraan berbahan bakar bensin adalah motor', 'Tak sebuah motor pun adalah kendaraan berbahan bakar bensin', 'Semua kendaraan berbahan bakar bensin adalah motor', 'Motor adalah kendaraan berbahan bakar bensin', 'B'),
(16, 'Semua mamalia tidak bertelur dan semua yang bertelur adalah hewan. Jadi . . . .', 'Ikan paus adalah mamalia', 'Mamalia bisa saja bertelur', 'Hewan yang bertelur adalah mamalia', 'Ada hewan yang tidak bertelur', 'D'),
(17, 'Semua burung bernapas dengan paru-paru. Semua merpati adalah burung. Jadi . . .', 'Semua merpati tidak bernapas dengan paru-paru', 'Semua merpati bernapas dengan paru-paru', 'Sebagian merpati adalah burung.', 'Sebagian merpati bernapas dengan paru-paru.', 'B'),
(18, 'Anak perempuan yang masih kecil selalu diberi boneka oieh ibu mereka. Tini mempunyai banyak boneka di rumahnya. Kakak dart adik Tini tidak mempunyai boneka. Jadi . . . ', 'Anak perempuan tidak harus mempunyai boneka', 'Tini adalah anak yang paling disayang ibunya', 'Kakak dan adik Tini juga mempunyai boneka', 'Semua boneka Tini adalah pemberian ibunya', 'A'),
(19, 'Barang pecah-belah adalah barang yang mudah pecah bila jatuh. Barang-barang yang tidak mudah pecah bila jatuh tidak lagi digolongkan dalam kategori pecah-belah. Gelas buatan PT. Mirror tidak dapat pecah kalau jatuh. Jadi . . . .', 'Gelas produksi PT. Mirror tidak mungkin pecah.', 'Gelas produksi PT. Mirror tidak termasuk barang pecah-belah.', 'Gelas produksi PT. Mirror tidak dapat pecah', 'Gelas produksi PT. Mirror termasuk barang pecah-belah.', 'B'),
(20, 'Semua HP ada fasilitas SMS. Sebagian HP ada fasilitas internet.', 'Semua yang ada fasilitas internet selalu ada fasilitas SMS', 'Sebagian HP ada fasilitas internet namun tidak ada fasilitas SMS.', 'Semua HP ada fasilitas SMS dan internet', 'Sebagian HP ada fasilitas SMS dan internet', 'D'),
(21, 'Antonim PARTISAN ', 'Pihak', 'Netral', 'Partai politik', 'Kelompok', 'B'),
(22, 'Antonim PROMINEN ', 'Anggun', 'Biasa', 'Mewah', 'Tetap', 'B'),
(23, 'Antonim SPORADIS ', 'Jarang', 'Sering', 'Bergantian', 'Meningkat', 'B'),
(24, 'Antonim AUTENTIK', 'Absah ', 'Bekas ', 'Biasa', 'Palsu', 'D'),
(25, 'Antonim ANTIPATI ', 'Melawan', 'Setuju', 'Lekas mati', 'Simpati', 'D'),
(26, 'Antonim KENDALA  ', 'Manifestasi ', 'Restriksi ', 'Gejala', 'Pendukung', 'D'),
(27, 'Antonim PERMANEN ', 'Kuat', 'Sementara', 'Komunal', 'Manual ', 'B'),
(28, 'Antonim KASUAL ', 'kantoran', 'rapi', 'formal', 'tertib', 'C'),
(29, 'Antonim MUDA ', 'Pintar ', 'Wreda ', 'Mujur', 'Pilihan', 'B'),
(30, 'Antonim ASIMILASI ', 'harmoni', 'kebangkitan', 'tidak setuju', 'pertengkaran ', 'D'),
(31, 'Berapa umur nenek 10 tahun ke depan, apabila 3 tahun yang lalu umurnya 60 tahun? ', '60 tahun ', '64 tahun ', '72 tahun', '73 tahun', 'D'),
(32, 'Berapakah angka yang tepat? <br>\r\n718 (26) 582 <br>\r\n474 (....) 226 <br>\r\n', '12 ', '21 ', '18', '14', 'D'),
(33, 'Haji Jupri membeli beberapa sapi seharga Rp. 6.000.000. Sapi-sapi itu ia jual dengan harga Rp. 7.500.000, dan mendapat keuntungan Rp 300.000 untuk setiap sapi. Berapa ekor sapi yang dibeli atau dijual Haji Jupri? ', '3 ekor ', '5 ekor ', '7 ekor', '11 ekor', 'B'),
(34, 'Pada sebuah pertemuan terdapat 12 orang tamu undangan. Berapa kemungkinan maksimal terjadinya jabat tangan seluruh tamu undangan tersebut? ', '24 ', '66 ', '48', '84', 'B'),
(35, 'Karyo adalah seorang penjahit. la mampu membuat sebuah kemeja dalam waktu 3 jam. Berapa banyak kemeja yang mampu ia buat selama satu minggu? ', '49 buah ', '52 buah ', '56 buah', '58 buah', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`) VALUES
(1, 'dumy', 'dumy', 'Dumy'),
(2, 'dumy2', 'dumy2', 'Dumy2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indexes for table `soalarit`
--
ALTER TABLE `soalarit`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `soaling`
--
ALTER TABLE `soaling`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `soalmtk`
--
ALTER TABLE `soalmtk`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `soaltpa`
--
ALTER TABLE `soaltpa`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `soalarit`
--
ALTER TABLE `soalarit`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `soaling`
--
ALTER TABLE `soaling`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `soalmtk`
--
ALTER TABLE `soalmtk`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `soaltpa`
--
ALTER TABLE `soaltpa`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

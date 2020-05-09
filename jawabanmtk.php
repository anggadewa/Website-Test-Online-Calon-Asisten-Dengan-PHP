<div class="row">
	<div class="col-lg-10">
		<?php 
		error_reporting(0);
		$nama = $_SESSION['login']['nama'];
		$soal = 'Matematika';
		if(isset($_POST['submit'])){
			$pilihan = $_POST['pilihan'];
			$id_soal = $_POST['id'];
			$jumlah = $_POST['jumlah'];

			$score=0;
			$benar=0;
			$salah=0;
			$kosong=0;

			for($i=0;$i<$jumlah;$i++){
  //id nomor Soal
				$nomor=$id_soal[$i];

  //jika user tidak memilih jawaban
				if(empty($pilihan[$nomor])){
					$kosong++;
				} else{
  //jawaban user
					$jawaban=$pilihan[$nomor];

  //cocokan jawaban user dengan jawaban database
					$ambildata = $koneksi->query("SELECT * FROM soalmtk WHERE id_soal='$nomor' AND jawaban='$jawaban'");
					if ($ambildata){
						$cek= $ambildata->num_rows;
						if($cek){
      //jika jawaban cocok(benar)
							$benar++;
						} else{
							$salah++;
						}
					}
				}
				$score = $benar*10;
			}
			$koneksi->query("INSERT INTO hasil (nama, soal, salah, benar, kosong, score) VALUES ('$nama', '$soal', '$salah', '$benar', '$kosong', '$score')");
		}
		?>
		<table class="table table-bordered">
			<tr>
				<th>Benar</th>
				<td><?= $benar ?></td>
			</tr>
			<tr>
				<th>Salah</th>
				<td><?= $salah ?></td>
			</tr>
			<tr>
				<th>Kosong</th>
				<td><?= $kosong ?></td>
			</tr>
		</table>
	</div>
</div>
<div class="row mt-3 mb-3">
	<center><h2>SOAL ARITMATIKA</h2></center>
</div>

<div class="row">
	<?php 
	$ambildata = $koneksi->query("SELECT * FROM soalarit");
	if($ambildata){
		$jumlah = $ambildata->num_rows;
	}
	$no = 1;
	while($ambil = $ambildata->fetch_assoc()){
		?>
		<form action="index.php?halaman=jawabanarit" method="post">
		<input type="hidden" name="id[]" value="<?= $ambil['id_soal']; ?>">
		<input type="hidden" name="jumlah" value="<?= $jumlah; ?>">
		<div class="col-md-12">
			<div class="card">
				<div class="card-body">
					<div class="form-group">
						<h4 class="text-muted mb-3"> <?= $no++; ?></h4>
					</div>
					<div class="form-group">
						<p class="text-muted mb-3"><?= $ambil['pertanyaan']; ?></p>
							<b class="text-muted mb-3 d-block">Jawaban</b>
							<div>
								<input type="radio" name="pilihan[<?= $ambil['id_soal']; ?>]" value="A" id="jawaban1">
								<label class="custom-control-label" for="jawaban1"><?= $ambil['a']; ?></label>
							</div>
							<div>
								<input type="radio" name="pilihan[<?= $ambil['id_soal']; ?>]" value="B" id="jawaban2">
								<label class="custom-control-label" for="jawaban2"><?= $ambil['b']; ?></label>
							</div>
							<div>
								<input type="radio" name="pilihan[<?= $ambil['id_soal']; ?>]" value="C" id="jawaban3">
								<label class="custom-control-label" for="jawaban3"><?= $ambil['c']; ?></label>
							</div>
							<div>
								<input type="radio" name="pilihan[<?= $ambil['id_soal']; ?>]" value="D" id="jawaban4">
								<label class="custom-control-label" for="jawaban4"><?= $ambil['d']; ?></label>
							</div>
					</div>
				</div>
			</div>
		</div>
	<?php } ?>
	<div class="row">
		<div class="col-md-6">
			<br>
			<button class="btn btn-primary" name="submit">Jawab</button>	
		</div>
	</div>
	</form>
	</div>
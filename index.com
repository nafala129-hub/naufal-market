<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kalkulator Kasir Sederhana</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h1>Kalkulator Kasir Sederhana</h1>

        <div class="input-form">
            <h2>Tambah Barang</h2>
            <input type="text" id="namaBarang" placeholder="Nama Barang" required>
            <input type="number" id="hargaBarang" placeholder="Harga Satuan" min="1" required>
            <input type="number" id="jumlahBarang" placeholder="Jumlah" min="1" required>
            <button onclick="tambahBarang()">Tambah ke Daftar</button>
        </div>

        <hr>

        <h2>Daftar Belanja</h2>
        <table id="daftarBelanja">
            <thead>
                <tr>
                    <th>No.</th>
                    <th>Nama Barang</th>
                    <th>Harga Satuan (Rp)</th>
                    <th>Jumlah</th>
                    <th>Subtotal (Rp)</th>
                </tr>
            </thead>
            <tbody>
                </tbody>
        </table>

        <hr>

        <div class="summary">
            <p>Subtotal: <span id="subtotalSemua">0</span></p>
            <label for="diskon">Diskon (%):</label>
            <input type="number" id="diskon" value="0" min="0" max="100" oninput="hitungTotal()">
            <h3>Total Bayar: <span id="totalBayar">0</span></h3>
            <button onclick="resetKasir()">Reset Kasir</button>
        </div>
    </div>

    <script src="script.js"></script>
</body>
</html>

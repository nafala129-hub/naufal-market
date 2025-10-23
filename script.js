//1. pilih tombol berdasarkan ID-nya
const tombolsapa = document .getElementbyId('sapaButton');
//2. tambahkan 'event listener' untuk aksi 'click'
tombolsapa.addEventlistener('click', function() {
     // 3. jalankan kode ini ketika tombol di-klik
     alert('Halo! terima kasih sudah berkunjung!');
});

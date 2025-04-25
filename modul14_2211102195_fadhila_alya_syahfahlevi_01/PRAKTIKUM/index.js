// 1. Deklarasi Variabel
var nama = "Fadhila Alya Syahfahlevi";
let umur = 21;
const kota = "Purwokerto";

// 2. Tipe Data
let greeting = "Halo";
let number = 42;
let isAdult = true;
let angkaArray = [1, 2, 3];
let person = { nama: "Fadhila Alya Syahfahlevi", umur: 21 };
let belumDefinisi;
let kosong = null;

// 3. DOM Manipulasi dengan jQuery
$(document).ready(function() {
  $("#nama").text("Nama: " + nama);
  $("#umur").text("Umur: " + umur);
  $("#kota").text("Kota: " + kota);

  $("#judul").text("Belajar jQuery");
  $(".paragraf").css("color", "blue");

  $("#tombol").click(function() {
    alert("Tombol diklik!");
  });

  $("#kotak").fadeOut().fadeIn();

  $("#toggleButton").click(function() {
    $("#panel").slideToggle();
  });

  $("#fadeButton").click(function() {
    $("#box").fadeToggle();
  });
});

// 4. Operator
let a = 10, b = 5, result;
result = a + b;
result = a - b;
result = a * b;
result = a / b;
result = a % b;

console.log(a == b);
console.log(a != b);
console.log(a > b);
console.log(a < b);

console.log(a > b && b < 10);
console.log(a > b || b < 10);
console.log(!(a > b));

// 5. Control Flow
if (umur > 18) {
  console.log("Dewasa");
} else {
  console.log("Anak-anak");
}

for (let i = 0; i < 5; i++) {
  console.log(i);
}

let j = 0;
while (j < 5) {
  console.log(j);
  j++;
}

// 6. Fungsi dan Objek
function sapa(nama) {
  return "Halo, " + nama;
}
console.log(sapa("Fadhila Alya Syahfahlevi"));

const mahasiswa = {
  nama: "Fadhila Alya Syahfahlevi",
  umur: 21,
  sapa: function() {
    return "Halo, saya " + this.nama;
  }
};
console.log(mahasiswa.sapa());

// 7. AJAX dan Fetch API
$.get("https://jsonplaceholder.typicode.com/posts", function(data) {
  console.log(data);
});

async function getData() {
  let response = await fetch("https://jsonplaceholder.typicode.com/posts");
  let data = await response.json();
  console.log(data);
}
getData();

async function kirimData() {
  let response = await fetch("https://jsonplaceholder.typicode.com/posts", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({
      title: "Belajar JavaScript bersama Fadhila",
      body: "Ini contoh data yang dikirim oleh Fadhila Alya Syahfahlevi",
      userId: 1
    })
  });

  let data = await response.json();
  console.log(data);
}
kirimData();

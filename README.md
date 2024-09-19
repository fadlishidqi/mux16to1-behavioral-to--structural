# Multiplexer 16-to-1 Implementation

Proyek ini mendemonstrasikan implementasi multiplexer 16-to-1 dalam Verilog, dengan dua pendekatan berbeda: behavioral dan structural.

## Deskripsi File

- `mux16to1behavioral.v`: Implementasi behavioral dari multiplexer 16-to-1.
- `mux2to1gate.v`: Implementasi gate-level dari multiplexer 2-to-1.
- `mux4to1gate.v`: Implementasi structural dari multiplexer 4-to-1 menggunakan mux2to1gate.
- `mux16to1structural.v`: Implementasi structural dari multiplexer 16-to-1 menggunakan mux4to1gate.
- `mux16to1testbench.v`: Testbench untuk membandingkan implementasi behavioral dan structural.

## Cara Penggunaan

1. Pastikan Anda memiliki simulator Verilog (seperti Icarus Verilog) terinstal.
2. Compile semua file Verilog:  iverilog -o mux16to1sim mux16to1behavioral.v mux2to1gate.v mux4to1gate.v mux16to1structural.v mux16to1testbench.v
3. Jalankan simulasi: vvp mux16to1sim
4. Lihat hasil simulasi menggunakan viewer gelombang seperti GTKWave

## Struktur Proyek

- Implementasi behavioral menggunakan pernyataan case untuk memilih output.
- Implementasi structural menggunakan hierarki multiplexer, dimulai dari mux 2-to-1, kemudian mux 4-to-1, hingga akhirnya mux 16-to-1.
- Testbench membandingkan kedua implementasi untuk memastikan fungsionalitas yang identik.

## Hasil yang Diharapkan

Kedua implementasi (behavioral dan structural) harus menghasilkan output yang identik untuk setiap kombinasi input yang diuji dalam testbench.

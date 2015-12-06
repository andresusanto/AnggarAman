% penggunaan komputer oleh masing-masing pengguna

	programming(programmer).
	
	baca_email(anggota_dpr).
	baca_email(pelajar_smp).
	baca_email(pelajar_sma).
	baca_email(mahasiswa).
	baca_email(programmer).
	
	internet(anggota_dpr).
	internet(pelajar_smp).
	internet(pelajar_sma).
	internet(mahasiswa).
	internet(programmer).
	
	grafis(programmer).
	grafis(editor_video).
	grafis(desainer).
	grafis(pelajar_sma).
	
	video(editor_video).
	
	mengetik_dokumen(sekertaris).
	mengetik_dokumen(mahasiswa).
	mengetik_dokumen(pelajar_smp).
	mengetik_dokumen(pelajar_sma).
	mengetik_dokumen(pelajar_sd).
	mengetik_dokumen(anggota_dpr).

% kebutuhan komputasi berdasarkan kegiatan

	komputasi(X,Z) :- programming(X), Z = 300.
	komputasi(X,Z) :- baca_email(X), Z = 100.
	komputasi(X,Z) :- internet(X), Z = 150.
	komputasi(X,Z) :- grafis(X), Z = 500.
	komputasi(X,Z) :- video(X), Z = 500.
	komputasi(X,Z) :- mengetik_dokumen(X), Z = 10.
	
% Kelas Komputer

	kelas(1,X) :- aggregate(sum(P), komputasi(X,P), Total), Total >= 1000.
	kelas(2,X) :- aggregate(sum(P), komputasi(X,P), Total), Total < 1000, Total >= 500.
	kelas(3,X) :- aggregate(sum(P), komputasi(X,P), Total), Total < 500, Total >= 200.
	kelas(4,X) :- aggregate(sum(P), komputasi(X,P), Total), Total < 200.
	
% penggunaan komputer oleh masing-masing pengguna

	programming(programmer).
	
	grafis(programmer).
	grafis(editor_video).
	grafis(desainer).
	
	video(editor_video).
	
	mengetik_dokumen(sekertaris).
	mengetik_dokumen(mahasiswa).
	mengetik_dokumen(pelajar_smp).
	mengetik_dokumen(pelajar_sma).
	mengetik_dokumen(pelajar_sd).

% kebutuhan komputasi berdasarkan kegiatan

	komputasi(X,Z) :- programming(X), Z = 300.
	komputasi(X,Z) :- grafis(X), Z = 500.
	komputasi(X,Z) :- video(X), Z = 500.
	komputasi(X,Z) :- mengetik_dokumen(X), Z = 10.
	
% Kelas Komputer

	kelas(a,X) :- aggregate(sum(P), komputasi(X,P), Total), Total >= 1000.
	kelas(b,X) :- aggregate(sum(P), komputasi(X,P), Total), Total < 1000, Total >= 500.
	kelas(c,X) :- aggregate(sum(P), komputasi(X,P), Total), Total < 500.
	
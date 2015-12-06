:- dynamic explanation/1.
explanation([]).

	tambah_explanation(New) :- explanation(L1), append(L1, New, L2), retractall(explanation(L1)), asserta(explanation(L2)).
	hapusex :- retractall(explanation(_)), asserta(explanation([])).
	
% penggunaan server

	situs_kecil(X) :- m_situs_kecil(X), atomics_to_string([X, "membutuhkan server untuk situs kecil"], ' ', Explanation), tambah_explanation([Explanation]).
	m_situs_kecil(sd).
	m_situs_kecil(smp).
	m_situs_kecil(sma).
	
	situs_menengah(X) :- m_situs_menengah(X), atomics_to_string([X, "membutuhkan server untuk situs menengah"], ' ', Explanation), tambah_explanation([Explanation]).
	m_situs_menengah(dinas).
	m_situs_menengah(dpr).
	
	situs_besar(X) :- m_situs_besar(X), atomics_to_string([X, "membutuhkan server untuk situs besar"], ' ', Explanation), tambah_explanation([Explanation]).
	m_situs_besar(kementrian).
	m_situs_besar(universitas).
	
	
	mail_server(X) :- m_mail_server(X), atomics_to_string([X, "membutuhkan server untuk mail server"], ' ', Explanation), tambah_explanation([Explanation]).
	m_mail_server(universitas).
	
	voip_server(X) :- m_voip_server(X), atomics_to_string([X, "membutuhkan server untuk voip server"], ' ', Explanation), tambah_explanation([Explanation]).
	m_voip_server(universitas).
	
	
	
% kebutuhan komputasi berdasarkan kegiatan

	komputasi(X,Z) :- situs_kecil(X), Z = 1000, tambah_explanation(["Penggunaan untuk situs kecil membutuhkan komputasi sebesar 1000"]).
	komputasi(X,Z) :- situs_menengah(X), Z = 5000, tambah_explanation(["Penggunaan untuk situs menengah membutuhkan komputasi sebesar 5000"]).
	komputasi(X,Z) :- situs_besar(X), Z = 10000, tambah_explanation(["Penggunaan untuk situs besar membutuhkan komputasi sebesar 10000"]).
	komputasi(X,Z) :- mail_server(X), Z = 2500, tambah_explanation(["Penggunaan untuk mail server membutuhkan komputasi sebesar 2000"]).
	komputasi(X,Z) :- voip_server(X), Z = 5000, tambah_explanation(["Penggunaan untuk voip server membutuhkan komputasi sebesar 5000"]).
	
	
% Kelas Komputer

	kelas(1,X) :- hapusex, aggregate(sum(P), komputasi(X,P), Total), Total >= 15000, !, tambah_explanation(["Kelas 1 dipilih karena komputasi komputer lebih besar dari 15000"]).
	kelas(2,X) :- hapusex, aggregate(sum(P), komputasi(X,P), Total), Total < 15000, Total >= 10000, !, tambah_explanation(["Kelas 2 dipilih karena komputasi komputer diantara 10000 sampai 15000"]).
	kelas(3,X) :- hapusex, aggregate(sum(P), komputasi(X,P), Total), Total < 10000, Total >= 7500, !, tambah_explanation(["Kelas 3 dipilih karena komputasi komputer diantara 7500 sampai 10000"]).
	kelas(4,X) :- hapusex, aggregate(sum(P), komputasi(X,P), Total), Total < 7500, Total >= 5000, !, tambah_explanation(["Kelas 4 dipilih karena komputasi komputer diantara 5000 sampai 7500"]).
	kelas(5,X) :- hapusex, aggregate(sum(P), komputasi(X,P), Total), Total < 5000, Total >= 2000, !, tambah_explanation(["Kelas 5 dipilih karena komputasi komputer diantara 2000 sampai 5000"]).
	kelas(6,X) :- hapusex, aggregate(sum(P), komputasi(X,P), Total), Total < 2000, !, tambah_explanation(["Kelas 6 dipilih karena komputasi komputer lebih kecil dari 2000"]).
	
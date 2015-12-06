:- dynamic explanation/1.
explanation([]).

	tambah_explanation(New) :- explanation(L1), append(L1, New, L2), retractall(explanation(L1)), asserta(explanation(L2)).
	hapusex :- retractall(explanation(_)), asserta(explanation([])).
	
% Penggunaan Sofa (dalam jam)

	durasi(X, Y) :- m_durasi(X, Y), atomics_to_string(["Penggunaan sofa oleh", X, " perharinya kira-kira ",Y, "jam"], ' ', Explanation), tambah_explanation([Explanation]).
	m_durasi(anggota_dpr, 12).
	m_durasi(kepala_sekolah, 5).
	m_durasi(rektor, 7).
	
		
% perawatan (dalam seminggu, berapa kali dilakukan perawatan)

	perawatan(X, Y) :- m_perawatan(X, Y), atomics_to_string(["Perawatan sofa milik ", X, " perminggunya kira ",Y, "kali"], ' ', Explanation), tambah_explanation([Explanation]).
	m_perawatan(anggota_dpr, 2).
	m_perawatan(kepala_sekolah, 5).
	m_perawatan(rektor, 5).
	

	

% Kelas Laptop

	kelas(1,X) :- hapusex, durasi(X,Y), Y >= 10, !, tambah_explanation(["Kelas 1 dipilih karena durasi penggunaan perharinya lebih dari 10 jam"]).
	kelas(1,X) :- hapusex, perawatan(X,Y), Y <= 2, !, tambah_explanation(["Kelas 1 dipilih karena perawatan perminggu yang dilakukan kurang dari 2x"]).
	kelas(2,X) :- hapusex, durasi(X,Y), Y < 10, Y >= 5, perawatan(X,Z), Z < 5, Z > 2, !, tambah_explanation(["Kelas 2 dipilih karena durasi penggunaan diantara 5 sd 10 jam, dan perawatan perminggu diantara 2 sd 5 kali"]).
	kelas(3,X) :- hapusex, durasi(X,Y), Y < 10, Y >= 5, perawatan(X,Z), Z >= 5, !, tambah_explanation(["Kelas 3 dipilih karena durasi penggunaan diantara 5 sd 10 jam, dan perawatan perminggu dilakukan lebih dari 5 kali"]).
	kelas(4,X) :- hapusex, durasi(X,Y), Y < 5, perawatan(X,Z), Z > 2, !, tambah_explanation(["Kelas 3 dipilih karena durasi penggunaan lebih kecil dari 5 jam dan perawatan dilakukan lebih dari 2 kali perminggu"]).
	
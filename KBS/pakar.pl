:- dynamic cp/2.

% pengguna komputer

	programming(programmer).
	
	grafis(programmer).
	grafis(editor_video).
	
	tulis_surat(sekertaris).
	

% medium komputasi

	komputasi(X,Z) :- programming(X), Z = 499.
	komputasi(X,Z) :- grafis(X), Z = 500.
	komputasi(X,Z) :- tulis_surat(X), Z = 10.
	
% rule penggunaan

	kelas(komputer,a,X) :- aggregate(sum(P), komputasi(X,P), Total), Total >= 1000.
	kelas(komputer,b,X) :- aggregate(sum(P), komputasi(X,P), Total), Total < 1000, Total >= 500.
	kelas(komputer,c,X) :- aggregate(sum(P), komputasi(X,P), Total), Total < 500.
	
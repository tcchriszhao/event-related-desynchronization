rfile = init_experiment('dupa');

p = [];

p.trim_low = 3.5;
p.trim_high = 6;
p.downsampling = 1;
p.feat = [];
  p.feat.type = 'tdp';
  p.feat.subtype = 'log-power';
  p.feat.d = 9;
  p.feat.u = 0.0085;
%p.csp = 1; % przestrzen cech z TDP jest dosc duza, wiec uzyto CSP, zeby ja zmniejszyc.
p.csp = 0;
p.classifier = [];
p.classifier.type = 'lda'
single_experiment(p, rfile);

p.downsampling = 4;
single_experiment(p, rfile);

p.csp = 1;
single_experiment(p, rfile);

p.trim_low = 4.0;
p.trim_high = 5;
single_experiment(p, rfile);

for i = [1:12]
	p.feat.d = i;
	single_experiment(p, rfile);
end

%p.downsampling = 4;
%single_experiment(p, rfile);

%p.downsampling = 4;
%p.csp = 1;
%single_experiment(p, rfile);


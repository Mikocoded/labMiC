d1w = M(2:end,1);
d1z = M(2:end,2);
d2w = M(2:end,3);
d2z = M(2:end,4);
U = M(2:end,5)*1e3;

m = 9.109*10e-31;
e = 1.602*10e-19;
h = 6.626*10e-34;

d1 = ((d1w+d1z)./2)*1e-3;
d2 = ((d2w+d2z)./2)*1e-3;

lamb = h./sqrt(2.*m.*e.*U);

r1 = d1./2;
r2 = d2./2;

R = 65*1e-3;

[a,da,b,db]=MNKb(lamb,r1);

x = linspace(min(lamb)*0.8,max(lamb)*1.2, 100);

figure;
hold on;
plot(x, a*x+b);
c1=errorbar(lamb, r1, 0.00025, 0.00025, 0, 0);
set(c1,'Marker',"square");

d_g = 2*R/a;

[a2, da2, b2, db2mag]=MNKb(lamb, r2);

dg2 = 2*R/a2;

x = T(:,1);
y = T(:,2);

xdoa11 = T(1:5,1);
xdoa12 = T(9:12,1);

ydoa11 = T(1:5,2);
ydoa12 = T(9:12,2);

[a1, ua1, b1, ub1] = MNKb(xdoa11, ydoa11);
[a2, ua2, b2, ub2] = MNKb(xdoa12, ydoa12);

x1 = linspace(0, 10000, 100);
x2 = linspace(1000, 50000, 100);

figure;
hold on;
ax = gca;
scatter(x, y, 'filled');
set(ax, 'xscale', 'log', 'yscale', 'log');
plot(x1, a1*x1+b1);
plot(x2, a2*x2+b2);
hold off;
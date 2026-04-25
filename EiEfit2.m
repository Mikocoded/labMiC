wzor = fittype('a*x^b', ...
    'independent', 'x', 'dependent', 'y');
wzor2 = fittype('c*x^d', ...
    'independent', 'x', 'dependent', 'y');

wynik1 = fit(xdoa11, ydoa11, wzor);
wynik2 = fit(xdoa12, ydoa12, wzor2);

disp(wynik1);
disp(wynik2);

figure;
clf;
hold on;
ax = gca;
scatter(x, y, 'filled');
set(ax, 'xscale', 'log', 'yscale', 'log');
x_linia = linspace(0, 10000, 100);
y_linia = wynik1(x_linia);
x_linia2 = linspace(800, 100000, 100);
y_linia2 = wynik2(x_linia2);
linia = plot(x_linia, y_linia, '-', 'Color', 'blue', 'LineWidth', 1.5);
linia2 = plot(x_linia2, y_linia2, '-', 'Color', 'red', 'LineWidth', 1.5);

grid on;
hold off;
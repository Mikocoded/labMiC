beta = x60deg(:,1);
U = x60deg(:,2);

betarad = deg2rad(beta);

wzor = fittype('a*(3*sin(x+b)^2+cos(x+b)^2)', 'independent', 'x', 'dependent', 'y');

opcje = fitoptions('Method', 'NonLinearLeastSquares');

opcje.StartPoint = [1.0,0.1];

wynik = fit(betarad, U, wzor, opcje);

display(wynik);


figure;
hold on;
points = scatter(betarad, U, 'filled', 'MarkerFaceColor', 'red');
x_line = linspace(-pi/2, pi/2, 100);
y_line = wynik(x_line);
line = plot(x_line, y_line, 'Color', 'blue');
errorbar(betarad, U, 0.05, 0.05, 2*pi/180, 2*pi/180, 'LineStyle', 'none', 'Color', 'magenta');
grid on;
theme light;
hold off;


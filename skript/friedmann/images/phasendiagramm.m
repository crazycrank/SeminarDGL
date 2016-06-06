a = linspace(0, 10, 100);
c = linspace(-5,0,1000);
f = figure;
hold off;
subplot(1,2,1);
plot(0,0);
hold on;
grid on;
subplot(1,2,2);
plot(0,0);
grid on;
hold on;

subplot(1,2,1);
%Format axis
title('Funktionsverlauf');
xlabel('Skalenfaktor a');
ylabel('f(a)');
for i = -1:1:1
    plot(a, 1./a + i, 'LineWidth', 3);
    text(5,1/5 + i + 0.4, num2str(i, '\b E = %d'), 'Fontsize', 15);
end

subplot(1,2,2);
title('Phasendiagramm');
xlabel('Gesamtenergie E');
ylabel('Skalenfaktor a');
axis([c(1), 1,0, 10]);
text(-4.8, 1, 'Maximales a \rightarrow',  'Fontsize', 15)
plot(c, -1./c, 'color', 'k', 'LineWidth', 2, 'LineStyle', '--');
for i = -5:0.4:-0.4
    quiver(i,0,0,-1/i, 'color' , 'r', 'LineWidth', 1.5, 'MaxHeadSize', 10);
end

for i = 0:0.5:1
    quiver(i,0,0,10,1, 'color' , 'r', 'LineWidth', 1.5);
end

print(f, '-depsc','phasendiagramm.eps');



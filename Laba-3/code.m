x = -5:0.0001:5;
y1 = sin(x).*cos(x);
y2 = cos(x).*x.^2;
y3 = x.^2.*log10(x);
plot(x, y1, '-r', x, y3, '-b', x, y2, '-g');
legend('y = sin(x)*cos(x)', 'y = cos(x)*x^2', 'y = x^2*log10(x)');
axis square;
grid on;
xlim([-5, 5]);
figure;

x = 0;
x1 = 0;
x2 = -50:0.001:0;
x3 = 0:0.001:50;
y = 0; y1 = 0;
for i = 1:51
x(i)= -51+i;
end
for i = 1:51
x1(i) = -1+i;
end
y = (1+x.^2).^1/2;
y2 = (1+x2.^2).^1/2;
y1 = (1+x1)./((1+exp(-0.2.*x1)).^1/3+1);
y3 = (1+x3)./((1+exp(-0.2.*x3)).^1/3+1);
plot(x2, y2, '-r', x3, y3, '-r', x, y, '-sb', x1, y1, '-bs');
legend('Matlab vector','','Classical vector','');
axis square;
grid on;
xlim([-3, 3]);
ylim([-1.5, 4.5]);
xlabel('X axis');
ylabel('Y axis');

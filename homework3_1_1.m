num = [1];
den = [3, 6, 11, 5];
z = 1;
p = [-2, -11/3, -5/3];
k = 1;
sys = zpk(z, p, k);
Ts = 0.1;
G = tf(num, den);
sysd = c2d(G, Ts, 'zoh');
step(sysd, 'b')
hold on
step(G, 'r')
xlim([0 20])
ylim([0 0.21])
[y,t] = step(sysd,0.0:0.1:12.0)



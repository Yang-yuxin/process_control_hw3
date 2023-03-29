num = [1];
den = [3, 6, 11, 5];
z = 1;
p = [-2, -11/3, -5/3];
k = 1;
sys = zpk(z, p, k);
Ts = 0.1;
G = tf(num, den);
sysd = c2d(G, Ts, 'zoh');
step(G, 'r')
hold on
step(sysd, 'b')
xlim([0 20])
ylim([0 0.21])
[y,t] = step(sysd,0.0:0.1:19.9);
N = length(y);
x_0 = 0.2;
y_lim = 0.2;
a_0 = y_lim / x_0;
% 二阶近似
a_1 = a_0 / y_lim * Ts * (y(N) * N - sum(y));
num2 = [x_0];
den2 = [a_1, a_0];
G2 = tf(num2, den2);
step(G2, 'y')
% 三阶近似
S = 0;
k = 120;
for i = 1:N
    S = S + F_1(i, a_0, a_1, y, y_lim, Ts) - y(i);
end
a_2 = a_1 / y_lim * Ts * S;
num3 = [x_0];
den3 = [a_2, a_1, a_0];
G3 = tf(num3, den3);
step(G3, 'g')
% 四阶近似
S = 0;
k = 120;
pF_1 = @F_1;
for i = 1:N
    S = S + F_2(i, a_0, a_1, a_2, y, y_lim, pF_1, Ts) - y(i);
end
a_3 = a_2 / y_lim * Ts * S;
num4 = [x_0];
den4 = [a_3, a_2, a_1, a_0];
G3 = tf(num4, den4);
step(G3, 'k')

legend('continuous time system','discrete time system', '2-order', '3-order', '4-order')
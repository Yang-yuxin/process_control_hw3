function res = F_2(k, a_0, a_1, a_2, y, y_lim, F_1, dt)
    S = 0;
    for i = 1:k
        f1 = F_1(i, a_0, a_1, y, y_lim, dt);
        S = S + f1 - y(i);
    end
    res = a_1 / a_2 * dt * S;
end
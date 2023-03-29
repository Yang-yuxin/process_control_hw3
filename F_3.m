function res = F_3(k, a_0, a_1, y, y_lim, F_1, dt)
    S = 0;
    for i = 1:k
        S = S + F_1(i, a_0, a_1, y, y_lim, dt) - y(i);
    end
    res = a_0 / a_1 * dt * S;
end
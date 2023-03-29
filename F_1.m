function res = F_1(k, a_0, a_1, y, y_lim, dt)
    res = a_0 / a_1 * dt * (k * y_lim - sum(y(1:k)));
end
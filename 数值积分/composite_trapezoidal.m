function [I, error] = composite_trapezoidal(f, a, b, h, exact_value)
    x = a:h:b;  % 创建区间节点
    f_values = f(x);  % 计算所有节点的函数值

    % 使用复合梯形公式进行积分计算
    I = (h / 2) * (f_values(1) + 2 * sum(f_values(2:end-1)) + f_values(end));

    % 计算误差
    error = abs(I - exact_value);
end

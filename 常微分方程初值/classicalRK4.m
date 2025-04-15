function [x_vals, y_vals] = classicalRK4(f, a, b, y0, h)
    % classicalRK4 用经典四阶 Runge-Kutta 方法求解常微分方程
    % 输入：
    % f    - 右端函数句柄 f(x, y)
    % a    - 区间左端点
    % b    - 区间右端点
    % y0   - 初始条件
    % h    - 步长
    % 输出：
    % x_vals - 解的 x 值序列
    % y_vals - 对应的 y 值序列

    % 初始化 x 和 y
    x_vals = a:h:b;          % 生成 x 的离散值
    y_vals = zeros(1, length(x_vals));  % 初始化 y 值数组
    y_vals(1) = y0;          % 初始值

    % 四阶 Runge-Kutta 方法迭代
    for n = 1:length(x_vals)-1
        x_n = x_vals(n);
        y_n = y_vals(n);
        
        K1 = f(x_n, y_n);
        K2 = f(x_n + h/2, y_n + h/2 * K1);
        K3 = f(x_n + h/2, y_n + h/2 * K2);
        K4 = f(x_n + h, y_n + h * K3);
        
        % 更新 y 值
        y_vals(n+1) = y_n + h/6 * (K1 + 2*K2 + 2*K3 + K4);
    end
end

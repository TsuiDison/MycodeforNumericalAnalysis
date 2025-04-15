function [x_vals, y_vals] = improved_euler(f, a, b, y0, h)
    % 输入参数：
    % f   : 右端函数句柄
    % a   : 区间左端点
    % b   : 区间右端点
    % y0  : 初始值
    % h   : 步长
    
    % 计算步数
    N = round((b - a) / h);
    
    % 初始化 x 和 y 数值数组
    x_vals = a:h:b;
    y_vals = zeros(1, N + 1);
    y_vals(1) = y0;
    
    % 使用改进的欧拉法求解ODE
    for n = 1:N
        % 计算中间值
        k1 = f(x_vals(n), y_vals(n));
        k2 = f(x_vals(n) + h / 2, y_vals(n) + h / 2 * k1);
        
        % 更新 y 值
        y_vals(n + 1) = y_vals(n) + h * k2;
    end
end

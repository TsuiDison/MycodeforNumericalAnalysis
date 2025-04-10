function L = Lagrange(x_vals, y_vals)
    % x_vals: 自变量数据
    % y_vals: 因变量数据
    % 返回值: L: 拉格朗日插值多项式

    n = length(x_vals);  % 数据点的个数
    syms x;

    % 初始化插值多项式
    L = 0;

    % 计算拉格朗日插值多项式
    for i = 1:n
        % 计算第 i 项的基多项式 L_i(x)
        L_i = 1;
        for j = 1:n
            if i ~= j
                L_i = L_i * (x - x_vals(j)) / (x_vals(i) - x_vals(j));
            end
        end
        % 累加到总插值多项式
        L = L + y_vals(i) * L_i;
    end
end
% x_vals = [0, 1, 4, 9, 16, 25, 36, 49, 64];
% y_vals = [0, 1, 2, 3, 4, 5, 6, 7, 8];
% 
% % 调用拉格朗日插值函数
% L = Lagrange(x_vals, y_vals);
% 
% % 显示拉格朗日插值多项式
% disp('拉格朗日插值多项式：');
% disp(simplify(L));

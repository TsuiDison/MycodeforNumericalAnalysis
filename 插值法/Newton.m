function [P, diff_table] = Newton(x, y)
    % x: 自变量数据
    % y: 因变量数据
    % 返回值: P: 牛顿插值多项式, diff_table: 差商矩阵

    n = length(x);  % 数据点的个数
    diff_table = zeros(n, n);  % 初始化差商表
    diff_table(:, 1) = y';  % 第一列为y值
    
    % 构造差商表
    for j = 2:n
        for i = 1:n-j+1
            diff_table(i, j) = (diff_table(i+1, j-1) - diff_table(i, j-1)) / (x(i+j-1) - x(i));
        end
    end
    
    % 构造牛顿插值多项式
    syms X;
    P = y(1);  % 初始多项式是y(1)
    term = 1;
    
    % 迭代构造插值多项式
    for i = 2:n
        term = term * (X - x(i-1));
        P = P + diff_table(1, i) * term;
    end
end
% x = [0.2 0.4 0.6 0.8 1.0];
% y = [0.98 0.92 0.81 0.64 0.38];
% 
% % 调用插值函数
% [P, diff_table] = Newton(x, y);
% 
% % 显示差商矩阵
% disp('差商矩阵：');
% disp(diff_table);
% 
% % 显示牛顿插值多项式
% disp('牛顿插值多项式为：');
% disp(P);

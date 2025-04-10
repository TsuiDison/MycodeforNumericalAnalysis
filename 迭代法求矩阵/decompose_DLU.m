function [D, L, U] = decompose_DLU(A)
    % A: 输入矩阵
    n = size(A, 1);  % 矩阵的维度
    D = zeros(n);    % 初始化对角矩阵
    L = zeros(n);    % 初始化下三角矩阵
    U = zeros(n);    % 初始化上三角矩阵
    
    for i = 1:n
        for j = 1:n
            if i == j
                D(i,j) = A(i,j);  % 对角元素
            elseif i > j
                L(i,j) = A(i,j);  % 下三角元素
            elseif i < j
                U(i,j) = A(i,j);  % 上三角元素
            end
        end
    end
end
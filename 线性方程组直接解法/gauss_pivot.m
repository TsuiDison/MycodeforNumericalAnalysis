% 列主元高斯消去法
function [x, row_swaps,detA] = gauss_pivot(A, b)
    A0=A;%保留A的初始值，从而可算行列式
    n = length(b);
    row_swaps = zeros(n, 1);  % 用于存储行交换的记录
    for k = 1:n-1
        % 找到最大主元并交换行
        [~, max_index] = max(abs(A(k:n, k)));
        max_index = max_index + k - 1;
        if max_index ~= k%(交换操作)
            A([k, max_index], :) = A([max_index, k], :);
            b([k, max_index]) = b([max_index, k]);
            row_swaps([k, max_index]) = row_swaps([max_index, k]);  % 更新交换记录
        end
        % 消去
        for i = k+1:n
            m = A(i, k) / A(k, k);
            A(i, k:n) = A(i, k:n) - m * A(k, k:n);
            b(i) = b(i) - m * b(k);
        end
    end
    % 回代解方程
    x = zeros(n, 1);
    x(n) = b(n) / A(n, n);
    for i = n-1:-1:1
        x(i) = (b(i) - A(i, i+1:n) * x(i+1:n)) / A(i, i);
    end
        detA = det(A0);  % 计算行列式
end


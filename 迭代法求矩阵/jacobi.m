function x = jacobi(A, b, k)
    % A: 系数矩阵
    % b: 常数项列向量
    % k: 最大迭代次数
    n = length(b);
    x = zeros(n, 1);
    x_new = zeros(n, 1);
    
    for iter = 1:k
        for i = 1:n
            sum = b(i);
            for j = 1:n
                if i ~= j
                    sum = sum - A(i,j) * x(j);
                end
            end
            x_new(i) = sum / A(i,i);
        end
        x = x_new;
    end
end

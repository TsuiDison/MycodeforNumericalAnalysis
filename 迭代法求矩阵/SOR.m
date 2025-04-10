function x = SOR(A, b, k, omega)
    % A: 系数矩阵
    % b: 常数项列向量
    % k: 最大迭代次数
    % omega: 松弛因子
    n = length(b);
    x = zeros(n, 1); 
    
    for iter = 1:k
        for i = 1:n
            sum1 = b(i);
            sum2 = 0;
            
            % 上三角部分
            for j = 1:i-1
                sum1 = sum1 - A(i,j) * x(j);
            end
            
            % 下三角部分
            for j = i+1:n
                sum2 = sum2 - A(i,j) * x(j);
            end
            

            x(i) = (1 - omega) * x(i) + (omega / A(i,i)) * (sum1 + sum2);
        end
    end
end

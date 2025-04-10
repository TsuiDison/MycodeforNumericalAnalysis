function [root, iterations] = steffensen(phi, x0, tol, max_iter)
    % 输入：
    % phi: 迭代函数
    % x0: 初始值
    % tol: 精度要求
    % max_iter: 最大迭代次数
    
    % 初始化
    x = x0;
    iterations = 0;

    % 迭代过程
    while iterations < max_iter
        phi_x = phi(x);
        phi_phi_x = phi(phi_x);
        
        % 斯特芬森加速的更新公式
        denominator = phi_phi_x - 2 * phi_x + x;
        
        % 更新x的值
        x_new = x - (phi_x - x)^2 / denominator;
        
        % 更新迭代次数
        iterations = iterations + 1;
        
        % 检查收敛性
        if abs(x_new - x) < tol
            break;
        end
        
        % 更新当前解
        x = x_new;
    end
    
    % 返回结果
    root = x_new;
end

function [x, error] = fixedpoint(x0, max_iter, varphi)
    % x0: 初始猜测值
    % max_iter: 最大迭代次数
    % varphi: 迭代函数算符

    % 初始化
    x = x0;  % 初始值
    iter = 0; % 迭代计数
    error = Inf; % 初始误差
    
    while iter < max_iter
        % 计算新的解
        x_new = varphi(x);
        
        % 计算误差
        error = norm(x_new - x, Inf); % 使用无穷范数作为误差
        
        % 更新解
        x = x_new;
        
        % 迭代次数加1
        iter = iter + 1;
    end
end
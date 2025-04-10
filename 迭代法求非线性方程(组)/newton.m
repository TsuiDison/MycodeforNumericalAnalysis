function [root, iterations] = newton(f, x0, tol, max_iter)
    % 输入：
    % f: 方程函数
    % x0: 初始值
    % tol: 精度要求
    % max_iter: 最大迭代次数
    
    % 数值计算导数的步骤
    h = 1e-8; % 差分步长
    
    % 导数的数值计算
    df = @(x) (f(x + h) - f(x)) / h;

    % 初始化
    x = x0;
    iterations = 0;

    % 迭代过程
    while iterations < max_iter
        % 计算f(x)和f'(x)
        fx = f(x);
        dfx = df(x);
        
        % 牛顿法的迭代更新公式
        if dfx == 0
            fprintf('Error: Derivative is zero, cannot proceed.\n');
            break;
        end
        
        % 更新x的值
        x_new = x - fx / dfx;
        
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

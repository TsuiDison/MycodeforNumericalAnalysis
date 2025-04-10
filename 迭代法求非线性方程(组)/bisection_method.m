function root = bisection_method(f, a, b, tol)
    % 二分法求解方程 f(x) = 0 的根
    % 输入参数：
    %   f    - 目标方程的匿名函数
    %   a    - 区间下限
    %   b    - 区间上限
    %   tol  - 精度要求
    
    % 检查初始区间是否满足二分法的要求
    if f(a) * f(b) > 0
        error('初始区间不满足二分法的要求!');
    end

    % 初始化迭代计数器
    iteration = 0;
    
    % 二分法迭代过程
    while (b - a) / 2 > tol
        iteration = iteration + 1;
        c = (a + b) / 2;  % 计算中点
        
        % 输出当前迭代的 a, b, c
        fprintf('迭代 %d: a = %.6f, b = %.6f, xk = %.6f\n', iteration, a, b, c);
        
        if f(c) == 0     % 精确解
            break;
        elseif f(a) * f(c) < 0
            b = c;  % 新区间 [a, c]
        else
            a = c;  % 新区间 [c, b]
        end
    end
    
    % 返回根的近似值
    root = (a + b) / 2;
    
    % 输出最终结果
    fprintf('方程的最小正根是: %.6f\n', root);
end
% % 定义方程 f(x) = x^3 - 2*x^2 + 4/3*x - 8/27
% f = @(x) x^3 - 2*x^2 + 4/3*x - 8/27;
% 
% % 设置初始区间和精度
% a = -5;    % 区间下限
% b = 5;     % 区间上限
% tol = 1e-3; % 精度要求
% 
% % 调用二分法函数求解最小正根
% root = bisection_method(f, a, b, tol);

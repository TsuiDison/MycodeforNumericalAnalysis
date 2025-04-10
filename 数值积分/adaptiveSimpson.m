function [result, iterations] = adaptiveSimpson(f, a, b, tol)
    % 自适应辛普森积分，返回积分结果和迭代轮数
    % f - 被积函数
    % a, b - 积分区间
    % tol - 误差容忍度
    
    % 基础辛普森积分
    function S = simpson(f, a, b)
        % 标准辛普森法
        h = (b - a) / 2;
        S = (b - a) / 6 * (f(a) + 4 * f((a + b) / 2) + f(b));
    end
    
    % 递归自适应辛普森积分
    function [I, iter] = adaptive(f, a, b, tol, level)
        if level > 100  % 设置最大递归深度，防止无限递归
            I = simpson(f, a, b);  % 基础辛普森积分
            iter = 1;  % 如果达到最大深度，认为是第一次调用
            return;
        end
        
        % 计算整个区间的辛普森积分
        mid = (a + b) / 2;
        S1 = simpson(f, a, b);
        S2 = simpson(f, a, mid) + simpson(f, mid, b);
        
        % 如果误差小于容忍度，则返回
        if abs(S2 - S1) < tol
            I = S2 + (S2 - S1) / 15;  % 使用修正因子提高精度
            iter = 1;  % 当前递归层级成功计算
        else
            % 误差较大，递归拆分区间
            [left_integral, left_iter] = adaptive(f, a, mid, tol / 2, level + 1);
            [right_integral, right_iter] = adaptive(f, mid, b, tol / 2, level + 1);
            I = left_integral + right_integral;
            iter = left_iter + right_iter;  % 累加左区间和右区间的迭代次数
        end
    end
    
    % 调用自适应积分函数
    [result, iterations] = adaptive(f, a, b, tol, 0);
end

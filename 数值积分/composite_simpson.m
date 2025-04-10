function [I, error] = composite_simpson(f, a, b, h, exact_value)
    x = a:h:b;  % 创建区间节点
    n = length(x);  % 节点数量

    % 计算函数值
    f_values = f(x);  % 计算所有节点的函数值

    % 复合辛普森公式计算积分
    sum_odd = sum(f_values(2:2:n-1));  % 奇数位置的求和（索引2, 4, 6,...）
    sum_even = sum(f_values(3:2:n-2));  % 偶数位置的求和（索引3, 5, 7,...）
    
    % 应用复合辛普森公式
    I = (h / 3) * (f_values(1) + 4 * sum_odd + 2 * sum_even + f_values(end));
    
    % 计算误差
    error = abs(I - exact_value);
end

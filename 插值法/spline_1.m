function [pp, y_vals, x_fine, y_fine] = spline_1(x, y, x_vals)
    % 输入:
    % x: 自变量数据
    % y: 因变量数据
    % x_vals: 给定的需要插值的点
    % 输出:
    % pp: 三次样条插值的分段多项式系数
    % y_vals: 给定点的插值结果
    % x_fine: 用于绘制插值曲线的细分点
    % y_fine: 在细分点上的插值结果

    % 三次样条插值
    pp = spline(x, y);  % 调用MATLAB的spline函数进行三次样条插值

    % 输出三次样条插值的分段多项式系数
    disp('三次样条插值的分段多项式系数：');
    disp(pp.coefs);

    % 解析并展示每个分段的多项式形式
    disp('三次样条插值的分段多项式为：');
    for i = 1:size(pp.coefs, 1)
        a = pp.coefs(i, 1);
        b = pp.coefs(i, 2);
        c = pp.coefs(i, 3);
        d = pp.coefs(i, 4);
        
        fprintf('S%d(x) = %.4f * (x - %.2f)^3 + %.4f * (x - %.2f)^2 + %.4f * (x - %.2f) + %.4f\n', ...
                i, a, x(i), b, x(i), c, x(i), d);
    end

    % 计算插值多项式在给定点x_vals上的函数值
    y_vals = ppval(pp, x_vals); 

    % 计算细分点上的插值值（用于绘图）
    x_fine = linspace(min(x), max(x), 500);  % 创建更密集的点用于画曲线
    y_fine = ppval(pp, x_fine);  % 对这些点进行插值计算
end
% % 给定数据
% x = [0.2 0.4 0.6 0.8 1.0];
% y = [0.98 0.92 0.81 0.64 0.38];
% x_vals = [0.2, 0.28, 1.0, 1.08];
% 
% % 调用三次样条插值函数
% [pp, y_vals, x_fine, y_fine] = spline_1(x, y, x_vals);
% 
% % 显示插值结果
% disp('在给定点上的函数值：');
% disp(y_vals);
% 
% % 绘制插值结果
% figure;
% % 绘制原始数据点
% plot(x, y, 'ro', 'MarkerFaceColor', 'r'); 
% hold on;
% 
% % 绘制三次样条插值曲线
% plot(x_fine, y_fine, 'b-', 'LineWidth', 2); 
% 
% % 标出x_vals对应的点
% plot(x_vals, y_vals, 'go', 'MarkerFaceColor', 'g', 'MarkerSize', 8); 
% 
% % 添加图例
% xlabel('x');
% ylabel('y');
% title('三次样条插值多项式与数据点');
% legend('原始数据点', '三次样条插值多项式', '指定插值点');
% grid on;

function [x_k, error] = newtonsystem(F, JF, x0, max_iter)
    % F: 非线性方程的函数句柄 [F1, F2, F3]
    % JF: 雅可比矩阵的函数句柄 [J11, J12, J13; J21, J22, J23; J31, J32, J33]
    % x0: 初始猜测解 (3x1列向量)
    % max_iter: 最大迭代次数
    % tol: 收敛精度，满足 ||x_k - x_{k-1}||_∞ < tol 时停止迭代
    
    % 初始猜测解
    x_k = x0;
    
    % 进行迭代
    for k = 1:max_iter
        % 计算函数值 F(x_k) 和雅可比矩阵 JF(x_k)
        F_val = F(x_k);
        JF_val = JF(x_k);
        
        % 计算牛顿法的步长 (JF_val)^(-1) * F_val
       xnew = -JF_val \ F_val;  % 求解线性方程 JF_val *_x = -F_val
        
        % 更新解
        x_k_next = x_k +xnew;
        
        % 计算误差
        error = max(abs(x_k_next - x_k));  % L∞ 范数
        

        
        % 更新解
        x_k = x_k_next;
    end

end

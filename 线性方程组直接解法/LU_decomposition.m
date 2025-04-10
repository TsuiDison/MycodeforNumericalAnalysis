% LU分解法(A=P*L*U)
function [L, U, x, detA] = LU_decomposition(A, b)
    [L, U, P] = lu(A);  % LU分解
    x = U \ (L \ (P * b));  % 解线性方程(\是左乘)
    detA = prod(diag(U)) * sign(det(P));  % 计算矩阵的行列式
end

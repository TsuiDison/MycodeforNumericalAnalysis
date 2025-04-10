import numpy as np
def newton_interpolation(x, y):
    """计算牛顿插值多项式的系数"""
    n = len(x)
    coef = np.copy(y)#即拷贝一份y到coef
    for j in range(1, n):
        for i in range(n-1, j-1, -1):
            coef[i] = (coef[i] - coef[i-1])/(x[i] - x[i-j])
    return coef

def evaluate_newton_polynomial(coef, x_data, x_eval):
    """计算牛顿插值多项式在给定点的值"""
    n = len(x_data)
    result = coef[n-1]
    for i in range(n-2, -1, -1):
        result = result * (x_eval - x_data[i]) + coef[i]
    return result

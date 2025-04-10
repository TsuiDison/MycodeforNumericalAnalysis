# 注意
不过线性方程组的直接解法这一章节Python和MATLAB都有自带的函数，封装的函数只是再套公式使得使用更加直接而已。
## LU分解
```python
import numpy as np
from scipy import linalg

def lu_solve(A, b):
    """
    使用LU分解解线性方程组 Ax = b
    
    参数:
    A -- 系数矩阵
    b -- 右侧向量
    
    返回:
    x -- 解向量
    """
    # LU分解
    lu, piv = linalg.lu_factor(A)
    
    # 解线性方程组
    x = linalg.lu_solve((lu, piv), b)
    
    return x

# 示例
if __name__ == "__main__":
    # 创建一个示例矩阵和向量
    A = np.array([[3, 1, 2], [6, 3, 4], [3, 1, 5]])
    b = np.array([1, 2, 3])
    
    # 解线性方程组
    x = lu_solve(A, b)
    print("Solution:", x)
    
    # 验证结果
    print("Verification:", np.allclose(np.dot(A, x), b))
```

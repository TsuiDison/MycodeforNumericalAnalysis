import numpy as np
def jacobi(A,b,x0,max_iter=10):
    n=len(b)#获取方程组的阶数
    x=x0.copy()#复制初始值
    x_new=np.zeros_like(x0)#初始化新的解
    history=[x0.copy()]#记录迭代过程
    for _ in range(max_iter):#这个带_的循环的意思是循环max_iter次，与不带_的循环不同，不需要用到循环变量
        for i in range(n):
            s=np.dot(A[i,:],x)-A[i,i]*x[i]#计算除了第i个元素之外的所有元素的乘积。
            x_new[i]=(b[i]-s)/A[i,i]#计算新的解
            #上面的两行代码其实是书本上端1公式2.5
        x=x_new.copy()#更新解
        history.append(x.copy())#记录迭代过程
    return x,np.array(history)#返回最终解和迭代过程

    # 定义一个5x5的矩阵A和对应的b向量
A = np.array([[10, -1, 2, 0, 0],
                [-1, 11, -1, 3, 0],
                [2, -1, 10, -1, 0],
                [0, 3, -1, 8, -1],
                [0, 0, 0, -1, 5]], dtype=float)

b = np.array([6, 25, -11, 15, -6], dtype=float)

# # 初始猜测值x0
# x0 = np.zeros(len(b))

# # 调用雅可比迭代法函数
# solution, history = jacobi(A, b, x0, max_iter=25)

# print("Solution:", solution)
# print("History of iterations:\n", history)
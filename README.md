# 说明
笔者尽量都以函数的形式给出程序，相当于只暴露出引脚，让使用者可以快速使用。不过本仓库尚未完善，等课程结束后会尽量完善该仓库，也期待我的同学与我一起完善这个仓库
# 数值分析代码库

本仓库包含数值分析课程中编写的代码，包括课上练习和课后作业，主要使用 MATLAB 和 Python 实现。以下是各目录和方法的详细说明。

---

## 目录结构

- **常微分方程初值问题**
  - [Euler.m](https://github.com/TsuiDison/MycodeforNumericalAnalysis/blob/main/%E5%B8%B8%E5%BE%AE%E5%88%86%E6%96%B9%E7%A8%8B%E5%88%9D%E5%80%BC/Euler.m): 欧拉法
  - [classicalRK4.m](https://github.com/TsuiDison/MycodeforNumericalAnalysis/blob/main/%E5%B8%B8%E5%BE%AE%E5%88%86%E6%96%B9%E7%A8%8B%E5%88%9D%E5%80%BC/classicalRK4.m): 四阶经典 Runge-Kutta 方法
  - [improved_euler.m](https://github.com/TsuiDison/MycodeforNumericalAnalysis/blob/main/%E5%B8%B8%E5%BE%AE%E5%88%86%E6%96%B9%E7%A8%8B%E5%88%9D%E5%80%BC/improved_euler.m): 改进欧拉法

- **插值方法**
  - [Lagrange.m](https://github.com/TsuiDison/MycodeforNumericalAnalysis/blob/main/%E6%8F%92%E5%80%BC%E6%B3%95/Lagrange.m): 拉格朗日插值
  - [Newton.m](https://github.com/TsuiDison/MycodeforNumericalAnalysis/blob/main/%E6%8F%92%E5%80%BC%E6%B3%95/Newton.m): 牛顿插值
  - Python版本：[Newton.py](https://github.com/TsuiDison/MycodeforNumericalAnalysis/blob/main/%E6%8F%92%E5%80%BC%E6%B3%95/Newton.py), [lagrange.py](https://github.com/TsuiDison/MycodeforNumericalAnalysis/blob/main/%E6%8F%92%E5%80%BC%E6%B3%95/lagrange.py)
  - [spline_1.m](https://github.com/TsuiDison/MycodeforNumericalAnalysis/blob/main/%E6%8F%92%E5%80%BC%E6%B3%95/spline_1.m): 样条插值

- **数值积分**
  - [adaptiveSimpson.m](https://github.com/TsuiDison/MycodeforNumericalAnalysis/blob/main/%E6%95%B0%E5%80%BC%E7%A7%AF%E5%88%86/adaptiveSimpson.m): 自适应辛普森积分法
  - [composite_simpson.m](https://github.com/TsuiDison/MycodeforNumericalAnalysis/blob/main/%E6%95%B0%E5%80%BC%E7%A7%AF%E5%88%86/composite_simpson.m): 复合辛普森积分
  - [composite_trapezoidal.m](https://github.com/TsuiDison/MycodeforNumericalAnalysis/blob/main/%E6%95%B0%E5%80%BC%E7%A7%AF%E5%88%86/composite_trapezoidal.m): 复合梯形积分
  - [romberg.m](https://github.com/TsuiDison/MycodeforNumericalAnalysis/blob/main/%E6%95%B0%E5%80%BC%E7%A7%AF%E5%88%86/romberg.m): 龙贝格积分
  - Python版本：[数值积分.py](https://github.com/TsuiDison/MycodeforNumericalAnalysis/blob/main/%E6%95%B0%E5%80%BC%E7%A7%AF%E5%88%86/%E6%95%B0%E5%80%BC%E7%A7%AF%E5%88%86.py)

- **线性方程组的直接解法**
  - [LU_decomposition.m](https://github.com/TsuiDison/MycodeforNumericalAnalysis/blob/main/%E7%BA%BF%E6%80%A7%E6%96%B9%E7%A8%8B%E7%BB%84%E7%9B%B4%E6%8E%A5%E8%A7%A3%E6%B3%95/LU_decomposition.m): LU 分解
  - [gauss_pivot.m](https://github.com/TsuiDison/MycodeforNumericalAnalysis/blob/main/%E7%BA%BF%E6%80%A7%E6%96%B9%E7%A8%8B%E7%BB%84%E7%9B%B4%E6%8E%A5%E8%A7%A3%E6%B3%95/gauss_pivot.m): 带主元消去法

- **矩阵求解的迭代方法**
  - [SOR.m](https://github.com/TsuiDison/MycodeforNumericalAnalysis/blob/main/%E8%BF%AD%E4%BB%A3%E6%B3%95%E6%B1%82%E7%9F%A9%E9%98%B5/SOR.m): 超松弛迭代法
  - [decompose_DLU.m](https://github.com/TsuiDison/MycodeforNumericalAnalysis/blob/main/%E8%BF%AD%E4%BB%A3%E6%B3%95%E6%B1%82%E7%9F%A9%E9%98%B5/decompose_DLU.m): 矩阵分解
  - [gauss_seidel.py](https://github.com/TsuiDison/MycodeforNumericalAnalysis/blob/main/%E8%BF%AD%E4%BB%A3%E6%B3%95%E6%B1%82%E7%9F%A9%E9%98%B5/gauss_seidel.py): 高斯-赛德尔迭代法（Python版）
  - [jacobi.m](https://github.com/TsuiDison/MycodeforNumericalAnalysis/blob/main/%E8%BF%AD%E4%BB%A3%E6%B3%95%E6%B1%82%E7%9F%A9%E9%98%B5/jacobi.m), [jacobi.py](https://github.com/TsuiDison/MycodeforNumericalAnalysis/blob/main/%E8%BF%AD%E4%BB%A3%E6%B3%95%E6%B1%82%E7%9F%A9%E9%98%B5/jacobi.py): 雅可比迭代法

- **非线性方程(组)的迭代方法**
  - [bisection_method.m](https://github.com/TsuiDison/MycodeforNumericalAnalysis/blob/main/%E8%BF%AD%E4%BB%A3%E6%B3%95%E6%B1%82%E9%9D%9E%E7%BA%BF%E6%80%A7%E6%96%B9%E7%A8%8B(%E7%BB%84)/bisection_method.m): 二分法
  - [fixedpoint.m](https://github.com/TsuiDison/MycodeforNumericalAnalysis/blob/main/%E8%BF%AD%E4%BB%A3%E6%B3%95%E6%B1%82%E9%9D%9E%E7%BA%BF%E6%80%A7%E6%96%B9%E7%A8%8B(%E7%BB%84)/fixedpoint.m): 不动点迭代
  - [newton.m](https://github.com/TsuiDison/MycodeforNumericalAnalysis/blob/main/%E8%BF%AD%E4%BB%A3%E6%B3%95%E6%B1%82%E9%9D%9E%E7%BA%BF%E6%80%A7%E6%96%B9%E7%A8%8B(%E7%BB%84)/newton.m): 牛顿迭代法
  - [newtonsystem.m](https://github.com/TsuiDison/MycodeforNumericalAnalysis/blob/main/%E8%BF%AD%E4%BB%A3%E6%B3%95%E6%B1%82%E9%9D%9E%E7%BA%BF%E6%80%A7%E6%96%B9%E7%A8%8B(%E7%BB%84)/newtonsystem.m): 牛顿迭代法求解方程组
  - [steffensen.m](https://github.com/TsuiDison/MycodeforNumericalAnalysis/blob/main/%E8%BF%AD%E4%BB%A3%E6%B3%95%E6%B1%82%E9%9D%9E%E7%BA%BF%E6%80%A7%E6%96%B9%E7%A8%8B(%E7%BB%84)/steffensen.m): 斯特芬森法

---

## 使用方法
1. **环境准备**：根据不同的代码选择 MATLAB 或 Python 环境。
2. **函数调用**：在代码文件中，每个方法都封装为独立函数，输入参数及返回值在每个文件的注释中有详细说明。
3. **运行示例**：可参考具体代码文件中的注释部分或直接运行以查看结果。

---

## 贡献
欢迎大家提交 Issue 或 Pull Request 来改进本项目！

---

## 许可证
本项目采用 MIT 许可证，详情请参阅 [LICENSE](LICENSE) 文件。

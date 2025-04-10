def trapezoidal_rule(f, a, b):
    return (b - a) * (f(a) + f(b)) / 2

def simpson_13_rule(f, a, b):
    h= (b - a) / 2
    x0,x1,x2 = a, a + h, b
    return h/3 * (f(x0) + 4 * f(x1) + f(x2))


def simpson_38_rule(f,a,b):
    h = (b - a) / 3
    x0, x1, x2, x3 = a, a + h, a + 2 * h, b
    return 3 * h / 8 * (f(x0) + 3 * f(x1) + 3 * f(x2) + f(x3))


# def f(x):
#     return x**2

# a,b=0,2
# true_value = 8/3

# result_trap=trapezoidal_rule(f,a,b)
# result_simpson_13=simpson_13_rule(f,a,b)
# result_simpson_38=simpson_38_rule(f,a,b)

# print(f"梯形法结果: {result_trap}, 误差: {abs(result_trap - true_value)}")
# print(f"辛普森1/3法结果: {result_simpson_13}, 误差: {abs(result_simpson_13 - true_value)}")
# print(f"辛普森3/8法结果: {result_simpson_38}, 误差: {abs(result_simpson_38 - true_value)}")
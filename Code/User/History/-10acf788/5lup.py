import numpy as np
from math import sqrt

n = 7
x = np.array([[i] for i in range(1, n + 1)])
y = np.ones((1, n))
a = x @ y

print(a)

svd = np.linalg.svd(a, full_matrices=False)

s = sqrt(n * (n + 1) * (2 * n + 1) / 6)
u = np.array([i / s for i in range(1, n + 1)])
v = np.array([1 / sqrt(n) for i in range(1, n + 1)])

np.set_printoptions(precision=4)

print(np.apply_along_axis(lambda a: a[0], 1, -svd[0]))
print(u)
print(f'{svd[1][0]:.4f}')
print(f'{s * sqrt(n):.4f}')
print(np.apply_along_axis(lambda a: a[0], 0, -svd[2]))
print(v)

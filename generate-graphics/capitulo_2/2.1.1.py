#!/usr/bin/python
# f(x,y)=2.5 - 0.5 x - 0.3 y
from mpl_toolkits import mplot3d
import numpy as np
import matplotlib.pyplot as plt

def f(x, y):
    return 2.5 - 0.5*x - 0.3*y

def g(x, y):
    return x*0

plt.style.use('seaborn-bright')
fig = plt.figure()
ax = plt.axes(projection='3d')

# Generate function plot
x = np.linspace(-6, 6, 30)
y = np.linspace(-6, 6, 30)

X, Y = np.meshgrid(x, y)

Z = f(X, Y)

ax.plot_surface(X, Y, Z, rstride=1, cstride=1,
                cmap='viridis', edgecolor='none')

# Generate restrictions.
x = np.linspace(-6, 6, 30)
y = np.linspace(-6, 6, 30)

X, Y = np.meshgrid(x, y)

Z = g(X, Y)

ax.plot_surface(X, Y, Z, rstride=1, cstride=1,
                cmap='viridis', edgecolor='none')



fig.set_size_inches(18.5, 10.5)
plt.savefig('../../src/graficos/2_1_1.png', dpi=310)

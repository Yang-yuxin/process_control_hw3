import matplotlib.pyplot as plt
import numpy as np
from scipy.interpolate import make_interp_spline

# homework2_1
t = [0, 10, 20, 40, 60, 80, 100, 140, 180, 250, 300, 400, 500, 600]
h = [0, 0, 0.2, 0.8, 2, 3.6, 5.4, 8.8, 11.8, 14.4, 16.6, 18.4, 19.2, 19.6]
t_new = np.linspace(min(t),max(t),500) #500 represents number of points to make between T.min and T.max
h_smooth = make_interp_spline(t,h)(t_new)
fig = plt.figure()
ax = fig.add_subplot(1,1,1)
ax.plot(t_new, h_smooth)
plt.show()

# homework2_2
t_2 = [1, 3, 4, 5, 8, 10, 15, 16.5, 20, 25, 30, 40, 50, 60, 70, 80]
theta = [0.46, 1.7, 3.7, 9, 19, 26.4, 36, 37.5, 33.5, 27.2, 21, 10.4, 5.1, 2.8, 1.1, 0.5]
t_new_2 = np.linspace(min(t_2),max(t_2),500) 
theta_smooth = make_interp_spline(t_2,theta)(t_new_2)
fig2 = plt.figure()
ax2 = fig2.add_subplot(1,1,1)
ax2.plot(t_new_2, theta_smooth)
plt.show()

# Homework2_2_2
t_3 = [1, 3, 4, 5, 8, 10, 15, 20, 25, 30, 40, 50, 60, 70, 80]
theta_3 = [0.46, 1.7, 3.7, 9, 19, 26.4, 45, 59.9, 72.2, 80.9, 91.3, 96.4, 99.2, 100.3, 100.8]
t_new_3 = np.linspace(min(t_3),max(t_3),500) 
theta_smooth = make_interp_spline(t_3,theta_3)(t_new_3)
fig3 = plt.figure()
ax3 = fig3.add_subplot(1,1,1)
ax3.plot(t_new_3, theta_smooth)
plt.show()
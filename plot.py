import matplotlib.pyplot as plt
import numpy as np
import os

def count_files(dir):
    return len([1 for x in list(os.scandir(dir)) if x.is_file()])

for i in range(0,count_files("results/")):
    plt.clf()
    x,y = np.loadtxt("results/output_" + str(i).zfill(5),skiprows=1,unpack=True)







    plt.plot(x,y)
        #print(xval[i]*0.01,data[i])


    plt.title('Upwind t = ' + str(i*0.005))
    plt.xlabel('x')
    plt.ylabel('u(x,t)')
    plt.axis([0, 1 , -2, 2])
    plt.savefig('plots/plot_' + str(i).zfill(3) + '.png')

% Code for https://stackoverflow.com/questions/43362831/fit-a-piecewise-regression-in-matlab-and-find-change-point

data = [1 4 4 3 4 0 0 4 5 4 5 2 5 10 5 1 4 15 4 9 11 16 23 25 24 17 31 42 35 45 49 54 74 69 63 46 35 31 27 15 10 5 10 4 2 4 2 2 3 5 2 2];
x = 1:52;
ipt = findchangepts(data);
x_cp = x(ipt);
data_cp = data(ipt);

plot(x,data,'.',x_cp,data_cp,'o')

% Code for https://codereview.stackexchange.com/a/160897/3865

clear
close all

x = [3 3 3 4 4 4 4 4 5 5 5 5 5]';
y = [1 2 3 0 1 2 3 4 0 1 2 3 4]';
z = [.5 .505 .51 .51 .51 .51 .51 .515 .535 .528 .53 .53 .53]';

F = scatteredInterpolant(x,y,z,'natural');

delta = 0.5;
ti = 0:delta:5;
si = 0:delta:4;
[xq,yq] = meshgrid(ti,si);
zq = F(xq,yq);

figure
hold on
mesh(xq,yq,zq)
plot3(x,y,z,'r.','MarkerSize',10)
hold off
view(3)
axis([0 5 0 4 0.46 0.54])

F.ExtrapolationMethod = 'none';
zqe = F(xq,yq);

figure
hold on
mesh(xq,yq,zqe)
plot3(x,y,z,'r.','MarkerSize',10)
hold off
view(3)
axis([0 5 0 4 0.46 0.54])

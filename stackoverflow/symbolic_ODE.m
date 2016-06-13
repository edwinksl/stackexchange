% Code for http://stackoverflow.com/a/37779690/486919

close all
clc

load = 130;
fr = 5.56;
mass = 2.5;
len = 0.75;
diam = 36/1000;
pa = 135;
pec = 100;
mc = 1.28;
md = 1.20;
xec1 = 0.5;
xmax = 0.5;
xep2 = 0.025;

syms x(t)

p1 = pec*(xec1/x)^md;
p2 = pa*((xmax-xep2)/(x+len-xep2))^mc;
fp = (p1-p2)*pi*diam^2/4;
xpp = (fp - fr - load)/mass;

x(t) = dsolve(diff(x,t,2) == xpp);
x(t) = simplify(x(t));
x(t)

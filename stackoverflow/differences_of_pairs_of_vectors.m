% Code for https://stackoverflow.com/a/37773307/486919

close all
clc

A = [2.29 2.56 2.77 2.90 2.05];
B = [2.34 2.62 2.67 2.44 2.52];
C = abs(bsxfun(@minus,A.',B));
[~,I] = min(C(:));
[a,b] = ind2sub(size(C),I);
A(a)
B(b)

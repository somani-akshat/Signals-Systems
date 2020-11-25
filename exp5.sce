//part1
clc;
t=-1:0.02:1;
w=2*%pi;
n_har=10;
n=1:1:n_har
b=2 ./(n*%pi)
x=0.5+b*sin(w*n'*t)
plot(x)
//part2
clc;
clear all;
close;
x1=[1,3,7,-2,5];
h=[3,0,-1,2];
y=xcorr(x1,h);
disp(y,"is the required correlation");
l=length(y);
t=0:l-1;
plot2d3(t,y);
xlabel("n");
ylabel("Amplitude");
title("Correlation");

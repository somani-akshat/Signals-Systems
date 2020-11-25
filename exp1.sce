clc;
clear all;
close;

//Unit Step Signal
//Continuous time:
clc; clf; clear all; 
n =0:10; 
x =[ones(1,11) ]; 
a =gca();
plot(n,x);
title(' unit step function ');
xlabel(' n '); 
ylabel(' x ');

//Discrete time: 
clc; clf; clear all;
n=-10:10;
x=[ zeros(1,10), ones(1,11)]; 
a= gca(); plot2d3(n,x); title( ' unit step function ' ); 
xlabel( ' n ' ); 
ylabel( ' x ' );

//Unit Impulse
clc ; clf ; clear all; 
n= -5:5;  
x=[ zeros(1,5),ones(1,1),zeros(1,5)];
plot(n,x); 
title( ' unit impulse ' ); 
xlabel( ' n ' ); 
ylabel( ' x ' );

//Unit Ramp
//Continuous time:
clc ; clf ; clear all;
 L =5; n=- L:L; 
x=[ zeros(1,L),0:L];
plot(n,x);
xtitle( ' unit ramp signal ' ); 
xlabel( ' n ' ); 
ylabel( ' x ( n ) ');

//Discrete Time
clc ; clf ; clear all; 
L =5; n=- L:L; 
x=[ zeros(1,L),0:L];
plot2d3(n,x); 
xtitle( ' unit ramp signal ' );
xlabel( ' n ' ); 
ylabel( ' x ( n ) ');

//Sinusoidal Signal
//Continuous Time
clc ; clf ; clear all; 
f =0.2; t=0:0.1:10;
 x= sin (2* %pi*t*f); plot(t,x); title( ' sine wave ' ); 
xlabel( ' t ' );
ylabel( ' x ' );






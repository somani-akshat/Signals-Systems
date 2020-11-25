//part-1
clc;
j=sqrt(-1)
x_mag1=[];
x_phase1=[];
w1=[w1 w];
x=1/(1-0.5*exp(-j*w))
for w=-2*%pi:0.01:2*%pi
    x_mag=abs(x);
    x_phase=phasemag(x)
    x_mag1=[x_mag1 x_mag]
    x_phase1=[x_phase1 x_phase];
    w1=[w1 w]
    
end
plot(w1,x_mag1)
figure;
plot(w1,x_phase1)

//part-2
clc;
j=sqrt(-1)
h_mag1=[]
w1=[]
h_phase1=[]
for w=-2*%pi:0.01:2*%pi
    h=1/(1+0.2*exp(-j*w));
    h_mag=abs(h);
    h_phase=phasemag(h)
    h_mag1=[h_mag1 h_mag]
    h_phase1=[h_phase1 h_phase];
    w1=[w1 w]
    
end
plot(w1,h_mag1)
//W=0 then H=1/(1+0.2)=1/1.2=0.833
figure;
plot(w1,h_phase1)

//part-3
//find the z transform of a simple sequence
function[za]=ztransfer(seq,n)
    z=poly(0,'z','r')
    za=seq*(1/z)^n'
endfunction
// -6 to 2
x1=[2 -1 3 2 1 0 2 3 -1]
n= -6:2
zz=ztransfer(x1,n)
//Roc of the above sequence

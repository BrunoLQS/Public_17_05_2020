x=[2,1,-1];
dt=0.01;
x=[0,dt,2*dt];
h=[0.2 0.0 0.0 0.0 0.0 ...
   0.4 0.0 0.0 0.0 0.0 ...
   0.6 0.0 0.0 0.0 0.0 ...
   0.8 0.0 0.0 0.0 0.0 ...
   1.0 0.0 0.0 0.0 0.0 ...
   0.8 0.0 0.0 0.0 0.0 ...
   0.6 0.0 0.0 0.0 0.0 ...
   0.4 0.0 0.0 0.0 0.0 ...
   0.2 0.0 0.0 0.0 0.0];
%conv[n] = x[-1]*h[n+1] + x[0]*h[n] + x[1]*h[n-1] + x[2]*h[n-2] +
%x[3]*h[n-3]

%conv[n] = x[0]*h[n] + x[1]*h[n-1] + x[2]*h[n-2]
conv=zeros(45)
for n = 3:45:1
    conv(n)=x(0+1)*h(n) + x(1+1)*h(n-1) + x(2+1)*h(n-2)
end
conv(2)=x(0+1)*h(n) + x(1+1)*h(n-1)
conv(1)=x(0+1)*h(n)

plot(x,y,'-o')
grid on
xlabel('time')
ylabel('x')
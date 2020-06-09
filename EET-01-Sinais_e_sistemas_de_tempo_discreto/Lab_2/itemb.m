x=[2 1 -1];
dt=0.01;
t=[0,dt,2*dt];
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
conv=zeros(44);
conv(1)=x(1)*h(1);
for n = 2:44:1
    k1=n+1;
    k_1=n-1;
    conv(n)=x(1)*h(k1) + x(2)*h(n) + x(3)*h(k_1);
end
n=[0 1 2 3 4 5 6 ...
    7 8 9 10 11 12 ...
    13 14 15 16 17 18 19 ...
    20 21 22 23 24 25 26 ...
    27 28 29 30 31 32 33 ...
    34 35 36 37 38 39 40 ...
    41 42 43];
con=[conv(1) conv(2) conv(3) conv(4) conv(5) conv(6) ...
    conv(7) conv(8) conv(9)  conv(10) conv(11) conv(12) ...
    conv(13) conv(14) conv(15) conv(16) conv(17) conv(18) conv(19) ...
    conv(20) conv(21) conv(22) conv(23) conv(24) conv(25) conv(26) ...
    conv(27) conv(28) conv(29) conv(30) conv(31) conv(32) conv(33) ...
    conv(34) conv(35) conv(36) conv(37) conv(38) conv(39) conv(40) ...
    conv(41) conv(42) conv(43) conv(44)];

plot(n(1:3),con(1:3),'-o')
grid on
xlabel('n')
ylabel('conv[n]')
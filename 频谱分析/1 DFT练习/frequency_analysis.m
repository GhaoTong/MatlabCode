fs = 100; %采样频率
N = 100; %数据长度
t = [0:(N-1)]*1/fs;
xn = 1.1 + 1.0 * sin(2*pi*10*t) + 0.5 *sin(2*pi*33*t+30*pi/180);
Xk = abs(fft(xn,N));
N2 = fix(N/2);
subplot(1,2,1) , plot(t,xn); grid on 
xlabel('t/s');ylabel('x(n)');
subplot(1,2,2),plot([0:N/2]*fs/N,[Xk(1),2*Xk(2:N2+1)]/N,'- *');grid on 
xlabel('f/Hz');ylabel('|x(f)|');
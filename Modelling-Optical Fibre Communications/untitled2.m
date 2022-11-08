clear
clc
Ts=1;        %采样周期（一个码元的时间）
N=15;        %每个码元的采样点数
a=1;
N_data=1000;     %码元数
dt=Ts/N;         %采样时间间隔
t=-3*Ts:dt:3*Ts;
%-------------------------产生双极性数字信号-------------------------------
d=sign(randn(1,N_data));  
dd=sigexpand(d,N);         %将d中的序列扩展成间隔N-1的序列
% -----------------------基带系统冲击响应----------------------------------
ht=sinc(t/Ts).*(cos(a*pi*t/Ts))./(1-4*a^2*t.^2/Ts^2+eps);
st=conv(dd,ht);            %数字信号序列与冲击响应做卷积，得到输出信号
tt=-3*Ts:dt:(N_data+3)*N*dt-dt;   
plot(tt,st);
axis([0 50,-1.2 1.2]);  
xlabel('t/Ts');
ylabel('信号');

Ts=1;        %采样周期
N=15;        %每个码元的采样点数
eye_num=2;   %眼睛的个数
dt=Ts/N;     %采样时间间隔
ss=zeros(1,eye_num*N);    
ttt=0:dt:eye_num*N*dt-dt; 
   for k=20:80
        ss(k,:)=st((k+eye_num)*N+1:(k+eye_num)*N+eye_num*N);    
        %采样时，要保证脉冲首尾相接
        drawnow;
        figure(2)
        plot(ttt*10^9,ss(k,:)/4.22,'linewidth',2);
        hold on;
   end
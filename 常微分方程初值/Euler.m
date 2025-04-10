function [x,y]=Euler(a,b,h,f)
x=zeros(1,(b-a)/h +1);
x(1)=a;
y=zeros(1,(b-a)/h +1);
y(1)=1;
for i=2:(b-a)/h+1
    x(i)=x(i-1)+h;
end
for i=2:(b-a)/h+1
    y(i)=y(i-1)+h*f(x(i-1),y(i-1));
end

plot(x, y);
title('Plot of y and x');
xlabel('x');
ylabel('y');
grid on; % 打开网格
% 
% h=1/4;
% f=@(x,y) (x-y)/2;
% 
% [x,y]=Euler(0,3,1/4,f)

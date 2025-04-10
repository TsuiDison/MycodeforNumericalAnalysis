function [R,k,T]=romberg(f,a,b,tol)
k=0; % 迭代次数
n=1; % 区间划分个数
h=b-a;
T=h/2*(f(a)+f(b)); %计算T(0,0)
err=1; %积分误差初始化
while err>=tol
    k=k+1;
    h=h/2;
    tmp=0;
    for i=1:n
        tmp=tmp+f(a+(2*i-1)*h);
    end
    T(k+1,1)=T(k)/2+h*tmp; %外推算法
    for j=1:k
        T(k+1,j+1)=T(k+1,j)+(T(k+1,j)-T(k,j))/(4^j-1); %外推算法
    end
    n=n*2;
    err=abs(T(k+1,k+1)-T(k,k)); %更新积分误差
end
R=T(k+1,4);
end
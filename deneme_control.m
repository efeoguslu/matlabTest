a = [1 5 16 36];
b = [0.6 2 5.6 9.6];
t = 0:0.1:8;
y = zeros(81,4);
for i = 1:4
    num = [a(i)];
    den = [1 b(i) a(i)];
    y(:,i) = step(num,den,t);
end

plot(t,y(:,1),'o',t,y(:,2),'x',t,y(:,3),'-',t,y(:,4),'-.')
grid
title('Unit-Step Response Curves for Four Cases')
xlabel('t Sec')
ylabel('Outputs')
legend("1","2","3","4")

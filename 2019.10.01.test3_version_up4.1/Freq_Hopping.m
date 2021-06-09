v = [2 4 8 5 10 9 7 3 6 1];
dt=0.01;
t=0:dt:1-dt;
s1=[];
f0=1;
for i=1:10
    s1=[s1 cos(2*pi*f0*v(i)*t)];
end
subplot(211), plot(s1)

v = randperm(10);
dt=0.01;
t=0:dt:1-dt;
s2=[];
f0=1;
for i=1:10
    s2=[s2 cos(2*pi*f0*v(i)*t)];
end
subplot(212), plot(s2)

N=length(s1);
s1*s2'
s1*s1'
s2*s2'

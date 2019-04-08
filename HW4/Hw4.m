A = [8 4 2]';B = [6 20 4]';C = [-6 -12 3]';
%%%1
A1 = A/A(3,1);
B1 = B/B(3,1);
C1 = C/C(3,1);
figure (1)
plot(A1(1,1),A1(2,1),'x');
hold on
plot(B1(1,1),B1(2,1),'x');
hold on
plot(C1(1,1),C1(2,1),'x');
xlim([-5 5])
ylim([-10 10])
hold on
L1 = cross(A,B);
L2 = cross(B,C);
L3 = cross(C,A);
x = -10:0.01:10;
plot(x,(-L1(1,1)*x-L1(3,1))/L1(2,1));
plot(x,(-L2(1,1)*x-L2(3,1))/L2(2,1));
plot(x,(-L3(1,1)*x-L3(3,1))/L3(2,1));

%%%2
H1 = [ cosd(45) -sind(45) -1;
       sind(45)  cosd(45)  2;
       0         0         1;];
H2 = [ 1 1/2 0;
       1/2 1 0;
       0   0 1;];
H = H1 * H2;
A = H * A;
B = H * B;
C = H * C;

A1 = A/A(3,1);
B1 = B/B(3,1);
C1 = C/C(3,1);
figure (2)
plot(A1(1,1),A1(2,1),'x');
hold on
plot(B1(1,1),B1(2,1),'x');
hold on
plot(C1(1,1),C1(2,1),'x');
xlim([-5 5])
ylim([-10 10])
hold on
L1 = cross(A,B);
L2 = cross(B,C);
L3 = cross(A,C);
x = -5:0.01:5;
plot(x,(-L1(1,1)*x-L1(3,1))/L1(2,1));
plot(x,(-L2(1,1)*x-L2(3,1))/L2(2,1));
line([-L3(3,1)/L3(1,1),-L3(3,1)/L3(1,1)],[-10,10]);

%%%3
L1 = [2 1 1]';
L2 = [1/2 -1 3]';
X = cross(L1,L2);
XC = X/X(3,1);
figure (3)
plot(x,(-L1(1,1)*x-L1(3,1))/L1(2,1));
hold on
plot(x,(-L2(1,1)*x-L2(3,1))/L2(2,1));
hold on
plot(XC(1,1),XC(2,1),'x');
hold on
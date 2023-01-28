function C()
a=0.95;
b=0.7;
c=0.6;
d=3.5;
e=0.25;
f=0.1;
st = 0.01;
plot3(0,0,0,'.r');
hold on
grid on
axis equal
l = 4
axis([-l l -l l -l l ]);

    x =0.1;y=0;z=0
    i= 1;
    while i
        x1 = x + st*(x*(z-b)-d*y);
        y1 = y + st*(d*x + (z-b)*y);
        z1 = z + st*(c + a*z - z^3/3 - (x^2 + y^2)*(1+e*z) + f*z*x^3);
        
        plot3([x x1],[y y1],[z z1],'-r');
        pause(0.000001)
        x = x1;
        y = y1;
        z = z1;
%        set(p,{'XData','YData','ZData'},{x1,y1,z1});
%        drawnow
    end
end
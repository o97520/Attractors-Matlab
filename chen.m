function C()
a=40;
b=3;
c=28;
st = 0.006;
plot3(0,0,0,'.r');
hold on
grid on
axis equal
l = 60
axis([-l l -l l -l l ]);

    x =-0.1;y=0.5;z=-0.6
    i= 1;
    while i
        x1 = x + st*(a*(y-x));
        y1 = y + st*((c-a)*x-x*z+c*y);
        z1 = z + st*(x*y -b*z);
        
        plot3([x x1],[y y1],[z z1],'-r');
        pause(0.000001)
        x = x1;
        y = y1;
        z = z1;
%        set(p,{'XData','YData','ZData'},{x1,y1,z1});
%        drawnow
    end
end
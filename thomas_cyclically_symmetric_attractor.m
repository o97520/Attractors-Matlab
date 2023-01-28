function C(x,y,z,b)
d = 0.1;
plot3(0,0,0,'.r');
hold on
grid on
axis equal
l = 10
axis([-l l -l l -l l ]);
i = 1;

    while i
        i=i+1
        x1 = x + d*(sin(y) - b*x);
        y1 = y + d*(sin(z) - b*y);
        z1 = z + d*(sin(x) - b*z);
        
        plot3([x x1],[y y1],[z z1],'-r');
        pause(0.000001)
        x = x1;
        y = y1;
        z = z1;
%        set(p,{'XData','YData','ZData'},{x1,y1,z1});
%        drawnow
    end
end
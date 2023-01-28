function chelee()
a=5;
b=-10;
c=-0.38;
st = 0.002;
plot3(0,0,0,'.r');
hold on
grid on
axis equal
l = 50
axis([-l l -l l -l l ]);

    x =1;y=1;z=1;
    i= 1;
    while i
        x1 = x + st*(a*x-y*z);
        y1 = y + st*(b*y+x*z);
        z1 = z + st*(c*z+x*y/3);
        
        plot3([x x1],[y y1],[z z1],'-r');
        pause(0.000001)
        x = x1;
        y = y1;
        z = z1;
%        set(p,{'XData','YData','ZData'},{x1,y1,z1});
%        drawnow
    end
end
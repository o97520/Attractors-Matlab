function A(x,y,z)
d = 0.01;
figure(1)
plot3(0,0,0,'.r');
hold on
grid on
axis equal
axis([-30 30 -30 30 0 60 ]);
i = 1;
    while i
        x1 = x + d*(-y-z);
        y1 = y + d*(x + 0.21*y);
        z1 = z + d*(0.2 + z*(x-5.5));
        
        plot3([x x1],[y y1],[z z1],'-r');
        pause(0.00001)
        x = x1;
        y = y1;
        z = z1;
%        set(p,{'XData','YData','ZData'},{x1,y1,z1});
%        drawnow
    end
end
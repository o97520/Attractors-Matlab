function a = A(x,y,z,l)
d = 0.01;
figure(1);
clf(1);
figure(1);
p = plot3(0,0,0,'-r');
hold on
grid on
axis equal
axis([-30 30 -30 30 0 60 ]);
i = 1
    while i
        i = i + 1
        x1 = x + d*10*(y-x);
        y1 = y + d*(x*(28-z)-y);
        z1 = z + d*(x*y - 8*z/3);
        
        plot3([x x1],[y y1],[z z1],'-r');
        x = x1;
        y = y1;
        z = z1;
%        set(p,{'XData','YData','ZData'},{x1,y1,z1});
        drawnow
    end
    
end
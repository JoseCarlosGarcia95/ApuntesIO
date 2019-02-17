pkg load geometry;

v = 0:0.4:100;  % plotting range from -5 to 5
[x y] = meshgrid(v);  % get 2-D mesh for x and y

cond1 = x + y < 80;
cond2 = 2*x + y < 100;
cond3 = x < 40;

cond1 = double(cond1);
cond2 = double(cond2);
cond3 = double(cond3);

cond1(cond1 == 0) = NaN;
cond2(cond2 == 0) = NaN;
cond3(cond3 == 0) = NaN;
cond = cond2 .* cond3 .* cond1;  % multiply the two condaces to keep only the common points
surf(x,y,cond, "facealpha", 0.5, "edgecolor", 'none')
hold on;

h = quiver3 (3*1.5,2*1.5,0, 'filled');
set(h, 'LineWidth', 0.6);
hold on;

vectorx=[0 40/3]
vectory=[20 0]
vectorz=[1 1]
plot3(vectorx,vectory,vectorz, '-r', 'lineWidth',2)
hold on;

vectorx=[0 80/3]
vectory=[40 0]
vectorz=[1 1]
plot3(vectorx,vectory,vectorz, '-r', 'lineWidth',2)
hold on;

vectorx=[0 120/3]
vectory=[60 0]
vectorz=[1 1]
plot3(vectorx,vectory,vectorz, '-r', 'lineWidth',2)
hold on;

vectorx=[0 60]
vectory=[90 0]
vectorz=[1 1]
plot3(vectorx,vectory,vectorz, '-r', 'lineWidth',2)
hold on;
%p1 = surf(x, y, cond1, x + y, "facealpha", 0.5, "edgecolor", 'none');
%hold on;

%p1 = surf(x, y, cond2, 2*x + y, "facealpha", 0.5, "edgecolor", 'none');
%hold on;

%p1 = surf(x, y, cond3, x, "facealpha", 0.5, "edgecolor", 'none');
%hold on;

view(0, 90)

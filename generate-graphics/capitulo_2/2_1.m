v = 0:1:100;  % plotting range from -5 to 5
[x y] = meshgrid(v);  % get 2-D mesh for x and y

fobj = 3*x+2*y;  % check conditions for these values
cond1 = x + y < 80;
cond2 = 2*x + y < 100;
cond3 = y < 40;

fobj = double(fobj);  % convert to double for plotting
cond1 = double(cond1);
cond2 = double(cond2);
cond3 = double(cond3);

fobj(fobj == 0) = NaN;  % set the 0s to NaN so they are not plotted
cond1(cond1 == 0) = NaN;
cond2(cond2 == 0) = NaN;
cond3(cond3 == 0) = NaN;

cond = cond2 .* cond3 .* cond1;  % multiply the two condaces to keep only the common points
surf(x,y,cond)
shading interp; 

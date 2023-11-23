% Define the original polygon
x = [8, 12, 34, 63, 8];
y = [7, 28, 28, 7, 7];

% 1. Plot the original polygon
figure;
plot(x, y, 'bo-', 'LineWidth', 2);
hold on;
title('Original Polygon - t');
xlabel('X-axis');
ylabel('Y-axis');

% 2. Translate by (-20,2)
translation_vector = [-20, 2];
x1 = x + translation_vector(1);
y1 = y + translation_vector(2);

% Plot the translated polygon
figure;
plot(x, y, 'bo-', 'LineWidth', 2);
hold on;
plot(x1, y1, 'ro-', 'LineWidth', 2);
title('Translated Polygon(-20,2) - t1');
xlabel('X-axis');
ylabel('Y-axis');
legend('Original', 'Translated');

% 3. Scale by a factor of 2
scaling_factor = 2;
x2 = x * scaling_factor;
y2 = y * scaling_factor;

% Plot the scaled polygon
figure;
plot(x, y, 'bo-', 'LineWidth', 2);
hold on;
plot(x2, y2, 'go-', 'LineWidth', 2);
title('Scaled Polygon(ScaleFactor: 2) - t2');
xlabel('X-axis');
ylabel('Y-axis');
legend('Original', 'Scaled');

% 4. Scale by (2,1)
scaling_factor_x = 2;
scaling_factor_y = 1;
x3 = x * scaling_factor_x;
y3 = y * scaling_factor_y;

% Plot the scaled polygon
figure;
plot(x, y, 'bo-', 'LineWidth', 2);
hold on;
plot(x3, y3, 'co-', 'LineWidth', 2);
title('Scaled Polygon (Factor: [2, 1]) -t3');
xlabel('X-axis');
ylabel('Y-axis');
legend('Original', 'Scaled');

% 5. Rotate by 30 degrees about the origin
theta = deg2rad(30);
x4 = x * cos(theta) - y * sin(theta);
y4 = x * sin(theta) + y * cos(theta);

% Plot the rotated polygon
figure;
plot(x, y, 'bo-', 'LineWidth', 2);
hold on;
plot(x4, y4, 'mo-', 'LineWidth', 2);
title('Rotated Polygon (30 degrees) -t4');
xlabel('X-axis');
ylabel('Y-axis');
legend('Original', 'Rotated');

% 6. Rotate by 45 degrees about the point (23,7)
rotation_point = [23, 7];
x5 = (x - rotation_point(1)) * cos(deg2rad(45)) - (y - rotation_point(2)) * sin(deg2rad(45)) + rotation_point(1);
y5 = (x - rotation_point(1)) * sin(deg2rad(45)) + (y - rotation_point(2)) * cos(deg2rad(45)) + rotation_point(2);

% Plot the rotated polygon
figure;
plot(x, y, 'bo-', 'LineWidth', 2);
hold on;
plot(x5, y5, 'yo-', 'LineWidth', 2);
title('Rotated Polygon(45 degrees about [23,7]) -t5');
xlabel('X-axis');
ylabel('Y-axis');
legend('Original', 'Rotated');

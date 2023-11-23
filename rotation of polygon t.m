% Original coordinates of polygon t
x_t = [8, 12, 34, 63, 8];
y_t = [7, 28, 28, 7, 7];

% Set up the figure
figure;

% Create a VideoWriter object
videoFile = VideoWriter('rotation_animation.mp4', 'MPEG-4');
open(videoFile);

for angle = 0:5:360
    x_temp = x_t * cosd(angle) - y_t * sind(angle);
    y_temp = x_t * sind(angle) + y_t * cosd(angle);
    
    plot(x_t, y_t, 'b-', 'LineWidth', 1.5);
    hold on;
    plot(x_t, y_t, 'ro', 'MarkerFaceColor', 'r');
    plot(x_temp, y_temp, 'g-', 'LineWidth', 1.5);
    plot(x_temp, y_temp, 'mo', 'MarkerFaceColor', 'm');
    title(['Rotation Animation - Angle: ' num2str(angle) ' degrees']);
    xlabel('X-axis');
    ylabel('Y-axis');
    axis equal;
    grid on;
    
    pause(0.1);

    % Capture the frame and write it to the video file
    frame = getframe(gcf);
    writeVideo(videoFile, frame);
    clf;
end

% Close the video file
close(videoFile);

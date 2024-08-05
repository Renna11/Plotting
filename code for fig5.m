% 读取第一个sheet的数据
data1 = readtable('D:\path\to\your\moran.xlsx', 'Sheet', 'Test Region 1');
X1 = data1{:, 1}; % 第1列为X轴数据
Y1_1 = data1{:, 2}; % 第2列为Y1数据
Y1_2 = data1{:, 3}; % 第3列为Y2数据
Y1_3 = data1{:, 4}; % 第4列为Y3数据

% 读取第二个sheet的数据
data2 = readtable('D:\path\to\your\moran.xlsx', 'Sheet', 'Test Region 2');
X2 = data2{:, 1}; % 第1列为X轴数据
Y2_1 = data2{:, 2}; % 第2列为Y1数据
Y2_2 = data2{:, 3}; % 第3列为Y2数据
Y2_3 = data2{:, 4}; % 第4列为Y3数据

% 创建图形窗口
figure;

% 子图1
subplot(2, 1, 1);
plot(X1, Y1_1, '-o', 'Color', 'g', 'DisplayName', 'Y1'); hold on;
plot(X1, Y1_2, '-x', 'Color', 'm', 'DisplayName', 'Y2');
plot(X1, Y1_3, '-s', 'Color', 'r', 'DisplayName', 'Y3');
title('子图1');
xlabel('X轴');
ylabel('Y轴');
legend('show');
hold off;

% 子图2
subplot(2, 1, 2);
plot(X2, Y2_1, '-o', 'Color', 'g', 'DisplayName', 'Y1'); hold on;
plot(X2, Y2_2, '-x', 'Color', 'm', 'DisplayName', 'Y2');
plot(X2, Y2_3, '-s', 'Color', 'r', 'DisplayName', 'Y3');
title('子图2');
xlabel('X轴');
ylabel('Y轴');
legend('show');
hold off;

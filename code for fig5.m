% ��ȡ��һ��sheet������
data1 = readtable('D:\path\to\your\moran.xlsx', 'Sheet', 'Test Region 1');
X1 = data1{:, 1}; % ��1��ΪX������
Y1_1 = data1{:, 2}; % ��2��ΪY1����
Y1_2 = data1{:, 3}; % ��3��ΪY2����
Y1_3 = data1{:, 4}; % ��4��ΪY3����

% ��ȡ�ڶ���sheet������
data2 = readtable('D:\path\to\your\moran.xlsx', 'Sheet', 'Test Region 2');
X2 = data2{:, 1}; % ��1��ΪX������
Y2_1 = data2{:, 2}; % ��2��ΪY1����
Y2_2 = data2{:, 3}; % ��3��ΪY2����
Y2_3 = data2{:, 4}; % ��4��ΪY3����

% ����ͼ�δ���
figure;

% ��ͼ1
subplot(2, 1, 1);
plot(X1, Y1_1, '-o', 'Color', 'g', 'DisplayName', 'Y1'); hold on;
plot(X1, Y1_2, '-x', 'Color', 'm', 'DisplayName', 'Y2');
plot(X1, Y1_3, '-s', 'Color', 'r', 'DisplayName', 'Y3');
title('��ͼ1');
xlabel('X��');
ylabel('Y��');
legend('show');
hold off;

% ��ͼ2
subplot(2, 1, 2);
plot(X2, Y2_1, '-o', 'Color', 'g', 'DisplayName', 'Y1'); hold on;
plot(X2, Y2_2, '-x', 'Color', 'm', 'DisplayName', 'Y2');
plot(X2, Y2_3, '-s', 'Color', 'r', 'DisplayName', 'Y3');
title('��ͼ2');
xlabel('X��');
ylabel('Y��');
legend('show');
hold off;

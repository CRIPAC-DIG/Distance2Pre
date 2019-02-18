% ==========================================================================
clear;
clc;

% ��������
load data               % 
disp('Loading: data.mat');
lines = {
    'd-', ...
    'x-',  ...
    '<-', 's-', '*-', '^-'};
colors = {
    [0 0 0.5], ...
    [1 0.2 0],  ...
    [0 0 1],    [0 1 1],    [1 0 0],    [0 0.5 1]};
sub = [
    511, 512, 513, 514, 515];

a = 'f55';       % 'taobao'ƴд��ȷ��Ϊ����t3���ݿ⣬��������a1���ݿ�
if strcmp(a, 'f55')
    dataset = f55_test;
    ylims = {       % y�ᶥ��������������Ȼlegend��ѹס�̶�ֵ
    [0, 27]
    [0, 5.3]};
else
    dataset = g55_test;
    ylims = {       % y�ᶥ��������������Ȼlegend��ѹס�̶�ֵ
    [0, 27]
    [0, 5.6]};    
end
    
data = dataset{3};
x = 1:1:34;
for j = [0, 5]      % ǰ5����һ��ͼ����5����һ��ͼ��
    figure();
    set(gca,'FontSize',15);
    for i = [1, 2, 3, 4, 5]
        subplot(sub(i));
        plot(x, data{i+j}, 'LineWidth', 2);   % 'Color',colors{i}, 
        xlabel('Interval')
        ylabel('Probability')
    end
end

% һ���Ի��Ƴ�foursquare��10����������ߺ�
% ����cluster-3/4/9�������ԱȽ�ǿ����������0.2���ҡ�



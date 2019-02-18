% ==========================================================================
clear

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
    121, 122];

a = 'f5';       % 'taobao'ƴд��ȷ��Ϊ����t3���ݿ⣬��������a1���ݿ�
if strcmp(a, 'f55')
    dataset = f55_test;
    ylims = {       % y�ᶥ��������������Ȼlegend��ѹס�̶�ֵ
    [5, 27]
    [1, 5.3]};
else
    dataset = g55_test;
    ylims = {       % y�ᶥ��������������Ȼlegend��ѹס�̶�ֵ
    [5, 28]
    [1, 5.5]};    
end

figure();
set(gca,'FontSize',15);
x = [1, 2, 3, 4];
set(gca, 'XTick', x);   % ָ��x��̶ȱ�ʶ
    
for num = [1, 2]
    name = data_evaluation{num};    % ����ָ��
    data = dataset{num};

    subplot(sub(num));
    bar(data, 0.8)
    % bar(data,style, color, width)
    
    xlabel('top-\itk');     % k��б���ʾ��
    labels = data_at_nums;  % �������{'a', 'b'}������['a', 'b']
    set(gca, 'XTickLabel', labels);   % ָ��x����ʾ��ʶ  
    xlim([0.4 4.6])
    ylabel(name)
    ylim(ylims{num})
end

%hl = legend(data_method);       % ���ַ�����
%set(hl, 'Location', 'NorthOutside', 'Orientation', 'horizontal','Box', 'off');






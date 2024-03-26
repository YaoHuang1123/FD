clc
clear
close all

start_path = ''; 
path = uigetdir(start_path, '请选择 ROI_data 文件夹');
folder = fullfile(path);
files = dir(fullfile(folder, 'roi_*.nii'));

% 弹窗输入盒子尺寸
prompt = {'请输入盒子尺寸:'};
dlgtitle = '输入盒子尺寸';
answer = inputdlg(prompt, dlgtitle);
scales = str2num(answer{1}); 

[num_patients] = Batch_Fractal_Dimension(path, folder, files, scales);

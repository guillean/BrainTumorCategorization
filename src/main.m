% Main File

% clean workspace
clear all; close all; clc 

% Add all directories and subdirectories to the current path.
addpath(genpath('.'));


load out_struct

%%
%p_doctor = readMHA('data/brats_2013_pat0001_1/VSD.Brain_3more.XX.O.OT.54517');
%out_struct = read_data('data/brats_2013_pat0001_1/');
%
%disp('Done with convolution');
%
%save('out_struct.mat', 'out_struct', '-v7.3');

%%
s = 50:200;

clas = process_data(out_struct{3});

disp('Done with kmeans');

%%
disp(out_struct{4})

clas = reshape(clas, out_struct{4});

% imtool3D([clas, p_doctor(s,s,:)]);

save('classes.mat', 'clas', '-v7.3');

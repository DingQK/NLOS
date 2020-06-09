%% Run this demo script to step through the included reconstruction procedures

addpath('./util');

% First, run FBP, LCT, and f-k migration reconstructions for one of the
% captured datasets

% Optionally replace the below filenames with files from other scenes:
% bike, discoball, dragon, outdoor, resolution, statue, teaser
scene = 'serapis';
nlos = loaddata(scene);
% load('~/Developer/cvpr2019_nlos/debugger/bunny/bunny.mat');
% load('~/Developer/cvpr2019_nlos/debugger/bunny/bunny_depth.mat','bunny_depth','bunny_mask');

% resize to low resolution to reduce memory requirements
measlr = imresize3(nlos.Data,[256,256,512]);  % 256£¬256£¬512
tofgridlr = [];
wall_size = nlos.CameraGridSize;

M = size(measlr,3);
% c = 3e8;
% bin_resolution = 16e-12;
% range = M.*c.*bin_resolution;
range = nlos.DeltaT*M;
lambda = 4;

% run FBP
fprintf('\nRunning FBP\n');
range = nlos.DeltaT*M;
algorithm = 0;
fbp = cnlos_reconstruction(measlr, tofgridlr, wall_size, range, algorithm);  % range lambda 

% run LCT
fprintf('\nRunning LCT\n');
range = nlos.DeltaT*M;
algorithm = 1;
lct = cnlos_reconstruction(measlr, tofgridlr, wall_size, range, algorithm);  % range lambda 

% run f-k migration
fprintf('\nRunning f-k migration\n');
range = nlos.DeltaT*M;
algorithm = 2;
fk = cnlos_reconstruction(measlr, tofgridlr, wall_size, range, algorithm);

% run phasor fields
fprintf('\nRunning phasor fields\n');
range = nlos.DeltaT*M;
algorithm = 3;
phasorfields = cnlos_reconstruction(measlr, tofgridlr, wall_size, range, algorithm);  % range lambda 

%vis(fliplr(flipud(max(lct,[],3)'))); 
%colormap(gray);
%a = caxis;
%caxis([-a(2),+a(2)]);
% pdfprint('temp.pdf','Width',8.5,'Height',8.5,'Position',[0,0,8.5,8.5]);
function initial_net()
% INITIAL_NET: Loading VGG-Net-19

global net;
net = load(fullfile('/media/cjh/cvpaper/git/models', 'imagenet-vgg-verydeep-19.mat'));
% Remove the fully connected layers and classification layer
net.layers(37+1:end) = [];

% Switch to GPU mode
global enableGPU;
if enableGPU
    net = vl_simplenn_move(net, 'gpu');
end

end
require 'nn'
local model = {}
table.insert(model, {'conv1_1', nn.SpatialConvolution(3, 64, 3, 3, 1, 1, 1, 1)})
table.insert(model, {'relu1_1', nn.ReLU(true)})
table.insert(model, {'conv1_2', nn.SpatialConvolution(64, 64, 3, 3, 1, 1, 1, 1)})
table.insert(model, {'relu1_2', nn.ReLU(true)})
table.insert(model, {'pool1', nn.SpatialMaxPooling(2, 2, 2, 2, 0, 0):ceil()})
table.insert(model, {'conv2_1', nn.SpatialConvolution(64, 128, 3, 3, 1, 1, 1, 1)})
table.insert(model, {'relu2_1', nn.ReLU(true)})
table.insert(model, {'conv2_2', nn.SpatialConvolution(128, 128, 3, 3, 1, 1, 1, 1)})
table.insert(model, {'relu2_2', nn.ReLU(true)})
table.insert(model, {'pool2', nn.SpatialMaxPooling(2, 2, 2, 2, 0, 0):ceil()})
table.insert(model, {'conv3_1', nn.SpatialConvolution(128, 256, 3, 3, 1, 1, 1, 1)})
table.insert(model, {'relu3_1', nn.ReLU(true)})
table.insert(model, {'conv3_2', nn.SpatialConvolution(256, 256, 3, 3, 1, 1, 1, 1)})
table.insert(model, {'relu3_2', nn.ReLU(true)})
table.insert(model, {'conv3_3', nn.SpatialConvolution(256, 256, 3, 3, 1, 1, 1, 1)})
table.insert(model, {'relu3_3', nn.ReLU(true)})
table.insert(model, {'conv3_4', nn.SpatialConvolution(256, 256, 3, 3, 1, 1, 1, 1)})
table.insert(model, {'relu3_4', nn.ReLU(true)})
table.insert(model, {'pool3', nn.SpatialMaxPooling(2, 2, 2, 2, 0, 0):ceil()})
table.insert(model, {'conv4_1', nn.SpatialConvolution(256, 512, 3, 3, 1, 1, 1, 1)})
table.insert(model, {'relu4_1', nn.ReLU(true)})
table.insert(model, {'conv4_2', nn.SpatialConvolution(512, 512, 3, 3, 1, 1, 1, 1)})
table.insert(model, {'relu4_2', nn.ReLU(true)})
table.insert(model, {'conv4_3', nn.SpatialConvolution(512, 512, 3, 3, 1, 1, 1, 1)})
table.insert(model, {'relu4_3', nn.ReLU(true)})
table.insert(model, {'conv4_4', nn.SpatialConvolution(512, 512, 3, 3, 1, 1, 1, 1)})
table.insert(model, {'relu4_4', nn.ReLU(true)})
table.insert(model, {'pool4', nn.SpatialMaxPooling(2, 2, 2, 2, 0, 0):ceil()})
table.insert(model, {'conv5_1', nn.SpatialConvolution(512, 512, 3, 3, 1, 1, 1, 1)})
table.insert(model, {'relu5_1', nn.ReLU(true)})
table.insert(model, {'conv5_2', nn.SpatialConvolution(512, 512, 3, 3, 1, 1, 1, 1)})
table.insert(model, {'relu5_2', nn.ReLU(true)})
table.insert(model, {'conv5_3', nn.SpatialConvolution(512, 512, 3, 3, 1, 1, 1, 1)})
table.insert(model, {'relu5_3', nn.ReLU(true)})
table.insert(model, {'conv5_4', nn.SpatialConvolution(512, 512, 3, 3, 1, 1, 1, 1)})
table.insert(model, {'relu5_4', nn.ReLU(true)})
table.insert(model, {'pool5', nn.SpatialMaxPooling(2, 2, 2, 2, 0, 0):ceil()})
table.insert(model, {'torch_view', nn.View(-1):setNumInputDims(3)})
table.insert(model, {'fc6', nn.Linear(25088, 4096)})
table.insert(model, {'relu6', nn.ReLU(true)})
table.insert(model, {'drop6', nn.Dropout(0.500000)})
table.insert(model, {'fc7', nn.Linear(4096, 4096)})
table.insert(model, {'relu7', nn.ReLU(true)})
table.insert(model, {'drop7', nn.Dropout(0.500000)})
table.insert(model, {'fc8', nn.Linear(4096, 1000)})
table.insert(model, {'prob', nn.SoftMax()})
return model
# resnet

ResNet-18 and ResNet-50 model from "Deep Residual Learning for Image Recognition" <https://arxiv.org/pdf/1512.03385.pdf>

For the Pytorch implementation, you can refer to [pytorchx/resnet](https://github.com/wang-xinyu/pytorchx/tree/master/resnet)

Following tricks are used in this resnet, nothing special, residual connection and batchnorm are used.

- Batchnorm layer, implemented with scale layer.

## TensorRT C++ API

```
// 1. generate resnet18.wts or resnet50.wts from [pytorchx/resnet](https://github.com/wang-xinyu/pytorchx/tree/master/resnet)

// 2. put resnet18.wts or resnet50.wts into tensorrtx/resnet

// 3. build and run

cd tensorrtx/resnet

mkdir build

cd build

cmake ..

make

sudo ./resnet18 -s   // serialize model to plan file i.e. 'resnet18.engine'
sudo ./resnet18 -d   // deserialize plan file and run inference

or

sudo ./resnet50 -s   // serialize model to plan file i.e. 'resnet50.engine'
sudo ./resnet50 -d   // deserialize plan file and run inference


// 4. see if the output is same as pytorchx/resnet
```

### TensorRT Python API

```
# 1. generate resnet50.wts from [pytorchx/resnet](https://github.com/wang-xinyu/pytorchx/tree/master/resnet)

# 2. put resnet50.wts into tensorrtx/resnet

# 3. install Python dependencies (tensorrt/pycuda/numpy)

cd tensorrtx/resnet

python resnet50.py -s   // serialize model to plan file i.e. 'resnet50.engine'
python resnet50.py -d   // deserialize plan file and run inference

# 4. see if the output is same as pytorchx/resnet
```

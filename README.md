# WaRP (Waste Recycling Plant Dataset)

The dataset WaRP (Waste Recycling Plant) includes labeled images of an industrial waste sorting plant. We have selected 28 recyclable waste
categories. Objects in the dataset are divided into the following groups: plastic bottles of 17 categories (class name with the bottle- prefix),
glass bottles of three types (the glass- prefix), card boards of two categories, detergents of four categories, canisters and cans. The -full postfix means that the bottle is filled with air, i.e. not flat.

Examples of instances of each category of the WaRP Dataset are presented in the figure below. 

![Dataset classes](/assets/WaRP-Categories.png)

 
A crucial difference from other datasets is that objects can
overlap, be heavily deformed, or be in poor lighting conditions.
The dataset has three parts: WaRP-D, WaRP-C, and WaRP-S

The first two parts are intended for training and objective quality assessment
of detection (WaRP-D) and classification (WaRP-C) tasks, and the third WaRP-
S is for validation of weakly supervised segmentation method

![Dataset parts](/assets/WaRP-Dataset.png)
 
 # Structure
 
 
 ```
 .
└── Warp-Dataset
    ├── Warp-C
    │   ├── test_crops
    │   │      ├── bottle
    │   │            ├── bottle-blue
    │   │            ├── bottle-blue5l
    │   │            ├── ...
    │   │      ├── canister
    │   │      ├── cans
    │   │      ├── cardboard
    │   │      └── detergent
    │   └── train_crops
    │         ├── bottle
    │         ├── ...
    │
    ├── Warp-D
    │   ├── classes.txt
    │   ├── test
    │   │   ├── images
    │   │   └── labels
    │   └── train
    │       ├── images
    │       └── labels
    │ 
    └── Warp-S
        ├── labelmap.txt
        ├── JPEGImages_class_in_dir
            ├── bottle-blue-full
            ├── ...
        ├── SegmentationObject_class_in_dir
            ├── bottle-blue-full
            ├── ...
```
# Warp-D Detection
The key dataset part WaRP-D contains 2452 images in the training sample
and 522 images in the validation sample. The images have full HD resolution
of 1920 × 1080 pixels.
Each image has ```.txt``` annotation with bboxes.

# Warp-C Classification
WaRP-C is cut-out image areas from the WaRP-D set with class labels.
This part includes 8823 images for training and 1583 for testing. The images
range in size from 40 to 703 pixels wide and 35 to 668 pixels high. The dataset is
unbalanced because iof the real conditions of an industrial enterprise. The rarest
class is the bottle-oil-full (air-filled plastic sunflower oil bottles) category, which
includes only 32 crops. The most common category is bottle-transp (transparent
bottles), with 1667 clipped images.

# Warp-S Segmentation
WaRP-S contains a total of 112 images ranging in size from 100 × 96 pixels
to 412 × 510 pixels, each category has 4 images with significantly deformed
recyclable objects.

While the folder "JPEGImages_class_in_dir" is equal to the folder "JPEGImages", the folder "JPEGImages_class_in_dir" implies that each class has its own folder. The folder "SegmentationObject_class_in_dir" is equal to the folder "SegmentationObject", but the folder "SegmentationObject_class_in_dir" implies that each class has its own folder.

The folders "ImageSets/Segmentation", "SegmentationClass", and file "labelmap.txt" were created using automatic data set assembly in CVAT.

# Citing WaRP dataset

Please consider citing the following paper in any research manuscript using the WaRP dataset:

```
@article{yudin4183424hierarchical,
  title={Hierarchical waste detection with weakly supervised segmentation in images from recycling plants},
  author={Yudin, Dmitry and Zakharenko, Nikita and Smetanin, Artem and Filonov, Roman and Kichik, Margarita and Kuznetsov, Vladislav and Larichev, Dmitry and Gudov, Evgeny and Budennyy, Semen and Panov, Aleksandr},
  journal={Available at SSRN 4183424}
}
```

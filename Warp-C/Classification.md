# Usage

```train_crops/``` and  ```test_crops/``` dirs have same structure, 5 class main class folders which include subdirs for all 28 categories.

```python
import torchvision

5cls_dataset = torchvision.datasets.ImageFolder('~/Warp-Dataset/Warp-C/train_crops')

```

And you can easily make dataset for 28 categories classification by using ```move.sh``` script. It will make new dirs: ```all_train``` and ```all_test```
each which will contains 28 folders fer every class.

```bash
bash move.sh
```

Use ImageFolder again

```python
import torchvision

28cls_dataset = torchvision.datasets.ImageFolder('~/Warp-Dataset/Warp-C/all_train')

```



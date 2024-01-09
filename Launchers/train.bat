@echo off
call "C:\Users\PC KAIJU\miniconda3\condabin\activate.bat"
call conda deactivate
call conda activate tracking

cd C:\ConceivableProjects\coc_follicular_h\ARDUCAM\v1_1i\Code 
python train.py --batch 40 --epochs 250 --hyp "..\Config\hyp.basic.yaml" --optimizer SGD --device cuda:0 --cfg "..\Config\yolov5l_classes_config.yaml" --data "..\Config\data_location.yaml" --imgsz 640 --weights "..\Weights\pre.pt" --cache


# python train.py --data /home/ec2-user/SageMaker/data/retail_product_checkout/cfg/rpc.yaml --cfg yolov5x6.yaml --weights yolov5x6.pt --batch-size 2 --img 1280 --epochs 10

# python train.py --data /home/ec2-user/SageMaker/data/retail_product_checkout/cfg/rpc.yaml --cfg yolov5s.yaml --weights yolov5s.pt --batch-size 64 --img 640 --epochs 100

python detect.py --source /home/ec2-user/SageMaker/data/retail_product_checkout/images/test2019/ --weights runs/train/exp2/weights/best.pt --img 640 --conf-thres 0.5 --iou-thres 0.45 --save-txt --name exp


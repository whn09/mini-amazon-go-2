# source activate pytorch_latest_p36
# pip install -U torch torch-model-archiver torchserve torchvision
# FLASK_ENV=development FLASK_APP=inference.py flask run

import requests

resp = requests.post("http://localhost:5000/predict",
                     files={"file": open('/home/ec2-user/SageMaker/data/rp2k/all/val/可口可乐罐装/0514_10648_0.8428613.jpg','rb')})

print(resp)
print(resp.text)
num_processes=8  # the number of gpus you have, e.g., 2
train_script=train.py
config=configs/imagenet64_uvit_large.py
                                       
accelerate launch --multi_gpu --num_processes $num_processes --mixed_precision fp16 $train_script --config=$config
# Reference: https://github.com/wagonhelm/TF_ObjectDetection_API

# Clone tensorflow/model repo into colab root dir, /content:
!git clone --quiet https://github.com/tensorflow/models.git
!apt-get install -qq protobuf-compiler python-tk
!pip install -q Cython contextlib2 pillow lxml matplotlib PyDrive
!pip install -q pycocotools

# Config protoc, slim and builder script:
%cd /content/models/research
!protoc object_detection/protos/*.proto --python_out=.
import os
os.environ['PYTHONPATH'] += ':/content/models/research/:/content/models/research/slim/'
!python object_detection/builders/model_builder_test.py

# Import modules (TF_ObjectDetection_API):
import numpy as np
import os
import six.moves.urllib as urllib
import sys
import tarfile
import tensorflow as tf
import zipfile
import math
import time
from collections import defaultdict
from io import StringIO
from matplotlib import pyplot as plt
from PIL import Image

import skimage
import numpy as np
from skimage import io, transform
import shutil
import glob
import pandas as pd
import xml.etree.ElementTree as ET
import urllib.request
import urllib.error

# This is needed since the notebook is stored in the object_detection folder.
sys.path.append('..')
from object_detection.utils import ops as utils_ops

# Upgrade GTF
!pip install tensorflow --upgrade

# This is needed to display the images.
%matplotlib inline

# Here are the imports from the object detection module.
from object_detection.utils import label_map_util
from object_detection.utils import visualization_utils as vis_util

# Set paths
PATH_TO_API = '/content/models/research/object_detection'
PATH_TO_UTILS = '/content/models/research/object_detection/utils'
PATH_TO_REPO = '/content/models/research/object_detection/TF_ObjectDetection_API'
PATH_TO_DATA = '/content/models/research/object_detection/TF_ObjectDetection_API/data'
PATH_TO_LABELS = '/content/models/research/object_detection/TF_ObjectDetection_API/labels'

!echo 'git clone TF_ObjectDetection_API'
!echo '===> cd $PATH_TO_API'
%cd $PATH_TO_API
!rm -rf ./TF_ObjectDetection_API
!git clone https://github.com/walteryu/TF_ObjectDetection_API.git
!echo ''
!echo '===> cd $PATH_TO_REPO'
%cd $PATH_TO_REPO
!echo ''
!echo '===> ls $PATH_TO_REPO'
!ls -al $PATH_TO_REPO
!echo ''

# >>>>> START HERE >>>>>

# Update repo and start training here...

# >>>>> END HERE >>>>>

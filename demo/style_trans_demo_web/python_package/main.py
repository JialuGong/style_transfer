import cv2
import os
import sys
import torch

import pandas as pd
import numpy as np

from libs.Matrix import MulLayer
from libs.models import encoder4
from libs.models import decoder4
from torch import nn


class LinearStyleTransfer(nn.Module):

    def __init__(self, root):

        super(LinearStyleTransfer, self).__init__()

        self.vgg = encoder4()
        self.dec = decoder4()
        self.matrix = MulLayer("r41")
        
        self.vgg.load_state_dict(torch.load(
            root + "python_package/models/vgg_r41.pth", map_location="cpu"))
        self.dec.load_state_dict(torch.load(
            root + "python_package/models/dec_r41.pth", map_location="cpu"))
        self.matrix.load_state_dict(torch.load(
            root + "python_package/models/r41.pth", map_location="cpu"))

    def forward(self, contentV, styleV):

        sF = self.vgg(styleV)
        cF = self.vgg(contentV)
        feature, transmatrix = self.matrix(cF["r41"], sF["r41"])
        transfer = self.dec(feature)
        transfer = transfer.clamp(0, 1)

        return transfer


def prepare_image(path):

    image = cv2.imread(path)
    image = cv2.resize(image, (256, 256))
    image = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)
    image = image.transpose((2, 0, 1))
    image = image / 255.0

    tensor = torch.from_numpy(np.array([image])).float()

    return tensor


def transfer_image(content_path, style_path, save_path, root):

    contentV = prepare_image(content_path)

    styleV = prepare_image(style_path)

    model = LinearStyleTransfer(root)
    model.eval()

    print("load model successfully")

    with torch.no_grad():
        transfer = model(contentV, styleV)

    transfer = transfer.numpy()
    transfer = np.squeeze(transfer)
    transfer = transfer.transpose((1, 2, 0))
    transfer = cv2.cvtColor(transfer, cv2.COLOR_RGB2BGR)
    transfer = transfer * 255.0

    return cv2.imwrite(save_path, transfer)


if __name__ == "__main__":
    transfer_image(sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4])


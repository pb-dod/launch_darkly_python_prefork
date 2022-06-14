import os

import ldclient
from ldclient.config import Config as LDConfig

LD_SDK_KEY = os.environ.get('LD_SDK_KEY')
ldclient.set_config(LDConfig(LD_SDK_KEY))
client = ldclient.get()

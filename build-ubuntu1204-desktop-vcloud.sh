#!/bin/bash
if [ ! -d box/vcloud ]; then
  mkdir -p box/vcloud
fi
packer build --only=vmware-iso ubuntu1204-desktop-vcloud.json  | addtime

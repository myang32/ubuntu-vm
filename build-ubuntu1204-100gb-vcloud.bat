if not exist box\vcloud mkdir box\vcloud
packer build --only=vmware-iso ubuntu1204-100gb-vcloud.json  | addtime

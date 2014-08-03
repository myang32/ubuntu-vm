if not exist box\vmware mkdir box\vmware
packer build --only=vmware-iso ubuntu1404.json  | addtime

if exist box\vmware\ubuntu1404-nocm.box (
  call vagrant box remove ubuntu1404 --provider=vmware_workstation
  call vagrant box add ubuntu1404 box\vmware\ubuntu1404-nocm.box 
)
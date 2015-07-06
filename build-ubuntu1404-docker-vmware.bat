if not exist box\vmware mkdir box\vmware
packer build --only=vmware-iso ubuntu1404-docker.json  | addtime

if exist ubuntu1404-docker_vmware.box (
  call vagrant box remove ubuntu1404-docker --provider=vmware_workstation
  call vagrant box add ubuntu1404-docker ubuntu1404-docker_vmware.box 
)
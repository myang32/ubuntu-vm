if not exist box\virtualbox mkdir box\virtualbox
packer build --only=virtualbox-iso ubuntu1404-docker.json  | addtime

if exist ubuntu1404-docker_virtualbox.box (
  call vagrant box remove ubuntu1404-docker --provider=virtualbox
  call vagrant box add ubuntu1404-docker ubuntu1404-docker_virtualbox.box 
)
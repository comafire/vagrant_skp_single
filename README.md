# vagrant-skp-single

SKP를 배포 테스트를 위한 Single Vagrant Repository

참조: Vritualbox 및 Vagrant 소개 및 설치 

https://comafire.github.io/dataplatform/vagrant_virtualbox.html#

SKP를 위한 기본 계정 생성 및 SSH Authorized Key 등록을 위한 설정
 
ssh key 생성

```bash
> ssh-keygen -t rsa
Enter file in which to save the key (/home/comafire/.ssh/id_rsa): skp@ubuntu
...
```

useradd.sh 에서 사용자 계정 및 공개키 파일 설정

```bash
USERNAME="skp"
PUBKEY="skp@ubuntu.pub"

...
```

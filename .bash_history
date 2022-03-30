vi /etc/hosts
cat /etc/hosts
vi /etc/hosts
cat /etc/hostname 
swapoff -a
vi /etc/fstab
cat /etc/fstab
setenforce 0
sed -i --follow-symlinks 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/sysconfig/selinux
yum update -y ; reboot 
ssh root@192.168.0.187
curl -k -H "Content-Type: application/json" -X PUT --data-binary \
top
free
free -m
reboot
ls
kubectl get ns
kubectl get namespaces
kubectl get namespaces -o wide
kubectl describe namespace default 
docker images
ls
cd 04.services/
ls
cat simple-service.yaml m
cd ..
ls
cd 05.ns/
ls
vim namespace-dev.json
cat namespace-dev.json 
kubectl apply -f namespace-dev.json 
vim namespace-dev.json
kubectl apply -f namespace-dev.json 
vim namespace-dev.json
kubectl apply -f namespace-dev.json 
cat namespace-dev.json 
kubectl get namespaces
kubectl get ns
vim namespace-prod.yaml
kubectl apply -f namespace-prod.yaml 
kubectl get ns
cat namespace-prod.yaml 
cat namespace-dev.json 
kubectl get namespaces --show-labels
kubectl config view
kubectl config current-context
#kubectl config set-context dev --namespace=development --cluster=
kubectl config current-context
kubectl config view
kubectl config set-context dev --namespace=development --cluster=kubernetes --user=kubernetes-admin
kubectl config view
kubectl config set-context prod --namespace=production --cluster=kubernetes --user=kubernetes-admin
kubectl config view
kubectl config use-context dev
kubectl config current-context
kubectl config use-context prod
kubectl config current-context
kubectl run snowflake --image=kubernetes/serve_hostname --replicas=2
kubectl run --help
kubectl run --help \ grep replica
kubectl run cattle --image=kubernetes/serve_hostname --replicas=2
kubectl run snowflake --image=kubernetes/serve_hostname --replicas=3
kubectl run snowflake --image=kubernetes/serve_hostname --replicas=3 --generator=run/v1
kubectl run snowflake --image=kubernetes/serve_hostname  --generator=run/v1
vim sample-service.yaml
kubectl apply -f sample-service.yaml 
kubectl get svc
kubectl get svc -o wide
kubectl config current-context
kubectl get ns prod
kubectl get 
kubectl get ns prod -o wide
kubectl describe svc my-service
kubectl config current-context
kubectl apply -f sample-service.yaml --help
kubectl apply -f sample-service.yaml -n=dev 
kubectl apply -f sample-service.yaml -n=development 
kubectl describe svc my-service
kubectl config use-context dev
kubectl describe svc my-service
history
kubectl get ns
kubectl get ns -o wide
ls
vim depl-svc.yaml
kubectl config current-context
kubectl delete svc my-sevice
kubectl delete svc my-service
kubectl get svc
kubectl apply -f depl-svc.yaml 
kubectl get {deployments,svc}
kubectl get {deployment,svc}
kubectl get deployment
kubectl get deployment -o wide
kubectl get rs
kubectl get rs -o wide
kubectl describe deployment nginx-deployment-f7ccf9478
kubectl describe deployment nginx-deployment
kubectl get svc
kubectl describe my-service
kubectl describe svc my-service
curl 10.103.176.185:8080
curl http://10.103.176.185:8080
cat depl-svc.yaml 
kubectl delete deployment nginx-deployment
vim depl-svc.yaml 
kubectl apply -f depl-svc.yaml 
kubectl get deployments
cat depl-svc.yaml 
kubectl get deployments
kubectl delete deployment nginx-deployment
vim depl-svc.yaml 
kubectl apply -f depl-svc.yaml 
kubectl get deployments
kubectl delete deployment nginx-deployment
vim depl-svc.yaml 
kubectl apply -f depl-svc.yaml 
kubectl get deployments
kubectl describe deployment nginx-deployment
kubectl get deployments
kubectl get deployment
kubectl get deployment -n=all
kubectl get endpoints my-service
kubectl get ns
kubectl config use-context default
cat depl-svc.yaml 
cd ..
kubectl get ns
kubectl delete ns development
kubectl delete ns production
kubectl config view
kubectl config current-context
kubectl get deployments
kubectl get pods
kubectl get svc
kubectl config use-context default
kubectl config view
kubectl delete ns --help
kubectl proxy
kubectl config view
kubectl get namespaces --show-labels
kubectl get deployments -n=default
kubectl delete deployments -n=default
kubectl delete deployment multy-deployment -n=default
kubectl delete deployment nginx-deployment-svc -n=default
kubectl delete deployment nginx-single-deployment -n=default
kubectl get deployments -n=default
kubectl get pods -n=default
kubectl delete pods --all -n=default
kubectl get pods -n=default
kubectl get pods -n=dev
kubectl get pods -n=prod
kubectl get deployments -n=prod
kubectl get deployments -n=dev
kubectl get deployments -n=default
kubectl get svc -n=default
kubectl get svc -n=dev
kubectl get svc -n=prod
ls
ls ns
ls 05.ns/
cd 05.ns/
kubectl apply -f depl-svc.yaml 
kubectl config current-context
kubectl config view
kubectl apply -f depl-svc.yaml 
kubectl apply -f depl-svc.yaml -n=development
cat depl-svc.yaml 
history
kubectl config use-context dev
kubectl apply -f depl-svc.yaml -n=dev
kubectl apply -f depl-svc.yaml -n=development
kubectl apply -f depl-svc.yaml 
#kubectl config set-context dev --namespace=development --cluster=lithe-cocoa-92103_kubernetes --user=kubernetes
kubectl config view
#kubectl config set-context dev --namespace=development --cluster=kubernetes --user=kubernetes-admin
kubectl config set-context dev --namespace=development --cluster=kubernetes --user=kubernetes-admin
kubectl config view
kubectl apply -f depl-svc.yaml 
kubectl get ns
ls
kubectl create -f {namespace-dev.json,namespace-prod.yaml} 
kubectl create -f namespace-dev.json
kubectl create -f namespace-prod.yaml 
kubectl apply -f depl-svc.yaml 
kubectl get deployments
kubectl describe deployment nginx-deployment
kubectl get deployments
kubectl delete deployment nginx-deployment
vim depl-svc.yaml 
kubectl  svc 
kubectl get svc 
kubectl delete svc my-service 
kubectl apply -f depl-svc.yaml 
kubectl get pods
kubectl describe pod apache-deployment-7ff86d7cdb-59vs6
kubectl get pods
#kubectl taint nodes   node-role.kubernetes.io/master-
kubectl get deployments
kubectl taint nodes apache-deployment  node-role.kubernetes.io/master-
kubectl taint nodes apache-deployment-7ff86d7cdb-59vs6  node-role.kubernetes.io/master-
systemctl restart docker
kubectl get deployments
kubectl get nodes
kubectl taint nodes  k8s-m-186.ziyo.local node-role.kubernetes.io/master-
kubectl get nodes
kubectl get pods
kubectl get ns
kubectl get nodes
kubectl get pods
kubectl get deployments
kubectl get svc
curl 10.101.123.70:8081
history
kubectl config use-context prod
kubectl get svc
curl 10.101.123.70:8081
kubectl config use-context dev
kubectl get svc
curl 10.103.177.199:8080
kubectl config use-context prod
kubectl get svc
curl 10.101.123.70:8081
kubectl get deployments
kubectl get pods
ls
mkdir templates
cd templates/
kubectl get svc
curl 10.101.123.70
curl 10.101.123.70 -I
curl 10.101.123.70:8081 -I
kubectl get ep -o wide 
curl 10.244.0.29:81
#kubectl delete deployment 
kubectl get deployments 
kubectl get svc
kubectl delete deployment nginx-deployment
kubectl delete svc my-service-nginx
cd ../05.ns/
ls
vim depl-svc-nginx.yaml 
kubectl apply -f depl-svc-nginx.yaml 
kubectl get deployments 
kubectl get svc
kubectl get deployments 
curl 10.100.44.183:8081
kubectl get pods
kubectl describe pod nginx-deployment-9fbb7d78-dn7nl
ss --help
kubectl config current
kubectl config -h
kubectl config current-context
ls
cd ..
ls
cd templates/
hostname -I
pwd
'/home/khurshid/Downloads/Earth Free Website Template - Free-CSS.com.zip'
scp khurshid@192.168.0.29:/home/khurshid/Downloads/Earth Free Website Template - Free-CSS.com.zip .
ls
yum makecache
yum install unzip
ls
unzip Earth\ Free\ Website\ Template\ -\ Free-CSS.com.zip Earth\ Free\ Website\ Template
mkdir Earth_Free_Website_Template
mkdir film-template
mkdir Marvel_Free_Website_Template
unzip Earth\ Free\ Website\ Template\ -\ Free-CSS.com.zip Earth_Free_Website_Template/
unzip Earth\ Free\ Website\ Template\ -\ Free-CSS.com.zip 
ls
mv 2113_earth/ Earth_Free_Website_Template/
ls
unzip film-template.zip 
ls
mv __MACOSX/ film-template
ls
unzip Marvel\ Free\ Website\ Template\ -\ Free-CSS.com.zip 
ls
mv 2115_marvel/ Marvel_Free_Website_Template/
ls
cd Marvel_Free_Website_Template/
ls
cd 2115_marvel/
ls
cd
ls
mkdir images
cd images/
vim Dockerfile_http_cust
vim Dockerfile_nginx_cust
ls
cp Dockerfile_http_cust Dockerfile_nginx_cust 
vim Dockerfile_nginx_cust 
ls
ls /root/templates/
ls /root/templates/Earth_Free_Website_Template/
ls /root/templates/Earth_Free_Website_Template/2113_earth/
vim Dockerfile_http_cust 
vim Dockerfile_nginx_cust 
ls /root/templates/Marvel_Free_Website_Template/2115_marvel/
vim Dockerfile_nginx_cust 
history
kubectl config current-context
history
kubectl config use-context prod
kubectl config current-context
kubectl config use-context dev
kubectl config current-context
kubectl get deployments
kubectl get deployments -n=dev
kubectl get deployments -n=development
kubectl get pods -n=development
kubectl get pods 
kubectl get pods -o wide
cd ..
df -h /boot
ls
ls images/
cat images/Dockerfile_http_cust 
kubectl config current-context
kubectl get deployments
kubectl get pods
kubectl get svc
curl 10.100.44.183:8081
kubectl config current-context
kubectl get ns
kubectl get pods -n=default
kubectl get pods -n=development
kubectl get pods -n=production
kubectl get pods 
kubectl get deployments
kubectl get svc
kubectl get svc -n=production
curl 10.100.44.183:8081
kubectl get svc -n=production
kubectl get svc 
curl 10.103.177.199:8080
kubectl exec -itd --help
kubectl exec --help
#kubectl exec mypod -i -t -- ls -t /usr
kubectl get pods
kubectl exec apache-deployment-7ff86d7cdb-7zmtw -i -t -- cat -t /var/www/html/index.html
kubectl exec apache-deployment-7ff86d7cdb-7zmtw -i -t -- ls -t /var/www/html/
kubectl get svc
kubectl get svc -n=development
kubectl get svc -n=production
ls
ls 05.ns/
cd 05.ns/
ls
cat namespace-dev.json 
cat namespace-prod.yaml 
history
#kubectl config current-context
#kubectl config use-context prod
#kubectl config view
ls
cat depl-svc-httpd.yaml 
cat depl-svc-nginx.yaml 
#kubectl apply -f depl-svc-httpd.yaml 
cd
cd -
ls
vim depl-svc-httpd.yaml 
vim depl-svc-nginx.yaml 
vim depl-svc-httpd.yaml 
kubectl get deployments
kubectl get svc
kubectl apply -f depl-svc-nginx.yaml 
kubectl get deployments
kubectl get svc
kubectl get deployments
curl 10.103.158.196:8070
kubectl get pods
kubectl get deployments
kubectl delete deployment apache-deployment
kubectl get svc
kubectl get deployments
curl 10.103.158.196:8070
kubectl get svc
kubectl delete svc my-service-apache
kubectl get svc
curl 10.103.158.196:8070
systemctl restart {docker,kubelet}
curl 10.103.158.196:8070
kubectl get pods
kubectl describe pod nginx-deployment70-84f47fb899-2mdw2
kubectl get svc
curl 10.100.44.183:8081
ls
cd ..
ls
ls 04.services/
cat 04.services/k8s-service-exer.txt 
#kubectl expose deployment/kubernetes-bootcamp --type="NodePort" --port 8080
kubectl get deployments
kubectl get svc
kubectl expose deployment/nginx-deployment --type="NodePort" --port 8081
kubectl get svc
curl 10.104.162.108:8081
curl 10.104.162.108:32465
curl 10.104.162.108:8081
curl 10.104.162.108:32465
kubectl get svc
kubectl get deployments
#kubectl expose deployment hello-world --type=LoadBalancer --name=my-service
kubectl get svc
#kubectl expose deployment hello-world --type=LoadBalancer --name=my-service
kubectl get deployments
kubectl expose deployment nginx-deployment --type=LoadBalancer --name=my-service-nginx
kubectl delete svc nginx-deployment
kubectl get svc
kubectl expose deployment nginx-deployment --type=LoadBalancer --name=my-service-nginx
kubectl expose deployment nginx-deployment --type=LoadBalancer --name=my-service
kubectl get svc
kubectl delete svc nginx-deployment
kubectl get svc
kubectl delete svc my-service
kubectl delete svc my-service-nginx
kubectl expose deployment nginx-deployment --type=LoadBalancer --name=my-service-nginx
kubectl get svc
kubectl delete svc my-service-nginx
ls
cd 05.ns/
ls
vim depl-svc-httpd.yaml 
vim depl-svc-nginx.yaml 
cd
ls
cd templates/
ls
cd Earth_Free_Website_Template/2113_earth/
ls
cat index.html 
ls
cd ..
ls
cd ..
ls
cd images/
ls
cat Dockerfile_http_cust 
vim Dockerfile_http_cust 
vim Dockerfile_nginx_cust 
cat Dockerfile_nginx_cust 
cat Dockerfile_http_cust 
cat Dockerfile_nginx_cust 
docker build -t -f Dockerfile_http_cust http_custom:v1 .
docker build -t -f Dockerfile_http_cust http_custom:v1 
docker build -t  http_custom:v1 . -f Dockerfile_http_cust 
ls /root/templates/Earth_Free_Website_Template/2113_earth
ls /home/
cp  /root/templates/Earth_Free_Website_Template/2113_earth /home/
cp  -r /root/templates/Earth_Free_Website_Template/2113_earth /home/
ls /home/
ls /home/2113_earth/
vim /root/images/Dockerfile_http_cust 
docker build -t  http_custom:v1 . -f Dockerfile_http_cust 
docker images
docker build -t  http_custom:v2 . -f Dockerfile_http_cust 
vim /root/images/Dockerfile_http_cust 
docker build -t  http_custom:v3 . -f Dockerfile_http_cust 
vim /root/images/Dockerfile_http_cust 
docker build -t  http_custom:v1 . -f Dockerfile_http_cust 
ls /home/2113_earth/
vim /root/images/Dockerfile_http_cust 
docker build -t  http_custom:v1 . -f Dockerfile_http_cust 
ls
pwd
ls /home/2113_earth/
cd ../templates/Earth_Free_Website_Template/2113_earth/
ls
vim /root/images/Dockerfile_http_cust 
docker build -t  http_custom:v1 . -f /root/images/Dockerfile_http_cust 
docker images
docker ps
#docker run -d -p 80:80
docker images 
docker run -d -p 80:80  http_custom:v1
docker ps
curl localhost:80
docker ps
docker images
docker tag http_custom:v1 http_custom-v1:v1
docker images
docker push khrshd/http_custom-v1:v1
docker push khrshd/http_custom:v1
docker push khrshd/http_custom-v1:v1
docker push khrshd/http_custom-v1
docker push khrshd/http_custom-v1:http_custom
docker push khrshd/http_custom-v1:http_custom:v1
docker push khrshd/http_custom-v1 http_custom
docker push --help
docker push http_custom-v1 
docker login
docker push http_custom-v1 
docker push http_custom-v1 khrshd/http_custom-v1
docker push  khrshd/http_custom-v1:v1
docker images
docker push  khrshd/http_custom-v1:http_custom-v1
docker tag http_custom-v1 khrshd/http_custom-v1:v1
docker tag http_custom-v1:v1 khrshd/http_custom-v1:v1
#docker commit <existing-container> <hub-user>/<repo-name>[:<tag>]
docker ps | grep http_custom
docker commit b042dce82cfd khrshd/http_custom-v1:v1
docker push khrshd/http_custom-v1:v1
cd
kubectl get svc
kubectl get deployments
kubectl delete deployment nginx-deployment
kubectl get deployments
ls
ls 05.ns/
vim  05.ns/depl-svc-httpd.yaml 
kubectl apply -f 05.ns/depl-svc-httpd.yaml 
kubectl get svc
kubectl get deployments
kubectl get pods
kubectl describe pod apache-deployment-865c9d6859-wjwlp
kubectl get pods
kubectl describe pod apache-deployment-865c9d6859-wjwlp
docker images
docker rmi khrshd/http_custom-v1
docker rmi http_custom-v1
docker rmi {7c65a26928e5,40b51182c1a6,40b51182c1a6}
docker rmi {7c65a26928e5,40b51182c1a6,40b51182c1a6} -f
docker ps | grep http_custom
docker container stop b042dce82cfd 
docker rmi {7c65a26928e5,40b51182c1a6,40b51182c1a6} -f
kubectl get deployments
kubectl delete deployment apache-deployment
kubectl get svc
kubectl delete svc my-service-apache
kubectl apply -f 05.ns/depl-svc-httpd.yaml 
kubectl get deployments
kubectl get svc
kubectl get deployments
kubectl describe pod 
kubectl get deployments
cat 05.ns/depl-svc-httpd.yaml 
vim 05.ns/depl-svc-httpd.yaml 
kubectl get deployments
kubectl delete deployment apache-deployment
kubectl get svc
kubectl delete svc my-service-apache
kubectl apply -f 05.ns/depl-svc-httpd.yaml 
kubectl get svc
kubectl get deployments
kubectl delete deployment apache-deployment
kubectl get svc
kubectl delete svc my-service-apache 
vim 05.ns/depl-svc-httpd.yaml 
kubectl apply -f 05.ns/depl-svc-httpd.yaml 
kubectl get svc
kubectl describe svc my-service-apache
kubectl get pods
kubectl get deployments
kubectl describe deployment apache-deployment
kubectl get deployments
kubectl get svc
curl 10.108.157.80:8090
kubectl get svc -n=development
kubectl get svc -n={development,production}
kubectl delete svc my-service-apache
kubectl get svc -n=development
kubectl delete svc my-service-nginx70 -n=development
kubectl get deployments -n=development
kubectl delete deployment nginx-deployment70 -n=development
kubectl get deployments 
kubectl delete deployment apache-deployment -n=development
kubectl get deployments 
kubectl delete deployment apache-deployment 
kubectl get deployments 
kubectl get deployments -n=development
kubectl get svc -n=development
kubectl get svc 
vim 05.ns/depl-svc-httpd.yaml 
kubectl apply -f 05.ns/depl-svc-httpd.yaml 
kubectl get svc 
vim 05.ns/depl-svc-httpd.yaml 
kubectl delete svc my-service-apache
kubectl delete deployment apache-deployment
kubectl apply -f 05.ns/depl-svc-httpd.yaml 
kubectl get svc
kubectl get deployments
kubectl get svc
kubectl get deployments
kubectl get pods
kubectl describe pod apache-deployment-865c9d6859-j95h8
kubectl get pods
kubectl delete pods
kubectl delete pod {apache-deployment-865c9d6859-j95h8,apache-deployment-865c9d6859-lvhrm,apache-deployment-865c9d6859-nkm2g}
kubectl get pods
kubectl describe pod apache-deployment-865c9d6859-72xww
docker images
#kubectl delete deployment 
kubectl get deployments
kubectl delete deployment apache-deployment
kubectl get svc
kubectl delete svc my-service-apache
history | grep vim depl*
kubectl delete deployment apache-deployment
kubectl get svc
kubectl delete svc my-service-apache
kubectl apply -f 05.ns/depl-svc-httpd.yaml 
kubectl get deployments
kubectl get svc
kubectl get deployments
kubectl describe pod 
kubectl get deployments
cat 05.ns/depl-svc-httpd.yaml 
vim 05.ns/depl-svc-httpd.yaml 
kubectl get deployments
kubectl delete deployment apache-deployment
kubectl get svc
kubectl delete svc my-service-apache
kubectl apply -f 05.ns/depl-svc-httpd.yaml 
kubectl get svc
kubectl get deployments
kubectl delete deployment apache-deployment
kubectl get svc
kubectl delete svc my-service-apache 
vim 05.ns/depl-svc-httpd.yaml 
kubectl apply -f 05.ns/depl-svc-httpd.yaml 
kubectl get svc
kubectl describe svc my-service-apache
kubectl get pods
kubectl get deployments
kubectl describe deployment apache-deployment
kubectl get deployments
kubectl get svc
curl 10.108.157.80:8090
kubectl get svc -n=development
kubectl get svc -n={development,production}
kubectl delete svc my-service-apache
kubectl get svc -n=development
kubectl delete svc my-service-nginx70 -n=development
kubectl get deployments -n=development
kubectl delete deployment nginx-deployment70 -n=development
kubectl get deployments 
kubectl delete deployment apache-deployment -n=development
kubectl get deployments 
kubectl delete deployment apache-deployment 
kubectl get deployments 
kubectl get deployments -n=development
kubectl get svc -n=development
kubectl get svc 
vim 05.ns/depl-svc-httpd.yaml 
kubectl apply -f 05.ns/depl-svc-httpd.yaml 
kubectl get svc 
vim 05.ns/depl-svc-httpd.yaml 
kubectl delete svc my-service-apache
kubectl delete deployment apache-deployment
kubectl apply -f 05.ns/depl-svc-httpd.yaml 
kubectl get svc
kubectl get deployments
kubectl get svc
kubectl get deployments
kubectl get pods
kubectl describe pod apache-deployment-865c9d6859-j95h8
kubectl get pods
kubectl delete pods
kubectl delete pod {apache-deployment-865c9d6859-j95h8,apache-deployment-865c9d6859-lvhrm,apache-deployment-865c9d6859-nkm2g}
kubectl get pods
kubectl describe pod apache-deployment-865c9d6859-72xww
docker images
#kubectl delete deployment 
kubectl get deployments
kubectl delete deployment apache-deployment
kubectl get svc
kubectl delete svc my-service-apache
history | grep vim depl*
vim 05.ns/depl-svc-httpd.yaml 
kubectl apply -f 05.ns/depl-svc-httpd.yaml 
kubectl get svc
curl 10.99.29.241:30080
kubectl get deployments
curl 10.99.29.241:30080
curl 10.99.29.241:8090
curl 10.99.29.241:30080
cp images/Dockerfile_http_cust images/Dockerfile_http_ubuntu
vim images/Dockerfile_http_ubuntu 
docker -t khrshd/apache-ubuntu:v1 -f images/Dockerfile_http_ubuntu  .
docker -t khrshd/apache-ubuntu:v1 -f images/Dockerfile_http_ubuntu  
docker build -t khrshd/apache-ubuntu:v1 -f images/Dockerfile_http_ubuntu 
docker build -t khrshd/apache-ubuntu:v1 -f images/Dockerfile_http_ubuntu .
vim images/Dockerfile_http_ubuntu 
cd templates/
ls
cd /home/2113_earth/
ls
docker build -t khrshd/apache-ubuntu:v1 -f images/Dockerfile_http_ubuntu .
docker build -t khrshd/apache-ubuntu:v1 -f /root/images/Dockerfile_http_ubuntu .
vim /root/images/Dockerfile_http_ubuntu 
docker build -t khrshd/apache-ubuntu:v1 -f /root/images/Dockerfile_http_ubuntu .
vim /root/images/Dockerfile_http_ubuntu 
docker build -t khrshd/apache-ubuntu:v1 -f /root/images/Dockerfile_http_ubuntu .
vim /root/images/Dockerfile_http_ubuntu 
docker build -t khrshd/apache-ubuntu:v1 -f /root/images/Dockerfile_http_ubuntu .
docker build -t khrshd/http_custom-v1:v1 -f /root/images/Dockerfile_http_cust .
docker images
docker run -itd -p 80:80 f331a961ce0c
curl locahost:80
curl 192.168.0.186:80
docker tag f331a961ce0c khrshd/http_custom-v1:v2
docker ps
docker commit 87fe96f7ee44 khrshd/http_custom-v1:v2
docker push  khrshd/http_custom-v1:v2
ls /root/images/
ls /root/templates/
cp -r /root/templates/Marvel_Free_Website_Template/2115_marvel/ /home/2115_marvel/
cd ..
ls
cd 2115_marvel/
ls
vim /root/images/Dockerfile_nginx_cust 
cp /root/images/Dockerfile_nginx_cust /root/images/Dockerfile_nginx_ubuntu
ls /root/images/
vim /root/images/Dockerfile_nginx_ubuntu 
docker build -t khrshd/ubuntu-nginx:v1 -f /root/images/Dockerfile_nginx_ubuntu .
vim /root/images/Dockerfile_nginx_ubuntu 
docker build -t khrshd/ubuntu-nginx:v1 -f /root/images/Dockerfile_nginx_ubuntu .
vim /root/images/Dockerfile_nginx_ubuntu 
docker build -t khrshd/ubuntu-nginx:v1 -f /root/images/Dockerfile_nginx_ubuntu .
vim /root/images/Dockerfile_nginx_ubuntu 
docker build -t khrshd/ubuntu-nginx:v1 -f /root/images/Dockerfile_nginx_ubuntu .
vim /root/images/Dockerfile_nginx_ubuntu 
docker build -t khrshd/ubuntu-nginx:v1 -f /root/images/Dockerfile_nginx_ubuntu .
vim /root/images/Dockerfile_nginx_ubuntu 
docker build -t khrshd/ubuntu-nginx:v1 -f /root/images/Dockerfile_nginx_ubuntu .
docker run -d -p 80:80 12d4193bd31e 
docker ps 
docker rmi f331a961ce0c
docker ps
docker container prune
docker  prune
docker image prune
docker ps
docker container stop {f331a961ce0c,294cecd6c779}
docker container stop {87fe96f7ee44,9e22ee1f8fae}
docker image prune
docker images
docker rmi {d906945c3c77,d906945c3c77,f331a961ce0c}
docker rmi {d906945c3c77,d906945c3c77,f331a961ce0c} -f
docker images
docker rmi {2b4cba85892a,eb2556e0f6e4,64fb8d7b3632}
docker rmi {2b4cba85892a,eb2556e0f6e4,64fb8d7b3632} -f
docker images
docker rmi eeb6ee3f44bd
docker images
docker rmi 294cecd6c779
docker run -d -p 80:80 12d4193bd31e
curl 192.168.0.186:80
docker build -t khrshd/ubuntu-nginx:v1 -f /root/images/Dockerfile_nginx_ubuntu .
docker run -d -p 80:80 12d4193bd31e
curl 192.168.0.186:80
docker run -d -p 80:80 12d4193bd31e
docker run -d -p 80:80 c7e1f8050cbaad78833e1d728bc9ad4bc3eb934855edef4c3a1caa64ab2cbce9
docker ps
docker container stop ad1ca3726c94
docker rmi 294cecd6c779
docker container delete ad1ca3726c94
docker container rm ad1ca3726c94
docker ps
docker rmi 294cecd6c779
docker container stop 5845848b9f6d
docker container rm 5845848b9f6d
docker rmi 294cecd6c779
docker images
docker ps
kubectl det deployments
kubectl get deployments
docker ps
docker images
docker run -d -p 80:80 12d4193bd31e
curl 192.168.0.186:80
docker ps
docker images
docker run -d -p 80:90 12d4193bd31e
curl 192.168.0.186:90
docker run -d -p 90:80 12d4193bd31e
curl 192.168.0.186:90
docker ps
kubectl get deployments
kubectl delete deployment apache-deployment
docker ps
docker images
docker rmi {12d4193bd31e,64fb8d7b3632,bef258acf10d}
docker container stop 33299d261848
docker container rm 33299d261848
docker rmi {12d4193bd31e,64fb8d7b3632,bef258acf10d}
docker rmi 84edd6c786ec -f
docker images
docker run -d -p 80:80 12d4193bd31e
docker ps
docker images
docker build -d -p 80:80 12d4193bd31e
docker run -d -p 80:80 12d4193bd31e
docker ps
ll /root/images/Dockerfile_
ll /root/images/
cat /root/images/Dockerfile_http_ubuntu 
cat /root/images/Dockerfile_http_cust 
ls /root/05.ns/
cat  /root/05.ns/depl-svc-httpd.yaml 
vim  /root/05.ns/depl-svc-httpd.yaml 
swapoff -a
exit

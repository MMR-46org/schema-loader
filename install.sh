echo '[mongodb-org-4.2]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/4.2/x86_64/
gpgcheck=0
enabled=1' >/etc/yum.repos.d/mongo.repo

dnf install mongodb-org-shell mysql git -y
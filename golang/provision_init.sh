# Install/Update frequently used tools
sudo yum update -y curl nss
sudo yum install -y man man-pages git

# Define variable
GO_VERSION=1.9

# Install golang
cd /usr/local/src/
sudo wget https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz
sudo tar -C /usr/local/ -xzf go${GO_VERSION}.linux-amd64.tar.gz
echo "export GOPATH=/home/vagrant/go" >> $HOME/.bashrc
echo 'export PATH=$PATH:$GOPATH/bin' >> $HOME/.bashrc
echo 'export PATH=$PATH:/usr/local/go/bin' >> $HOME/.bashrc
source $HOME/.bashrc

# Install golang/dep
sudo chown  vagrant $HOME/go $HOME/go/src
go get -u github.com/golang/dep/cmd/dep
cd $GOPATH/src/project/
dep ensure

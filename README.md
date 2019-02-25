$ sudo apt-get update
$ sudo apt-get install python-pip python-dev git
$ git clone https://github.com/CheeHau86/barcodeDetector.git
$ sudo apt-get install docker
$ sudo pip install virtualenv
$ cd barcodeDetector 
$ sudo apt-get update
$ source barcodeDetector/bin/activate
$ docker build -t barcode-docker:0.0.1 .
$ docker run -p 8080:8080 barcode-docker:0.0.1

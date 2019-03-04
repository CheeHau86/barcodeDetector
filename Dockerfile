FROM python:3.7
ENV PYTHONUNBUFFERED 1
RUN apt-get update
RUN apt-get install python3 -Y
RUN apt-get install python3-pip -Y
RUN apt-get install python-pip python-dev nginx git -Y
RUN pip3 install virtualenv
RUN apt-get update
RUN git clone https://github.com/CheeHau86/barcodeDetector.git && cd barcodeDetector
RUN virtualenv myenv
RUN source myenv/bin/activate
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD ./ /code/
EXPOSE 8080
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]

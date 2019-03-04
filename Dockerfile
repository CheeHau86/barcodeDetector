FROM python:3.7
ENV PYTHONUNBUFFERED 1
RUN yum update
RUN yum install python3 -y
RUN yum install python3-pip -y
RUN yum install python-pip python-dev nginx git -y
RUN pip3 install virtualenv
RUN yum update
RUN virtualenv myenv
RUN source myenv/bin/activate
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD ./ /code/
EXPOSE 8080
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]

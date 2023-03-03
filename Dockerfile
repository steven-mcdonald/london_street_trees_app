# app/Dockerfile

# set the base image - in this case python 3.10
FROM python:3.10
# create a directory /app for the application
WORKDIR /app
# copy the requirements file into the new work dir
COPY requirements.txt ./requirements.txt
# pip install everything in the requirements file
RUN pip3 install -r requirements.txt
# expose the port to be used by the app
EXPOSE 8501
# copy the app from current directory into new work dir
COPY . /app
# create an endpoint
ENTRYPOINT ["streamlit", "run"]
# make the app executable
CMD ["app.py"]
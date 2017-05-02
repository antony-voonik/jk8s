FROM python:2.7
EXPOSE 9090
COPY . /src/jk8s/
RUN ["pip", "install", "-r", "/src/jk8s/requirements.txt"]
ENTRYPOINT ["python", "/src/jk8s/manage.py", "runserver"]
CMD ["9090"]

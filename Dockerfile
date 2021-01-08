FROM python
COPY /app /app
WORKDIR /app
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
EXPOSE 8081
CMD python ./run.py
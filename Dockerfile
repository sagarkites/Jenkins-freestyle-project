FROM python
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt && pip install --upgrade pip
ENTRYPOINT ["python"]
CMD ["app.py"]

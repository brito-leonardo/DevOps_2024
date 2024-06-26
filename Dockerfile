FROM public.ecr.aws/lambda/python:3.9

RUN mkdir -p /app
COPY . main.py /app/
WORKDIR /app
# Copy the requirements file into the container
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8080
CMD [ "main.py" ]
ENTRYPOINT [ "python" ]
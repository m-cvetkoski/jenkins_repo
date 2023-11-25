FROM python:3.13-rc-slim

WORKDIR /work_dir

COPY app.py /work_dir/

RUN apt-get update
RUN pip install flask

RUN mkdir templates
COPY index.html /work_dir/templates

ENV PORT=5000

EXPOSE ${PORT}

CMD [ "python", "app.py" ]

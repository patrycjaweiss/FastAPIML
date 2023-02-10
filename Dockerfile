FROM ubuntu:19.10

COPY ./api /api/api
COPY targets.txt / targets.txt

RUN apt-get update \
    && apt-get install python3-dev python3-pip -y \
    && pip3 install -r targets.txt

ENV PYTHONPATH=/api
WORKDIR /api

EXPOSE 8000

ENTRYPOINT ["uvicorn"]
CMD ["api.main:app", "--host", "0.0.0.0"]
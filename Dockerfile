FROM ubuntu:22.10

RUN mkdir -p /api/api

COPY ./api /api/api
COPY targets.txt /targets.txt

ENV TZ=Europe/Berlin
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update \
    && apt-get install python3-dev python3-pip python3-sklearn -y \
    && pip3 install -r targets.txt

ENV PYTHONPATH=/api
WORKDIR /api

EXPOSE 8000

ENTRYPOINT ["uvicorn"]
CMD ["api.main:app", "--host", "0.0.0.0"]

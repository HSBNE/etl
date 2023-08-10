ARG MELTANO_IMAGE=meltano/meltano:v2.20.0
FROM $MELTANO_IMAGE

WORKDIR /project

#COPY requirements.txt .
#RUN pip install -r requirements.txt

COPY . .
RUN meltano install

#ENV MELTANO_PROJECT_READONLY 1

EXPOSE 5000

ENTRYPOINT ["meltano"]

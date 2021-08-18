FROM labshare/polus-bfio-util:2.1.8

COPY VERSION /
		
ARG EXEC_DIR="/opt/executables"
ARG DATA_DIR="/data"

RUN mkdir -p ${EXEC_DIR} \
    && mkdir -p ${DATA_DIR}/inputs \
    && mkdir ${DATA_DIR}/outputs

COPY src ${EXEC_DIR}/
WORKDIR ${EXEC_DIR}


RUN pip3 install scipy

RUN pip3 install -r ${EXEC_DIR}/requirements.txt --no-cache-dir

RUN apt-get update


ENTRYPOINT ["python3", "main.py"]
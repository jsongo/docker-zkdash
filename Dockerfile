FROM python:2.7

MAINTAINER jsongo 

RUN git clone https://github.com/ireaderlab/zkdash.git

WORKDIR /zkdash

RUN pip install -r requirements.txt

ADD conf.yml /zkdash/conf/
ADD *.sh /zkdash/
RUN sh init.sh

CMD ["/zkdash/run.sh"]
ENTRYPOINT ["sh", "-c"]
#CMD ["/bin/bash"]

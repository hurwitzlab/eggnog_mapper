FROM ubuntu:latest
RUN apt-get -y update
RUN apt-get install -y parallel wget git blast+
RUN mkdir /app
WORKDIR /app
RUN git clone https://github.com/eggnogdb/eggnog-mapper.git
ENV PATH /app/eggnog-mapper/bin:$PATH

# Run when the container launches
CMD ["emapper.py"]

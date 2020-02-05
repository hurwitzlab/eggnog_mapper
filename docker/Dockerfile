FROM ubuntu:latest
RUN apt-get -y update && apt-get install -y wget git ncbi-blast+
RUN mkdir /app
WORKDIR /app
RUN git clone https://github.com/eggnogdb/eggnog-mapper.git
ENV PATH /app/eggnog-mapper:/app/eggnog-mapper/bin:$PATH

# Run when the container launches
CMD ["emapper.py"]

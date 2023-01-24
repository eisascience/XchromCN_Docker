FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    build-essential \
    libncurses5-dev \
    libncursesw5-dev \
    zlib1g-dev \
    libcurl4-gnutls-dev \
    liblzma-dev \
    python3-pip \
    r-base

RUN pip3 install numpy scipy pysam

RUN R -e "install.packages(c('cn.mops', 'GenomicRanges', 'IRanges', 'BiocParallel'), repos='https://cran.rstudio.com/')"

COPY XHMM-1.0.11.tar.gz /usr/local/bin/
RUN tar -xzvf XHMM-1.0.11.tar.gz -C /usr/local/bin/
RUN cd /usr/local/bin/XHMM-1.0.11/ && make

COPY XCNV-1.0.0.tar.gz /usr/local/bin/
RUN tar -xzvf XCNV-1.0.0.tar.gz -C /usr/local/bin/

COPY XCCNA-1.0.0.tar.gz /usr/local/bin/
RUN tar -xzvf XCCNA-1.0.0.tar.gz -C /usr/local/bin/

ENV PATH="/usr/local/bin/XHMM-1.0.11/:${PATH}"
ENV PATH="/usr/local/bin/XCNV-1.0.0/:${PATH}"
ENV PATH="/usr/local/bin/XCCNA-1.0.0/:${PATH}"

RUN mkdir /data

CMD ["bash"]

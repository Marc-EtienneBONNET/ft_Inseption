FROM mbonnet/img_base
RUN apt-get install -y build-essential
RUN apt-get install -y gcc
COPY main.c main.c
RUN gcc main.c -o tester
CMD ./tester
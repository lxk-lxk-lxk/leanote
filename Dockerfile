FROM alpine
RUN wget https://sourceforge.net/projects/leanote-bin/files/2.6.1/leanote-linux-amd64-v2.6.1.bin.tar.gz
ADD leanote-linux-amd64-v2.6.1.bin.tar.gz /
RUN rm -rf /leanote/mongodb_backup
EXPOSE 9000
CMD ["sh", "/leanote/bin/run.sh"]

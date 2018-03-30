FROM alpine
ADD leanote-linux-amd64-v2.6.1.bin.tar.gz /
RUN rm -rf /leanote/mongodb_backup
EXPOSE 9000
CMD ["sh", "/leanote/bin/run.sh"]
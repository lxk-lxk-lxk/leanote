# leanote
leanote 部署 docker 文件

1. clone 到 VPS
2. `wget https://sourceforge.net/projects/leanote-bin/files/2.6.1/leanote-linux-amd64-v2.6.1.bin.tar.gz`
3. `tar -zvxf leanote-linux-amd64-v2.6.1.bin.tar.gz`
4. `mv leanote/mongodb_backup/ ./`
5. `rm -r leanote/`
6. `docker-compose run --rm initdb`
7. `rm -r mongodb_backup/`
8. `sudo docker image build -t tuzkimo/leanote .`
9. `rm leanote-linux-amd64-v2.6.1.bin.tar.gz`
8. `vi app.conf`, 修改 secret
9. `docker-compose up -d leanote`
10. 浏览起访问 VPS 公网地址 9000 端口，admin/abc123 登录，修改密码

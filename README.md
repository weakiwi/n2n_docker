# 纯容器化部署n2n

p.s: 多次验证过的只有other edge以及dhcp_server，其他步骤为已实现待验证
## supernode
1. git clone https://github.com/weakiwi/n2n_docker.git
2. 像部署文件docker-compose.yml中环境变量添加SUPERNODE=yes
3. docker-compose up -d

## edge1
1. 将SUPERNODE=yes删除
2. 添加STATIC_IP=10.9.9.2
3. docker-compose up -d

## dhcp_server
1. cd dhcp_server/
2. docker-compose up -d

## other edge
1. 去掉STATIC_IP=10.9.9.2
2. docker-compose up -d

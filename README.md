# 纯容器化部署n2n

p.s: 多次验证过的只有other edge以及dhcp_server，其他步骤为已实现待验证
## supernode
1. git clone https://github.com/weakiwi/n2n_docker.git
2. cd supernode/
3. docker-compose up -d

## dhcp_server
1. cd dhcp_server/
2. docker-compose up -d

## other edge
1. cd other_edge/
2. docker-compose up -d

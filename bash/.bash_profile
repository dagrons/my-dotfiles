export PATH=/opt/homebrew/bin:$PATH

#=====
# devbox
#=====

pve="10.112.108.112"
alias sshpve="ssh dell@${pve}"

cld="120.53.125.30"
alias sshcld="ssh ubuntu@${cld}"


#=====
# toys
#=====

function run() {
    if [ $1 = "postgres" ]; then 
        docker run --name toy-postgres -e POSTGRES_PASSWORD=daxiahyh -d postgres 
    fi
    if [ $1 = "redis" ]; then
	docker run --name toy-redis -d redis
    fi
}

function play() {
    if [ $1 = "postgres" ]; then 
        docker exec -it toy-postgres /bin/bash 
    fi
    if [ $1 = "redis" ]; then
	docker exec -it toy-redis /bin/bash 
    fi
}

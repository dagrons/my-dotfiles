export PATH=/opt/homebrew/bin:$PATH
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"


alias tt="tree -L"

#=====
# devbox
#=====

pve="10.112.108.112"
alias sshpve="ssh dell@${pve}"
alias pve="open https://10.112.108.112:8006"
alias ci="open http://${pve}:3000"

cld="120.53.125.30"
alias sshcld="ssh ubuntu@${cld}"
alias ms="open http://${cld}:6005"


emc="10.112.254.160"
alias sshemc="ssh dell@${emc} -p 61205"
alias ks="open https://${emc}"


#====
# quick entries
#====
alias ff="open http://$emc:8082"
alias gg="open http://$cld:6005"
alias mm="open https://$emc:10002"



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






# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

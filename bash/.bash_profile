export PATH=/opt/homebrew/bin:$PATH
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"


alias tt="tree -L"

#=====
# devbox
#=====

pve="10.112.255.77"
alias pve2="ssh dell@${pve}"
alias pve="open https://10.112.108.112:8006"
alias ci="open http://${pve}:3000"

cld="120.53.125.30"
alias pve="ssh dell@${cld} -p 6000"
alias cld="ssh ubuntu@${cld}"
alias ms="open http://${cld}:6005"


emc="10.112.117.158"
alias emc="ssh dell@${emc} -p 61205"
alias ks="open https://${emc}"

dl3="120.53.125.30"
alias p3="ssh root@${dl3} -p 6100"

dl2="120.53.125.30"
alias p2="ssh root@${dl2} -p 6101"

dl1="120.53.125.30"
alias p1="ssh root@${dl1} -p 6102"

#====
# quick entries
#====
alias ff="open http://$pve:8081"
alias gg="open http://$cld:6005"
alias mm="open https://$emc:10002"
alias pp="open https://$pve:8006"
alias wechat="nohup /Applications/WeChat.app/Contents/MacOS/WeChat > /dev/null 2>&1 &"



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




# ${HOME}/.bashrc

#export JAVA_HOME=/usr/lib/jvm/java

# maven
#export MVN_HOME='/home/gli/devlib/apache-maven-3.0.5'
#export MVN_HOME='/home/gli/devlib/apache-maven-3.1.0'
#export MVN_HOME='/home/gli/devlib/apache-maven-3.2.5'
#export MVN_HOME='/home/gli/devlib/apache-maven-3.3.9'
export MVN_HOME='/home/gli/devlib/apache-maven-3.6.0'
export PATH=$PATH:$MVN_HOME/bin
#export MAVEN_OPTS='-Xms1024m -Xmx4096m -XX:PermSize=512m -XX:MaxPermSize=2048m'
export MAVEN_OPTS='-Xms1024m -Xmx4096m -XX:MetaspaceSize=512m -XX:MaxMetaspaceSize=3072m'
alias mvnnossl='mvn -Dmaven.wagon.http.ssl.insecure=true -Dmaven.wagon.http.ssl.allowall=true'

# visualvm
export VISUALVM_HOME='/home/gli/devlib/visualvm_14'
export PATH=$PATH:$VISUALVM_HOME/bin

# ant
export ANT_HOME='/home/gli/devlib/apache-ant-1.8.2'
export PATH=$PATH:$ANT_HOME/bin

# gradle
export GRADLE_HOME='/home/gli/devlib/gradle-4.4.1'
export PATH=$PATH:$GRADLE_HOME/bin

# JBOSS HOME define
#export JBOSS6_HOME=/home/lg/jboss6
#export JBOSS7_HOME=/home/gli/jboss-eap-6.1
#export JBOSS_HOME=''

# JIRA plugin sdk
# export ATLAS_MVN=$MVN_HOME/bin/mvn
# export JIRA_SDK_HOME=/opt/atlassian-plugin-sdk
# export PATH=$PATH:$JIRA_SDK_HOME/bin

# Groovy
export GROOVY_HOME=/home/gli/devlib/groovy-2.4.6
export PATH=$PATH:$GROOVY_HOME/bin

# GOPATH & GOROOT
export GOPATH=/home/gli/mygopath
export GOROOT=/usr/lib/golang

# KOTLIN 
export KOTLIN_HOME=/home/gli/devlib/kotlinc-1.2.10
export PATH=$PATH:$KOTLIN_HOME/bin

# RUST Cargo
export CARGO_HOME=/home/gli/.cargo
export PATH=$PATH:$CARGO_HOME/bin

#git
function git_branch {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return;
    echo "("${ref#refs/heads/}") ";
}
export PS1="[\u@laptop:\[\033[1;32m\]\W\[\033[0m] \033[1;36m\]\$(git_branch)\[\033[0m\]$ "

# extract all kinds of archive
extract() {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

# atom file deletion not working
export ELECTRON_TRASH=gio

source $HOME/.aliases
source /etc/profile.d/autojump.sh
source /usr/share/bash-completion/completions/git
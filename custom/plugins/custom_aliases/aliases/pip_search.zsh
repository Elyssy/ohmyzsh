local _pip='function _pip(){
    if [ "$1" = "search" ]; then
        pip_search "$2";
    else pip "$@";
    fi;
};_pip'

alias pip=$_pip
alias pip3=$_pip

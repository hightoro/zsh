#.zsh.d/zshenv

################
### [ echo ] ###
################
#echo "read my_zsh_dir/.zshenv"

####################
### [ Set Path ] ###
####################
## 重複したパスを登録しない。
typeset -U path
###############################################################
#
#  (N-/): 存在しないディレクトリは登録しない。
#     パス(...): ...という条件にマッチするパスのみ残す。
#             N: NULL_GLOBオプションを設定。
#                globがマッチしなかったり存在しないパスを無視する。
#             -: シンボリックリンク先のパスを評価。
#             /: ディレクトリのみ残す。
#
###############################################################
path=(
    /bin(N-/)
    /usr/bin(N-/)
    /usr/local/bin(N-/)
    $HOME/local/bin(N-/)
)

####################
### [ Set Lang ] ###
####################
export LANG=ja_JP.UTF-8 
#export LANG=ja_JP.eucJP

###################
### [ Set Lib ] ###
###################
## LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/local/lib
export LD_RUN_PATH=$LD_RUN_PATH:$HOME/local/lib

## C++ (CPLUS_INCLUDE_PATH) ##
#export CPLUS_INCLUDE_PATH=/usr/include/:$CPLUS_INCLUDE_PATH
#export CPLUS_INCLUDE_PATH=$HOME/local/include:$CPLUS_INCLUDE_PATH
#export CPLUS_INCLUDE_PATH=$HOME/local/include/ncurses:$CPLUS_INCLUDE_PATH
#export CPLUS_INCLUDE_PATH=$HOME/local/include/ncursesw:$CPLUS_INCLUDE_PATH

## C (C_INCLUDE_PATH) ##
#export C_INCLUDE_PATH=/usr/include/:$C_INCLUDE_PATH
#export C_INCLUDE_PATH=$HOME/local/include:$C_INCLUDE_PATH
#export C_INCLUDE_PATH=$HOME/local/include/ncurses:$C_INCLUDE_PATH
#export C_INCLUDE_PATH=$HOME/local/include/ncursesw:$C_INCLUDE_PATH

## Perl ##

## Ruby ##

## Python ##


### end of file

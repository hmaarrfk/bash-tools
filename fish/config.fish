
set fish_greeting "Welcome to Mark Harfouche's computer."
set -gx EDITOR vim
set -gx MATLAB_JAVA /usr/lib/jvm/jre-1.8.0-openjdk.x86_64/
#set -gx MATLAB_JAVA /usr/java/jre1.7.0_60/

# http://fishshell.com/docs/current/tutorial.html
if test -d $HOME/.rvm/bin
    set -gx  PATH $PATH $HOME/.rvm/bin # Add RVM to PATH for scripting
end

if test -d /opt/parallax/bin
    set -gx PATH $PATH /opt/parallax/bin
end

if test -d $HOME/AndroidSDK/platform-tools
    set -gx PATH $PATH $HOME/AndroidSDK/platform-tools
end

if test -d /usr/local/lib64
    set -gx LD_LIBRARY_PATH $LD_LIBRARY_PATH /usr/local/lib64
end


# Vivado configuration
#if test -d /opt/Xilinx/Vivado
    #set -gx PATH /opt/Xilinx/Vivado/2013.3/../../SDK/2013.3/bin/lin64 $PATH
    #set -gx PATH /opt/Xilinx/Vivado/2013.3/../../SDK/2013.3/gnu/microblaze/lin/bin $PATH
    #set -gx PATH /opt/Xilinx/Vivado/2013.3/../../SDK/2013.3/gnu/powerpc-eabi/lin/bin $PATH
    #set -gx PATH /opt/Xilinx/Vivado/2013.3/../../SDK/2013.3/gnu/arm/lin/bin $PATH
    #set -gx PATH /opt/Xilinx/Vivado/2013.3/../../SDK/2013.3/gnu/microblaze/linux_toolchain/lin64_be/bin $PATH
    #set -gx PATH /opt/Xilinx/Vivado/2013.3/./../Vivado_HLS/2013.3/bin $PATH
    #set -gx PATH /opt/Xilinx/Vivado/2013.3/./bin $PATH
    #set -gx PATH /opt/Xilinx/Vivado/2013.3/./.xinstall/bin/lin64 $PATH

    #set -gx XILINX_VIVADO /opt/Xilinx/Vivado/2013.3/.
#end

# Do I need these?
# send in Ctrl-s to vim
# see http://unix.stackexchange.com/questions/12107/how-to-unfreeze-after-accidentally-pressing-ctrl-s-in-a-terminal
stty stop undef
stty -ixon
stty 115200


# Aliases

#alias pbcopy='xclip -selection clipboard'
#alias pbpaste='xclip -selection clipboard -o'
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

alias pwdcopy='pwd; echo -n (pwd) |pbcopy'
alias npwd='nautilus (pwd)'

# provides support for clipboard pasting in vim
alias vim='vimx'
alias vi='vimx'

# trash remove
alias trm='gvfs-trash'

alias pip='pip-python'
alias pip3='pip-python3'

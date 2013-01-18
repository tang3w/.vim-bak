.vim
====

Vim configuration files

How to use
----------

Just clone the repository into your
home directory:

    cd ~
    git clone git@github.com:tang3w/.vim.git

Then, move/link the .vimrc file
to your home directory:

    ln -s ~/.vim/.vimrc ~/.vimrc

At last, Launch vim and run:

    :NeoBundleInstall

Dependency
----------

The plug-ins are dependent of some tools.
It means that you should install them.

### 1\. Ctags
Ctags is the basic of taglist, it is an
system utility writen in C. So, you can
download the souce and build it.

You can download ctags from
[ctags-5.8.tar.gz](http://prdownloads.sourceforge.net/ctags/ctags-5.8.tar.gz "ctags-5.8.tar.gz")

What's more, you should tell the plug-ins
dependent of ctags where it is installed.

For taglist, you should set Tlist_Ctags_Cmd variable:

    set Tlist_Ctags_Cmd='/path/to/ctags'


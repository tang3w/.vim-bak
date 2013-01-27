.vim
====

Vim configuration files

How to use
----------

Just clone the repository into your
home directory:

    cd ~
    git clone git@github.com:tang3w/.vim.git

Then, initiate submodule(neobundle):

    cd ~/.vim
    git submodule init
    git submodule update

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

After installation, you should modify
the s:ctags_path variable in .vimrc

    let s:ctags_path = '/usr/local/bin/ctags'

### 2\. Flake8
Flake8 is a wrapper around PyFlakes, pep8.
It is the dependece of vim-flake8 plugin.

You can download it from
[flake8](http://pypi.python.org/pypi/flake8/ "flake8").

After download the latest version,
extract the tarball and then install:

    sudo python setup.py install

### 3\. Jedi

Jedi is an autocompletion tool for Python.
Jedi.vim is based on it. You can install it
through pip or manually. For pip:

    sudo pip install jedi

Or, you can fetch the current develop version:

    sudo pip install -e git://github.com/davidhalter/jedi.git#egg=jedi

To manually, download the package from
[Jedi](https://github.com/davidhalter/jedi/archive/master.zip)
navigate indo the directory and execute:

    sudo python setup.py install

For more infomation about Jedi, please go to
the documentation:
[readthedoc](https://jedi.readthedocs.org/en/latest/docs/installation.html)

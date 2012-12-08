
## Installation

1. Backup your old vim configuration files:

        mv ~/.vim ~/.vim.orig
        mv ~/.vimrc ~/.vimrc.orig
        mkdir ~/.vim

2. Clone and install this repo:

        git clone git://github.com/yyken/dotfiles.git ~/dotfiles
        make init

3. Setup `Vundle`:

        git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

4. Install bundles. Launch vim(ignore the errors and they will disappear after installing needed plugins)and run:
		
        :BundleInstall

# Plugins
* [MiniBufExplorer][1] 

    [1]: https://github.com/fholgado/minibufexpl.vim


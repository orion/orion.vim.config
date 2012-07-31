
Prerequisites
=============

You will need the following things installed proceedng:

1. Ruby (strange, I know)

2. Rake

3. MacVim (if you are on the Mac)

Installation
============

1. Make sure ctags and pycscope are installed.  Make sure your (mac)vim is compiled with cscope support by running vim --version and look for "+cscope"; I had to uninstall my brew-built macvim and reinstall it with

                brew install macvim --with-cscope

if you do that, the brew package for cscope will automatically get built as a dependency.

2. Check out the package:

				cd ~/
				git clone git@github.com:orion/orion.vim.config.git .vim

3. Create the symlink for the ctags config file (assumes you don't already have a ~/.ctags)

                cd ~/
                ln -s ~/.vim/.ctags .ctags

4. Install vundler:

				git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

5. Source the config.vim file from the distribution at the top of your .vimrc file:

				source ~/.vim/config.vim

6. Install the bundles using vundler:

				vim
				:BundleInstall!

7. Compile the Command-T plugin

				cd ~/.vim/bundle/Command-T
				rake make

8. Add something like this to your ~/.bashrc

                export SSDIR=/Users/darrell/Documents/SwiftStack/ss
                alias ctg="pushd $SSDIR > /dev/null; ctags -R; cd; pycscope.py -R -f ~/.vim/cscope.out $SSDIR/ssman $SSDIR/ssnode $SSDIR/deploy $SSDIR/cloudbuilder; popd > /dev/null"

Currently, the cscope database is only refreshed manually when you run "ctg" (which takes about 5 seconds on a fancy Retina MacBook Pro), but the AutoTag plugin and our config will keep the tags database up to date as files are saved.



Issues
======

1.  Despite the updated python syntax package, python highlighting still seems pretty poor.  Strings, for instance, are not highlighted.  How can I confirm that it's even working?

2.  Is UltiSnips breaking SuperTab?  Need to test SuperTab with other types of completion tasks.


Notes
=====

1.  See http://cscope.sourceforge.net/cscope_vim_tutorial.html for cscope-in-vim info (tl;dr: Ctrl-\ s will search for occurrences of the symbol your cursor is on, Ctrl-\ c will search for callers of the method/function your cursor is on).

2.  For ctags, see http://peterodding.com/code/vim/easytags/ for more info (Ctrl-] will go to the definition of the method/class/etc. your cursor is on).

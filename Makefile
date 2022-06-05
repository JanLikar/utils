PREFIX=~/.local/bin

install:
	cp bex.sh $(PREFIX)/bex
	cp pyex.sh $(PREFIX)/pyex
	cp s3vim.sh $(PREFIX)/s3vim
	cp base.py $(PREFIX)/base
	cp sandbox.sh $(PREFIX)/sandbox

develop:
	ln -s $(realpath bex.sh) $(PREFIX)/bex
	ln -s $(realpath pyex.sh) $(PREFIX)/pyex
	ln -s $(realpath s3vim.sh) $(PREFIX)/s3vim
	ln -s $(realpath base.py) $(PREFIX)/base
	ln -s $(realpath sandbox.sh) $(PREFIX)/sandbox

uninstall:
	rm $(PREFIX)/bex
	rm $(PREFIX)/pyex
	rm $(PREFIX)/s3vim
	rm $(PREFIX)/base
	rm $(PREFIX)/sandbox

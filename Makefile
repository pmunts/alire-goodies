# Build the project

build:
	alr build $(ALRFLAGS)

# Remove project working files

clean:
	rm -rf alire bin config obj share
	@# Fixup permissions (e.g. on Windows)
	@find . -type f -exec chmod 644 {} ";"
	@find . -type f -name '*.sh' -exec chmod 755 {} ";"

distclean: clean
	# Unix
	rm -rf ~/.local/share/alire/builds
	rm -rf ~/.local/share/alire/releases
	# Windows
	rm -rf ~/AppData/Local/alire/cache/builds
	rm -rf ~/AppData/Local/alire/cache/releases

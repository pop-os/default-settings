all: etc/pop-os/lsb-release etc/pop-os/os-release

etc/pop-os/lsb-release: src/lsb-release.sh
	bash $< > $@

etc/pop-os/os-release: src/os-release.sh
	bash $< > $@

clean:
	rm -f etc/pop-os/lsb-release etc/pop-os/os-release

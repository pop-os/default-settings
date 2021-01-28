all: etc/pop-os/issue etc/pop-os/issue.net etc/pop-os/lsb-release etc/pop-os/os-release

etc/pop-os/issue: src/issue.sh
	bash $< > $@

etc/pop-os/issue.net: src/issue.net.sh
	bash $< > $@

etc/pop-os/lsb-release: src/lsb-release.sh
	bash $< > $@

etc/pop-os/os-release: src/os-release.sh
	bash $< > $@

clean:
	rm -f etc/pop-os/lsb-release etc/pop-os/os-release

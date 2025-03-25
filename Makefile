##
## Dot-files tracking Makefile
## (c) 2025 Andriy Berestovskyy
##

help::
	@echo "Dot-files tracking targets:"
	@echo "    help                  This help message"
	@echo "    link-mac-dot-files    Link (install) macOS dot-files"
	@echo "    pull-mac-dot-files    Pull tracked macOS dot-files into the repo"
	@echo "    link-linux-dot-files  Link (install) Linux dot-files"
	@echo "    pull-linux-dot-files  Pull tracked Linux dot-files into the repo"
	@echo "    install-brew          Install macOS Homebrew"
	@echo "    install-mac-apps      Install macOS applications"


link-mac-dot-files::
	@echo "==> Linking (installing) macOS dot-files..."
	@$(call LINK,mac-dot-files)

pull-mac-dot-files::
	@echo "==> Pulling tracked macOS dot-files into the repo..."
	@$(call PULL,mac-dot-files)

link-linux-dot-files::
	@echo "==> Linking (installing) Linux dot-files..."
	@$(call LINK,linux-dot-files)

pull-linux-dot-files::
	@echo "==> Pulling tracked Linux dot-files into the repo..."
	@$(call PULL,linux-dot-files)

install-brew::
	@echo "==> Installing macOS Homebrew..."
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

install-mac-apps::
	@echo "==> Installing macOS applications..."
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	brew install diffusionbee visual-studio-code blender inkscape coreutils gawk mc 7zip rg watch wget zsh-completions clang-format cloc git htop rustup-init shfmt buildifier
	rustup-init --default-toolchain nightly
	mkdir ~/.zfunc
	rustup completions zsh > ~/.zfunc/_rustup
	rustup completions zsh cargo > ~/.zfunc/_cargo

define LINK
	find "${1}" -type f -print0 -o -type l -print0 | while IFS= read -r -d '' src; do \
		dst="$$(echo $${src} | sed -Ee 's#/dot#/#g' -e 's#^${1}/##')"; \
		dst="$${HOME}/$${dst}"; \
		echo "> linking $${src} -> $${dst}"; \
		if [ -f "$${dst}" ]; then cp -vaf "$${dst}" "$${dst}.bak"; fi; \
		mkdir -p "$${dst%/*}"; \
		rm -f "$${dst}"; \
		cp -valf "$${src}" "$${dst}" || true; \
	done
endef

define PULL
	find "${1}" -type f -print0 -o -type l -print0 | while IFS= read -r -d '' src; do \
		dst="$$(echo $${src} | sed -Ee 's#/dot#/#g' -e 's#^${1}/##')"; \
		dst="$${HOME}/$${dst}"; \
		echo "> pulling $${dst} -> $${src}"; \
		rm -f "$${src}"; \
		cp -valf "$${dst}" "$${src}" || true; \
	done
endef

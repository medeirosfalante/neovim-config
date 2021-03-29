# neovim-config


This is my vim config use in my workspace.

 You need copy file init.vim for ~/.config/neovim/init.vim

# Install neovim 

## macOS / OS X

### Pre-built archives

The [Releases](https://github.com/neovim/neovim/releases) page provides pre-built binaries for macOS 10.11+.

    curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim-macos.tar.gz
    tar xzf nvim-macos.tar.gz
    ./nvim-osx64/bin/nvim

### [Homebrew](https://brew.sh) on macOS or Linux

    brew install neovim
    
## Linux

### AppImage ("universal" Linux package)

The [Releases](https://github.com/neovim/neovim/releases) page provides an [AppImage](https://appimage.org) that runs on most Linux systems. No installation is needed, just download `nvim.appimage` and run it. (It might not work if your Linux distribution is more than 4 years old.)

    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
    chmod u+x nvim.appimage
    ./nvim.appimage

If the `./nvim.appimage` command fails, try:
```sh
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version

# Optional: exposing nvim globally
mv squashfs-root / && ln -s /squashfs-root/AppRun /usr/bin/nvim
nvim
```
 
### Arch Linux

Neovim can be installed from the community repository:

    sudo pacman -S neovim

Alternatively, Neovim can be also installed using the PKGBUILD [`neovim-git`](https://aur.archlinux.org/packages/neovim-git), available on the [AUR](https://wiki.archlinux.org/index.php/Arch_User_Repository).

Alternatively, Neovim Nightly builds can be also installed using the PKGBUILD [`neovim-nightly-bin`](https://aur.archlinux.org/packages/neovim-nightly-bin), available on the [AUR](https://wiki.archlinux.org/index.php/Arch_User_Repository).

The Python module is available from the community repository:

    sudo pacman -S python-pynvim

Python 2 and Ruby modules (currently only supported in `neovim-git`) are available from the AUR as [`python2-neovim`](https://aur.archlinux.org/packages/python2-neovim-git) and [`ruby-neovim`](https://aur.archlinux.org/packages/ruby-neovim) respectively.

### CentOS 8 / RHEL 8

Neovim is available through [EPEL (Extra Packages for Enterprise Linux)](https://fedoraproject.org/wiki/EPEL)

    yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
    yum install -y neovim python36-neovim
    # you might need python2-neovim as well on older Fedora releases

### Clear Linux OS

NeoVim is available through the [neovim bundle](https://github.com/clearlinux/clr-bundles/blob/master/bundles/neovim)

    sudo swupd bundle-add neovim

Python (`:python`) support is available if the [python-basic bundle](https://github.com/clearlinux/clr-bundles/blob/master/bundles/python-basic) is installed.

    sudo swupd bundle-add python-basic
    
    
### Debian

Neovim is in [Debian](https://packages.debian.org/search?keywords=neovim).

    sudo apt-get install neovim

Python (`:python`) support is installable via the package manager on Debian unstable.

    sudo apt-get install python-neovim
    sudo apt-get install python3-neovim

If installing via appimage, the following commands may be helpful in updating default paths:

    # CUSTOM_NVIM_PATH=/usr/local/bin/nvim.appimage
    # Set the above with the correct path, then run the rest of the commands:
    set -u
    sudo update-alternatives --install /usr/bin/ex ex "${CUSTOM_NVIM_PATH}" 110
    sudo update-alternatives --install /usr/bin/vi vi "${CUSTOM_NVIM_PATH}" 110
    sudo update-alternatives --install /usr/bin/view view "${CUSTOM_NVIM_PATH}" 110
    sudo update-alternatives --install /usr/bin/vim vim "${CUSTOM_NVIM_PATH}" 110
    sudo update-alternatives --install /usr/bin/vimdiff vimdiff "${CUSTOM_NVIM_PATH}" 110
    
### Fedora

Neovim is in [Fedora](https://src.fedoraproject.org/rpms/neovim) starting with Fedora 25:

    sudo dnf install -y neovim python3-neovim

You can also get nightly builds of git master from the [Copr automated build system](https://copr.fedoraproject.org/coprs/agriffis/neovim-nightly/):

    dnf copr enable agriffis/neovim-nightly
    dnf install -y neovim python{2,3}-neovim

### OpenSUSE

Neovim can be installed with:

    sudo zypper in neovim

To install the Python modules:
    
    sudo zypper in python-neovim python3-neovim
    
    
### Snap

Neovim nightly and stable are available on the [snap store](https://snapcraft.io/nvim).

**Stable Builds**

```sh
sudo snap install --beta nvim --classic
```


### Ubuntu
**Since 18.04 via official repository**
As in Debian, Neovim is in [Ubuntu](https://packages.ubuntu.com/search?keywords=neovim).

    sudo apt install neovim

Python (`:python`) support seems to be automatically installed

    sudo apt install python-neovim
    sudo apt install python3-neovim

**Since 18.04 via PPA**
Neovim has been added to a "Personal Package Archive" (PPA). This allows you to install it with `apt-get`. Follow the links to the PPAs to see which versions of Ubuntu are currently available via the PPA. Choose **stable** or **unstable**:

- [https://launchpad.net/~neovim-ppa/+archive/ubuntu/**stable**](https://launchpad.net/~neovim-ppa/+archive/ubuntu/stable) (Bionic Beaver 18.04 or newer only).
- [https://launchpad.net/~neovim-ppa/+archive/ubuntu/**unstable**](https://launchpad.net/~neovim-ppa/+archive/ubuntu/unstable)

Important: those PPA have dropped support for Xenial 16.04 and older.

To be able to use **add-apt-repository** you may need to install software-properties-common:

    sudo apt-get install software-properties-common

If you're using an older version Ubuntu you must use:

    sudo apt-get install python-software-properties

Run the following commands:

    sudo add-apt-repository ppa:neovim-ppa/stable
    sudo apt-get update
    sudo apt-get install neovim

Prerequisites for the Python modules:

    sudo apt-get install python-dev python-pip python3-dev python3-pip

If you're using an older version Ubuntu you must use:

    sudo apt-get install python-dev python-pip python3-dev
    sudo apt-get install python3-setuptools
    sudo easy_install3 pip

For instructions to install the Python modules, see [`:help provider-python`].

If you want to use Neovim for some (or all) of the editor alternatives, use the following commands:

    sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
    sudo update-alternatives --config vi
    sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
    sudo update-alternatives --config vim
    sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
    sudo update-alternatives --config editor

Note, however, that special interfaces, like `view` for `nvim -R`, are not supported.  (See [#1646](https://github.com/neovim/neovim/issues/1646) and [#2008](https://github.com/neovim/neovim/pull/2008).)


### OpenBSD

Neovim can be installed using [`pkg_add(1)`](https://man.openbsd.org/pkg_add):

    pkg_add neovim

or [from the ports tree](https://cvsweb.openbsd.org/cgi-bin/cvsweb/ports/editors/neovim/):

    cd /usr/ports/editors/neovim/ && make install

## Android

[Termux on the Google Play store](https://play.google.com/store/apps/details?id=com.termux) offers a Neovim package.

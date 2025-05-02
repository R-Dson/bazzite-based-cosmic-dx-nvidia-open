#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
# Tagged release
#dnf5 remove -y gnome-\* --setopt=install_weak_deps=False && \
dnf5 clean all && \
rm -rf /var/cache/dnf/*

dnf5 install -y \
    cosmic-applets \
    cosmic-bg \
    cosmic-comp \
    cosmic-edit \
    cosmic-files \
    cosmic-greeter \
    cosmic-launcher \
    cosmic-notifications \
    cosmic-osd \
    cosmic-panel \
    cosmic-player \
    cosmic-screenshot \
    cosmic-session \
    cosmic-settings \
    cosmic-settings-daemon \
    cosmic-store \
    cosmic-term \
    cosmic-workspaces \
    xdg-desktop-portal-cosmic \
    cosmic-icon-theme \
    pop-icon-theme
#    --#setopt=install_weak_deps=False && \
dnf5 clean all && \
rm -rf /var/cache/dnf/*

dnf5 install -y \
    qt6-qtbase-gui \
    qt6-qtdeclarative \
    qt6-qtsvg \
    qt6-qtwayland \
    kf6-kcoreaddons \
    kf6-kconfig \
    kf6-ki18n \
    kf6-kwidgetsaddons \
    kf6-kwindowsystem \
    kf6-kirigami \
    kf6-kiconthemes \
    breeze-icon-theme
#    --setopt=install_weak_deps=False && \
dnf5 clean all && \
rm -rf /var/cache/dnf/*

dnf5 install -y @cosmic-desktop-environment # --setopt=install_weak_deps=False && \
dnf5 clean all && \
rm -rf /var/cache/dnf/*


# Nightly release
# dnf5 copr enable ryanabx/cosmic-epoch
# dnf5 install cosmic-desktop

# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

#### Example for enabling a System Unit File

systemctl enable podman.socket

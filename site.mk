GLUON_SITE_PACKAGES := \
  gluon-mesh-batman-adv-15 \
  gluon-respondd \
  gluon-autoupdater \
  gluon-config-mode-autoupdater \
  gluon-config-mode-contact-info \
  gluon-config-mode-core \
  gluon-config-mode-geo-location \
  gluon-config-mode-hostname \
  gluon-config-mode-mesh-vpn \
  gluon-ebtables-filter-multicast \
  gluon-ebtables-filter-ra-dhcp \
  gluon-fffd-autokey \
  gluon-fffd-wifi-aliases \
  gluon-web-theme \
  gluon-web-admin \
  gluon-web-autoupdater \
  gluon-web-wifi-config \
  gluon-web-private-wifi \
  gluon-web-mesh-vpn-fastd \
  gluon-web-node-role \
  gluon-mesh-vpn-fastd \
  gluon-radvd \
  gluon-setup-mode \
  gluon-status-page \
  iwinfo \
  iptables \
  haveged

# Support (USB) network interfaces on x86 devices
ifeq ($(GLUON_TARGET),x86-generic)
GLUON_SITE_PACKAGES += \
  kmod-usb-core \
  kmod-usb2 \
  kmod-usb-hid \
  kmod-usb-net \
  kmod-usb-net-asix \
  kmod-usb-net-dm9601-ether \
  kmod-usb-net-asix-ax88179 \
  kmod-r8169
endif

# Support (USB) network interfaces on x86-64 devices
ifeq ($(GLUON_TARGET),x86-64)
GLUON_SITE_PACKAGES += \
  kmod-usb-core \
  kmod-usb2 \
  kmod-usb-hid \
  kmod-usb-net \
  kmod-usb-net-asix \
  kmod-usb-net-dm9601-ether \
  kmod-usb-net-asix-ax88179 \
  usbutils 
endif


# Allow overriding the release number from the command line
GLUON_RELEASE ?= snapshot-$(shell date '+%Y%m%d%H%M%S')

# Default priority for updates.
GLUON_PRIORITY ?= 0

# Region information for regulatory compliance
GLUON_REGION ?= eu

# Languages to include
GLUON_LANGS ?= en de

# Enable hardware with broken support
BROKEN = 1

# Enable Firmware Build for ath10k-based 5GHz WLAN Devices for example Archer c5 and c7 Modells
GLUON_ATH10K_MESH = 11s

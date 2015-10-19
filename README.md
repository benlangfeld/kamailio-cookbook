# Kamailio cookbook

This Chef cookbook installs Kamailio from packages. It is intended that this cookbook remain small and perform only installation tasks, with downstream cookbooks depending on it to configure Kamailio for more specific tasks.

# Requirements

Tested on Ubuntu 14.04.

# Usage

Add `recipe[kamailio]` to your node's run list

# Attributes

## Package install attributes
* `node['kamailio']['package']` - the Kamailio package to install (default `kamailio`)
* `node['kamailio']['source']` - the URL of the Kamailio repo (default `http://deb.kamailio.org/kamailio41`)
* `node['kamailio']['distro']` - the distro to select from the repo (default `trusty`)
* `node['kamailio']['key']` - URL to the repo's public GPG key (default `http://deb.kamailio.org/kamailiodebkey.gpg`)
* `node['kamailio']['user']` - the user under which to run Kamailio (default `kamailio`)
* `node['kamailio']['group']` - the primary group for the Kamilio user (default `kamailio`)
* `node['kamailio']['ethernet']` - the interface on which to listen for connections (default `eth0`)
* `node['kamailio']['debug']` - whether or not to enable debug logging (default `false`)

# Recipes

* `kamailio` - Fetches and installs Kamailio

# Author

[Ben Langfeld](@benlangfeld)

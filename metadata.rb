name             "kamailio"
maintainer       "Ben Langfeld"
maintainer_email "ben@langfeld.me"
license          "Apache 2.0"
description      "Installs Kamailio, the SIP proxy"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "1.0.0"

recipe "kamailio", "Install Kamailio, the SIP proxy"

depends 'apt', '~> 2.2'

supports "ubuntu", ">= 12.04"

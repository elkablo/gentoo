# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

USE_PHP="php5-6 php7-0 php7-1 php7-2 php7-3"

inherit php-ext-pecl-r3

KEYWORDS="~amd64 ~x86"

DESCRIPTION="PHP Bindings for AMQP 0-9-1 compatible brokers"
LICENSE="PHP-3.01"
SLOT="0"
IUSE=""

# Tests require running rabbitmq-server on localhost which requires epmd
# which only accepts /var/run/epmd.pid as pidfile.
RESTRICT="test"

BDEPEND="virtual/pkgconfig"
RDEPEND=">=net-libs/rabbitmq-c-0.5.2:=[ssl]"
DEPEND="${RDEPEND}"
PHP_EXT_ECONF_ARGS=()

# electrumx-installer
A script to automate the installation of electrumx 🤖

Installing electrumx isn't really straight-forward (yet). You have to install the latest version of Python and various dependencies for
one of the database engines. Then you have to integrate electrumx into your init system.

`electrumx-installer` simplifies this process to running a single command. All that's left to do for you
is to customise the configuration and to start electrumx.

## Usage
This installs electrumx using the default options:

    wget https://raw.githubusercontent.com/CryptoLover705/MCPC-ElectrumX_Installer/master/bootstrap.sh -O - | bash

You can also set some options if you want more control:

| -d --dbdir | Set database directory (default: /db/) |
|------------|----------------------------------------|
| --update   | Update previously installed version    |
| --leveldb  | Use LevelDB instead of RocksDB         |

For example:

    wget https://raw.githubusercontent.com/CryptoLover705/MCPC-ElectrumX_Installer/master/bootstrap.sh -O - | bash -s - -d /media/ssd/electrum-db


## Operating System Compatibility

The following operating systems are officially supported and automatically being tested against:

| OS | Status |
|----------|---:|
| Ubuntu 20.04   | [![ubuntu](https://badges.herokuapp.com/travis/CryptoLover705/MCPC-ElectrumX_Installer?env=IMAGE=%22ubuntu:20.04%22&label=ubuntu:20.04)](https://travis-ci.com/CryptoLover705/MCPC-ElectrumX_Installer/) |
| Ubuntu 18.04   | [![ubuntu](https://badges.herokuapp.com/travis/CryptoLover705/MCPC-ElectrumX_Installer?env=IMAGE=%22ubuntu:18.04%22&label=ubuntu:18.04)](https://travis-ci.com/CryptoLover705/MCPC-ElectrumX_Installer/) |
| Fedora 29      | [![centos](https://badges.herokuapp.com/travis/CryptoLover705/MCPC-ElectrumX_Installer?env=IMAGE=%22fedora:28%22&label=fedora:28)](https://travis-ci.com/CryptoLover705/MCPC-ElectrumX_Installer/) |
| Ubuntu 16.04   | [![ubuntu](https://badges.herokuapp.com/travis/CryptoLover705/MCPC-ElectrumX_Installer?env=IMAGE=%22ubuntu:16.04%22&label=ubuntu:16.04)](https://travis-ci.com/CryptoLover705/MCPC-ElectrumX_Installer/) |
| CentOS 7       | [![centos](https://badges.herokuapp.com/travis/CryptoLover705/MCPC-ElectrumX_Installer?env=IMAGE=%22centos:7%22&label=centos:7)](https://travis-ci.com/CryptoLover705/MCPC-ElectrumX_Installer/) |
| Debian Stretch | [![debian](https://badges.herokuapp.com/travis/CryptoLover705/MCPC-ElectrumX_Installer?env=IMAGE=%22debian:9%22&label=debian:9)](https://travis-ci.com/CryptoLover705/MCPC-ElectrumX_Installer/) |
| Debian Buster  | [![debian](https://badges.herokuapp.com/travis/CryptoLover705/MCPC-ElectrumX_Installer?env=IMAGE=%22debian:10%22&label=debian:10)](https://travis-ci.com/CryptoLover705/MCPC-ElectrumX_Installer/) |


If you prefer a different operating system that's not listed here, see
[`distributions/README.md`](https://github.com/CryptoLover705/MCPC-ElectrumX_Installer/blob/master/distributions/README.md) to find out how to add it.
Or open an [issue](https://github.com/CryptoLover705/MCPC-ElectrumX_Installer/issues/new) if you'd rather not do that yourself.

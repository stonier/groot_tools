# Change Log

The format is based on [Keep a Changelog](http://keepachangelog.com/).

## [Unreleased]
- [groot-docker-build] install networking tools in the image - iproute2, iputils-ping and net-tools
- [groot-docker-enter] customised prompt that reflects the container name
- [groot-docker-enter] command line option for customising the container name

## [0.3.2] - 2020-12-30
- [groot-docker-enter] pass in the user's ssh environment to the container
- [groot-docker-enter/build] gui and nvidia runtime docker support for groot-docker-*
- [groot-docker-build] pre-install basic system packages (bash-completion build-essential curl lsb-release vim wget)

## [0.3.1] - 2020-12-15
- [groot-docker-build] use temp dirs to avoid creating unnecessary contexts

## [0.3.0] - 2020-12-14
- added groot-docker-build and groot-docker-enter

## [0.2.1] - 2020-06-25
- bugfix for argparse, is now in python3

## [0.2.0] - 2020-06-25
- upgraded to python3

## [0.1.1] - 2017-01-31
- cfind -> groot-cfind

## [0.1.0] - 2017-01-31
- cfind added

[Unreleased]: https://github.com/stonier/groot_tools/compare/0.3.2...HEAD
[0.3.2]: https://github.com/stonier/groot_tools/compare/0.3.1...0.3.2
[0.3.1]: https://github.com/stonier/groot_tools/compare/0.3.0...0.3.1
[0.3.0]: https://github.com/stonier/groot_tools/compare/0.2.1...0.3.0
[0.2.1]: https://github.com/stonier/groot_tools/compare/0.2.0...0.2.1
[0.1.1]: https://github.com/stonier/groot_tools/compare/0.1.0...0.1.1
[0.1.0]: https://github.com/stonier/groot_tools/compare/97851767bb617e1ab5e3a1fbf379242c75b0d0e2...0.1.0

repoman-travis
==============

.travis.yml to run repoman continuously for your overlay.

Repoman is a tool to enforce quality assurance in the package repository of Gentoo.

This tool will run in an instance of [Travis CI](https://travis-ci.org) and download a current snapshot of Gentoo's main tree and a recent portage release.
It will check your overlay with repoman and report this log to your travis build report.

## Installation

* Add .travis.yml to your overlay (should be hosted on github)
* Log in to [Travis CI](https://travis-ci.org) with your github account
* Activate travis runs for your overlay repository

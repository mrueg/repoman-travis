repoman-travis
==============

.travis.yml to run repoman continuously for your overlay.

Repoman is a tool to enforce a minimal level of quality assurance in packages added to Gentoo's main repository and overlays.

This tool will run in an instance of [Travis CI](https://travis-ci.org) and download a current snapshot of Gentoo's main tree and a recent portage release.
It will check your overlay with repoman and report this log to your travis build report.

## Installation

* Add .travis.yml to your overlay (should be hosted on github)
* Log in to [Travis CI](https://travis-ci.org) with your github account
* Activate travis runs for your overlay repository

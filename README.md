# Drupal Wayback

This is a showcase of all major Drupal versions from Drupal 1 to 11.

Legacy versions are no longer supported and it's difficult to get some really ancient versions working properly (e.g. Drupal 1, 2 and 3). However, thanks to [DDEV](https://ddev.com/) we are able to experience (almost) what it was like over 20 years ago. 

## Prerequisites

You must have the following applications:

1. [Docker](https://www.docker.com/)
2. [DDEV](https://ddev.com/) 


## Installation

1. Clone the repository.
2. Change directory to any of the versions e.g. `cd drupal07`
3. Run `ddev build`
4. Run `ddev launch` to view the site in your default browser. 

Note: Username/Password: **admin / Passw0rd**

## Updating Composer-managed Drupal versions

Drupal 8 through 11 use Composer constraints that stay within each project's
major Drupal version while allowing future minor and patch releases. From the
repository root, update all four projects with:

```bash
./update-drupal all
```

To update just one project, pass its directory name, for example:

```bash
./update-drupal drupal-11
```

The command updates Composer dependencies inside DDEV for supported Drupal
versions. Drupal 8 and 9 are end-of-life and already at their final releases,
so the command installs their reproducible locked dependencies instead. If a
site is already installed, it also runs database updates and rebuilds Drupal's
caches. For a fresh checkout, use `ddev build` in the project directory to
install and seed the showcase site after updating dependencies.

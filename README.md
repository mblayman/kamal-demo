# kamal-demo

How does Kamal work?

## Motivation

* It's cool.
* I want simplicity.
* How to go fast?
* Ideas from Pieter Levels (digital nomad with lots of startups)
  * Two login styles
    * Login via email, creates accounts, sends magic link,
      session token is nearly infinite
    * Oauth2 login (login with Gmail)
  * SQLite
* Django VPS
  * Login with magic links
  * Run SQLite db (good backups)
  * Easy deployment with something like Kamal

# My experience

1. Install kamal alias from instructions.
2. Missing docker.
3. Install Docker Desktop from docker.com
4. `kamal init`
5. Starting to configure in `config/deploy.yml`
6. Tried `kamal deploy`. Failed at registry login.


# Kamal notes

* Traefik container - proxy that enables zero-downtime deploys
  (switches applications seemlessly when deploying)

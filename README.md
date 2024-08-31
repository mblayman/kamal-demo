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
7. Created personal access token on Docker Hub.
8. Tried `kamal deploy` again. Timed out on server at 192.168.0.1. Shocker.
9. Tried `kamal build push`. Failed to find a Dockerfile.
10. Pulled Django Dockerfile from ChatGPT.
11. Tried `kamal build push`. Builder failed to find Dockerfile.
12. Commit `Dockerfile`.
13. Missing `requirements.txt`. Created simple one and committed.
14. `kamal build push` failed to deliver image to Docker Hub. Failed with: #16 ERROR: failed to push mblayman/kamal-demo:a3ef52a9f9b3d19f49f9814cb4ccb636328bdd1a: push access denied, repository does not exist or may require authorization: server message: insufficient_scope: authorization failed
15. In Docker Hub, make `kamal-demo` repository.
16. Still failed to push image to Docker Hub.
17. Install `kamal` using `gem install`.
18. `kamal build push` succeeded.
19. Reported https://github.com/basecamp/kamal/issues/919


# Kamal notes

* Traefik container - proxy that enables zero-downtime deploys
  (switches applications seemlessly when deploying)

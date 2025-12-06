# docker-inventree
Docker setup for running Inventree behind a Traefik reverse-proxy with Authentik Identity Provider

## Docker setup
1. Initialize config by running init.sh: `./init.sh`
1. Input personal information into `.env`
1. Make sure that Docker network `traefik` exists, `docker network ls`
1. Initialize the Inventree server: `docker compose run --rm server invoke update`
1. Create a superuser/admin account: `docker compose run --rm server invoke superuser`
1. Run `docker compose up -d` and check logs

## Authentik setup
See relevant [Authentik](https://github.com/znibb/docker-authentik#46-inventree) repo

## Updates
Run:
1. `docker compose down`
1. `docker compose run --rm server invoke update`
1. `docker compose up -d`

## Admin interface
To access the admin interface simply add `/admin/` to the URL (NOTE the trailing `/`)

## Plugins
1. Go to `Admin Center`
1. Click `Plugins` under `Extend / Integrate` in the left side panel
1. Expand the `Plugin Settings` section and enable:
    - `Enable URL integration`
    - `Enable app integration`
    - `Check plugins on startup`
1. Expand the `Plugins` section and click `Install Plugin` above the plugin list
1. Check out available plugin settings by left-clicking on the installed plugin in the list

### KiCadLibraryPlugin
Source: https://github.com/afkiwers/inventree_kicad
1. Enter:
    - Package Name: `inventree-kicad-plugin`
    - Source URL: `git+https://github.com/afkiwers/inventree_kicad`
1. Activate the plugin by clicking the `...` menu to the far right of `KiCadLibraryPlugin` and select `Activate`

### Finish
1. Restart services and run `docker compose run server invoke plugins`


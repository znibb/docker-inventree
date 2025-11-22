# docker-inventree

## Setup
1. `docker compose run --rm server invoke update`
1. `docker compose run --rm server invoke superuser`

## Admin interface
To access the admin interface simply add `/admin/` to the URL (NOTE the trailing `/`)

## Plugins
1. Go to `Admin Center`
1. Click `Plugins` under `Extend / Integrate` in the left side panel
1. Click `Install Plugin` at the top of the plugin list

### KiCadLibraryPlugin
1. Enter:
    - Package Name: `inventree-kicad-plugin`
    - Source URL: `git+https://github.com/afkiwers/inventree_kicad`
1. Activate the plugin by clicking the `...` menu to the far right of `KiCadLibraryPlugin` and select `Activate`

### IPNGenerator
1. Enter:
    -  Package Name: `inventree-ipn-generator`
1. Activate the plugin by clicking the `...` menu to the far right of `IPNGenerator` and select `Activate`

### Finish
1. Restart services and run `docker compose run server invoke plugins`



## TODO
1. Group permissions?
# :bird: pterodactyl-installer

[![Build Status](https://travis-ci.com/vilhelmprytz/pterodactyl-installer.svg?branch=master)](https://travis-ci.com/vilhelmprytz/pterodactyl-installer)
[![License: GPL v3](https://img.shields.io/github/license/vilhelmprytz/pterodactyl-installer)](LICENSE)
[![Discord](https://img.shields.io/discord/682342331206074373?label=&logo=discord&logoColor=ffffff&color=7389D8&labelColor=6A7EC2)](https://pterodactyl-installer.se/discord)
[![made-with-bash](https://img.shields.io/badge/-Made%20with%20Bash-1f425f.svg?logo=image%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw%2FeHBhY2tldCBiZWdpbj0i77u%2FIiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8%2BIDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTExIDc5LjE1ODMyNSwgMjAxNS8wOS8xMC0wMToxMDoyMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTUgKFdpbmRvd3MpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkE3MDg2QTAyQUZCMzExRTVBMkQxRDMzMkJDMUQ4RDk3IiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkE3MDg2QTAzQUZCMzExRTVBMkQxRDMzMkJDMUQ4RDk3Ij4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6QTcwODZBMDBBRkIzMTFFNUEyRDFEMzMyQkMxRDhEOTciIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6QTcwODZBMDFBRkIzMTFFNUEyRDFEMzMyQkMxRDhEOTciLz4gPC9yZGY6RGVzY3JpcHRpb24%2BIDwvcmRmOlJERj4gPC94OnhtcG1ldGE%2BIDw%2FeHBhY2tldCBlbmQ9InIiPz6lm45hAAADkklEQVR42qyVa0yTVxzGn7d9Wy03MS2ii8s%2BeokYNQSVhCzOjXZOFNF4jx%2BMRmPUMEUEqVG36jo2thizLSQSMd4N8ZoQ8RKjJtooaCpK6ZoCtRXKpRempbTv5ey83bhkAUphz8fznvP8znn%2B%2F3NeEEJgNBoRRSmz0ub%2FfuxEacBg%2FDmYtiCjgo5NG2mBXq%2BH5I1ogMRk9Zbd%2BQU2e1ML6VPLOyf5tvBQ8yT1lG10imxsABm7SLs898GTpyYynEzP60hO3trHDKvMigUwdeaceacqzp7nOI4n0SSIIjl36ao4Z356OV07fSQAk6xJ3XGg%2BLCr1d1OYlVHp4eUHPnerU79ZA%2F1kuv1JQMAg%2BE4O2P23EumF3VkvHprsZKMzKwbRUXFEyTvSIEmTVbrysp%2BWr8wfQHGK6WChVa3bKUmdWou%2BjpArdGkzZ41c1zG%2Fu5uGH4swzd561F%2BuhIT4%2BLnSuPsv9%2BJKIpjNr9dXYOyk7%2FBZrcjIT4eCnoKgedJP4BEqhG77E3NKP31FO7cfQA5K0dSYuLgz2TwCWJSOBzG6crzKK%2BohNfni%2Bx6OMUMMNe%2Fgf7ocbw0v0acKg6J8Ql0q%2BT%2FAXR5PNi5dz9c71upuQqCKFAD%2BYhrZLEAmpodaHO3Qy6TI3NhBpbrshGtOWKOSMYwYGQM8nJzoFJNxP2HjyIQho4PewK6hBktoDcUwtIln4PjOWzflQ%2Be5yl0yCCYgYikTclGlxadio%2BBQCSiW1UXoVGrKYwH4RgMrjU1HAB4vR6LzWYfFUCKxfS8Ftk5qxHoCUQAUkRJaSEokkV6Y%2F%2BJUOC4hn6A39NVXVBYeNP8piH6HeA4fPbpdBQV5KOx0QaL1YppX3Jgk0TwH2Vg6S3u%2BdB91%2B%2FpuNYPYFl5uP5V7ZqvsrX7jxqMXR6ff3gCQSTzFI0a1TX3wIs8ul%2Bq4HuWAAiM39vhOuR1O1fQ2gT%2F26Z8Z5vrl2OHi9OXZn995nLV9aFfS6UC9JeJPfuK0NBohWpCHMSAAsFe74WWP%2BvT25wtP9Bpob6uGqqyDnOtaeumjRu%2ByFu36VntK%2FPA5umTJeUtPWZSU9BCgud661odVp3DZtkc7AnYR33RRC708PrVi1larW7XwZIjLnd7R6SgSqWSNjU1B3F72pz5TZbXmX5vV81Yb7Lg7XT%2FUXriu8XLVqw6c6XqWnBKiiYU%2BMt3wWF7u7i91XlSEITwSAZ%2FCzAAHsJVbwXYFFEAAAAASUVORK5CYII%3D)](https://www.gnu.org/software/bash/)

Ceci est une reprise d'un script non officielle est une reprise mais en fracais!

Pour avoir plus d'info sur [Pterodactyl](https://pterodactyl.io/) aller sur le site officielle. Ce script n'est pas associé à l'officiel Pterodactyl Project.

## Caractéristiques

- Installation automatique du Pterodactyl Panel (dépendances, base de données, cronjob, nginx).
- Installation automatique des Pterodactyl Wings (Docker, systemd).
- Panel : (optionnel) configuration automatique de Let's Encrypt.
- Panel : (optionnel) configuration automatique du firewall.

## Aide et soutien

Pour obtenir de l'aide et du support concernant le script lui-même et **pas le projet officiel Pterodactyl**, vous pouvez rejoindre le [Discord Chat](https://pterodactyl-installer.se/discord).
## Système d'exploitation compatible.

Voici la liste qui supporte l'installation de pterodactyl est **wings**.

### Supported panel operating systems and webservers

| Operating System | Version | nginx support      | PHP Version |
| ---------------- | ------- | ------------------ | ----------- |
| Ubuntu           | 14.04   | :red_circle:       |             |
|                  | 16.04   | :red_circle: \*    |             |
|                  | 18.04   | :white_check_mark: | 8.0         |
|                  | 20.04   | :white_check_mark: | 8.0         |
| Debian           | 8       | :red_circle: \*    |             |
|                  | 9       | :white_check_mark: | 8.0         |
|                  | 10      | :white_check_mark: | 8.0         |
|                  | 11      | :white_check_mark: | 8.0         |
| CentOS           | 6       | :red_circle:       |             |
|                  | 7       | :white_check_mark: | 8.0         |
|                  | 8       | :white_check_mark: | 8.0         |

### Supported Wings operating systems

| Operating System | Version | Supported          |
| ---------------- | ------- | ------------------ |
| Ubuntu           | 14.04   | :red_circle:       |
|                  | 16.04   | :red_circle: \*    |
|                  | 18.04   | :white_check_mark: |
|                  | 20.04   | :white_check_mark: |
| Debian           | 8       | :red_circle:       |
|                  | 9       | :white_check_mark: |
|                  | 10      | :white_check_mark: |
|                  | 11      | :white_check_mark: |
| CentOS           | 6       | :red_circle:       |
|                  | 7       | :white_check_mark: |
|                  | 8       | :white_check_mark: |

_\* Ubuntu 16 et Debian 8 ne sont plus pris en charge car Pterodactyl ne le prend pas activement en charge._

## Utilisation des scripts d'installation
Pour lancer simplement l'installation voici la commande à faire :)
```bash
bash <(curl -s https://pterodactyl-installer.se)
```

_Note: _Remarque : Sur certains systèmes, il est nécessaire d'être déjà connecté en tant que root avant d'exécuter la commande sur une ligne (où `sudo` est devant la commande ne fonctionne pas)._

Voici un tuto youtube (en anglais) [YouTube video](https://www.youtube.com/watch?v=E8UJhyUFoHM) pour vous illustrer à peut près le processus.

## Configuration du pare feu

Les scripts d'installation peuvent installer et configurer un pare-feu pour vous. Le script vous demandera si vous le souhaitez ou non. Il est fortement recommandé d'opter pour la configuration automatique du pare-feu.

## Développement et opérations

### Tester le script localement

Pour tester un script voici un site [Vagrant](https://www.vagrantup.com). Avec Vagrant, vous pouvez rapidement mettre en route une nouvelle machine pour tester le script.

Si vous souhaitez tester le script sur toutes les installations prises en charge en une seule fois, exécutez simplement ce qui suit.

```bash
vagrant up
```

Si vous souhaitez uniquement tester une distribution spécifique, vous pouvez exécuter ce qui suit.

```bash
vagrant up <name>
```

Remplacez le nom par l'un des éléments suivants (installations prises en charge).
- `ubuntu_focal`
- `ubuntu_bionic`
- `debian_bullseye`
- `debian_buster`
- `debian_stretch`
- `centos_8`
- `centos_7`

Ensuite, vous pouvez utiliser `vagrant ssh <nom de la machine>` pour SSH dans la boîte. Le répertoire du projet sera monté dans `/vagrant` afin que vous puissiez rapidement modifier le script localement, puis tester les modifications en exécutant le script à partir de `/vagrant/install_panel.sh` et `/vagrant/install_wings.sh` respectivement.

### Création d'une version

Il y a quelques fichiers que chaque validation de version doit toujours changer. Tout d'abord, mettez à jour le `CHANGELOG.md` afin que la date de sortie et la balise de sortie soient toutes deux affichées. Aucune modification ne doit être apportée aux points du journal des modifications eux-mêmes. Deuxièmement, mettez à jour `GITHUB_SOURCE` et `SCRIPT_RELEASE` dans `install-panel.sh` et `install-wings.sh`. Troisièmement, mettez à jour `SCRIPT_RELEASE` dans `install.sh`. Enfin, vous pouvez maintenant pousser un commit avec le message `Release vX.Y.Z`. Créez une version sur GitHub. Voir [ce commit](https://github.com/vilhelmprytz/pterodactyl-installer/commit/90aaae10785f1032fdf90b216a4a8d8ca64e6d44) pour référence.

Lorsque la version est publiée, poussez un autre commit qui annule les modifications que vous avez apportées à `install-wings.sh` et `install-panel.sh`. Voir [ce commit](https://github.com/vilhelmprytz/pterodactyl-installer/commit/be5f361523d1d546d49eef8b3ce1a9145eded234) for reference.

## Contributors ✨

Copyright (C) 2018 - 2021, Vilhelm Prytz, <vilhelm@prytznet.se> (Créateur officielle du script)
Copyright (C) 2018 - 2022, Jhonathan Hiul <saispasje24@gmail.com> (Traducteur en français)

Créé et maintenu par [Vilhelm Prytz](https://github.com/vilhelmprytz).


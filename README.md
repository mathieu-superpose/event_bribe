# Event Bribe
_l'app pour ne participer qu'à des activités payantes_

![](app/assets/images/event_bribe.png?raw=true)


## Application

Réseau social de réservation d'activités payantes, créée dans le cadre de The Hacking Project

## Installation

- Pre-Installer bundle et gem dépendencies.
  ```
  bundle install
  bundle update
  ```
- Base de donnée:

![](app/assets/images/bdd.png?raw=true)
  
  Le système de gestion de base de données est postgresSQL.

  Pour créer votre base de données:
  
  ```bash
  rails db:create #ou rails db:create:all #ou rake db:create:all
  rails db:migrate
  ```


## Créateur

- [:camel: Mathieu JOLY](https://github.com/mathieu-superpose)

Vous pouvez commencer à utiliser Open WebUI avec Ollama immédiatement (après l'avoir installé depuis le catalogue Yunohost). Voici le guide pour gérer Ollama depuis Open WebUI : https://docs.openwebui.com/getting-started/quick-start/starting-with-ollama/

## Connexion avec YunoHost

Les utilisateurs connectés à YunoHost sont connectés automatiquement à Open WebUI. Le formulaire de connexion d'Open WebUI n'est plus affiché.

Cela implique les prérequis et effets suivants :

- **Prérequis :** YunoHost 12.1.15 ou plus récent et SSOwat 12.1.1 ou plus récent. L'installation, la mise à niveau et la restauration s'arrêtent avec une erreur si SSOwat est plus ancien.
- **Adresse e-mail :** Les comptes sont associés par l'adresse e-mail principale de l'utilisateur YunoHost. Modifier cette adresse crée un nouveau compte Open WebUI vide.
- **Accès public :** N'ajoutez pas `visitors` à la permission principale de cette application. Les visiteurs n'ont pas de session YunoHost et ne peuvent donc pas se connecter.
- **Clients API :** Les requêtes sans session YunoHost sont redirigées vers le portail.
- **Déconnexion :** Sign Out dans Open WebUI ouvre le portail YunoHost. Pour fermer complètement la session, déconnectez-vous aussi du portail.
- **Nom affiché :** Les nouveaux comptes utilisent le nom d'utilisateur YunoHost. Les utilisateurs peuvent le modifier dans les paramètres d'Open WebUI.
- **Accès local :** L'application écoute uniquement sur `127.0.0.1` et n'est donc accessible que via nginx. Tout processus local pouvant atteindre son port peut se connecter en tant que n'importe quel utilisateur.

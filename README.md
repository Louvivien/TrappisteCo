Test effecuté avec les pre-requis suivants :
node v8.16.2
npm 6.4.1
docker 19.03.2
docker-compose  1.13.0

<b>Installation :</b><br>
- Installer les images Docker en executant :<br>
./getDockerImages.sh

- Aller dans ./app/ et lancer npm install dans un terminal

- Demarrer Hyperledger environnement :<br>
./main.sh up

- Eteindre Hyperledger environnement :<br>
./main.sh down

<b>Utilisation :</b><br>
Le navigatoire doit normalement se lancer. Dans le cas contraire, aller sur : http://localhost:3000 <br>

Deux identifiants sont proposés pour cet environnement :<br> 
ID: responsable - MDP: pwd<br>
ID: vendeur - MDP: pwd

<b>Conseil :</b><br>
Ouvrir deux navigateurs (ou onglets) différents pour chaque utilisateur.<br>
Ainsi, vous aurez possibilité de chercher les codes barres, que vous souhaitez utiliser directement avec le user responsable,
et ajouter les codes barre à la caisse avec le user vendeur.

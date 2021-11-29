GITHUB
Comment supprimer un dossier de Github pour pouvoir maintenant le mettre en .gitignore :
ÉTAPE 1. git rm -r lenomdudossier
ÉTAPE 2. git add . (. pour tous le dossier courant)
ÉTAPE 3. git commit -m "mon message"
ÉTAPE 4. git push 

SQL :

ETAPE 1. Se connecter a la BDD en superuser : sudo -u postgres psql
ETAPE 2. Créer un User : postgres=# create user monuser with encrypted password 'mypassword';
ETAPE 3. Créer une BDD PUIS Ajouter user : CREATE DATABASE madatabase; PUIS ALTER DATABASE madatabase OWNER TO monuser;
-> ETAPE 3bis. Etape 3-1 en une étape : CREATE DATABASE madatabase OWNER monuser;  <-
ETAPE 4. Donner les droits d'accès à mon user : postgres=# grant all privileges on database sample_db to monuser;
ETAPE 5. Se connecter à la BDD : psql -h 127.0.0.1 -p 5432 -U monuser -d madatabase
ETAPE 6. Création de table via fichier script SQL (-f) : psql -h 127.0.0.1 -p5432 -U monuser -d madatabase -f cheminduscript
-> ETAPE 6bis. Création de table via fichier script SQL (<) : psql -h 127.0.0.1 -p5432 -U monuser -d madatabase < cheminduscript  <-

Diverses commandes :
- Lister les users : \du (moyen mémo-technique d pour display et u pour users
- Lister les BDD :  \l
- Lister les tables : \dt 
- Voir les informations d'une table précise : \d lenomdelatable 
Jordane DEVÉMY [Yggdrasil] — Hier à 13:32
 Mise en place d'ESLINT avec la config AIRBNB :

- Installation du package AirBnB : npm i eslint-config-airbnb
- Création d'un .eslinrc, y ajouter à l'intérieur :
{
    "extends": "airbnb"
}

JS
On est parti du simple index.js pour arriver a la structure complète avec routeur, controller, dataMapper.

Installation des NMP : NPM INSTALL express ejs dotenv eslint-config-airbnb pg

configuration du .env :
#PORT EXPRESS
PORT = 0000

#SQL CONNECTION
PGUSER = username
PGHOST = hostname
PGDATABASE = ddbname
PGPASSWORD = pwd
PGPORT = 0000

Ici n'est indiqué que la forme avec le datamapper en pseudocode

index .js :
require Dotenv
require Express
.Set EJS + .Static (3 commandes : 2 .set , 1 .use)
require router

MIDDELWARE Router => La suite dans ce module

.Listen(Port)

router.js :
require Express
require Controllers
appel a router (const router = express.Router());

routes (router.get('/'),controller.methodeController) => La suite dans ce module

Middleware page 404
Export du module

controller.js :
require dataMapper

ObjetController ={
  //Ici la seule fonction qui est lancée est dataMapper.methodeSQL.
  //Elle a pour argument le Callback de client.query pour respecter la SOC

  dataMapper.methodeSQL (Callback : (error,data)) =>{
    si (error) {
      //La requete SQL retourne une erreur "error"
      console.log("SQL ERROR : ",error);
    } sinon {
      //La requeste SQL est ok retourne "data"
      reponse.render('vue',{nomdatadanslavue: data.rows });
    });
  }

Export du module

database.js
Require PG (on maitrise pas donc on copie sans se poser de questions pour l'instant) : 
const { Client } = require('pg'); 

Création d'un nouveau client :
const client = new Client();

client.connect();

Export du module

dataMapper.js
require database

const dataMapper = {
  methodeSQL: (callback = paramèrte de dataMapper.methodeSQL )=>{
    const querySQL = requete SQL
    client.query(querySQL,callback)
  }
}



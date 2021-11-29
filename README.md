<h2>GITHUB</h2>
Lien entre votre repo existant et votre dossier

<ol>
<li>
 
 ```Créer votre repo sur Github.com et copier l'adresse ssh```
 
 </li>
<li>
 
 ```git init```
 
 </li>
<li> On ajoute une remote pour pouvoir push sur le repos. Elle s'appelle ici ```origin```
 
 ```git remote add origin git remote add origin <VOTRE LIEN SSH REPO GITHUB>```
 
 </li>
<li>
 
 ```git add .```
 
 </li>
<li>
 
 ```git commit -m "<VOTRE MESSAGE>"```
 
 </li>
<li>
 
 ```git push```<br>
En cas de "fatal: The current branch master has no upstream branch. To push the current branch and set the remote as upstream, use
Copier coller la commande sous votre erreur. Elle ressemble à : ```git push --set-upstream origin master```
 
 </li>
 </ol>
Normalement, votre git est maintenant bien lié entre votre projet et votre espace Github

<br>
Comment **supprimer** un dossier de Github pour pouvoir maintenant le mettre en .gitignore :
<br>
<ol>
<li>
 
 ```git rm -r lenomdudossier```
 
 </li>
<li>
 
 ```git add . (. pour tous le dossier courant)```
 
 </li>
<li>
 
 ```git commit -m "mon message"```
 
 </li>
<li>
 
 ``` git push ```
 
 </li>
 
</ol>

<h2>SQL</h2>
<ol>
 <li>
  
  Se connecter a la BDD en superuser : `sudo -u postgres psql`
 
 </li>
 <li>
  
  Créer un User : `postgres=# create user monuser with encrypted password 'mypassword';`
 
 </li>
<li>
 
 Créer une BDD PUIS Ajouter user : `CREATE DATABASE madatabase; PUIS ALTER DATABASE madatabase OWNER TO monuser`;
 VARIANTE : Etape 3-1 en une étape : `CREATE DATABASE madatabase OWNER monuser;`  
 
 </li>
<li>
 
 Donner les droits daccès à mon user : `postgres=# grant all privileges on database sample_db to monuser;`
 
 </li>
 <li>
  
  Se connecter à la BDD : `psql -h 127.0.0.1 -p 5432 -U monuser -d madatabase`
 
 </li>
<li>
    
   Création de table via fichier script SQL (-f) : `psql -h 127.0.0.1 -p5432 -U monuser -d madatabase -f cheminduscript`<br>
   VARIANTE :  Création de table via fichier script SQL (<) : `psql -h 127.0.0.1 -p5432 -U monuser -d madatabase < cheminduscript`  
 
 </li>
</ol>
 
Diverses commandes :
- Lister les users : \du (moyen mémo-technique d pour display et u pour users
- Lister les BDD :  \l
- Lister les tables : \dt 
- Voir les informations d'une table précise : \d lenomdelatable 
Jordane DEVÉMY [Yggdrasil] — Hier à 13:32

<h2>ESLINT avec la config AIRBNB :</h2>

- Installation du package AirBnB : `npm i eslint-config-airbnb`
- Création d'un fichier `.eslinrc` à la racine du répertoire, y ajouter à l'intérieur :
```
{
    "extends": "airbnb"
}
```

<h2>JS</h2>
On est parti du simple index.js -> listen pour arriver a la structure complète avec routeur, controller, dataMapper.
Ici n'est indiqué que la forme avec le datamapper en pseudocode

**Installation des NMP : **
`NPM INSTALL express ejs dotenv eslint-config-airbnb pg`

configuration du .env :
```
#PORT EXPRESS
PORT = 0000

#SQL CONNECTION
PGUSER = username
PGHOST = hostname
PGDATABASE = ddbname
PGPASSWORD = pwd
PGPORT = 0000
```


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



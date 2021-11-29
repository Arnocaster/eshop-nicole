<h2>Note</h2>
Quoi le code n'est pas commenté!?
Et oui il faut s'aider du pseudocode ci dessous pour comprendre chaque fonction petit a petit.

<h2>GITHUB</h2>
<h4>Lien entre votre repo existant et votre dossier</h4>

<ol>
<li>
 
Créer votre repo sur `Github.com` et copier l'adresse ssh
 
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
<br>

<h2>SQL</h2>
<ol>
 <li>
  
  Se connecter a la BDD en superuser :<br> `sudo -u postgres psql`
 
 </li>
 <li>
  
  Créer un User :<br> `postgres=# create user monuser with encrypted password 'mypassword';`
 
 </li>
<li>
 
 Créer une BDD PUIS Ajouter user :<br> `CREATE DATABASE madatabase; PUIS ALTER DATABASE madatabase OWNER TO monuser;`<br>
 VARIANTE : Etape 3-1 en une étape :<br> `CREATE DATABASE madatabase OWNER monuser;`  
 
 </li>
<li>
 
 Donner les droits daccès à mon user :<br> `postgres=# grant all privileges on database sample_db to monuser;`
 
 </li>
 <li>
  
  Se connecter à la BDD :<br> `psql -h 127.0.0.1 -p 5432 -U monuser -d madatabase`
 
 </li>
<li>
    
   Création de table via fichier script SQL (-f) :<br> `psql -h 127.0.0.1 -p5432 -U monuser -d madatabase -f cheminduscript`<br>
    VARIANTE Création de table via fichier script SQL (<) :<br> `psql -h 127.0.0.1 -p5432 -U monuser -d madatabase < cheminduscript`  
 
 </li>
</ol>
 
Diverses commandes :
- Lister les users : `\du` (moyen mémo-technique d pour display et u pour users
- Lister les BDD :  `\l`
- Lister les tables : `\dt` 
- Voir les informations d'une table précise : `\d lenomdelatable `

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

- <h4>Installation des NMP :</h4> 
`NPM INSTALL express ejs dotenv eslint-config-airbnb pg`

- <h4>configuration du .env :</h4>

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

- <h4>index .js :</h4>

```javascript
require Dotenv
require Express
.Set EJS + .Static (3 commandes : 2 .set , 1 .use)
require router

MIDDELWARE Router //=> La suite dans ce module

.Listen(Port)
```

- <h4>router.js :</h4>

```javascript
require Express
require Controllers
appel a router (const router = express.Router());

routes (router.get('/'),controller.methodeController) //=> La suite dans ce module

Middleware page 404
Export du module
```

- <h4>controller.js :</h4>

```javascript
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
      reponse.render('vue',{nomdatadanslavue: data.rows }); //=> C'est la dernière fonction avant l'affichage de la page!!!!
    });
  }

Export du module
```

- <h4>database.js</h4>
On maitrise pas les objets donc on copie sans se poser de questions pour l'instant : 
```javascript
Require PG 

const { Client } = require('pg'); 

const client = new Client();

client.connect();

Export du module
```

- <h4>dataMapper.js</h4>
```javascript
require database

const dataMapper = {
  methodeSQL: (callback = paramèrte de dataMapper.methodeSQL )=>{
    const querySQL = requete SQL
    client.query(querySQL,callback) //C'est parce que l'on a besoin d'un callback dans client.query que nous devons le mettre en argument de la methodeSQL
  }
}
```



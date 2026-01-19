Java est la technologie globale qui se divise en 3 branches distinctes :
Java SE (Standard Edition) : Le socle de base (pour les applications bureau).
Java EE (Enterprise Edition) : Pour les applications web et d'entreprise (c'est notre sujet).
Java ME (Micro Edition) : Pour le mobile et l'embarqué.
Dire "JEE = Java" est inexact car JEE n'est qu'une partie de l'univers Java.

Il est écrit noir sur blanc que JEE est une plate-forme pour le développement d'applications réparties (ce qui est un synonyme de distribuées).
Bien que JEE permette de faire du Web (réponse a), le terme "Distribuées" est plus large et constitue la définition technique 
exacte de l'architecture JEE (Client <-> Serveur <-> Base de données).

Le document précise qu'une Servlet fonctionne selon un modèle client/serveur (ou requête/réponse). 
Bien que le protocole HTTP soit le plus courant (d'où le nom HttpServlet), la définition indique que d'autres 
protocoles basés sur ce modèle peuvent être utilisés, et cite explicitement http et ftp.

Le cycle de vie JSP : Une page JSP est écrite comme du HTML avec des bouts de code, mais le serveur a besoin d'une vraie classe Java pour l'exécuter.
Lors de la première requête, le serveur web convertit (Compile) la page (Les fichiers) JSP en une Servlet Java.

Le navigateur ne comprend que le HTML (avec CSS et JavaScript). Il est incapable de lire du Java.
C'est donc le rôle du Serveur (comme Tomcat) de faire ce travail de traduction :
Il prend la JSP.
Il exécute le code Java à l'intérieur.
Il génère une page HTML propre.
Il envoie ce HTML au navigateur.
La réponse à la question "Un fichier JSP peut être exécuté par un navigateur" est donc Faux.

Un Design Pattern (ou Patron de Conception) n'est pas du code prêt à l'emploi ni un logiciel spécifique. 
C'est plutôt une meilleure pratique documentée. C'est la méthode éprouvée pour résoudre un problème que beaucoup d'autres ont déjà rencontré.

C'est le principe fondamental des Servlets Java : elles étendent les capacités d'un serveur pour répondre aux requêtes d'un client (généralement un navigateur web)
Le Client (Navigateur) envoie une requête (ex: HTTP GET).
Le Serveur reçoit la demande et l'envoie à la Servlet concernée.
La Servlet traite l'information et génère une réponse.
Le Serveur renvoie cette réponse au Client.

Un conteneur Web (comme Apache Tomcat) est un moteur conçu pour gérer des composants 
Java spécifiques qui traitent les requêtes Web (HTTP).

Le composant Java spécifique qui vit dans le conteneur et traite les requêtes s'appelle une Servlet.

J2SE (Java Standard Edition) : C'est le cœur. Il fournit la base du langage, les bibliothèques essentielles 
(comme les listes, les chaînes de caractères, les entrées/sorties) et la machine virtuelle (JVM). C'est le socle sur lequel tout repose.

Le fournisseur de serveur (Server Provider) est l'éditeur qui fournit la plateforme (le logiciel) sur 
laquelle l'application va tourner (ex: Oracle pour WebLogic, IBM pour WebSphere, Apache pour Tomcat).

Une application web communique principalement via les protocoles HTTP ou HTTPS.
FTP (File Transfer Protocol) sert au transfert de fichiers.
SSH (Secure Shell) sert à l'administration de serveurs à distance (ligne de commande).

Dans une application web JEE, les fichiers et dossiers privés sont dans le dossier WEB-INF.
Ils ne sont pas accessibles directement par le navigateur pour des raisons de sécurité.
Seuls les fichiers publics (HTML, CSS, JS, images) sont placés en dehors de WEB-INF.


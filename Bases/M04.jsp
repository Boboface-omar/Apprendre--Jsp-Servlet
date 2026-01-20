Étape 4 : La Session (La Mémoire)

Dans une application web, il est souvent nécessaire de conserver des informations sur l'utilisateur entre plusieurs requêtes HTTP. C'est là qu'intervient la notion de session.
Une session permet de stocker des données spécifiques à un utilisateur pendant toute la durée de sa visite sur le site web. Chaque utilisateur se voit attribuer un identifiant de session unique, généralement stocké dans un cookie.
Création et gestion d'une session dans une Servlet
Dans une Servlet, vous pouvez créer ou récupérer une session en utilisant l'objet HttpServletRequest.
```javaimport javax.servlet.http.HttpSession;
// Récupérer la session existante ou en créer une nouvelle
HttpSession session = request.getSession(true); // true pour créer une nouvelle session si elle n'existe pas
```
Stockage de données dans la session
Une fois que vous avez une session, vous pouvez y stocker des attributs (données) en utilisant les méthodes setAttribute() et getAttribute().
```java// Stocker un attribut dans la session
session.setAttribute("nomUtilisateur", "JeanDupont");
// Récupérer un attribut de la session
String nomUtilisateur = (String) session.getAttribute("nomUtilisateur");
```
Suppression d'une session
Lorsque l'utilisateur se déconnecte ou lorsque vous souhaitez terminer la session, vous pouvez invalider la session.
```java// Invalider la session
session.invalidate();
```
Utilisation de la session dans une JSP
Dans une page JSP, vous pouvez accéder à la session de la même manière que dans une Servlet.
```jsp<%@ page session="true" %>
<%
// Récupérer un attribut de la session
String nomUtilisateur = (String) session.getAttribute("nomUtilisateur");
%>
<html>
<head>
    <title>Bienvenue</title>
</head>
<body>
    <h1>Bienvenue, <%= nomUtilisateur %>!</h1>
</body>
</html>```
Ainsi, la session permet de conserver des informations sur l'utilisateur tout au long de sa navigation sur le site, facilitant une expérience utilisateur cohérente et personnalisée.

Le serveur "oublie" instantanément qui est le client une fois la réponse envoyée. Si tu cliques sur une autre page une seconde plus tard, le serveur te considère comme un tout nouvel étranger.
Pourquoi est-ce important pour ton cours JEE ? C'est précisément à cause de cette "perte de mémoire" du protocole HTTP que nous avons besoin des Sessions (HttpSession) et des Cookies pour garder un utilisateur connecté entre plusieurs pages.

Les JSP (JavaServer Pages) disposent de 9 objets implicites créés automatiquement par le conteneur Web (tu n'as pas besoin de les déclarer avec new).
Vrais objets implicites présents dans la liste :
request : Représente la requête HTTP (paramètres, en-têtes).
response : Représente la réponse HTTP à renvoyer.
page : Représente l'instance de la servlet en cours d'exécution (l'équivalent de this en Java).

Dans la spécification Java EE (JEE), le "descripteur de déploiement" est le fichier de configuration central d'une application Web.
Son nom : Il doit obligatoirement s'appeler web.xml.
Son emplacement : Il doit se trouver à l'intérieur du dossier WEB-INF.
Son rôle : Il fait le lien entre les URL que tape l'utilisateur et les classes Java (Servlets) qui doivent répondre. C'est là qu'on définit les règles de sécurité, les sessions, etc.

En JSP, pour manipuler des composants Java (JavaBeans), on utilise un ensemble de balises standard :
<jsp:useBean ... /> : Pour créer ou récupérer une instance du bean.
<jsp:setProperty ... /> : Pour modifier (initialiser) les valeurs des propriétés du bean. Cette balise appelle automatiquement la méthode "setter" correspondante dans la classe Java (par exemple setNom(...)).
<jsp:getProperty ... /> : Pour lire la valeur d'une propriété.

Le verbe "GET" signifie "Obtenir". Lorsque tu tapes une adresse dans la barre du navigateur et que tu appuies sur 
Entrée, tu demandes au serveur de te fournir une ressource (une page HTML, une image, etc.).
POST : Est utilisé généralement quand tu cliques sur le bouton "Valider" d'un formulaire (inscription, connexion) pour envoyer des données au serveur.
PUT : Est utilisé pour mettre à jour ou créer une ressource (rarement utilisé directement par un navigateur standard).

Une page JSP n'est pas exécutée directement telle quelle.
Traduction : Le serveur (Tomcat) prend ton fichier .jsp (qui ressemble à du HTML) et le transforme en un fichier .java (qui est une Servlet).
Compilation : Ce fichier Java est ensuite compilé en bytecode (.class).
Exécution : C'est cette Servlet générée qui est exécutée pour répondre au client.
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
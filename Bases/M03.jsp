Étape 3 : La Connexion (Servlet vers JSP)

Le sigle JSP signifie JavaServer Pages. Comme nous l'avons vu, cette technologie est conçue pour mélanger du 
HTML avec du code Java qui sera ensuite compilé par le serveur.

Une page JSP est une page HTML qui peut contenir du code java.
Le serveur web (Exemple :Tomcat) compile les fichiers JSP dans des Servlets lorsqu’ils sont demandés pour la première fois 
(c’est-à-dire lorsque le tout premier utilisateur y accède) et exécute le code des servlets compilées 
pour générer dynamiquement le contenu HTML à envoyer au navigateur client.

request.setAttribute() et RequestDispatcher : Transférer des données de la Servlet à la JSP

Après que la Servlet a traité les données (par exemple, en interagissant avec le Modèle), elle doit souvent transmettre ces données à une page JSP pour les afficher à l'utilisateur.
Pour ce faire, la Servlet utilise un objet RequestDispatcher pour transférer la requête et la réponse à la JSP.
Voici comment cela fonctionne :
```java// Supposons que nous avons une Servlet qui a traité des données
String resultat = "Données traitées"; // Résultat du traitement
request.setAttribute("resultat", resultat); // Stocker le résultat dans la requête
// Obtenir le RequestDispatcher pour la JSP cible
RequestDispatcher dispatcher = request.getRequestDispatcher("resultat.jsp");
// Transférer la requête et la réponse à la JSP
dispatcher.forward(request, response);
```
Dans cet exemple, la Servlet stocke le résultat du traitement dans l'objet request en utilisant la méthode setAttribute(). Ensuite, elle obtient un RequestDispatcher pour la page JSP "resultat.jsp
" et utilise la méthode forward() pour transférer la requête et la réponse à cette JSP.
Dans la JSP, vous pouvez accéder à l'attribut "resultat" que la Servlet a stocké dans la requête :
```jsp<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Résultat</title>
</head>
<body>
    <h1>Résultat du traitement :</h1>
    <p><%= request.getAttribute("resultat") %></p> <!-- Afficher le résultat -->
</body>
</html>```
Ainsi, la JSP peut afficher le résultat que la Servlet a préparé, complétant ainsi le cycle de traitement dans le modèle MVC.
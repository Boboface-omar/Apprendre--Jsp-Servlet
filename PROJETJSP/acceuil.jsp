<!-- L'Affichage JSP pour l'Accueil Utilisateur -->
<html>
<body>
    <h1>Bienvenue, <%= session.getAttribute("user") %> !</h1>
</body>
</html>
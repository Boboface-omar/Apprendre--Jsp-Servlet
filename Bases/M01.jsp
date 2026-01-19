Étape 1 : L'Architecture et le Modèle MVC

Le modèle recommandé (MVC2) sépare les rôles pour que ce soit plus propre :

Modèle (M) : Les données (JavaBeans/Classes Java classiques).

Vue (V) : L'interface utilisateur (Pages JSP).

Contrôleur (C) : Le chef d'orchestre qui dirige le trafic (La Servlet).

Modèle ne peut pas parler directement au navigateur. Il est passif.

Voici la nuance importante pour ton examen :

La Servlet (Contrôleur) est la "porte d'entrée". C'est elle qui reçoit la requête HTTP en premier.

Elle demande ensuite au Modèle de vérifier les infos.

Enfin, elle passe la main à la JSP (Vue) pour la réponse.
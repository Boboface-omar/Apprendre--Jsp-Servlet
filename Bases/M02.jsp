Étape 2 : La Servlet (Le Moteur)

Une servlet est un programme Java qui tourne sur la machine où est installé le serveur JEE, en tant qu’ extension (des fonctionnalités) du serveur. 
Elle reçoit une requête d’un client, effectue des traitements et lui renvoie le résultat
Elle est invoquée lorsque le navigateur client appelle l’ URL associée à ce programme.
La liaison entre la servlet et le client peut être direct ou passer par l’intermédiaire d’un serveur  HTTP – ce qui est plus courant- (grâce à l’ URL saisie).
Une servlet fonctionne selon un modèle client/serveur ou requête/réponse, par conséquent tous les protocoles utilisant ce modèle pourront être utilisés (http, ftp, etc.)
Une servlet est écrite en Java, de ce fait elle en tire tous les avantages: portabilité́, API abondante. 

Une fois que notre Servlet a reçu la demande, elle doit lire ce que l'utilisateur a tapé.

Dans le code d'une Servlet, on a souvent deux méthodes principales : doGet et doPost. Elles prennent deux objets en paramètres.

HttpServletRequest request : Cet objet contient toutes les informations de la requête HTTP, y compris les données envoyées par l'utilisateur (comme les champs de formulaire).

HttpServletResponse response : Cet objet est utilisé pour envoyer la réponse HTTP de la Servlet au navigateur de l'utilisateur.

getParameter() : Cette méthode de l'objet HttpServletRequest permet de lire les données envoyées par l'utilisateur. Par exemple, si l'utilisateur a rempli un champ de formulaire nommé "nom", on peut récupérer sa valeur avec request.getParameter("nom").

Voici un exemple simple de Servlet qui lit un paramètre "nom" envoyé par l'utilisateur et répond avec un message personnalisé :
```javaimport java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
@WebServlet("/saluer")
public class SalutationServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lire le paramètre "nom" de la requête
        String nom = request.getParameter("nom");   
        // Préparer la réponse
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>Bonjour, " + nom + "!</h1>");
        out.println("</body></html>");
    }
}```
Dans cet exemple, lorsque l'utilisateur accède à l'URL "/saluer?nom=Jean", la Servlet lit le paramètre "nom" et répond avec "Bonjour, Jean!".
Après avoir lu les données de l'utilisateur, la Servlet peut interagir avec le Modèle (par exemple, en appelant des méthodes sur des JavaBeans pour traiter les données) avant de passer la main à la Vue (JSP) pour afficher le résultat final à l'utilisateur.
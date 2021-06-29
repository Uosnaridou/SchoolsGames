<header>
    <h1>School's Games</h1>
    <ul>
        <li class="menu-html"><a href="index.php">Accueil</a></li>
        <!-- MENU DEROULANT -->
        <li class="menu-css"><a href="">Catégories</a>
            <ul class="submenu">
               <li><a href="index.php?categories=categorietout">Tous les jeux</a></li>
                <li><a href="index.php?categories=categorie1">Jeux à deux</a></li>
                <li><a href="index.php?categories=categorie2">Jeux à plus de deux</a></li>
                <li><a href="index.php?categories=categorie3">Jeux 1 heure ou moins</a></li>
                <li><a href="index.php?categories=categorie4">Jeux 1 heure ou plus</a></li>
            </ul>
        </li>
     
        
        <?php if(isset ($_SESSION['pseudo']) && isset($_SESSION['password'])){//Si la personne est connecter 
                $user_id = $_SESSION['id'];
                if($user_id == 1){ //Si connecter en tant qu'administrateur?>
                    <li><a href="index.php?u=admin">Espace administrateur</a></li>
                <?php }else{//Sinon?>
                    <li><a href="index.php?u=compte&users=<?php echo $user_id ?>">Mon compte</a></li>
                <?php } ?>
                    <li><a href="index.php?u=deconnection">Se déconnecter</a></li>
                <?php }else { ?>
                    <li class="menu-javascript"><a href="index.php?u=inscription">S'inscrire</a></li>
                    <li class="menu-javascript"><a href="index.php?u=connexion">Se connecter</a></li>
                <?php } ?>
                    <li class="menu-javascript"><a href="index.php?contact=contact">Contact</a></li>


    </ul>
</header>
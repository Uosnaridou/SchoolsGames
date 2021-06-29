<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="icon" type="img/png" href="img/icon.png" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>School's Games</title>

</head>

<body>
    <?php require 'includes/header.php'; ?>
    <a href="index.php">Retour à la liste des articles</a>

    <?php
//On affiche l'article
while ($donnees = $req->fetch())
{
?>
    <div id="articles">
        <?php $id = $donnees['id'];?>
        <p id='id' style="display:none"><?php echo $donnees['id'];?><p>
        
                <h3>
                    <?php  echo htmlspecialchars($donnees['titre']);?>
                </h3>

                <p>Date:
                    <?php $date = htmlspecialchars($donnees['date']);
                echo date('d-m-Y', strtotime($date));
                ?>
                </p>

                <?php echo '<img src="img/' . htmlspecialchars($donnees['photo']) . '" id="photo"/>'?>
                <p>Matériel :
                    <?php echo htmlspecialchars($donnees['matériel'])?>
                </p>

                <p id='explicationArticle'>Explication :
                    <?php echo nl2br(htmlspecialchars($donnees['message']));?>
                </p>
    </div>
    <?php
        } // Fin de la boucle des commentaires
        $req->closeCursor();
    ?>
    <div id="espaceCommentaire">
        <h2>Espace commentaire</h2>
        <?php
          //On crée un formulaire pour pouvoir poster un commentaire sous l'article SEULEMENT si la personne est connecté au site
         if(isset ($_SESSION['pseudo']) && isset($_SESSION['password'])){
            echo '<form method="post" action="" id="form" >';
            echo 'Pseudo : ' . '<input type="text" name="pseudo" id="champPseudo" value="' . $_SESSION['pseudo'] . '" required />';
            echo 'Message : ' .'<textarea name="messages" id="messages" required="required"></textarea>' . '<br />';
            echo '<input type="submit" id="submit"/>';
            echo '</form>';
         }else{
             echo '<p>' . 'Vous devez être connecté pour poster un commentaire' . '</p>'; //message d'information pour avertir qu'il faut etre connecté pour pouvoir poster un commentaire
         }
    ?>

    </div>

    <div id="affichageCommentaires">

    </div>

    <?php require 'includes/footer.php'; ?>

    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/ajax.js"></script>

</body>

</html>

-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mer. 22 mai 2019 à 13:56
-- Version du serveur :  5.6.38-1~dotdeb+7.1
-- Version de PHP :  7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `w67xbo_schoolsG`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `nbx_joueurs` int(11) NOT NULL,
  `temps_jeux` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `photo` text NOT NULL,
  `matériel` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `brouillon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `nbx_joueurs`, `temps_jeux`, `titre`, `date`, `photo`, `matériel`, `message`, `brouillon`) VALUES
(2, 0, 1, 'Le pendu', '2018-07-06', 'images_news/pendus.png', 'feuille , crayon', 'vous connaissez tous le principe du pendu je suppose ... Ce jeu consiste à trouver un mot en devinant quelles sont les lettres qui le composent. Si la lettre n\'est pas bonne, un trait constituant un dessin de pendu est dessiné. Si à la fin du dessin le mot n\'a pas été trouvé, l\'adversaire a perdu et la partie est terminée. Vous pouvez améliorer votre pendu en y jouant par thème, par exemple des personnages de dessins animés ou des personnages de jeux vidéos.', 0),
(3, 1, 2, 'Rosace', '2018-07-06', 'images_news/rocase.png', 'feuille , crayon a papier et compas', 'le but de jeu est de réaliser à l\'aide d\'un compas le plus d\'arcs de cercle possible en un temps donné (par exemple 5 minutes).\r\nLe participant qui réalise le plus d\'arcs de cercle pendant le temps imparti a gagné.\r\nLa rosace s’obtient sans changer l’écartement des branches du compas.', 0),
(4, 1, 2, 'Défis', '2018-07-06', 'images_news/défis.png', 'aucun objet particulier', 'ce petit jeu simple et rapide se joue à deux, et consiste à proposer des défis insolites à effectuer en classe, sans être vu par votre professeur.\r\nLes défis réussis sans se faire prendre rapportent 2 points.\r\nUn défi réalisé mais interrompu par le professeur rapportent 1 point.\r\nSi le participant ne veut pas effectuer les défis, il ne gagne aucun point.\r\nLe vainqueur est celui qui a amassé le plus de points à la fin du cours.\r\nExemple de défis : effectuer une roulade avant dans la classe.', 0),
(5, 1, 2, 'Mauvaise main', '2018-07-06', 'images_news/main.png', 'un cahier et un stylo', 'ce jeu consiste à écrire les phrases que votre professeur dicte avec votre mauvaise main (si vous êtes droitier, vous écrirez donc de la main gauche).\r\nÀ la fin de la phrase, faites vous relire par votre adversaire.\r\nS\'il arrive à vous relire, vous gagnez 1 point.\r\nLe gagnant est celui qui a reçu le plus de points a la fin du cours.', 1),
(7, 1, 1, 'Concours de dessins', '2018-07-07', 'images_news/dessins.png', 'feuilles, crayon', 'le concours de dessins consiste à comparer votre dessins avec celui des autres participants.\r\nPour cela, demandez à une personne externe au jeu de choisir un thème à dessiner.\r\nChaque participants réalise un dessin du thème choisi, et c\'est la personne externe au jeu qui définira le plus beau dessin.\r\nLe plus beau dessin gagne 1 point.\r\nLe participant qui aura gagné le plus de points sera défini vainqueur à la fin du cours.', 0);

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `id` int(11) NOT NULL,
  `id_article` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `commentaire` text NOT NULL,
  `signalement` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`id`, `id_article`, `pseudo`, `date`, `commentaire`, `signalement`) VALUES
(2, 4, 'Test', '2019-05-22 13:55:55', 'Ce commentaire est un test pour les commentaires signaler', 20),
(48, 7, 'test', '2019-05-22 13:44:08', 'Ce commentaire est un test', 0);

-- --------------------------------------------------------

--
-- Structure de la table `idee_article`
--

CREATE TABLE `idee_article` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `materiel` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `idee_article`
--

INSERT INTO `idee_article` (`id`, `titre`, `materiel`, `message`) VALUES
(3, 'Article test', 'Matériel test', 'Cette proposition de jeu est un test');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `pseudo`, `password`, `email`, `date`) VALUES
(1, 'admin', '$2y$10$zO1dYM/U44EYTmdvgv1Ha.8w8xpp06Kqn/0dMnFs6RDqqGRZ/IO8u', 'celia.chanabe@gmail.com', '2019-05-01');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foreingKey` (`id_article`);

--
-- Index pour la table `idee_article`
--
ALTER TABLE `idee_article`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT pour la table `idee_article`
--
ALTER TABLE `idee_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `foreingKey` FOREIGN KEY (`id_article`) REFERENCES `articles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

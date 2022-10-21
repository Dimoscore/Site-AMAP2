-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 18 oct. 2022 à 15:02
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bddamap`
--

-- --------------------------------------------------------

--
-- Structure de la table `adherent`
--

CREATE TABLE `adherent` (
  `idAdh` int(11) NOT NULL,
  `nomAdh` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `prenomAdh` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `telAdh` int(10) NOT NULL,
  `emailAdh` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `mdpAdh` varchar(12) COLLATE utf8mb4_bin NOT NULL,
  `villeAdh` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `comAdh` varchar(150) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `adherent`
--

INSERT INTO `adherent` (`idAdh`, `nomAdh`, `prenomAdh`, `telAdh`, `emailAdh`, `mdpAdh`, `villeAdh`, `comAdh`) VALUES
(6, 'Thebaudin', 'Joshua', 600000000, 'joshua@gmail.com', '', 'Parigné', 'Car je souhaite adopter un mode de vie plus écologique et responsable.'),
(7, 'Vaillant', 'Julie', 200000000, 'vaillant@gmail.com', '', 'Le Mans', 'test css'),
(8, 'Vaillant', 'Julie', 200000000, 'joshua@gmail.com', '', 'Le Mans', 'test css 2'),
(9, 'Vaillant', 'Joshua', 200000000, 'vaillant@gmail.com', '', 'Le Mans', 'test css 3'),
(10, 'Maxcurse', 'Benoit', 200000000, 'benoit@gmail.com', '', 'Parigné', 'test css 4'),
(11, 'Thebaudin', 'Joshua', 200000000, 'joshua@gmail.com', 'joshua123', 'Parigné', 'Je test le mdp');

-- --------------------------------------------------------

--
-- Structure de la table `categproduit`
--

CREATE TABLE `categproduit` (
  `idCateg` int(11) NOT NULL,
  `libelCateg` varchar(25) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `categproduit`
--

INSERT INTO `categproduit` (`idCateg`, `libelCateg`) VALUES
(1, 'Les Jus'),
(2, 'Les Pots'),
(3, 'Les Fromages'),
(4, 'Les Produits Frais');

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `idContact` int(11) NOT NULL,
  `nom` text COLLATE utf8_bin NOT NULL,
  `prenom` varchar(20) COLLATE utf8_bin NOT NULL,
  `mail` text COLLATE utf8_bin NOT NULL,
  `tel` text COLLATE utf8_bin NOT NULL,
  `mess` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`idContact`, `nom`, `prenom`, `mail`, `tel`, `mess`) VALUES
(1, 'Joshua', '', 'Joshua@gmail.com', '0612658472', 'sdfghjk\r\n'),
(2, 'POuf', '', 'pouf@gmail.com', '0612345678', 'test mardi soir'),
(3, 'Thebaudin', '', 'Joshua@gmail.com', '0612658472', 'Test'),
(4, 'Thebaudin', '', 'Joshua@gmail.com', '0612658472', 'Test'),
(5, 'Thebaudin', 'Joshua', 'Joshua@gmail.com', '0612345678', 'Test');

-- --------------------------------------------------------

--
-- Structure de la table `lieuhoraire`
--

CREATE TABLE `lieuhoraire` (
  `idlieu` int(11) NOT NULL,
  `jour` varchar(15) COLLATE utf8mb4_bin NOT NULL,
  `horaire` varchar(15) COLLATE utf8mb4_bin NOT NULL,
  `lieu` varchar(50) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `lieuhoraire`
--

INSERT INTO `lieuhoraire` (`idlieu`, `jour`, `horaire`, `lieu`) VALUES
(7, 'Le mercredi', 'de 16h à 18h', 'à la ferme de Vouvray'),
(8, 'Le jeudi', 'de 9h à 14h', 'à la place du marché à MontLouis Sur Loire'),
(9, 'Le samedi', 'de 10h à 12h', 'à la ferme de Vouvray');

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

CREATE TABLE `panier` (
  `idPanier` int(11) NOT NULL,
  `nomPanier` varchar(20) NOT NULL,
  `descPanier` varchar(75) NOT NULL,
  `descLonguePanier` text NOT NULL,
  `imgPanier` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `panier`
--

INSERT INTO `panier` (`idPanier`, `nomPanier`, `descPanier`, `descLonguePanier`, `imgPanier`) VALUES
(1, 'Petit Panier Légumes', 'pour 2 personnes - Uniquement des légumes', '4 à 5 kg de légumes 100 % français et bio. Parfait pour 2 personnes pour une semaine.', 'panier-legumes.png'),
(2, 'Moyen Panier Légumes', 'pour 4 personnes - Uniquement des légumes', '5 à 7 kg de légumes 100 % français et bio. Parfait pour 4 personnes pour une semaine.', 'moyen-panier-legumes(2).png'),
(3, 'Grand Panier Légumes', 'pour 6 personnes - Uniquement des légumes', '8 à 9 kg de légumes 100 % français et bio. Parfait pour 6 personnes pour une semaine.', 'panier-legumes-grand.png'),
(4, 'Petit Panier Mixte', 'pour 2 personnes - Fruits et légumes', '4 à 5 kg de légumes et fruits 100 % français et bio. Parfait pour 2 personnes pour une semaine.', 'petit-panier-mixte.png'),
(5, 'Moyen Panier Mixte', 'Pour 4 personnes - Fruits et légumes', '5 à 7 kg de légumes et fruits 100 % français et bio. Parfait pour 4 personnes pour une semaine.', 'moyenpanier.png'),
(6, 'Grand Panier Mixte', 'Pour 6 personnes - Fruits et légumes', '8 à 9 kg de légumes et fruits 100 % français et bio. Parfait pour 6 personnes pour une semaine.', 'grandpanier.png');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `idProduit` int(11) NOT NULL,
  `nomProduit` varchar(20) NOT NULL,
  `descProduit` varchar(50) NOT NULL,
  `descLongueProduit` text NOT NULL,
  `imgProduit` varchar(20) NOT NULL,
  `prixProduit` decimal(4,2) NOT NULL,
  `idCateg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`idProduit`, `nomProduit`, `descProduit`, `descLongueProduit`, `imgProduit`, `prixProduit`, `idCateg`) VALUES
(1, 'Jus d\'orange', 'Jus d\'orange bio pressé 1L', 'Le Jus d\'Orange Bio 1L est un pur jus pressé à partir d’oranges bio d\'Indre-et-Loire sélectionnées pour leurs notes légèrement zestées.Le Jus d\'Orange Bio 1L pourra accompagner votre petit déjeuner, votre brunch, ou encore votre brioche maison. Le jus d\'orange bio pressé 1L a été préparé par Les Délices de la Ferme en respectant une manière de faire écologique et biologique.', 'jusbio.jpg', '3.50', 1),
(2, 'Confiture', 'Confiture de fraise 250g ', 'Concoctée avec de belles fraises françaises bien charnues, cette confiture onctueuse et gourmande fera chavirer vos papilles. La confiture de fraise 250g a été préparé par la ferme Famille Kuipers en respectant une manière de faire écologique et biologique.\r\n', 'confiturebio.png', '4.00', 2),
(3, 'Camembert', 'Camembert bio 250g', 'Fabriqué à partir de lait cru biologique de vache rigoureusement sélectionné auprès des producteurs du bocage Normand, ce Camembert Bio offre une palette de saveurs et une typicité unique. Toute la naturalité du terroir Indrois se révèle.', 'camembert.png', '3.00', 3),
(4, 'Cidre', 'Cidre bio 75cl', 'Découvrez ce cidre brut bio 100% français ! Fabriqué artisanalement par le Verger de Taillé, son effervescence est naturelle grâce à une longue fermentation. Ce cidre pur jus a été fabriqué à partir de pommes à cidre de coopérative Indroligérienne, et du jus du premier pressage des pommes. ', 'cidre.png', '6.20', 1),
(5, 'Oeufs', '6 oeufs bio', 'OEUF X 6 poules bio élevé en plein air dans un verger de pommes dans la Ferme des Morinières ,à coté de notre AMAP . ', 'oeufs.png', '3.00', 4),
(6, 'Miel', 'Miel bio 500g', 'Une des dernières récoltes de la saison, Ce miel a été produit entre juillet et août. Les abeilles profitent alors bien évidement de l\'emblématique fleur de tournesol, mais également d\'une flore diversifiée comme la bruyère, la ronce, le trèfle et bien d\'autres. Le miel bio 500g a une texture crémeuse à ferme suivant la période de l\'année.', 'miel.png', '5.50', 2),
(7, 'Jus de Tomate', 'Jus de Tomate Bio 75cL', 'Jus de tomates bio  est élaboré à partir de légumes d\'origine France, récoltés et pressés avec le plus grand soin. Sans sel ajouté. Bouteille de 75cL.', 'jusdetomate.png', '3.99', 1),
(8, 'Bûche de Chèvre', 'Bûche de Chèvre 150g', 'Bûche de chèvre, un délicieux fromage fait avec du lait de chèvre français issu de l\'agriculture biologique. Contenance : 150g. ', 'chevre.png', '5.30', 3),
(9, 'Roquefort', 'Roquefort  Bio AOP 100g', 'Roquefort bio AOP 100g. Au lait de brebis cru et entier biologique. Fabriqué en France.', 'roquefort.png', '3.99', 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `adherent`
--
ALTER TABLE `adherent`
  ADD PRIMARY KEY (`idAdh`);

--
-- Index pour la table `categproduit`
--
ALTER TABLE `categproduit`
  ADD PRIMARY KEY (`idCateg`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`idContact`);

--
-- Index pour la table `lieuhoraire`
--
ALTER TABLE `lieuhoraire`
  ADD PRIMARY KEY (`idlieu`);

--
-- Index pour la table `panier`
--
ALTER TABLE `panier`
  ADD PRIMARY KEY (`idPanier`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`idProduit`),
  ADD KEY `fcateg` (`idCateg`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `adherent`
--
ALTER TABLE `adherent`
  MODIFY `idAdh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `categproduit`
--
ALTER TABLE `categproduit`
  MODIFY `idCateg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `idContact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `lieuhoraire`
--
ALTER TABLE `lieuhoraire`
  MODIFY `idlieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `panier`
--
ALTER TABLE `panier`
  MODIFY `idPanier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `idProduit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `fcateg` FOREIGN KEY (`idCateg`) REFERENCES `categproduit` (`idCateg`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

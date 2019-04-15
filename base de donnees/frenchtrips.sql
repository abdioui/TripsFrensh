-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Apr 15, 2019 at 02:21 PM
-- Server version: 5.7.24-log
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `frenchtrips`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id_contact` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sujet` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id_contact`, `id_user`, `nom`, `email`, `sujet`, `message`) VALUES
(1, 1, 'abdelhay', 'abdelhayoulidiomali@gmail.com', 'aide', '		ezfzefzez					');

-- --------------------------------------------------------

--
-- Table structure for table `paiement`
--

CREATE TABLE `paiement` (
  `id_paiement` int(11) NOT NULL,
  `id_voyage` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nom_carte` varchar(50) NOT NULL,
  `numero_carte` varchar(100) NOT NULL,
  `carte_ccv` int(5) NOT NULL,
  `mois_expiration` int(11) NOT NULL,
  `annee_expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paiement`
--

INSERT INTO `paiement` (`id_paiement`, `id_voyage`, `id_user`, `nom_carte`, `numero_carte`, `carte_ccv`, `mois_expiration`, `annee_expiration`) VALUES
(1, 2, 1, 'MasterCard', '355-369-789-522', 999, 1, 20);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `confirme_password` text NOT NULL,
  `sexe` varchar(50) NOT NULL,
  `date_naissance` varchar(50) NOT NULL,
  `telephone` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `code_postal` varchar(50) NOT NULL,
  `ville` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `email`, `password`, `confirme_password`, `sexe`, `date_naissance`, `telephone`, `nom`, `prenom`, `code_postal`, `ville`) VALUES
(1, 'abdioui@gmail.com', '123456', '', '', '', 0, 'abdioui', '', '', ''),
(4, 'abdelhay', 'abdelhay', 'abdelhay', 'Mr', '2019-04-10', 612354879, 'abdelhay', 'abdelhay', '30080', 'paris'),
(5, 'abdioui79@gmail.com', 'azerty', 'azerty', 'Mme', '', 0, 'EL-ABDIOUI', 'MOHAMED', '34000', 'MONTPELLIER'),
(6, 'ayoub36.ah@gmail.com', 'mmmm', 'mmmm', 'Mme', '', 0, 'hassani', 'ayoub', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `voyage`
--

CREATE TABLE `voyage` (
  `id_voyage` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `prix` int(11) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `categorie` varchar(50) NOT NULL,
  `duree` int(11) NOT NULL,
  `pays` varchar(50) NOT NULL,
  `nbr_personne` int(11) NOT NULL,
  `nbr_nuit` int(11) NOT NULL,
  `star_hotel` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `promo` tinyint(1) NOT NULL DEFAULT '0',
  `promo_pourcentage` int(11) NOT NULL DEFAULT '0',
  `special_offre` tinyint(1) NOT NULL DEFAULT '0',
  `annee` int(11) NOT NULL,
  `top` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voyage`
--

INSERT INTO `voyage` (`id_voyage`, `id_user`, `prix`, `ville`, `categorie`, `duree`, `pays`, `nbr_personne`, `nbr_nuit`, `star_hotel`, `description`, `promo`, `promo_pourcentage`, `special_offre`, `annee`, `top`, `image`) VALUES
(1, 1, 100, 'paris', 'visite', 7, 'france', 1, 4, 3, 'L\'agence de voyages remplit le rôle de conseil en s\'assurant ou en avertissant des formalités nécessaires à l\'entrée dans un pays. Elle ferme également les destinations à la vente selon les recommandations du Ministère des Affaires Étrangères et Européennes (pour la France) et gère avec ses fournisseurs les problèmes pouvant être rencontrés. Elle peut être agence distributrice, agence réceptive ou voyagiste.', 0, 0, 1, 2019, 0, 'images/paris5.png'),
(2, 1, 100, 'toulouse', 'visite', 7, 'france', 1, 4, 3, 'L\'agence de voyages remplit le rôle de conseil en s\'assurant ou en avertissant des formalités nécessaires à l\'entrée dans un pays. Elle ferme également les destinations à la vente selon les recommandations du Ministère des Affaires Étrangères et Européennes (pour la France) et gère avec ses fournisseurs les problèmes pouvant être rencontrés. Elle peut être agence distributrice, agence réceptive ou voyagiste.', 0, 0, 1, 2019, 0, 'images/toulouse3.jpg'),
(4, 1, 250, 'lyon', 'visite4', 4, 'france', 4, 4, 4, 'L\'agence de voyages remplit le rôle de conseil en s\'assurant ou en avertissant des formalités nécessaires à l\'entrée dans un pays. Elle ferme également les destinations à la vente selon les recommandations du Ministère des Affaires Étrangères et Européennes (pour la France) et gère avec ses fournisseurs les problèmes pouvant être rencontrés. Elle peut être agence distributrice, agence réceptive ou voyagiste.', 0, 0, 0, 2019, 1, 'images/lyon1.jpg'),
(6, 1, 150, 'nancy', 'visite', 7, 'france', 1, 4, 3, 'L\'agence de voyages remplit le rôle de conseil en s\'assurant ou en avertissant des formalités nécessaires à l\'entrée dans un pays. Elle ferme également les destinations à la vente selon les recommandations du Ministère des Affaires Étrangères et Européennes (pour la France) et gère avec ses fournisseurs les problèmes pouvant être rencontrés. Elle peut être agence distributrice, agence réceptive ou voyagiste.', 0, 0, 0, 2019, 1, 'images/nancy1.jpg'),
(7, 1, 120, 'havre', 'visite', 7, 'france', 1, 4, 3, 'L\'agence de voyages remplit le rôle de conseil en s\'assurant ou en avertissant des formalités nécessaires à l\'entrée dans un pays. Elle ferme également les destinations à la vente selon les recommandations du Ministère des Affaires Étrangères et Européennes (pour la France) et gère avec ses fournisseurs les problèmes pouvant être rencontrés. Elle peut être agence distributrice, agence réceptive ou voyagiste.', 0, 0, 0, 2019, 1, 'images/havre1.jpg'),
(8, 1, 100, 'paris', 'visite', 7, 'france', 1, 4, 3, 'L\'agence de voyages remplit le rôle de conseil en s\'assurant ou en avertissant des formalités nécessaires à l\'entrée dans un pays. Elle ferme également les destinations à la vente selon les recommandations du Ministère des Affaires Étrangères et Européennes (pour la France) et gère avec ses fournisseurs les problèmes pouvant être rencontrés. Elle peut être agence distributrice, agence réceptive ou voyagiste.', 1, 30, 0, 2019, 0, 'images/paris4.jpg'),
(9, 1, 100, 'toulouse', 'visite', 7, 'france', 1, 4, 3, 'L\'agence de voyages remplit le rôle de conseil en s\'assurant ou en avertissant des formalités nécessaires à l\'entrée dans un pays. Elle ferme également les destinations à la vente selon les recommandations du Ministère des Affaires Étrangères et Européennes (pour la France) et gère avec ses fournisseurs les problèmes pouvant être rencontrés. Elle peut être agence distributrice, agence réceptive ou voyagiste.', 1, 45, 0, 2019, 0, 'images/special_3.jpg'),
(10, 1, 100, 'paris', 'visite', 7, 'france', 1, 4, 3, 'L\'agence de voyages remplit le rôle de conseil en s\'assurant ou en avertissant des formalités nécessaires à l\'entrée dans un pays. Elle ferme également les destinations à la vente selon les recommandations du Ministère des Affaires Étrangères et Européennes (pour la France) et gère avec ses fournisseurs les problèmes pouvant être rencontrés. Elle peut être agence distributrice, agence réceptive ou voyagiste.', 1, 30, 0, 2019, 0, 'images/paris2.jpg'),
(11, 1, 100, 'toulouse', 'visite', 7, 'france', 1, 4, 3, 'L\'agence de voyages remplit le rôle de conseil en s\'assurant ou en avertissant des formalités nécessaires à l\'entrée dans un pays. Elle ferme également les destinations à la vente selon les recommandations du Ministère des Affaires Étrangères et Européennes (pour la France) et gère avec ses fournisseurs les problèmes pouvant être rencontrés. Elle peut être agence distributrice, agence réceptive ou voyagiste.', 1, 45, 0, 2019, 0, 'images/special_3.jpg'),
(12, 1, 300, 'Nice', 'voyage', 10, 'france', 2, 3, 4, 'L\'agence de voyages remplit le rôle de conseil en s\'assurant ou en avertissant des formalités nécessaires à l\'entrée dans un pays. Elle ferme également les destinations à la vente selon les recommandations du Ministère des Affaires Étrangères et Européennes (pour la France) et gère avec ses fournisseurs les problèmes pouvant être rencontrés. Elle peut être agence distributrice, agence réceptive ou voyagiste.', 0, 0, 0, 2019, 1, 'images/nice1.jpg'),
(13, 1, 300, 'Nice', 'voyage', 5, 'france', 3, 4, 4, 'L\'agence de voyages remplit le rôle de conseil en s\'assurant ou en avertissant des formalités nécessaires à l\'entrée dans un pays. Elle ferme également les destinations à la vente selon les recommandations du Ministère des Affaires Étrangères et Européennes (pour la France) et gère avec ses fournisseurs les problèmes pouvant être rencontrés. Elle peut être agence distributrice, agence réceptive ou voyagiste.', 1, 45, 1, 2019, 1, 'images/nice5.png'),
(14, 1, 400, 'Strasbourg', 'voyage', 3, 'France', 2, 3, 4, 'L\'agence de voyages remplit le rôle de conseil en s\'assurant ou en avertissant des formalités nécessaires à l\'entrée dans un pays. Elle ferme également les destinations à la vente selon les recommandations du Ministère des Affaires Étrangères et Européennes (pour la France) et gère avec ses fournisseurs les problèmes pouvant être rencontrés. Elle peut être agence distributrice, agence réceptive ou voyagiste.', 1, 25, 1, 2019, 0, 'images/strasbourg.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_contact`);

--
-- Indexes for table `paiement`
--
ALTER TABLE `paiement`
  ADD PRIMARY KEY (`id_paiement`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `voyage`
--
ALTER TABLE `voyage`
  ADD PRIMARY KEY (`id_voyage`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paiement`
--
ALTER TABLE `paiement`
  MODIFY `id_paiement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `voyage`
--
ALTER TABLE `voyage`
  MODIFY `id_voyage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

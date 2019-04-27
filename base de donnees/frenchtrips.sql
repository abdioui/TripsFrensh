-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 27, 2019 at 02:51 PM
-- Server version: 5.6.34-log
-- PHP Version: 7.2.1

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
(6, 'ayoub36.ah@gmail.com', 'mmmm', 'mmmm', 'Mme', '', 0, 'hassani', 'ayoub', '0', ''),
(7, 'ayoub36.ah@gmail.com', 'haha', 'haha', 'Mr', '1995-12-08', 646461878, 'Ayoub', 'Abderrahmani', '34000', 'Montpellier'),
(8, 'lilou.lalou@hotmail.fr', 'azerty', 'azerty', 'Mme', '', 0, 'lilou', 'lalou', '34000', '');

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
(1, 1, 100, 'paris', 'visite', 7, 'france', 1, 4, 3, 'Paris, surnommée la Ville Lumière, est une commune française, capitale de la France et chef-lieu de la région d\'Île-de-France. Cette ville est construite sur une boucle de la Seine. Ses habitants sont appelés les Parisiens. Elle est connue dans le monde entier pour sa vie artistique et culturelle et est d\'ailleurs la ville la plus visitée au monde. Paris est aussi un centre politique et économique majeur. Le maire de la commune actuellement est Anne Hidalgo, elle est membre du parti socialiste. C\'est la plus grande ville de France. Paris est également la commune la plus peuplée.\r\n', 0, 0, 1, 2019, 0, 'images/paris5.png'),
(2, 1, 100, 'toulouse', 'visite', 7, 'france', 1, 4, 3, 'Toulouse, capitale de l\'Occitanie / Pyrénées-Méditerranée, possède un riche patrimoine remontant aux origines romaines. Elle est aussi installée de plain-pied dans la modernité, comme en témoigne son titre de premier centre aéronautique européen.\r\n', 0, 0, 1, 2019, 0, 'images/toulouse3.jpg'),
(4, 1, 250, 'lyon', 'visite4', 4, 'france', 4, 4, 4, 'Lyon, ville française de la région historique Rhône-Alpes, se trouve à la jonction du Rhône et de la Saône. Son centre témoigne de 2 000 ans d\'histoire, avec son amphithéâtre romain des Trois Gaules, l\'architecture médiévale et Renaissance du Vieux Lyon et la modernité du quartier de la Confluence sur la Presqu\'île. Les Traboules, passages couverts entre les immeubles, relient le Vieux Lyon à la colline de La Croix-Rousse.\r\n', 0, 0, 0, 2019, 1, 'images/lyon1.jpg'),
(6, 1, 150, 'nancy', 'visite', 7, 'france', 1, 4, 3, 'Nancy, une ville en bord de rivière située dans la région du Grand Est, au nord-est de la France, est connue pour ses sites de style Baroque tardif et Art nouveau. Certains datent de l\'époque où la cité était l\'ancienne capitale du duché de Lorraine. Son lieu emblématique est la place Stanislas, datant du XVIIIe siècle. Cette immense place, décorée de grilles en fer forgé dorées et de fontaines rococo, se trouve au milieu des superbes palais et églises dont regorge la vieille ville médiévale de Nancy.\r\n', 0, 0, 0, 2019, 1, 'images/nancy1.jpg'),
(7, 1, 120, 'havre', 'visite', 7, 'france', 1, 4, 3, 'Le Havre fascine par sa beauté océane. Station balnéaire et station nautique, elle entretient une relation privilégiée avec la mer. Sa plage aménagée et son Port de Plaisance sont situés à proximité immédiate du centre de la ville. \r\n\r\nLe Havre, Ville d\'art et d\'histoire, est le berceau de l\'impressionnisme. Le Musée Malraux, largement ouvert sur la mer, abrite la 1ère collection impressionniste de France après Paris. D\'autres musées exceptionnels, nouveaux ou récemment rénovés, témoignent aussi de sa richesse culturelle. \r\n\r\nLe Havre, une ville toujours en mouvement depuis laquelle le départ de la Transat Jacques Vabre est donné tous les deux ans. Une Biennale d\'Art contemporain, un Festival d\'été sur la plage et d\'autres événements y sont organisés. \r\n\r\nEn juillet 2005, l\'UNESCO inscrit sur la liste du Patrimoine mondial le centre reconstruit du Havre par Auguste Perret, architecte majeur du XXe siècle, véritable \"poète du béton\". \r\n', 0, 0, 0, 2019, 1, 'images/havre1.jpg'),
(8, 1, 100, 'paris', 'visite', 7, 'france', 1, 4, 3, 'Paris, surnommée la Ville Lumière, est une commune française, capitale de la France et chef-lieu de la région d\'Île-de-France. Cette ville est construite sur une boucle de la Seine. Ses habitants sont appelés les Parisiens. Elle est connue dans le monde entier pour sa vie artistique et culturelle et est d\'ailleurs la ville la plus visitée au monde. Paris est aussi un centre politique et économique majeur. Le maire de la commune actuellement est Anne Hidalgo, elle est membre du parti socialiste. C\'est la plus grande ville de France. Paris est également la commune la plus peuplée.\r\n', 1, 30, 0, 2019, 0, 'images/paris4.jpg'),
(9, 1, 100, 'toulouse', 'visite', 7, 'france', 1, 4, 3, 'Toulouse, capitale de l\'Occitanie / Pyrénées-Méditerranée, possède un riche patrimoine remontant aux origines romaines. Elle est aussi installée de plain-pied dans la modernité, comme en témoigne son titre de premier centre aéronautique européen.\r\n\r\n', 1, 45, 0, 2019, 0, 'images/toulouse2.png'),
(10, 1, 100, 'paris', 'visite', 7, 'france', 1, 4, 3, 'Paris, surnommée la Ville Lumière, est une commune française, capitale de la France et chef-lieu de la région d\'Île-de-France. Cette ville est construite sur une boucle de la Seine. Ses habitants sont appelés les Parisiens. Elle est connue dans le monde entier pour sa vie artistique et culturelle et est d\'ailleurs la ville la plus visitée au monde. Paris est aussi un centre politique et économique majeur. Le maire de la commune actuellement est Anne Hidalgo, elle est membre du parti socialiste. C\'est la plus grande ville de France. Paris est également la commune la plus peuplée.\r\n\r\n', 0, 30, 0, 2019, 0, 'images/paris2.jpg'),
(11, 1, 100, 'toulouse', 'visite', 7, 'france', 1, 4, 3, 'Toulouse, capitale de l\'Occitanie / Pyrénées-Méditerranée, possède un riche patrimoine remontant aux origines romaines. Elle est aussi installée de plain-pied dans la modernité, comme en témoigne son titre de premier centre aéronautique européen.\r\n\r\nHôtels particuliers de l’âge d’or du pastel (plante cultivée au XVIème siècle pour son pigment bleu), édifices religieux aux décors de brique et de pierre, riches collections de musées situés dans des monuments remarquables ou dans des sites industriels aujourd’hui reconvertis : de lieux en lieux, étonnez-vous !\r\n\r\nAu gré de ses rues et de ses monuments, la ville rose vous dévoile son histoire et tous ses charmes. Le soir, d’habiles éclairages donnent un nouveau visage aux façades, au fleuve Garonne et aux monuments de la ville.', 0, 45, 0, 2019, 0, 'images/toulouse3.png'),
(12, 1, 300, 'Nice', 'voyage', 10, 'france', 2, 3, 4, 'Nice est la ville phare de la Côte d\'Azur. Cette véritable métropole est la 5ème ville de France par sa population et grâce à des réalisations d\'envergure comme Acropolis, Sophia Antipolis, le Palais des Congrès et son aéroport international (le 2ème de France après Paris), Nice s\'est largement ouverte aux activités industrielles, scientifiques et de hautes technologies. ', 0, 0, 0, 2019, 1, 'images/nice1.jpg'),
(13, 1, 300, 'Nice', 'voyage', 5, 'france', 3, 4, 4, 'Nice est la ville phare de la Côte d\'Azur. Cette véritable métropole est la 5ème ville de France par sa population et grâce à des réalisations d\'envergure comme Acropolis, Sophia Antipolis, le Palais des Congrès et son aéroport international (le 2ème de France après Paris), Nice s\'est largement ouverte aux activités industrielles, scientifiques et de hautes technologies. ', 1, 45, 1, 2019, 1, 'images/nice5.png'),
(14, 1, 400, 'Strasbourg', 'voyage', 3, 'France', 2, 3, 4, 'Strasbourg, capitale de l’Europe et de l’Alsace, possède un patrimoine historique et architectural qui en fait la ville la plus riche d’Alsace.\r\n\r\nSon centre ville fait partie du patrimoine mondial de L’UNESCO.\r\n\r\nDe plus, les musées de la ville sont particulièrement riches et intéressants.\r\n\r\nStrasbourg est bien évidemment incontournable non seulement pour ses monuments, mais aussi pour saisir les différents visages de l’Alsace et des Alsaciens.', 1, 25, 1, 2019, 0, 'images/strasbourg.png'),
(15, 1, 170, 'Biarritz', 'visite', 3, 'France', 1, 3, 4, 'Biarritz, élégante ville balnéaire de la côte basque, dans le sud-ouest de la France, est une destination populaire depuis que les têtes couronnées de toute l\'Europe l\'ont choisie comme lieu de villégiature dans les années 1800. L\'endroit est également prisé des surfeurs pour ses grandes plages et ses écoles de surf. Le rocher de la Vierge, emblème de Biarritz, est un affleurement rocheux surmonté d\'une statue de la Vierge Marie. Accessible par une passerelle, le rocher offre une vue panoramique sur le golfe de Gascogne.\r\n', 0, 0, 0, 2019, 0, 'images/biar.jpg'),
(16, 1, 300, 'Annecy', 'Visite', 3, 'France', 2, 3, 5, 'Annecy est une ville des Alpes située dans le sud-est de la France. C\'est là que le lac d\'Annecy se déverse dans le Thiou. Elle est réputée pour sa vieille ville avec ses rues pavées, ses canaux sinueux et ses maisons aux couleurs pastel. Surplombant la ville, le château médiéval d\'Annecy, ancienne résidence des comtes de Genève, abrite un musée proposant des objets régionaux, tels que du mobilier alpin ou des œuvres religieuses, ainsi qu\'une exposition sur l\'histoire naturelle.\r\n', 0, 0, 0, 2019, 1, 'images/annecy.jpg'),
(17, 1, 300, 'Monaco', 'visite', 4, 'France', 2, 3, 5, 'Monaco est une petite ville-État indépendante sur la côte méditerranéenne française connue pour ses casinos haut de gamme, son port de plaisance rempli de yachts et son prestigieux Grand Prix de Formule 1 qui a lieu dans les rues de Monaco une fois par an. Monte-Carlo, son principal quartier, abrite d\'élégants casinos Belle Époque et la Salle Garnier, l\'opéra. Il compte également de nombreux hôtels de luxe, des boutiques, des discothèques et des restaurants.', 0, 10, 0, 2019, 1, 'images/monaco.jpg'),
(18, 1, 250, 'Nancy', 'visite', 5, 'France', 2, 4, 4, 'Nancy, une ville en bord de rivière située dans la région du Grand Est, au nord-est de la France, est connue pour ses sites de style Baroque tardif et Art nouveau. Certains datent de l\'époque où la cité était l\'ancienne capitale du duché de Lorraine. Son lieu emblématique est la place Stanislas, datant du XVIIIe siècle. Cette immense place, décorée de grilles en fer forgé dorées et de fontaines rococo, se trouve au milieu des superbes palais et églises dont regorge la vieille ville médiévale de Nancy.', 0, 0, 0, 2019, 0, 'images/nancy1.jpg'),
(19, 1, 150, 'Grenoble', 'voyage', 3, 'france', 1, 2, 3, 'Des découvertes à vous faire tourner la tête ? Nous avons tout ce qu’il vous faut. Histoire, culture et éblouissement font bon ménage à Grenoble : nous allons rendre votre séjour inoubliable.\r\n3 étoiles; Le Splendid hôtel, à la décoration originale, est situé au centre ville de Grenoble avec un parking privé, dans un quartier calme. L\'hôtel met à votre disposition un service 24h/24, un petit déjeuner buffet savoureux, et le wifi vous est offert !\r\net on vous propose plein d\'activités à découvrir sur place avec plein d\'autres surprises qui vous attendent .', 0, 0, 0, 2019, 1, 'images/grenoble.jpg'),
(20, 1, 169, 'Marseille', 'voyage', 3, 'France', 1, 2, 4, '4 étoiles: hôtel NHOW MARSEILLE située a centre de Marseille: le vieux port, Notre Dame de la Garde, une visite pour découvrir le nouveau visage de la cité phocéenne avec son célèbre musée, le MUCEM, une croisière dans les calanques pour admirer toute la beauté des paysages du parc naturel… Marseille est une destination incontournable pour un séjour ou voyage organisé en groupe', 1, 20, 0, 0, 0, 'images/marseille1.jpg'),
(21, 1, 350, 'La Rochelle', 'voyage', 2, 'France', 1, 1, 3, 'Venez découvrir les superbes forteresses, comme l\'illustre fort Boyard et les inexpugnables tours du vieux port rochelais, de délicieux villages pittoresques sur l\'île d\'Aix. \r\nLes contrastes sont forts sur la côte charentaise, à la fois festive et secrète, balnéaire et rurale, moderne et rustique, elle a quelque chose à offrir à tous. \r\navec plein d\'activité comme Visite libre ou audio-guidée de l\'Aquarium, Visite et dégustation dans une cabane ostréicole,Visite et dégustation chez un producteur de Pineau et Cognac, Croisière commentée autour de Fort Boyard. et la grande surprise c\'est que vous pouvez choisir un hôtel 4 étoiles  selon votre gout .', 1, 15, 0, 0, 0, 'images/larochelle.jpg'),
(22, 1, 299, 'Cannes', 'voyage', 3, 'France', 1, 2, 3, 'Si vous êtes prêt à faire vos valises et explorer de nouvelles contrées,french trip est à vos côtés pour organiser votre escapade à Cannes.\r\nS’il y a un aspect de Cannes que peu de gens connaissent, c’est ce côté si calme qui contraste avec l’animation que l’on ressent pendant le festival. Sur le sommet de la colline du Suquet se dresse l’ancien château de Cannes, classé aux Monuments historiques. Dans ce dernier se trouve le musée de la Castre qui abrite des œuvres de peintres Cannois. Pour avoir une vue imprenable sur la ville, les visiteurs peuvent accéder à la tour médiévale du château. Les bâtiments historiques y sont nombreux sur cette colline, comme la chapelle Sainte-Anne, ou encore l’église Notre-Dame d’Espérance. et pour le logement on vous propose pour les deux nuitées un auberge Villa Claudia avec un petit déjeuner compris .', 0, 0, 0, 0, 0, 'images/cannes.jpg');

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
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `voyage`
--
ALTER TABLE `voyage`
  MODIFY `id_voyage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

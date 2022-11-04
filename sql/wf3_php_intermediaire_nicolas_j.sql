-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : ven. 04 nov. 2022 à 11:33
-- Version du serveur : 5.7.34
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `wf3_php_intermediaire_nicolas_j`
--

-- --------------------------------------------------------

--
-- Structure de la table `advert`
--

CREATE TABLE `advert` (
  `id` int(3) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `postal_code` int(5) UNSIGNED ZEROFILL NOT NULL,
  `city` varchar(100) NOT NULL,
  `type` enum('Location','Vente') NOT NULL,
  `price` int(11) NOT NULL,
  `reservation_message` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `advert`
--

INSERT INTO `advert` (`id`, `title`, `description`, `postal_code`, `city`, `type`, `price`, `reservation_message`) VALUES
(2, 'Annonce appartement à vendre', 'Situé dans un bel immeuble au calme, à quelques pas des commerces et des plages, charmant 3 pièces en parfait état et climatisé ouvert sur une spacieuse terrasse comprenant: entrée avec placard de rangement, salon/salle à manger avec cuisine ouverte équipée, 1 chambre avec douche, 2ème chambre avec mezzanine et salle de bains séparée avec WC.\r\nParking collectif dans la copropriété.\r\nUn vrai coup de cœur! Idéal pied-à-terre.', 06310, 'Beaulieu-sur-Mer', 'Vente', 460000, ''),
(3, 'Annonce maison à vendre', 'Dans un domaine sécurisé du secteur résidentiel de Gairaut, villa de style provençal à moderniser.\r\nConstruite sur un terrain de 1 220 m² avec piscine cette villa de 250 m² élevée d\'un étage se compose d\'un large séjour-salle à manger s\'ouvrant sur une terrasse et le jardin, 5 chambres, 4 salles de bains et un bureau. Possibilité d\'aménager un appartement indépendant en rez-de- jardin. La propriété possède également en annexes: 1 cave, 1 atelier, 1 garage.', 06000, 'Nice', 'Vente', 1144000, ''),
(4, 'Annonce appartement à vendre', 'NICE - BAS CIMIEZ: Dans bel immeuble ancien rénové, superbe 3 pièces de 55 m² entièrement rénové. Traversant. Séjour avec belle hauteur sous plafond, cuisine indépendante entièrement équipée, 2 chambres avec placards, 1 salle de douches avec toilettes. Magnifique terrasse de 150 m² à ciel ouvert. Très belles prestations. Calme. Ensoleillé. Vues dégagées. Cave. Rare. Possibilité parking en supplément à 35 000 €.\r\nNombre de lots : NC\r\nMontant moyen annuel de la quote-part des charges courantes: 2 652 €', 06000, 'Nice', 'Vente', 529000, ''),
(5, 'NICE - MUSICIENS/PROCHE PLACE MOZART', 'NICE - MUSICIENS/PROCHE PLACE MOZART: Dans résidence de standing récente (2009), lumineux 3 pièces duplex de 52 m² Carrez (65 m² au sol) situé en dernier étage. Séjour avec cuisine ouverte équipée donnant sur terrasse Ouest avec vue latérale sur la Place Mozart. 1 chambre à l\'arrière. Salle de douches avec toilettes. A l\'étage, 2° chambre, salle de douches avec toilettes. Terrasse de 6 m². Traversant Est/Ouest. Possibilité parking en supplément. Proche toutes commodités et tram L1 et L2.\r\nNombre de lots : 37\r\nMontant moyen annuel de la quote-part des charges courantes: 3 000 €', 06000, 'Nice', 'Vente', 440000, ''),
(6, 'NICE - RIQUIER/PROCHE GARE', 'NICE - RIQUIER/PROCHE GARE: Dans résidence récente avec ascenseur, juste face à la gare de Riquier et au calme, agréable studio de 18 m² environ (environ 32 m²au sol), très lumineux et se composant d\'un séjour avec cuisine US équipée donnant sur une véranda pouvant être une chambre, un jardinet, salle de douches avec toilettes. Climatisation réversible. Studio en parfait état. Véranda neuve. Proche commerces, tram L1 .\r\nNombre de lots : 53\r\nMontant moyen annuel de la quote-part des charges courantes: 840 €', 06000, 'Nice', 'Vente', 160000, ''),
(7, 'NICE - CENTRE VILLE/PLACE TOSELLI', 'NICE - CENTRE VILLE/PLACE TOSELLI: Dans immeuble bourgeois avec ascenseur, 4 pièces de 94 m² à rénover. Traversant Est/Ouest. Séjour, salle à manger, cuisine indépendante, 3 chambres, 1 salles de bains, toilettes indépendantes. Cave. Possibilité professions libérales. Proche toutes commodités, commerces, écoles et transports.\r\nNombre de lots principaux: 15\r\nMontant moyen annuel de la quote-part des charges courantes: 1 140 €', 06000, 'Nice', 'Vente', 420000, 'Réservé !'),
(8, 'Vente Cannes Californie 2 pièces 50m² avec terrasse et vue mer', 'Quartier résidentiel de la Basse Californie, situé à 10 minutes de la Croisette à pied, dans une résidence fermée de bon standing, superbe appartement 2 pièces de 50,68m² avec une profonde terrasse plein sud et vue ville et mer panoramique.\r\nL\'appartement se compose d\'une grande entrée, d\'un séjour ouvrant sur une terrasse ensoleillée avec vue mer, d\'une cuisine américaine non-aménagée, d\'une chambre au nord et d\'une salle de douche avec toilette.\r\nL\'appartement est lumineux et traversant.\r\nEmplacement de premier ordre !\r\nMon avis :\r\n- Appartement lumineux avec une très jolie vue mer dégagée.\r\n- Large et profonde terrasse de 15m².\r\n- Proche des commerces et de la rue d\'Antibes à quelques minutes à pied. ', 06400, 'Cannes', 'Vente', 426000, ''),
(9, 'MARINEO Annonce immobilier neuf à vendre', 'Choisissez une vie citadine agréable mais aussi la proximité de la gare à moins de 5 min à pied, de l\'aéroport à 5 min en voiture, CAP 3000 et la plage de Saint-Laurent-du-Var à 3 min en voiture.', 06700, 'Saint-Laurent-du-Var', 'Vente', 250000, ''),
(10, 'Annonce appartement à louer', 'DISPONIBLE MI-NOVEMBRE, BERRE LES ALPES, ROUTE DE LA VALLEE. Agréable bas de villa avec entrée indépendante, type 3 pièces de 60m2 avec terrasse , jardin et terrain privatif d\'environ 500m2 cloturé, un portail électrique ouvrant sur 2 places de parking couvertes + stationnement possible devant. L\'appartement renové se compose : - d\'un séjour/cuisine américaine aménagée et équipée (réfrigérateur/congélateur, plaque de cuisson, four, hotte, lave-vaiselles), - un couloir avec rangement sur toute la longeur, - une chambre, - une chambre enfant/bureau avec dressing, - une salle de douches/WC. Annexe : une cave d\'environ 35m2. informations complémentaires : comble isolé, double vitrage, volet automatique neuf.', 06390, 'Berre les Alpes', 'Location', 1090, ''),
(11, 'Cannes - Annonce appartement à louer', 'Très bel appartement de style moderne contemporain situé au 5ème étage d’un immeuble de grand standing avec ascenseur. 4 personnes peuvent être accueillies confortablement dans les deux chambres doubles avec salles de douche. Ce bien propose également un agréable séjour – salle à manger donnant sur une belle terrasse avec un aperçu mer et une très moderne cuisine américaine. Idéal pour vos vacances ou séjours professionnels compte tenu de sa localisation à 5 minutes à pied du Palais des Festivals et à 100 m. de la Croisette.', 06400, 'Cannes', 'Location', 2000, ''),
(12, 'Cannes -  Annonce appartement à louer', 'STEPHANE PLAZA IMMOBILIER CANNES a le plaisir de vous proposer à la location non-meublée ce superbe appartement de 2 pièces de 50m2. Idéalement situé dans le quartier BAS CROIX des GARDES, vous êtes à 2 min à pied de la mer, proche tous commerces et commodités. L\'appartement est entièrement rénové et se compose d\'une entrée avec placards, spacieuse cuisine indépendante équipée (plaque, hotte, four et lave-vaisselle), wc indépendant, un séjour très lumineux, une grande chambre avec rangements et une salle d\'eau. Climatisation. Chauffage électrique. Une belle terrasse de 14m2 exposée PLEIN SUD complète ce bien. Un parking collectif est disponible à l\'arrière de la copropriété et il existe des facilités de parking à proximité. LOYER : 680 euros + 70 de provisions sur charge (comprenant copropriété / eau froide) = 750 euros CC Honoraires à charge locataire : 646,33 €', 06400, 'Cannes', 'Location', 680, ''),
(13, 'Nice - Annonce appartement à louer', 'Winter Immobilier vous propose à la location à l\'année meublé, un studio de 17.30 m2 au premier étage.\r\nSitué au 70 Avenue de la Bornala 06200 NICE, cet appartement est à proximité de l\'arrêt de bus nécessaire qui dessert le centre ville en quelques minutes, écoles, supermarchés et parkings sont également proche du bien !\r\nIl est composé d\'une entrée avec placard de rangement, d\'un séjour avec cuisine et d\'une salle de douche avec WC.\r\nLoyer charges comprises 600 €/mois\r\n(Dont 505€ de loyer + 95€ de provisions sur charges)\r\nDépôt de garantie : 1 mois de loyer charges comprises\r\nHonoraires : 13€/m2 (soit 221€ TTC) ', 06000, 'Nice', 'Location', 600, ''),
(14, 'LOCATION MENTON ROUTE DE GORBIO', 'L\'agence SUD RIVAGES, vous propose à la location, ce superbe 4 pièces entièrement meublé et rénové avec des matériaux de très belle qualité. Il est composé d\'un séjour/salle-à-manger avec une spacieuse cuisine toute équipée. Trois chambres, une salle d\'eau et une salle-de-bain, un WC indépendant. Une grande véranda de 18m² en exposition sud/ouest et vue dégagée permet de profiter de la nature environnante. Une place de parking privé complète ce bien.', 06500, 'Menton', 'Location', 1850, ''),
(15, 'Èze - Annonce maison à louer', 'Nous vous proposons à la location longue durée cette magnifique villa entièrement rénovée avec de belles prestations, qui s\'élève sur 2 niveaux.\r\nDe grandes terrasses vous offre une vue mer panoramique avec une exposition optimale.\r\nLa villa se compose d\'une cuisine ouverte sur séjour donnant sur une large terrasse, 3 chambres dont une avec salle de douche en suite, et une salle de bains.\r\n2 chambres indépendantes avec salle de douche et terrasse.\r\nToutes les chambres donnent sur une terrasse offrant une magnifique vue mer. Très beau jardin, jacuzzi, garage et parking\r\nLoyer mensuel : 10 000.00 €\r\nEntretien jardin mensuel : 1000.00 €', 06360, 'Èze', 'Location', 11000, ''),
(16, 'Nice - Annonce appartement à louer', 'Quartier des Fleurs/ Saint Philippe.\r\nAu rez-de-chaussée d\'un très bel immeuble Art Déco des années 50, vaste appartement d\'environ 65 m² actuellement vide mais avec possibilité de le réaménager en vrai 4 pièces. Il se compose d\'un hall d\'entrée, deux pièce, une cuisine, une terrasse avec accès indépendant et une salle d\'eau avec WC.\r\nUne cave complète ce bien.\r\n1200€/ mois (charges comprises)\r\nIdéalement placé pour recevoir une profession libérale .\r\nParking Palmeira juste en face.', 06000, 'Nice', 'Location', 1200, ''),
(17, 'Vence - Annonce appartement à louer', 'Au calme, à seulement 5 mn à pied du centre ville, beau 3 pièces traversant de 64.29 m2 dont chaque pièce s\'ouvre sur une belle terrasse. Composé d\'une entrée avec placard, un séjour en angle, une cuisine séparée, 2 chambres de 10 et 12 m2, une salle de bain et wc séparé. Résidence de bon standing avec ascenseur. L\'appartement est loué avec une cave et un parking en sous-sol accèssible par l\'ascenseur. Libre de suite Loyer : 1190 dont 180 EUR de provisions pour charges pour eau froide, eau chaude et charges de copropriété. Honoraires : 835EUR donc 192 EUR pour EDL.', 06140, 'Vence', 'Location', 1190, ''),
(18, 'Pégomas - Annonce maison à louer', 'Votre agence AGRESTA IMMOBILIER vous propose à la location une Villa neuve meublée de 140m² avec piscine chauffée sur la commune de Pégomas au prix de 3500 € CC. Au calme absolu cette villa de 5 pièces se compose d\'un séjour/salle à manger, d\'une cuisine équipée et aménagée, de trois chambres avec chacune sa SDB et d\'une buanderie. La maison dispose du chauffage au sol, de la climatisation réversible gainée et est entièrement domotisée. Coté Extérieur, vous profiterez d\'une piscine chauffée , d\'un jardin de 1000 m² et de 2 places de stationnements extérieurs. Loyer 3500€ par mois. Dépôt de garantie: 3500€. Honoraires agence: 1820€ Nous restons à votre disposition pour tout', 06580, 'Pégomas', 'Location', 3500, 'Bien réservé à partir du 10 décembre 2022.');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `advert`
--
ALTER TABLE `advert`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `advert`
--
ALTER TABLE `advert`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mar. 16 avr. 2019 à 15:41
-- Version du serveur :  8.0.15
-- Version de PHP :  7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `servyy`
--

-- --------------------------------------------------------

--
-- Structure de la table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `real_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `zip_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `city`
--

INSERT INTO `city` (`id`, `name`, `slug`, `real_name`, `zip_name`) VALUES
(12567, 'SAINT-JEAN-D\'ILLAC', 'saint-jean-d-illac', 'Saint-Jean-d\'Illac', '33127'),
(12568, 'GUITRES', 'guîtres', 'Guîtres', '33230'),
(12569, 'CANEJAN', 'canejan', 'Canéjan', '33610'),
(12570, 'LE BOUSCAT', 'bouscat', 'Le Bouscat', '33110'),
(12571, 'CASSEUIL', 'casseuil', 'Casseuil', '33190'),
(12572, 'GENISSAC', 'genissac', 'Génissac', '33420'),
(12573, 'LIBOURNE', 'libourne', 'Libourne', '33500'),
(12574, 'LE BARP', 'barp', 'Le Barp', '33114'),
(12575, 'VIRSAC', 'virsac', 'Virsac', '33240'),
(12576, 'LAVAZAN', 'lavazan', 'Lavazan', '33690'),
(12577, 'FLAUJAGUES', 'flaujagues', 'Flaujagues', '33350'),
(12578, 'SALAUNES', 'salaunes', 'Salaunes', '33160'),
(12579, 'ORIGNE', 'origne-33', 'Origne', '33113'),
(12580, 'SAINT-CHRISTOPHE-DES-BARDES', 'saint-christophe-des-bardes', 'Saint-Christophe-des-Bardes', '33330'),
(12581, 'BONZAC', 'bonzac', 'Bonzac', '33910'),
(12582, 'PETIT-PALAIS-ET-CORNEMPS', 'petit-palais-et-cornemps', 'Petit-Palais-et-Cornemps', '33570'),
(12583, 'SOUSSAC', 'soussac', 'Soussac', '33790'),
(12584, 'CERONS', 'cerons', 'Cérons', '33720'),
(12585, 'BEAUTIRAN', 'beautiran', 'Beautiran', '33640'),
(12586, 'SALIGNAC', 'salignac-33', 'Salignac', '33240'),
(12587, 'PERISSAC', 'perissac', 'Périssac', '33240'),
(12588, 'MERIGNAS', 'merignas', 'Mérignas', '33350'),
(12589, 'DAIGNAC', 'daignac', 'Daignac', '33420'),
(12590, 'SAINT-HILAIRE-DE-LA-NOAILLE', 'saint-hilaire-de-la-noaille', 'Saint-Hilaire-de-la-Noaille', '33190'),
(12591, 'FLOIRAC', 'floirac-33', 'Floirac', '33270'),
(12592, 'PRIGNAC-ET-MARCAMPS', 'prignac-et-marcamps', 'Prignac-et-Marcamps', '33710'),
(12593, 'BARON', 'baron-33', 'Baron', '33750'),
(12594, 'MAZERES', 'mazeres-33', 'Mazères', '33210'),
(12595, 'LANGON', 'langon-33', 'Langon', '33210'),
(12596, 'SAINT-SEURIN-DE-CURSAC', 'saint-seurin-de-cursac', 'Saint-Seurin-de-Cursac', '33390'),
(12597, 'SAINT-LAURENT-MEDOC', 'saint-laurent-medoc', 'Saint-Laurent-Médoc', '33112'),
(12598, 'AMBES', 'ambes', 'Ambès', '33810'),
(12599, 'LA SAUVE', 'sauve-33', 'La Sauve', '33670'),
(12600, 'SAINT-HIPPOLYTE', 'saint-hippolyte-33', 'Saint-Hippolyte', '33330'),
(12601, 'SAINT-MARTIN-DE-LERM', 'saint-martin-de-lerm', 'Saint-Martin-de-Lerm', '33540'),
(12602, 'PLASSAC', 'plassac-33', 'Plassac', '33390'),
(12603, 'VILLENAVE-DE-RIONS', 'villenave-de-rions', 'Villenave-de-Rions', '33550'),
(12604, 'PUYNORMAND', 'puynormand', 'Puynormand', '33660'),
(12605, 'MONTUSSAN', 'montussan', 'Montussan', '33450'),
(12606, 'LES BILLAUX', 'billaux', 'Billaux', '33500'),
(12607, 'COUTURES', 'coutures-33', 'Coutures', '33580'),
(12608, 'SAINT-GERMAIN-DE-LA-RIVIERE', 'saint-germain-de-la-riviere', 'Saint-Germain-de-la-Rivière', '33240'),
(12609, 'SAINT-EMILION', 'saint-emilion', 'Saint-Émilion', '33330'),
(12610, 'ESPIET', 'espiet', 'Espiet', '33420'),
(12611, 'BLASIMON', 'blasimon', 'Blasimon', '33540'),
(12612, 'EYRANS', 'eyrans', 'Eyrans', '33390'),
(12613, 'SAINT-GENES-DE-LOMBAUD', 'saint-genes-de-lombaud', 'Saint-Genès-de-Lombaud', '33670'),
(12614, 'FRONSAC', 'fronsac-33', 'Fronsac', '33126'),
(12615, 'MARTILLAC', 'martillac', 'Martillac', '33650'),
(12616, 'CAZATS', 'cazats', 'Cazats', '33430'),
(12617, 'ESCOUSSANS', 'escoussans', 'Escoussans', '33760'),
(12618, 'CAMPS-SUR-L\'ISLE', 'camps-sur-l-isle', 'Camps-sur-l\'Isle', '33660'),
(12619, 'MARANSIN', 'maransin', 'Maransin', '33230'),
(12620, 'MARCENAIS', 'marcenais', 'Marcenais', '33620'),
(12621, 'GRADIGNAN', 'gradignan', 'Gradignan', '33170'),
(12622, 'LUSSAC', 'lussac-33', 'Lussac', '33570'),
(12623, 'VERTHEUIL', 'vertheuil', 'Vertheuil', '33180'),
(12624, 'LABARDE', 'barde-33', 'Barde', '33460'),
(12625, 'TIZAC-DE-CURTON', 'tizac-de-curton', 'Tizac-de-Curton', '33420'),
(12626, 'LAMOTHE-LANDERRON', 'lamothe-landerron', 'Lamothe-Landerron', '33190'),
(12627, 'SAINT-PIERRE-DE-MONS', 'saint-pierre-de-mons', 'Saint-Pierre-de-Mons', '33210'),
(12628, 'POMPIGNAC', 'pompignac', 'Pompignac', '33370'),
(12629, 'FOURS', 'fours-33', 'Fours', '33390'),
(12630, 'SAINTE-COLOMBE', 'sainte-colombe-33', 'Sainte-Colombe', '33350'),
(12631, 'SAUVETERRE-DE-GUYENNE', 'sauveterre-de-guyenne', 'Sauveterre-de-Guyenne', '33540'),
(12632, 'SAINTE-FOY-LA-LONGUE', 'sainte-foy-la-longue', 'Sainte-Foy-la-Longue', '33490'),
(12633, 'BIEUJAC', 'bieujac', 'Bieujac', '33210'),
(12634, 'BAGAS', 'bagas', 'Bagas', '33190'),
(12635, 'BLAIGNAC', 'blaignac', 'Blaignac', '33190'),
(12636, 'SAINT-ANTOINE-DU-QUEYRET', 'saint-antoine-du-queyret', 'Saint-Antoine-du-Queyret', '33790'),
(12637, 'FARGUES', 'fargues-33', 'Fargues', '33210'),
(12638, 'LUGASSON', 'lugasson', 'Lugasson', '33760'),
(12639, 'BOMMES', 'bommes', 'Bommes', '33210'),
(12640, 'SAINT-PIERRE-DE-BAT', 'saint-pierre-de-bat', 'Saint-Pierre-de-Bat', '33760'),
(12641, 'SAINT-ESTEPHE', 'saint-estephe-33', 'Saint-Estèphe', '33180'),
(12642, 'LADAUX', 'ladaux', 'Ladaux', '33760'),
(12643, 'GRIGNOLS', 'grignols-33', 'Grignols', '33690'),
(12644, 'SAINT-VIVIEN-DE-BLAYE', 'saint-vivien-de-blaye', 'Saint-Vivien-de-Blaye', '33920'),
(12645, 'SAINT-SYMPHORIEN', 'saint-symphorien-33', 'Saint-Symphorien', '33113'),
(12646, 'BOURDELLES', 'bourdelles', 'Bourdelles', '33190'),
(12647, 'LA REOLE', 'reole', 'La Réole', '33190'),
(12648, 'CAUMONT', 'caumont-33', 'Caumont', '33540'),
(12649, 'MONGAUZY', 'mongauzy', 'Mongauzy', '33190'),
(12650, 'BRANNE', 'branne-33', 'Branne', '33420'),
(12651, 'SAINT-LEON', 'saint-leon-33', 'Saint-Léon', '33670'),
(12652, 'PUYBARBAN', 'puybarban', 'Puybarban', '33190'),
(12653, 'SAINT-SEURIN-SUR-L\'ISLE', 'saint-seurin-sur-l-isle', 'Saint-Seurin-sur-l\'Isle', '33660'),
(12654, 'COUTRAS', 'coutras', 'Coutras', '33230'),
(12655, 'LUGAIGNAC', 'lugaignac', 'Lugaignac', '33420'),
(12656, 'MONPRIMBLANC', 'monprimblanc', 'Monprimblanc', '33410'),
(12657, 'COIMERES', 'coimeres', 'Coimères', '33210'),
(12658, 'FRANCS', 'francs', 'Francs', '33570'),
(12659, 'SAINT-GENES-DE-CASTILLON', 'saint-genes-de-castillon', 'Saint-Genès-de-Castillon', '33350'),
(12660, 'BELIN-BELIET', 'belin-beliet', 'Belin-Béliet', '33830'),
(12661, 'PORCHERES', 'porcheres', 'Porchères', '33660'),
(12662, 'SAINT-ETIENNE-DE-LISSE', 'saint-etienne-de-lisse', 'Saint-Étienne-de-Lisse', '33330'),
(12663, 'NEUFFONS', 'neuffons', 'Neuffons', '33580'),
(12664, 'LOUPIAC-DE-LA-REOLE', 'loupiac-de-la-reole', 'Loupiac-de-la-Réole', '33190'),
(12665, 'SAINT-TROJAN', 'saint-trojan', 'Saint-Trojan', '33710'),
(12666, 'COMPS', 'comps-33', 'Comps', '33710'),
(12667, 'CENAC', 'cenac', 'Cénac', '33360'),
(12668, 'LEOGEATS', 'leogeats', 'Léogeats', '33210'),
(12669, 'NOAILLAN', 'noaillan', 'Noaillan', '33730'),
(12670, 'SAINT-PEY-D\'ARMENS', 'saint-pey-d-armens', 'Saint-Pey-d\'Armens', '33330'),
(12671, 'BIGANOS', 'biganos', 'Biganos', '33380'),
(12672, 'SAINT-MACAIRE', 'saint-macaire', 'Saint-Macaire', '33490'),
(12673, 'CEZAC', 'cezac-33', 'Cézac', '33620'),
(12674, 'VIRELADE', 'virelade', 'Virelade', '33720'),
(12675, 'VAYRES', 'vayres-33', 'Vayres', '33870'),
(12676, 'BOULIAC', 'bouliac', 'Bouliac', '33270'),
(12677, 'VIGNONET', 'vignonet', 'Vignonet', '33330'),
(12678, 'VALEYRAC', 'valeyrac', 'Valeyrac', '33340'),
(12679, 'BORDEAUX', 'bordeaux', 'Bordeaux', '33000-33100-33200-33300-33800'),
(12680, 'BERTHEZ', 'berthez', 'Berthez', '33124'),
(12681, 'CUBZAC-LES-PONTS', 'cubzac-les-ponts', 'Cubzac-les-Ponts', '33240'),
(12682, 'SAINT-COME', 'saint-come', 'Saint-Côme', '33430'),
(12683, 'VILLEGOUGE', 'villegouge', 'Villegouge', '33141'),
(12684, 'SAINT-ANDRE-ET-APPELLES', 'saint-andre-et-appelles', 'Saint-André-et-Appelles', '33220'),
(12685, 'CIVRAC-DE-BLAYE', 'civrac-de-blaye', 'Civrac-de-Blaye', '33920'),
(12686, 'BAURECH', 'baurech', 'Baurech', '33880'),
(12687, 'SAINT-LAURENT-DU-BOIS', 'saint-laurent-du-bois', 'Saint-Laurent-du-Bois', '33540'),
(12688, 'LES ARTIGUES-DE-LUSSAC', 'artigues-de-lussac', 'Artigues-de-Lussac', '33570'),
(12689, 'ARVEYRES', 'arveyres', 'Arveyres', '33500'),
(12690, 'QUEYRAC', 'queyrac', 'Queyrac', '33340'),
(12691, 'MOMBRIER', 'mombrier', 'Mombrier', '33710'),
(12692, 'ILLATS', 'illats', 'Illats', '33720'),
(12693, 'NEAC', 'neac', 'Néac', '33500'),
(12694, 'ESCAUDES', 'escaudes', 'Escaudes', '33840'),
(12695, 'LES SALLES-DE-CASTILLON', 'salles-de-castillon', 'Salles-de-Castillon', '33350'),
(12696, 'SAINT-CHRISTOLY-MEDOC', 'saint-christoly-medoc', 'Saint-Christoly-Médoc', '33340'),
(12697, 'BONNETAN', 'bonnetan', 'Bonnetan', '33370'),
(12698, 'CAMPUGNAN', 'campugnan', 'Campugnan', '33390'),
(12699, 'JAU-DIGNAC-ET-LOIRAC', 'jau-dignac-et-loirac', 'Jau-Dignac-et-Loirac', '33590'),
(12700, 'PRIGNAC-EN-MEDOC', 'prignac-en-medoc', 'Prignac-en-Médoc', '33340'),
(12701, 'ARSAC', 'arsac', 'Arsac', '33460'),
(12702, 'JUGAZAN', 'jugazan', 'Jugazan', '33420'),
(12703, 'MARGAUX', 'margaux', 'Margaux', '33460'),
(12704, 'POMPEJAC', 'pompejac', 'Pompéjac', '33730'),
(12705, 'MARCHEPRIME', 'marcheprime', 'Marcheprime', '33380'),
(12706, 'AILLAS', 'aillas', 'Aillas', '33124'),
(12707, 'LOUPIAC', 'loupiac-33', 'Loupiac', '33410'),
(12708, 'BEGLES', 'begles', 'Bègles', '33130'),
(12709, 'GAJAC', 'gajac', 'Gajac', '33430'),
(12710, 'NERIGEAN', 'nerigean', 'Nérigean', '33750'),
(12711, 'LANGOIRAN', 'langoiran', 'Langoiran', '33550'),
(12712, 'CUBNEZAIS', 'cubnezais', 'Cubnezais', '33620'),
(12713, 'CROIGNON', 'croignon', 'Croignon', '33750'),
(12714, 'LANSAC', 'lansac-33', 'Lansac', '33710'),
(12715, 'SAINT-PHILIPPE-DU-SEIGNAL', 'saint-philippe-du-seignal', 'Saint-Philippe-du-Seignal', '33220'),
(12716, 'PRECHAC', 'prechac-33', 'Préchac', '33730'),
(12717, 'VILLANDRAUT', 'villandraut', 'Villandraut', '33730'),
(12718, 'SAINT-MARTIN-DU-BOIS', 'saint-martin-du-bois-33', 'Saint-Martin-du-Bois', '33910'),
(12719, 'VERDELAIS', 'verdelais', 'Verdelais', '33490'),
(12720, 'MACAU', 'macau', 'Macau', '33460'),
(12721, 'PAREMPUYRE', 'parempuyre', 'Parempuyre', '33290'),
(12722, 'DAUBEZE', 'daubeze', 'Daubèze', '33540'),
(12723, 'BEGUEY', 'beguey', 'Béguey', '33410'),
(12724, 'CAUVIGNAC', 'cauvignac', 'Cauvignac', '33690'),
(12725, 'AUDENGE', 'audenge', 'Audenge', '33980'),
(12726, 'SIGALENS', 'sigalens', 'Sigalens', '33690'),
(12727, 'LANDERROUET-SUR-SEGUR', 'landerrouet-sur-segur', 'Landerrouet-sur-Ségur', '33540'),
(12728, 'MARIMBAULT', 'marimbault', 'Marimbault', '33430'),
(12729, 'CASTELNAU-DE-MEDOC', 'castelnau-de-medoc', 'Castelnau-de-Médoc', '33480'),
(12730, 'SAINT-SELVE', 'saint-selve', 'Saint-Selve', '33650'),
(12731, 'LA ROQUILLE', 'roquille', 'La Roquille', '33220'),
(12732, 'SAINT-LEGER-DE-BALSON', 'saint-leger-de-balson', 'Saint-Léger-de-Balson', '33113'),
(12733, 'SAINT-SAUVEUR-DE-PUYNORMAND', 'saint-sauveur-de-puynormand', 'Saint-Sauveur-de-Puynormand', '33660'),
(12734, 'BAYON-SUR-GIRONDE', 'bayon-sur-gironde', 'Bayon-sur-Gironde', '33710'),
(12735, 'BASSENS', 'bassens-33', 'Bassens', '33530'),
(12736, 'BUDOS', 'budos', 'Budos', '33720'),
(12737, 'PONDAURAT', 'pondaurat', 'Pondaurat', '33190'),
(12738, 'SAINT-GENES-DE-BLAYE', 'saint-genes-de-blaye', 'Saint-Genès-de-Blaye', '33390'),
(12739, 'GORNAC', 'gornac', 'Gornac', '33540'),
(12740, 'SAUVIAC', 'sauviac-33', 'Sauviac', '33430'),
(12741, 'MONTIGNAC', 'montignac-33', 'Montignac', '33760'),
(12742, 'CESSAC', 'cessac', 'Cessac', '33760'),
(12743, 'SAINT-MAGNE', 'saint-magne', 'Saint-Magne', '33125'),
(12744, 'SAINT-AUBIN-DE-MEDOC', 'saint-aubin-de-medoc', 'Saint-Aubin-de-Médoc', '33160'),
(12745, 'CARCANS', 'carcans', 'Carcans', '33121'),
(12746, 'LE HAILLAN', 'haillan', 'Le Haillan', '33185'),
(12747, 'PINEUILH', 'pineuilh', 'Pineuilh', '33220'),
(12748, 'GOUALADE', 'goualade', 'Goualade', '33840'),
(12749, 'AUBIAC', 'aubiac-33', 'Aubiac', '33430'),
(12750, 'CANTOIS', 'cantois', 'Cantois', '33760'),
(12751, 'MASSEILLES', 'masseilles', 'Masseilles', '33690'),
(12752, 'LES LEVES-ET-THOUMEYRAGUES', 'leves-et-thoumeyragues', 'Lèves-et-Thoumeyragues', '33220'),
(12753, 'LESTIAC-SUR-GARONNE', 'lestiac-sur-garonne', 'Lestiac-sur-Garonne', '33550'),
(12754, 'LESPARRE-MEDOC', 'lesparre-medoc', 'Lesparre-Médoc', '33340'),
(12755, 'SAINT-LAURENT-DU-PLAN', 'saint-laurent-du-plan', 'Saint-Laurent-du-Plan', '33190'),
(12756, 'SAINT-CIERS-SUR-GIRONDE', 'saint-ciers-sur-gironde', 'Saint-Ciers-sur-Gironde', '33820'),
(12757, 'BELLEFOND', 'bellefond-33', 'Bellefond', '33760'),
(12758, 'QUINSAC', 'quinsac-33', 'Quinsac', '33360'),
(12759, 'AUBIE-ET-ESPESSAS', 'aubie-et-espessas', 'Aubie-et-Espessas', '33240'),
(12760, 'BLAYE', 'blaye', 'Blaye', '33390'),
(12761, 'BEGADAN', 'begadan', 'Bégadan', '33340'),
(12762, 'PELLEGRUE', 'pellegrue', 'Pellegrue', '33790'),
(12763, 'SAINT-MEDARD-D\'EYRANS', 'saint-medard-d-eyrans', 'Saint-Médard-d\'Eyrans', '33650'),
(12764, 'GIRONDE-SUR-DROPT', 'gironde-sur-dropt', 'Gironde-sur-Dropt', '33190'),
(12765, 'SAINT-GIRONS-D\'AIGUEVIVES', 'saint-girons-d-aiguevives', 'Saint-Girons-d\'Aiguevives', '33920'),
(12766, 'TAURIAC', 'tauriac-33', 'Tauriac', '33710'),
(12767, 'LA TESTE-DE-BUCH', 'teste-de-buch', 'La Teste-de-Buch', '33260'),
(12768, 'CASTELVIEL', 'castelviel', 'Castelviel', '33540'),
(12769, 'MAURIAC', 'mauriac-33', 'Mauriac', '33540'),
(12770, 'CABANAC-ET-VILLAGRAINS', 'cabanac-et-villagrains', 'Cabanac-et-Villagrains', '33650'),
(12771, 'YVRAC', 'yvrac', 'Yvrac', '33370'),
(12772, 'EYSINES', 'eysines', 'Eysines', '33320'),
(12773, 'SAINT-AVIT-SAINT-NAZAIRE', 'saint-avit-saint-nazaire', 'Saint-Avit-Saint-Nazaire', '33220'),
(12774, 'BIRAC', 'birac-33', 'Birac', '33430'),
(12775, 'GANS', 'gans', 'Gans', '33430'),
(12776, 'LOUBENS', 'loubens-33', 'Loubens', '33190'),
(12777, 'SAINT-MORILLON', 'saint-morillon', 'Saint-Morillon', '33650'),
(12778, 'GOURS', 'gours-33', 'Gours', '33660'),
(12779, 'SAINT-ANDRONY', 'saint-androny', 'Saint-Androny', '33390'),
(12780, 'BRANNENS', 'brannens', 'Brannens', '33124'),
(12781, 'ANGLADE', 'anglade', 'Anglade', '33390'),
(12782, 'LAMARQUE', 'lamarque', 'Lamarque', '33460'),
(12783, 'PAUILLAC', 'pauillac', 'Pauillac', '33250'),
(12784, 'BAZAS', 'bazas', 'Bazas', '33430'),
(12785, 'DONNEZAC', 'donnezac', 'Donnezac', '33860'),
(12786, 'SAINT-CIERS-D\'ABZAC', 'saint-ciers-d-abzac', 'Saint-Ciers-d\'Abzac', '33910'),
(12787, 'ARCACHON', 'arcachon', 'Arcachon', '33120'),
(12788, 'SAINT-CAPRAIS-DE-BLAYE', 'saint-caprais-de-blaye', 'Saint-Caprais-de-Blaye', '33820'),
(12789, 'POMEROL', 'pomerol', 'Pomerol', '33500'),
(12790, 'CAMIRAN', 'camiran', 'Camiran', '33190'),
(12791, 'MAZION', 'mazion', 'Mazion', '33390'),
(12792, 'SAINT-SAVIN', 'saint-savin-33', 'Saint-Savin', '33920'),
(12793, 'BOURG', 'bourg-33', 'Bourg', '33710'),
(12794, 'LANDIRAS', 'landiras', 'Landiras', '33720'),
(12795, 'TALAIS', 'talais', 'Talais', '33590'),
(12796, 'SAUGON', 'saugon', 'Saugon', '33920'),
(12797, 'SAINT-MICHEL-DE-FRONSAC', 'saint-michel-de-fronsac', 'Saint-Michel-de-Fronsac', '33126'),
(12798, 'SAINT-MARTIAL', 'saint-martial-33', 'Saint-Martial', '33490'),
(12799, 'FARGUES-SAINT-HILAIRE', 'fargues-saint-hilaire', 'Fargues-Saint-Hilaire', '33370'),
(12800, 'CADILLAC', 'cadillac', 'Cadillac', '33410'),
(12801, 'GUJAN-MESTRAS', 'gujan-mestras', 'Gujan-Mestras', '33470'),
(12802, 'ABZAC', 'abzac-33', 'Abzac', '33230'),
(12803, 'CARDAN', 'cardan', 'Cardan', '33410'),
(12804, 'SAINT-ANTOINE-SUR-L\'ISLE', 'saint-antoine-sur-l-isle', 'Saint-Antoine-sur-l\'Isle', '33660'),
(12805, 'SAINTE-GEMME', 'sainte-gemme-33', 'Sainte-Gemme', '33580'),
(12806, 'SABLONS', 'sablons-33', 'Sablons', '33910'),
(12807, 'SAINT-LOUBES', 'saint-loubes', 'Saint-Loubès', '33450'),
(12808, 'VENSAC', 'vensac', 'Vensac', '33590'),
(12809, 'SAINT-SULPICE-ET-CAMEYRAC', 'saint-sulpice-et-cameyrac', 'Saint-Sulpice-et-Cameyrac', '33450'),
(12810, 'ANDERNOS-LES-BAINS', 'andernos-les-bains', 'Andernos-les-Bains', '33510'),
(12811, 'SAINT-MEDARD-EN-JALLES', 'saint-medard-en-jalles', 'Saint-Médard-en-Jalles', '33160'),
(12812, 'CAPTIEUX', 'captieux', 'Captieux', '33840'),
(12813, 'RIOCAUD', 'riocaud', 'Riocaud', '33220'),
(12814, 'SAINT-CHRISTOPHE-DE-DOUBLE', 'saint-christophe-de-double', 'Saint-Christophe-de-Double', '33230'),
(12815, 'SAINT-MICHEL-DE-LAPUJADE', 'saint-michel-de-lapujade', 'Saint-Michel-de-Lapujade', '33190'),
(12816, 'CARS', 'cars-33', 'Cars', '33390'),
(12817, 'SAUCATS', 'saucats', 'Saucats', '33650'),
(12818, 'TOULENNE', 'toulenne', 'Toulenne', '33210'),
(12819, 'LA LANDE-DE-FRONSAC', 'lande-de-fronsac', 'La Lande-de-Fronsac', '33240'),
(12820, 'SAINT-LAURENT-D\'ARCE', 'saint-laurent-d-arce', 'Saint-Laurent-d\'Arce', '33240'),
(12821, 'SAINT-SEURIN-DE-CADOURNE', 'saint-seurin-de-cadourne', 'Saint-Seurin-de-Cadourne', '33180'),
(12822, 'MARTRES', 'martres', 'Martres', '33760'),
(12823, 'PLEINE-SELVE', 'pleine-selve-33', 'Pleine-Selve', '33820'),
(12824, 'CHAMADELLE', 'chamadelle', 'Chamadelle', '33230'),
(12825, 'MARCILLAC', 'marcillac', 'Marcillac', '33860'),
(12826, 'CLEYRAC', 'cleyrac', 'Cleyrac', '33540'),
(12827, 'CARTELEGUE', 'cartelegue', 'Cartelègue', '33390'),
(12828, 'LE TEICH', 'teich', 'Le Teich', '33470'),
(12829, 'BLANQUEFORT', 'blanquefort-33', 'Blanquefort', '33290'),
(12830, 'SAINT-CAPRAIS-DE-BORDEAUX', 'saint-caprais-de-bordeaux', 'Saint-Caprais-de-Bordeaux', '33880'),
(12831, 'NAUJAC-SUR-MER', 'naujac-sur-mer', 'Naujac-sur-Mer', '33990'),
(12832, 'SOULAC-SUR-MER', 'soulac-sur-mer', 'Soulac-sur-Mer', '33780'),
(12833, 'CAMARSAC', 'camarsac', 'Camarsac', '33750'),
(12834, 'SAINT-GERMAIN-DU-PUCH', 'saint-germain-du-puch', 'Saint-Germain-du-Puch', '33750'),
(12835, 'ARTIGUES-PRES-BORDEAUX', 'artigues-pres-bordeaux', 'Artigues-près-Bordeaux', '33370'),
(12836, 'BELLEBAT', 'bellebat', 'Bellebat', '33760'),
(12837, 'SAINT-SAUVEUR', 'saint-sauveur-33', 'Saint-Sauveur', '33250'),
(12838, 'ARES', 'ares', 'Arès', '33740'),
(12839, 'TRESSES', 'tresses', 'Tresses', '33370'),
(12840, 'ORDONNAC', 'ordonnac', 'Ordonnac', '33340'),
(12841, 'SAINT-PALAIS', 'saint-palais-33', 'Saint-Palais', '33820'),
(12842, 'MARGUERON', 'margueron', 'Margueron', '33220'),
(12843, 'SAINT-YZAN-DE-SOUDIAC', 'saint-yzan-de-soudiac', 'Saint-Yzan-de-Soudiac', '33920'),
(12844, 'GREZILLAC', 'grezillac', 'Grézillac', '33420'),
(12845, 'LE VERDON-SUR-MER', 'verdon-sur-mer', 'Le Verdon-sur-Mer', '33123'),
(12846, 'TABANAC', 'tabanac', 'Tabanac', '33550'),
(12847, 'SAINT-VINCENT-DE-PERTIGNAS', 'saint-vincent-de-pertignas', 'Saint-Vincent-de-Pertignas', '33420'),
(12848, 'LAGORCE', 'lagorce-33', 'Lagorce', '33230'),
(12849, 'SAINT-GERMAIN-D\'ESTEUIL', 'saint-germain-d-esteuil', 'Saint-Germain-d\'Esteuil', '33340'),
(12850, 'SAINT-MICHEL-DE-CASTELNAU', 'saint-michel-de-castelnau', 'Saint-Michel-de-Castelnau', '33840'),
(12851, 'HAUX', 'haux-33', 'Haux', '33550'),
(12852, 'BAIGNEAUX', 'baigneaux-33', 'Baigneaux', '33760'),
(12853, 'BRUGES', 'bruges', 'Bruges', '33520'),
(12854, 'SAINT-QUENTIN-DE-CAPLONG', 'saint-quentin-de-caplong', 'Saint-Quentin-de-Caplong', '33220'),
(12855, 'GENERAC', 'generac-33', 'Générac', '33920'),
(12856, 'CIVRAC-EN-MEDOC', 'civrac-en-medoc', 'Civrac-en-Médoc', '33340'),
(12857, 'CANTENAC', 'cantenac', 'Cantenac', '33460'),
(12858, 'FOSSES-ET-BALEYSSAC', 'fosses-et-baleyssac', 'Fossès-et-Baleyssac', '33190'),
(12859, 'SAINT-MARIENS', 'saint-mariens', 'Saint-Mariens', '33620'),
(12860, 'SALLEBOEUF', 'salleboeuf', 'Sallebœuf', '33370'),
(12861, 'SAINT-MARTIN-DE-LAYE', 'saint-martin-de-laye', 'Saint-Martin-de-Laye', '33910'),
(12862, 'ROMAGNE', 'romagne-33', 'Romagne', '33760'),
(12863, 'RIMONS', 'rimons', 'Rimons', '33580'),
(12864, 'DARDENAC', 'dardenac', 'Dardenac', '33420'),
(12865, 'DONZAC', 'donzac-33', 'Donzac', '33410'),
(12866, 'SAINT-QUENTIN-DE-BARON', 'saint-quentin-de-baron', 'Saint-Quentin-de-Baron', '33750'),
(12867, 'CAMIAC-ET-SAINT-DENIS', 'camiac-et-saint-denis', 'Camiac-et-Saint-Denis', '33420'),
(12868, 'LIGNAN-DE-BAZAS', 'lignan-de-bazas', 'Lignan-de-Bazas', '33430'),
(12869, 'BARIE', 'barie', 'Barie', '33190'),
(12870, 'PUJOLS', 'pujols-33', 'Pujols', '33350'),
(12871, 'CASTILLON-DE-CASTETS', 'castillon-de-castets', 'Castillon-de-Castets', '33210'),
(12872, 'COURS-DE-MONSEGUR', 'cours-de-monsegur', 'Cours-de-Monségur', '33580'),
(12873, 'SAINT-LOUIS-DE-MONTFERRAND', 'saint-louis-de-montferrand', 'Saint-Louis-de-Montferrand', '33440'),
(12874, 'MOULON', 'moulon-33', 'Moulon', '33420'),
(12875, 'LE PIAN-MEDOC', 'pian-medoc', 'Le Pian-Médoc', '33290'),
(12876, 'VERAC', 'verac', 'Vérac', '33240'),
(12877, 'PESSAC-SUR-DORDOGNE', 'pessac-sur-dordogne', 'Pessac-sur-Dordogne', '33890'),
(12878, 'SAINT-GENES-DE-FRONSAC', 'saint-genes-de-fronsac', 'Saint-Genès-de-Fronsac', '33240'),
(12879, 'FRONTENAC', 'frontenac-33', 'Frontenac', '33760'),
(12880, 'FONTET', 'fontet', 'Fontet', '33190'),
(12881, 'SAINT-SULPICE-DE-POMMIERS', 'saint-sulpice-de-pommiers', 'Saint-Sulpice-de-Pommiers', '33540'),
(12882, 'HOSTENS', 'hostens', 'Hostens', '33125'),
(12883, 'COIRAC', 'coirac', 'Coirac', '33540'),
(12884, 'MESTERRIEUX', 'mesterrieux', 'Mesterrieux', '33540'),
(12885, 'TEUILLAC', 'teuillac', 'Teuillac', '33710'),
(12886, 'CAUDROT', 'caudrot', 'Caudrot', '33490'),
(12887, 'TAYAC', 'tayac', 'Tayac', '33570'),
(12888, 'MOUILLAC', 'mouillac-33', 'Mouillac', '33240'),
(12889, 'CARIGNAN-DE-BORDEAUX', 'carignan-de-bordeaux', 'Carignan-de-Bordeaux', '33360'),
(12890, 'LE TUZAN', 'tuzan', 'Le Tuzan', '33125'),
(12891, 'MARTIGNAS-SUR-JALLE', 'martignas-sur-jalle', 'Martignas-sur-Jalle', '33127'),
(12892, 'GRAYAN-ET-L\'HOPITAL', 'grayan-et-l-hopital', 'Grayan-et-l\'Hôpital', '33590'),
(12893, 'FALEYRAS', 'faleyras', 'Faleyras', '33760'),
(12894, 'COURS-LES-BAINS', 'cours-les-bains', 'Cours-les-Bains', '33690'),
(12895, 'GABARNAC', 'gabarnac', 'Gabarnac', '33410'),
(12896, 'CISSAC-MEDOC', 'cissac-medoc', 'Cissac-Médoc', '33250'),
(12897, 'LARTIGUE', 'lartigue-33', 'Lartigue', '33840'),
(12898, 'VENDAYS-MONTALIVET', 'vendays-montalivet', 'Vendays-Montalivet', '33930'),
(12899, 'SAINT-MICHEL-DE-RIEUFRET', 'saint-michel-de-rieufret', 'Saint-Michel-de-Rieufret', '33720'),
(12900, 'BLAIGNAN', 'blaignan', 'Blaignan', '33340'),
(12901, 'SAINT-LOUBERT', 'saint-loubert', 'Saint-Loubert', '33210'),
(12902, 'LUGON-ET-L\'ILE-DU-CARNAY', 'lugon-et-l-île-du-carnay', 'Lugon-et-l\'Île-du-Carnay', '33240'),
(12903, 'SAINT-ANDRE-DU-BOIS', 'saint-andre-du-bois', 'Saint-André-du-Bois', '33490'),
(12904, 'ISLE-SAINT-GEORGES', 'isle-saint-georges', 'Isle-Saint-Georges', '33640'),
(12905, 'PUGNAC', 'pugnac', 'Pugnac', '33710'),
(12906, 'SAINT-GERVAIS', 'saint-gervais-33', 'Saint-Gervais', '33240'),
(12907, 'GAURIAGUET', 'gauriaguet', 'Gauriaguet', '33240'),
(12908, 'NOAILLAC', 'noaillac', 'Noaillac', '33190'),
(12909, 'SAINT-JEAN-DE-BLAIGNAC', 'saint-jean-de-blaignac', 'Saint-Jean-de-Blaignac', '33420'),
(12910, 'TAILLECAVAT', 'taillecavat', 'Taillecavat', '33580'),
(12911, 'OMET', 'omet', 'Omet', '33410'),
(12912, 'HOURTIN', 'hourtin', 'Hourtin', '33990'),
(12913, 'LE NIZAN', 'nizan', 'Le Nizan', '33430'),
(12914, 'SAINT-MEDARD-DE-GUIZIERES', 'saint-medard-de-guizieres', 'Saint-Médard-de-Guizières', '33230'),
(12915, 'BRAUD-ET-SAINT-LOUIS', 'braud-et-saint-louis', 'Braud-et-Saint-Louis', '33820'),
(12916, 'AVENSAN', 'avensan', 'Avensan', '33480'),
(12917, 'TIZAC-DE-LAPOUYADE', 'tizac-de-lapouyade', 'Tizac-de-Lapouyade', '33620'),
(12918, 'PEUJARD', 'peujard', 'Peujard', '33240'),
(12919, 'ARCINS', 'arcins', 'Arcins', '33460'),
(12920, 'EYNESSE', 'eynesse', 'Eynesse', '33220'),
(12921, 'LACANAU', 'lacanau', 'Lacanau', '33680'),
(12922, 'LORMONT', 'lormont', 'Lormont', '33310'),
(12923, 'SAVIGNAC-DE-L\'ISLE', 'savignac-de-l-isle', 'Savignac-de-l\'Isle', '33910'),
(12924, 'BAYAS', 'bayas', 'Bayas', '33230'),
(12925, 'JUILLAC', 'juillac-33', 'Juillac', '33890'),
(12926, 'CARBON-BLANC', 'carbon-blanc', 'Carbon-Blanc', '33560'),
(12927, 'RAUZAN', 'rauzan', 'Rauzan', '33420'),
(12928, 'UZESTE', 'uzeste', 'Uzeste', '33730'),
(12929, 'VILLENAVE-D\'ORNON', 'villenave-d-ornon', 'Villenave-d\'Ornon', '33140'),
(12930, 'SAINT-LAURENT-DES-COMBES', 'saint-laurent-des-combes-33', 'Saint-Laurent-des-Combes', '33330'),
(12931, 'DIEULIVOL', 'dieulivol', 'Dieulivol', '33580'),
(12932, 'SAINT-PHILIPPE-D\'AIGUILLE', 'saint-philippe-d-aiguille', 'Saint-Philippe-d\'Aiguille', '33350'),
(12933, 'ARBIS', 'arbis', 'Arbis', '33760'),
(12934, 'CAPIAN', 'capian', 'Capian', '33550'),
(12935, 'SAINT-MAIXANT', 'saint-maixant-33', 'Saint-Maixant', '33490'),
(12936, 'ROQUEBRUNE', 'roquebrune-33', 'Roquebrune', '33580'),
(12937, 'PREIGNAC', 'preignac', 'Preignac', '33210'),
(12938, 'LES ESSEINTES', 'esseintes', 'Esseintes', '33190'),
(12939, 'LABESCAU', 'labescau', 'Labescau', '33690'),
(12940, 'LA BREDE', 'brede', 'La Brède', '33650'),
(12941, 'CUDOS', 'cudos', 'Cudos', '33430'),
(12942, 'MIOS', 'mios', 'Mios', '33380'),
(12943, 'CESTAS', 'cestas', 'Cestas', '33610'),
(12944, 'SAMONAC', 'samonac', 'Samonac', '33710'),
(12945, 'BERNOS-BEAULAC', 'bernos-beaulac', 'Bernos-Beaulac', '33430'),
(12946, 'HURE', 'hure', 'Hure', '33190'),
(12947, 'LES EGLISOTTES-ET-CHALAURES', 'eglisottes-et-chalaures', 'Églisottes-et-Chalaures', '33230'),
(12948, 'SAVIGNAC', 'savignac-33', 'Savignac', '33124'),
(12949, 'LISTRAC-MEDOC', 'listrac-medoc', 'Listrac-Médoc', '33480'),
(12950, 'LE POUT', 'pout', 'Le Pout', '33670'),
(12951, 'SAINT-ROMAIN-LA-VIRVEE', 'saint-romain-la-virvee', 'Saint-Romain-la-Virvée', '33240'),
(12952, 'GENSAC', 'gensac-33', 'Gensac', '33890'),
(12953, 'AMBARES-ET-LAGRAVE', 'ambares-et-lagrave', 'Ambarès-et-Lagrave', '33440'),
(12954, 'DOULEZON', 'doulezon', 'Doulezon', '33350'),
(12955, 'LATRESNE', 'latresne', 'Latresne', '33360'),
(12956, 'CASTRES-GIRONDE', 'castres-gironde', 'Castres-Gironde', '33640'),
(12957, 'SAINT-EXUPERY', 'saint-exupery', 'Saint-Exupéry', '33190'),
(12958, 'SAINT-CHRISTOLY-DE-BLAYE', 'saint-christoly-de-blaye', 'Saint-Christoly-de-Blaye', '33920'),
(12959, 'SAUTERNES', 'sauternes', 'Sauternes', '33210'),
(12960, 'SAINT-PARDON-DE-CONQUES', 'saint-pardon-de-conques', 'Saint-Pardon-de-Conques', '33210'),
(12961, 'GUILLOS', 'guillos', 'Guillos', '33720'),
(12962, 'LE FIEU', 'fieu', 'Le Fieu', '33230'),
(12963, 'MARSAS', 'marsas-33', 'Marsas', '33620'),
(12964, 'TARNES', 'tarnes', 'Tarnès', '33240'),
(12965, 'SAINTE-FOY-LA-GRANDE', 'sainte-foy-la-grande', 'Sainte-Foy-la-Grande', '33220'),
(12966, 'LOUPES', 'loupes', 'Loupes', '33370'),
(12967, 'RUCH', 'ruch', 'Ruch', '33350'),
(12968, 'LAROQUE', 'laroque-33', 'Laroque', '33410'),
(12969, 'COUBEYRAC', 'coubeyrac', 'Coubeyrac', '33890'),
(12970, 'MASSUGAS', 'massugas', 'Massugas', '33790'),
(12971, 'SAINT-HILAIRE-DU-BOIS', 'saint-hilaire-du-bois-33', 'Saint-Hilaire-du-Bois', '33540'),
(12972, 'SAINTE-EULALIE', 'sainte-eulalie-33', 'Sainte-Eulalie', '33560'),
(12973, 'SAINT-FELIX-DE-FONCAUDE', 'saint-felix-de-foncaude', 'Saint-Félix-de-Foncaude', '33540'),
(12974, 'LISTRAC-DE-DUREZE', 'listrac-de-dureze', 'Listrac-de-Durèze', '33790'),
(12975, 'MONTAGOUDIN', 'montagoudin', 'Montagoudin', '33190'),
(12976, 'LANDERROUAT', 'landerrouat', 'Landerrouat', '33790'),
(12977, 'TARGON', 'targon', 'Targon', '33760'),
(12978, 'LEOGNAN', 'leognan', 'Léognan', '33850'),
(12979, 'MADIRAC', 'madirac', 'Madirac', '33670'),
(12980, 'AYGUEMORTE-LES-GRAVES', 'ayguemorte-les-graves', 'Ayguemorte-les-Graves', '33640'),
(12981, 'TALENCE', 'talence', 'Talence', '33400'),
(12982, 'LUCMAU', 'lucmau', 'Lucmau', '33840'),
(12983, 'SADIRAC', 'sadirac', 'Sadirac', '33670'),
(12984, 'PESSAC', 'pessac', 'Pessac', '33600'),
(12985, 'LALANDE-DE-POMEROL', 'lalande-de-pomerol', 'Lalande-de-Pomerol', '33500'),
(12986, 'MARIONS', 'marions', 'Marions', '33690'),
(12987, 'REIGNAC', 'reignac-33', 'Reignac', '33860'),
(12988, 'CASTELMORON-D\'ALBRET', 'castelmoron-d-albret', 'Castelmoron-d\'Albret', '33540'),
(12989, 'SAINT-PAUL', 'saint-paul-33', 'Saint-Paul', '33390'),
(12990, 'LANTON', 'lanton', 'Lanton', '33138'),
(12991, 'VILLENEUVE', 'villeneuve-33', 'Villeneuve', '33710'),
(12992, 'GISCOS', 'giscos', 'Giscos', '33840'),
(12993, 'SAINT-SEURIN-DE-BOURG', 'saint-seurin-de-bourg', 'Saint-Seurin-de-Bourg', '33710'),
(12994, 'LOUCHATS', 'louchats', 'Louchats', '33125'),
(12995, 'ASQUES', 'asques-33', 'Asques', '33240'),
(12996, 'IZON', 'izon', 'Izon', '33450'),
(12997, 'CASTILLON-LA-BATAILLE', 'castillon-la-bataille', 'Castillon-la-Bataille', '33350'),
(12998, 'ROAILLAN', 'roaillan', 'Roaillan', '33210'),
(12999, 'SAINTE-TERRE', 'sainte-terre', 'Sainte-Terre', '33350'),
(13000, 'SAINTE-CROIX-DU-MONT', 'sainte-croix-du-mont', 'Sainte-Croix-du-Mont', '33410'),
(13001, 'MERIGNAC', 'merignac-33', 'Mérignac', '33700'),
(13002, 'PUJOLS-SUR-CIRON', 'pujols-sur-ciron', 'Pujols-sur-Ciron', '33210'),
(13003, 'CAPLONG', 'caplong', 'Caplong', '33220'),
(13004, 'SAINT-VIVIEN-DE-MONSEGUR', 'saint-vivien-de-monsegur', 'Saint-Vivien-de-Monségur', '33580'),
(13005, 'SAINT-PEY-DE-CASTETS', 'saint-pey-de-castets', 'Saint-Pey-de-Castets', '33350'),
(13006, 'SAINT-VIVIEN-DE-MEDOC', 'saint-vivien-de-medoc', 'Saint-Vivien-de-Médoc', '33590'),
(13007, 'NAUJAN-ET-POSTIAC', 'naujan-et-postiac', 'Naujan-et-Postiac', '33420'),
(13008, 'LIGUEUX', 'ligueux-33', 'Ligueux', '33220'),
(13009, 'CAZAUGITAT', 'cazaugitat', 'Cazaugitat', '33790'),
(13010, 'CAZALIS', 'cazalis-33', 'Cazalis', '33113'),
(13011, 'SAINT-GERMAIN-DE-GRAVE', 'saint-germain-de-grave', 'Saint-Germain-de-Grave', '33490'),
(13012, 'CABARA', 'cabara', 'Cabara', '33420'),
(13013, 'BASSANNE', 'bassanne', 'Bassanne', '33190'),
(13014, 'CASTETS-EN-DORTHE', 'castets-en-dorthe', 'Castets-en-Dorthe', '33210'),
(13015, 'SENDETS', 'sendets-33', 'Sendets', '33690'),
(13016, 'BOURIDEYS', 'bourideys', 'Bourideys', '33113'),
(13017, 'GAILLAN-EN-MEDOC', 'gaillan-en-medoc', 'Gaillan-en-Médoc', '33340'),
(13018, 'SILLAS', 'sillas', 'Sillas', '33690'),
(13019, 'SOUSSANS', 'soussans', 'Soussans', '33460'),
(13020, 'SOULIGNAC', 'soulignac', 'Soulignac', '33760'),
(13021, 'SAINT-AIGNAN', 'saint-aignan-33', 'Saint-Aignan', '33126'),
(13022, 'PUISSEGUIN', 'puisseguin', 'Puisseguin', '33570'),
(13023, 'CAMBLANES-ET-MEYNAC', 'camblanes-et-meynac', 'Camblanes-et-Meynac', '33360'),
(13024, 'SAINT-YZANS-DE-MEDOC', 'saint-yzans-de-medoc', 'Saint-Yzans-de-Médoc', '33340'),
(13025, 'MOURENS', 'mourens', 'Mourens', '33410'),
(13026, 'LUGOS', 'lugos', 'Lugos', '33830'),
(13027, 'SAINT-GENIS-DU-BOIS', 'saint-genis-du-bois', 'Saint-Genis-du-Bois', '33760'),
(13028, 'LE TAILLAN-MEDOC', 'taillan-medoc', 'Le Taillan-Médoc', '33320'),
(13029, 'SAINT-JULIEN-BEYCHEVELLE', 'saint-julien-beychevelle', 'Saint-Julien-Beychevelle', '33250'),
(13030, 'CURSAN', 'cursan', 'Cursan', '33670'),
(13031, 'CUSSAC-FORT-MEDOC', 'cussac-fort-medoc', 'Cussac-Fort-Médoc', '33460'),
(13032, 'SEMENS', 'semens', 'Semens', '33490'),
(13033, 'LAPOUYADE', 'lapouyade', 'Lapouyade', '33620'),
(13034, 'LIGNAN-DE-BORDEAUX', 'lignan-de-bordeaux', 'Lignan-de-Bordeaux', '33360'),
(13035, 'GAURIAC', 'gauriac', 'Gauriac', '33710'),
(13036, 'MONSEGUR', 'monsegur-33', 'Monségur', '33580'),
(13037, 'CAVIGNAC', 'cavignac', 'Cavignac', '33620'),
(13038, 'CADARSAC', 'cadarsac', 'Cadarsac', '33750'),
(13039, 'MOULIS-EN-MEDOC', 'moulis-en-medoc', 'Moulis-en-Médoc', '33480'),
(13040, 'CAMBES', 'cambes-33', 'Cambes', '33880'),
(13041, 'BEYCHAC-ET-CAILLAU', 'beychac-et-caillau', 'Beychac-et-Caillau', '33750'),
(13042, 'SAINT-AVIT-DE-SOULEGE', 'saint-avit-de-soulege', 'Saint-Avit-de-Soulège', '33220'),
(13043, 'CREON', 'creon', 'Créon', '33670'),
(13044, 'LERM-ET-MUSSET', 'lerm-et-musset', 'Lerm-et-Musset', '33840'),
(13045, 'MORIZES', 'morizes', 'Morizès', '33190'),
(13046, 'PAILLET', 'paillet', 'Paillet', '33550'),
(13047, 'COUQUEQUES', 'couqueques', 'Couquèques', '33340'),
(13048, 'SAILLANS', 'saillans-33', 'Saillans', '33141'),
(13049, 'FLOUDES', 'floudes', 'Floudès', '33190'),
(13050, 'SAINTE-FLORENCE', 'sainte-florence-33', 'Sainte-Florence', '33350'),
(13051, 'SAINT-MARTIN-LACAUSSADE', 'saint-martin-lacaussade', 'Saint-Martin-Lacaussade', '33390'),
(13052, 'BELVES-DE-CASTILLON', 'belves-de-castillon', 'Belvès-de-Castillon', '33350'),
(13053, 'BERSON', 'berson', 'Berson', '33390'),
(13054, 'CIVRAC-SUR-DORDOGNE', 'civrac-sur-dordogne', 'Civrac-sur-Dordogne', '33350'),
(13055, 'GALGON', 'galgon', 'Galgon', '33133'),
(13056, 'LE TOURNE', 'tourne', 'Le Tourne', '33550'),
(13057, 'SAINTE-HELENE', 'sainte-helene-33', 'Sainte-Hélène', '33480'),
(13058, 'CENON', 'cenon', 'Cenon', '33150'),
(13059, 'LA RIVIERE', 'riviere-33', 'La Rivière', '33126'),
(13060, 'MOULIETS-ET-VILLEMARTIN', 'mouliets-et-villemartin', 'Mouliets-et-Villemartin', '33350'),
(13061, 'LE PORGE', 'porge', 'Le Porge', '33680'),
(13062, 'BLESIGNAC', 'blesignac', 'Blésignac', '33670'),
(13063, 'SAINT-MAGNE-DE-CASTILLON', 'saint-magne-de-castillon', 'Saint-Magne-de-Castillon', '33350'),
(13064, 'SAINT-CIBARD', 'saint-cibard', 'Saint-Cibard', '33570'),
(13065, 'SAINT-AUBIN-DE-BRANNE', 'saint-aubin-de-branne', 'Saint-Aubin-de-Branne', '33420'),
(13066, 'COURPIAC', 'courpiac', 'Courpiac', '33760'),
(13067, 'LE PUY', 'puy-33', 'Le Puy', '33580'),
(13068, 'SAINT-MARTIN-DE-SESCAS', 'saint-martin-de-sescas', 'Saint-Martin-de-Sescas', '33490'),
(13069, 'SALLES', 'salles-33', 'Salles', '33770'),
(13070, 'LADOS', 'lados', 'Lados', '33124'),
(13071, 'AUROS', 'auros', 'Auros', '33124'),
(13072, 'AURIOLLES', 'auriolles', 'Auriolles', '33790'),
(13073, 'SAUMOS', 'saumos', 'Saumos', '33680'),
(13074, 'SAINT-FERME', 'saint-ferme', 'Saint-Ferme', '33580'),
(13075, 'GARDEGAN-ET-TOURTIRAC', 'gardegan-et-tourtirac', 'Gardegan-et-Tourtirac', '33350'),
(13076, 'SAINT-VINCENT-DE-PAUL', 'saint-vincent-de-paul-33', 'Saint-Vincent-de-Paul', '33440'),
(13077, 'RIONS', 'rions', 'Rions', '33410'),
(13078, 'ARBANATS', 'arbanats', 'Arbanats', '33640'),
(13079, 'SAINT-SULPICE-DE-FALEYRENS', 'saint-sulpice-de-faleyrens', 'Saint-Sulpice-de-Faleyrens', '33330'),
(13080, 'SAINT-BRICE', 'saint-brice-33', 'Saint-Brice', '33540'),
(13081, 'CADILLAC-EN-FRONSADAIS', 'cadillac-en-fronsadais', 'Cadillac-en-Fronsadais', '33240'),
(13082, 'BOSSUGAN', 'bossugan', 'Bossugan', '33350'),
(13083, 'SAINT-SULPICE-DE-GUILLERAGUES', 'saint-sulpice-de-guilleragues', 'Saint-Sulpice-de-Guilleragues', '33580'),
(13084, 'SAINT-SEVE', 'saint-seve', 'Saint-Sève', '33190'),
(13085, 'LE PIAN-SUR-GARONNE', 'pian-sur-garonne', 'Le Pian-sur-Garonne', '33490'),
(13086, 'LEGE-CAP-FERRET', 'lege-cap-ferret', 'Lège-Cap-Ferret', '33950'),
(13087, 'SAINT-CIERS-DE-CANESSE', 'saint-ciers-de-canesse', 'Saint-Ciers-de-Canesse', '33710'),
(13088, 'GUILLAC', 'guillac-33', 'Guillac', '33420'),
(13089, 'SAINT-AUBIN-DE-BLAYE', 'saint-aubin-de-blaye', 'Saint-Aubin-de-Blaye', '33820'),
(13090, 'SAINT-ANDRE-DE-CUBZAC', 'saint-andre-de-cubzac', 'Saint-André-de-Cubzac', '33240'),
(13091, 'SAINT-PIERRE-D\'AURILLAC', 'saint-pierre-d-aurillac', 'Saint-Pierre-d\'Aurillac', '33490'),
(13092, 'SAINT-MARTIN-DU-PUY', 'saint-martin-du-puy-33', 'Saint-Martin-du-Puy', '33540'),
(13093, 'BALIZAC', 'balizac', 'Balizac', '33730'),
(13094, 'ETAULIERS', 'etauliers', 'Étauliers', '33820'),
(13095, 'PORTETS', 'portets', 'Portets', '33640'),
(13096, 'BARSAC', 'barsac-33', 'Barsac', '33720'),
(13097, 'LE TEMPLE', 'temple-33', 'Le Temple', '33680'),
(13098, 'PODENSAC', 'podensac', 'Podensac', '33720'),
(13099, 'LARUSCADE', 'laruscade', 'Laruscade', '33620'),
(13100, 'BRACH', 'brach', 'Brach', '33480'),
(13101, 'LUDON-MEDOC', 'ludon-medoc', 'Ludon-Médoc', '33290'),
(13102, 'SAINT-DENIS-DE-PILE', 'saint-denis-de-pile', 'Saint-Denis-de-Pile', '33910'),
(13103, 'SAINTE-RADEGONDE', 'sainte-radegonde-33', 'Sainte-Radegonde', '33350'),
(13104, 'MONTAGNE', 'montagne-33', 'Montagne', '33570'),
(13105, 'LES PEINTURES', 'peintures', 'Peintures', '33230'),
(13106, 'BROUQUEYRAN', 'brouqueyran', 'Brouqueyran', '33124'),
(13107, 'SAINT-ANTOINE', 'saint-antoine-33', 'Saint-Antoine', '33240'),
(13108, 'CADAUJAC', 'cadaujac', 'Cadaujac', '33140');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `rate` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `content`, `rate`, `author_id`, `provider_id`) VALUES
(1, 'Super service merci !', 4, 3, 4),
(2, NULL, 5, 4, 6),
(3, NULL, 1, 3, 6),
(4, NULL, 3, 2, 6),
(5, NULL, 5, 2, 5),
(6, 'super', 5, 6, 2);

-- --------------------------------------------------------

--
-- Structure de la table `item`
--

CREATE TABLE `item` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `item`
--

INSERT INTO `item` (`id`, `title`) VALUES
(5, 'tregrd'),
(6, 'tregrdg'),
(8, 'yt'),
(9, 'test'),
(10, 'tregrdg'),
(14, 'test\r\n'),
(20, '<strong>blabla</strong>\r\n');

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `label` varchar(55) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `service`
--

INSERT INTO `service` (`id`, `label`) VALUES
(1, 'Bricolage'),
(2, 'Jardinage'),
(3, 'Déménagement'),
(4, 'Entretient - Réparation'),
(5, 'Cours'),
(6, 'Garde d\'animaux'),
(7, 'Garde d\'enfants'),
(8, 'Services à la personne'),
(9, 'Livreur - Chauffeur'),
(10, 'Informatique');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `phone` varchar(55) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `visibility` enum('0','1') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `city_id` int(11) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `email`, `password`, `status`, `description`, `phone`, `visibility`, `city_id`, `distance`) VALUES
(1, 'Admin', 'Servyy', 'deadly.group.33@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', '1', 'Admin', NULL, '0', NULL, NULL),
(2, 'Elneris', 'Dang', 'elneris.dang@gmail.com', 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', '0', 'Je recherche des services merci à vous Elnéris', NULL, '0', 13058, 5),
(3, 'Adeline', 'Dubosc', 'adeline.dubosc@hotmail.fr', 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', '0', 'Coucou, je cherche un petit bricoleur :)', NULL, '0', NULL, 20),
(4, 'Geoffrey', 'Bedle', 'geoffrey.bedle@gmail.com', 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', '0', 'Je suis bricoleur si vous voulez', NULL, '0', NULL, NULL),
(5, 'Laure', 'Fraysse', 'laure.fraysse@gmail.com', 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', '0', 'J\'adore le jardinage', NULL, '0', NULL, NULL),
(6, 'Yannick', 'Descombe', 'yanlechaka@sfr.fr', 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', '0', 'Je suis un bon bricoleur', NULL, '0', NULL, NULL),
(7, 'Bertrand', 'Seguinotte', 'b.seguinotte@hotmail.fr', 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', '0', NULL, NULL, '0', NULL, NULL),
(8, 'Florent', 'Duval', 'florent3300047@gmail.com', 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', '0', NULL, NULL, '0', NULL, NULL),
(9, 'Juliette', 'Bousseau', 'jul.bousseau@gmail.com', 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', '0', NULL, NULL, '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user_service`
--

CREATE TABLE `user_service` (
  `user_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `user_service`
--

INSERT INTO `user_service` (`user_id`, `service_id`) VALUES
(4, 1),
(5, 2),
(6, 4),
(6, 1),
(2, 10),
(3, 10),
(2, 5),
(7, 3),
(8, 6),
(9, 8),
(6, 9),
(8, 7);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `ville_slug` (`slug`),
  ADD KEY `ville_nom` (`name`),
  ADD KEY `ville_nom_reel` (`real_name`),
  ADD KEY `ville_code_postal` (`zip_name`);

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `provider_id` (`provider_id`);

--
-- Index pour la table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`);

--
-- Index pour la table `user_service`
--
ALTER TABLE `user_service`
  ADD KEY `service_id` (`service_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36831;

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`provider_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`);

--
-- Contraintes pour la table `user_service`
--
ALTER TABLE `user_service`
  ADD CONSTRAINT `user_service_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `user_service_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

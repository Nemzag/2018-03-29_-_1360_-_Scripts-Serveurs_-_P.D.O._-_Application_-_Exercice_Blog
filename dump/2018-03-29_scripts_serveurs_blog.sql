-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 29 mars 2018 à 12:08
-- Version du serveur :  5.7.19
-- Version de PHP :  7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `2018_scripts_serveurs_blog`
--
CREATE DATABASE IF NOT EXISTS `2018_scripts_serveurs_blog` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `2018_scripts_serveurs_blog`;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `category`) VALUES
(1, 'Frameworks PHP'),
(2, 'Frameworks CSS'),
(3, 'Templating'),
(4, 'Bootstrap'),
(5, 'HTML'),
(6, 'JavaScript'),
(7, 'SASS'),
(8, 'PHP');

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL,
  `content` text NOT NULL,
  `created` date NOT NULL,
  `image` varchar(60) NOT NULL,
  `idCategory` int(10) UNSIGNED NOT NULL,
  `idUser` int(10) UNSIGNED NOT NULL,
  `visibility` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idCategory` (`idCategory`),
  KEY `idUser` (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created`, `image`, `idCategory`, `idUser`, `visibility`) VALUES
(1, 'Language HTML', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam cum, dicta, dolor ducimus explicabo molestiae, natus necessitatibus nemo nulla odit officia perferendis porro quae quas reiciendis rem rerum vel voluptas?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam dolorem odio omnis. Et laudantium libero perspiciatis praesentium, repudiandae sint sunt?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti harum mollitia similique. Ad corporis ipsum necessitatibus nobis placeat recusandae sapiente sint? Aperiam atque autem dolore dolores, enim harum incidunt ipsam laudantium molestiae nam non officia praesentium, provident quo, tempore velit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Ab ea, exercitationem expedita id inventore iste iure laudantium magni modi necessitatibus quibusdam quidem rerum vero voluptates voluptatibus. Accusamus debitis deserunt dolore eius expedita fugiat, inventore ipsam laboriosam minima nobis reiciendis sit voluptatum. Aperiam, libero, quam? Accusamus corporis doloribus molestiae ratione veniam?', '2018-03-29', 'html-language.png', 5, 1, 1),
(2, 'Language PHP', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid dolore earum error in iure laudantium mollitia nemo nostrum numquam obcaecati omnis placeat repellat sapiente, tempore ullam veniam voluptates voluptatibus? Ducimus ipsum nemo obcaecati perferendis quas rerum sapiente vel velit. Ipsam!\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Ad animi architecto assumenda corporis culpa dolorem dolores eveniet facere illo illum laboriosam laborum modi, neque omnis praesentium provident qui repellendus, soluta temporibus ullam ut, veritatis voluptas? At consequatur deleniti dolorum eum exercitationem expedita fugiat fugit illum itaque, laborum maiores nemo nulla quam quasi quis quisquam quos sed sequi tempore veritatis voluptates.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Autem blanditiis deleniti ducimus earum eius eum fuga, fugiat incidunt necessitatibus quod.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. A at est modi nobis. Accusantium architecto eligendi iusto placeat possimus! Ab autem, blanditiis debitis earum eum excepturi iste mollitia, nemo, quidem reiciendis soluta voluptatibus! Accusantium expedita laudantium nesciunt optio repellat vitae?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid culpa, deserunt illum itaque magnam perspiciatis quae quam rem sint tenetur! Ad dolorem dolores doloribus dolorum est ex, explicabo facilis fuga harum laboriosam maiores modi molestiae mollitia neque nisi obcaecati odit quae quidem ratione reiciendis repellendus reprehenderit tenetur ut velit voluptates!', '2018-03-30', 'php-language.png', 8, 1, 1),
(3, 'Templating', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem, tempora.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate dolores pariatur quos sequi vero! Autem eos minus mollitia natus vitae.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aut consequuntur earum eos, error modi officia placeat quasi velit. Dolores earum et explicabo, magnam numquam optio quod ratione totam voluptas voluptatem!\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus accusantium at corporis, cumque dicta ex explicabo inventore ipsa iusto nam necessitatibus nulla odio quaerat qui quibusdam quis quos similique, suscipit tenetur vero? Aliquid deleniti minus omnis reiciendis. Consequuntur quo, voluptas.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci atque commodi distinctio dolorem eius esse est illum inventore, ipsa, ipsam iusto labore laudantium modi necessitatibus nemo praesentium quam quasi qui, quia quos tempora velit voluptatem? Aliquam autem consequuntur, cumque cupiditate fuga illo iste labore quas repellat sequi similique tempore unde?', '2018-03-31', 'template.jpg', 3, 2, 1),
(4, 'Bootstrap', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium, cum, delectus dicta doloremque eaque est impedit incidunt itaque optio pariatur perferendis quibusdam quisquam quo quod rem tempora veritatis! A accusamus dolor error et eveniet ex, facere facilis incidunt itaque iure labore minus molestiae nam nihil nulla numquam obcaecati odit officiis repudiandae saepe sapiente tempora tempore, tenetur ut vitae. Asperiores beatae culpa dolore est ex harum labore, possimus veniam. Dicta dignissimos esse molestiae, necessitatibus nulla quibusdam recusandae tenetur voluptas voluptate voluptatum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Exercitationem incidunt ipsam laudantium magni maxime nulla. Eos eveniet mollitia nam nobis sed. Accusamus impedit odio omnis optio vel. Eos iure magnam reiciendis rem voluptas! Accusamus adipisci amet consequatur cupiditate doloremque dolores fugit, harum, hic illum impedit magni maiores nostrum officia optio possimus provident quas quia quibusdam quo reprehenderit sed temporibus veritatis voluptates? Dolor eum laboriosam laborum laudantium numquam praesentium repudiandae. Autem blanditiis ipsam nihil. Animi corporis debitis dicta dolores dolorum ducimus earum esse ipsum, iusto maxime molestiae natus neque nesciunt obcaecati, pariatur vel velit. Ad animi, aperiam deleniti esse eveniet fugiat illum labore, magni minima mollitia perspiciatis repellendus. Aperiam consequatur culpa dolorem iste nesciunt odio placeat porro provident voluptatibus! Laborum, mollitia!', '2018-04-01', 'bootstrap-stack.png', 4, 2, 1),
(5, 'Le JavaScript', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad aperiam at blanditiis consectetur corporis doloribus, ducimus eum exercitationem expedita, fuga maxime officia possimus quae quibusdam repellendus saepe sequi veritatis voluptates!\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis consequatur distinctio ipsum maxime mollitia natus nesciunt officia quaerat ratione unde? Ab aperiam at atque consequuntur eaque ex explicabo iusto labore, odio quae recusandae reiciendis soluta tempore ut, vitae? Consequuntur earum maxime voluptate. Ad animi consectetur enim labore laudantium nemo repudiandae!\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aut deleniti dolor dolorum ea laborum maxime natus officiis praesentium quae suscipit!\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque error ipsa omnis quos veritatis. A accusantium adipisci amet at atque dignissimos enim eum excepturi fuga, harum impedit iure libero magnam minus modi molestiae mollitia neque obcaecati omnis optio quae quaerat quibusdam sunt tempora ut vero, vitae voluptas. Architecto hic inventore similique sunt? Deleniti distinctio doloremque ea magni numquam! Doloribus, quibusdam!', '2018-04-02', 'javascript_logo.png', 6, 3, 1),
(6, 'Le SASS', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus natus, saepe! Eius sunt tempore voluptatem voluptates? Ab dolores fugit iusto, odio odit quidem quos suscipit. Adipisci amet aperiam assumenda beatae consectetur dicta dolore et ex fugiat illum ipsum laboriosam molestiae nemo nisi perferendis porro quam quas quibusdam quo repellat reprehenderit, saepe sequi sit tenetur ut veritatis voluptatem. Autem, eos excepturi explicabo fugiat inventore molestias mollitia, placeat porro quasi repellat, sed.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Amet aspernatur at cupiditate debitis, error eum exercitationem magnam minima nihil placeat quidem quis sapiente similique sit suscipit ut vitae. Beatae explicabo id laudantium molestiae non quae quidem suscipit totam. Alias consequuntur cupiditate deserunt eveniet fuga molestias pariatur porro quidem quisquam quos! Autem, consequuntur ex fugiat in ipsum laudantium mollitia quas? Architecto at dicta dolorem dolores excepturi illo, iusto magni modi molestias, nemo qui temporibus ut voluptatum. Atque error esse, et hic illo iure iusto modi neque ratione suscipit vel, voluptatibus. Et.', '2018-04-03', '2000px-Sass_Logo_Color.svg.png', 7, 3, 1),
(7, 'Le framework PHP', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus accusantium aliquid assumenda atque autem consectetur consequuntur corporis cupiditate deleniti, dicta dignissimos dolor dolore, doloribus eligendi exercitationem expedita in molestiae mollitia nam necessitatibus numquam omnis optio perferendis placeat possimus qui quisquam quo ratione sed similique soluta unde vero voluptate. Asperiores, eum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. At, beatae blanditiis doloremque earum error nam! Dolor error et ipsa veniam.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus autem dolorum esse, fugiat incidunt libero magnam molestiae nesciunt non quisquam sed, ullam unde! Atque cumque exercitationem fuga mollitia nisi omnis sed similique totam voluptates. Ab ad, consectetur, ducimus ea esse eveniet ipsa mollitia porro quam quibusdam sint, soluta tenetur vero. Dolor eligendi mollitia nisi rem. Delectus omnis possimus provident voluptas.', '2018-04-04', 'frameworks-php.jpg', 1, 4, 1),
(8, 'Le framework CSS', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Commodi deserunt doloribus excepturi fuga, in itaque libero minus molestias nostrum numquam, provident quae qui reiciendis vero voluptates? Ad iusto quisquam tempora? Autem culpa debitis dicta dolore doloremque eveniet fugit laudantium, magnam nobis, nulla numquam odit reiciendis sint voluptate voluptates. Amet molestias quibusdam ullam. Animi assumenda itaque, iure molestiae neque sunt voluptates. Aliquam cum distinctio itaque repellat totam, velit? Aliquam aperiam autem corporis cupiditate delectus dicta distinctio ea eos, fugiat laudantium magni modi nobis nulla odit, omnis porro quidem tempora tenetur, voluptatem.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Alias ea ex, molestias nostrum possimus quam quas quisquam similique sit suscipit? Architecto blanditiis delectus eum hic ipsa labore ratione repellat sit unde voluptate. Deserunt illum possimus praesentium qui reprehenderit ullam. Ad amet dolores ducimus facilis iure minus molestias officia pariatur, quasi.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Ab at autem consequatur debitis doloremque eligendi est, in, minima molestias nihil nobis nostrum nulla quidem sequi tempora ullam voluptas? Est eum labore quidem tempora. Molestiae omnis recusandae temporibus vitae. Animi at commodi culpa cupiditate deserunt distinctio dolore doloribus esse excepturi exercitationem fuga, fugiat impedit incidunt itaque laudantium libero minus molestiae neque officiis omnis perspiciatis quam recusandae reiciendis rem similique tempora temporibus unde vero voluptate voluptatum. Eum in iusto praesentium quasi vel.', '2018-04-05', 'Frameworks-css.jpg', 2, 4, 1),
(9, 'Wireframe', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab at dignissimos fugit illum iste iusto, nesciunt odio quidem quisquam rem rerum, saepe, sit tenetur! Ad assumenda atque est nulla porro.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Amet autem cumque, eius necessitatibus obcaecati officia optio, perferendis, possimus quae quaerat quidem voluptate. A amet dolorem doloremque non odio quos repudiandae, ullam voluptas! Ad asperiores atque, culpa doloremque doloribus, earum illo, labore nesciunt officia officiis quidem quisquam sit soluta velit voluptatem!\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur debitis et eum exercitationem expedita necessitatibus possimus repellat, sint temporibus tenetur?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi necessitatibus reprehenderit voluptatum! Ad aperiam deserunt dignissimos, dolores eligendi eum expedita iste neque obcaecati, odit provident quam, quis repellat repudiandae sequi suscipit voluptas? Adipisci consectetur consequatur esse inventore, labore laboriosam maxime perferendis reiciendis vitae. Aliquam doloremque eveniet laboriosam molestiae nihil officiis sunt veritatis! Aliquid asperiores aspernatur at atque consectetur consequuntur cumque delectus deleniti dolorum eius eum, nihil obcaecati porro possimus totam.', '2018-04-06', 'wireframe.jpg', 3, 1, 1),
(10, 'Structuration', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium ad aliquid aperiam asperiores aspernatur assumenda at atque culpa cum deleniti dolorem doloribus, ducimus eos error, in incidunt inventore itaque libero necessitatibus, quod recusandae reiciendis rem rerum sed sunt veritatis voluptate?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid assumenda consequatur dolore doloribus laborum minus nesciunt placeat rerum unde voluptate! Animi atque autem, deserunt dicta dolores eius esse explicabo facere inventore laboriosam molestiae neque odio, officiis pariatur provident quaerat veniam?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Ad aliquam animi aspernatur at deleniti eos eum eveniet facilis fuga harum in inventore iste laboriosam nesciunt nobis odit pariatur praesentium provident quasi quibusdam reiciendis, reprehenderit ullam vel, veritatis vitae, voluptas voluptatem.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci doloribus ipsam minima nemo porro. Aliquam officiis quas qui velit voluptas? Ad alias architecto blanditiis deleniti dolores, eligendi hic inventore iusto libero magni nobis officia quod rem soluta ut? Laudantium, quisquam?', '2018-04-07', 'structuration.png', 5, 2, 1),
(11, 'Layout', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam eius fugit iure nisi nulla odio recusandae sapiente. Aperiam consequuntur cum eaque, libero minima minus mollitia natus officia pariatur recusandae similique suscipit, vel velit? Architecto, dolores harum laboriosam placeat quos reprehenderit. A accusantium eligendi enim eos molestiae placeat rem ullam, vel.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis itaque maxime natus nostrum odio rem reprehenderit? Beatae blanditiis corporis, dolorem, ducimus enim fugiat maiores minus nostrum quisquam recusandae sit ullam.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Culpa eius enim excepturi illum in itaque molestiae odit, officia perspiciatis placeat, quasi recusandae reprehenderit tempore vitae voluptatum! Aliquid amet, assumenda, debitis excepturi in inventore nam nesciunt, nostrum nulla optio quis voluptates.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt doloribus et excepturi nulla praesentium quidem, rem sapiente sequi unde voluptatem!\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Ad atque consequatur consequuntur cumque doloribus ducimus eius est facere itaque minima officiis, placeat possimus provident quam recusandae saepe, sed tenetur veniam!', '2018-04-08', 'layout.gif', 4, 3, 1),
(12, 'Variables JS', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A ad adipisci aliquam aperiam architecto atque aut autem consectetur consequatur consequuntur cupiditate delectus, deserunt dicta doloremque dolores dolorum ea earum eligendi enim id incidunt ipsam iure maiores natus nemo neque non optio praesentium provident rem repellat sint, sunt tempore totam ullam voluptatem voluptatum. Dolorem et explicabo fugit, nisi odio officia quisquam.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus eius in, inventore natus nesciunt odit quod! Cumque praesentium sunt vitae voluptatem? Aperiam, architecto eveniet in natus odit omnis perferendis quas sed ut vel. Impedit libero perferendis quae? Laboriosam placeat porro sequi. Aspernatur dolor eos illo labore laudantium molestias similique tempora ut? Aut corporis culpa deleniti dignissimos, earum explicabo facilis ipsum laboriosam nam, officiis omnis rerum temporibus velit? Ad commodi delectus doloribus ea, illo iure magnam neque sed suscipit ut velit?', '2018-04-09', 'variable-js.jpg', 6, 4, 1),
(17, 'La programmation, quel joie !!!', 'J\'ai appris,\r\nJ\'applique,\r\nJ’améliore.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos dolor eaque expedita, officiis pariatur placeat qui repellendus vel! Accusamus dicta eius esse id illum laborum officiis quam reiciendis tempora. Molestias?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Consectetur culpa dolorem ducimus ea est facilis illo ipsa labore laudantium magni, molestias nam nemo neque nesciunt obcaecati porro possimus quis quisquam quod quos, repellat rerum sunt tenetur totam ullam velit, voluptatum. Accusamus necessitatibus perspiciatis rem? Iste laudantium minima repellendus tenetur voluptates.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Ab assumenda consectetur cumque cupiditate dolore doloribus ea labore, laudantium magni maxime, nemo odit pariatur quibusdam velit voluptatibus. Nulla quisquam reprehenderit voluptatum?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Est labore neque quae sed sunt, temporibus tenetur. Alias at, consectetur dignissimos ducimus est et fugit, incidunt minima natus odit perferendis ut velit voluptatibus? Ab accusantium consequuntur, dolores eligendi esse excepturi facere minus nihil perferendis quia reprehenderit, sequi soluta totam unde vero!', '2018-05-29', 'james-1998.jpg', 8, 1, 1),
(20, 'Professeur Jean-Christophe Chantraine', 'Grand philosophe, connue...\r\n\r\nTrès sage, très sympa.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid animi aperiam atque culpa debitis dolor dolore dolores doloribus earum ex facilis illo ipsa ipsam labore magni modi mollitia neque nobis nulla obcaecati officia omnis perspiciatis quam quidem quis, quo quos recusandae repellat repudiandae saepe sed similique sint sit tenetur vel.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores beatae cumque dolor dolorem dolorum eligendi enim et eum id incidunt maiores nobis pariatur provident quam quidem similique sunt, veniam voluptatem.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid amet architecto assumenda blanditiis consectetur consequatur culpa cumque dicta dolores ea ex excepturi expedita explicabo laboriosam magnam minus molestiae mollitia nostrum numquam odio, officia officiis quasi qui repellat repellendus saepe sed sint sunt temporibus vel velit voluptate voluptates? Aspernatur cumque debitis dignissimos eius ex incidunt perspiciatis reiciendis veniam. Ducimus, inventore?', '2018-05-27', '05090905511412001-10-a-full.jpg', 5, 1, 1),
(21, 'PHP rapide comme l\'éclair', 'Si c\'est vrai...\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Ad aliquam, animi blanditiis commodi dolores eligendi est et fugit ipsa, necessitatibus obcaecati odio pariatur quasi qui totam. Praesentium quo reprehenderit velit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Atque, officiis saepe? Aliquam culpa iste libero minus perspiciatis. Atque blanditiis dolor eligendi impedit possimus quos voluptates? Amet aspernatur consectetur consequatur debitis distinctio dolorem error magni praesentium provident quo recusandae reprehenderit, ullam?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus, accusantium.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus est eum repellendus sapiente tempora, vel! Animi corporis eaque error et exercitationem harum id illum, in iste modi necessitatibus nemo nostrum odio perspiciatis porro provident quaerat quos ratione tempore temporibus voluptate.', '2018-05-30', 'YGGDRAZIL oluf-olufsen-bagge.jpg', 8, 1, 1),
(25, 'Initiation à Bootstrap', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque distinctio enim vel veniam? Eius ex id libero natus perspiciatis placeat quidem ut velit. Aliquam asperiores aut culpa doloremque facere impedit in nobis officiis, perferendis praesentium saepe sint, tenetur veniam. Adipisci alias cumque deleniti. Asperiores aut commodi dolorem expedita, ipsa maiores ratione vel veniam. A aliquam culpa expedita fugiat, ipsum nesciunt quaerat ratione voluptates? Aliquid aspernatur, doloremque exercitationem minus soluta vero.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Animi assumenda corporis culpa cum dignissimos dolor dolores doloribus ea eius est fuga illo impedit ipsam, iste maiores maxime molestias necessitatibus nesciunt odio officia omnis praesentium quam qui quia quis repellat repellendus rerum, sapiente sed similique sunt vero voluptates voluptatum. Ab atque commodi culpa debitis dicta distinctio eaque eos esse eveniet fuga hic ipsam, iusto labore laboriosam nesciunt non officia perferendis quaerat quam quidem reprehenderit, sit temporibus velit. Itaque modi non quam.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis doloremque ducimus, eligendi fugiat in incidunt laborum maiores minima minus nemo placeat quasi quidem quod reiciendis repellendus sed similique sunt velit. Aliquid assumenda beatae commodi dolore, dolorum, eius eligendi esse facilis id inventore natus nihil nobis quae quas qui, quia similique sunt tempore vero voluptatibus? Aliquam et ipsam omnis reprehenderit vero?', '2018-05-31', 'attention_manipulation.jpg', 4, 1, 0),
(28, 'FrameWork Sun', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, blanditiis delectus deserunt et ex harum magni minus nobis officia pariatur provident repudiandae rerum vero. A accusantium, alias aliquid assumenda at beatae commodi cupiditate, debitis dicta dolor doloribus earum esse est eveniet facere fuga iure iusto laboriosam laudantium minima necessitatibus neque nostrum odio officiis porro quam quas quasi qui quis reiciendis, rerum sit sunt totam unde veritatis vero vitae? Ab, minima!\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. A alias asperiores autem consequuntur corporis eius exercitationem fuga, itaque iure labore minima nisi non possimus quaerat quia quos repudiandae sed sunt unde velit voluptas voluptate voluptatem! Aliquam autem beatae cumque debitis delectus dolorem, ducimus eaque eum excepturi iste laudantium maxime, nesciunt nostrum, odit officia reprehenderit saepe tempore unde voluptatem voluptates? Amet beatae corporis dolor eum neque velit, voluptas! Adipisci atque cumque impedit laboriosam, mollitia obcaecati quam quas, quia rem, sit voluptate?', '2018-06-02', 'sun5.jpg', 2, 5, 0),
(29, 'PHP : $_SESSION...', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab aperiam autem beatae commodi consectetur corporis cumque distinctio doloremque eius eum ex id minima molestias mollitia necessitatibus numquam odit, quae quia quidem rem repellendus repudiandae similique sint, sunt temporibus ut voluptas?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. At minus quaerat quam quod voluptas. Beatae blanditiis corporis doloremque itaque, iusto quas rem sed velit. A corporis dolores, eius hic illo magni minima minus, nihil odit officiis quas quos rem vel?\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Culpa molestiae quaerat similique ut veniam! Alias aliquam expedita hic illo iste, necessitatibus nobis perspiciatis provident, quae repellendus sunt ullam! Accusamus architecto aspernatur consectetur consequuntur cumque officia officiis quae recusandae, saepe veritatis?', '2018-05-31', 'troudever.jpg', 8, 5, 0);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstName` varchar(60) NOT NULL,
  `lastName` varchar(60) NOT NULL,
  `mail` varchar(120) NOT NULL,
  `login` varchar(60) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `mail`, `login`, `password`, `level`) VALUES
(1, 'Michael', 'Coll', 'michael@gmail.com', 'Michael', '$2y$10$UEVwexOHkn7EQ4WvG/xVmeV2oLnYleJDEQhEJu9.a6xCvdIiUfAYm', 'user'),
(2, 'Sophie', 'Gentle', 'sophie@gmail.com', 'Sophie', '$2y$10$4XuY/sZX9dLU342PFcZUFu9v5DxcA.yW55SU6Q.ig.LUNtA92oBdG', 'user'),
(3, 'Theresa', 'Happy', 'theresa@gmail.com', 'Theresa', '$2y$10$2JgtD1rhhlD2EIs28cEHCOD6VmTm590WWXGQdlgulSWeD3XxJJBIO', 'user'),
(4, 'David', 'Nice', 'david@gmail.com', 'David', '$2y$10$Y/5VOOARZKINoOoMVlw4w.863YVvR.F0zE4ZxOqve25c/4X0puoUq', 'user'),
(5, 'Patrick', 'Marthus', 'patrick@iepscf.be', 'Pat', '$2y$10$mMMcsIC9bdIOL7PvT8Gpm.9pRHBPh/AQR.2MCz5UhWDCM9DEEJL.2', 'administrator'),
(7, 'Utilisateur', 'Utilisateur', 'email@domain.org', 'Utilisateur', '$2y$10$KXw6z1JQccFPpIcri8yE4ejzilQwOWI2Ge/hSYA1v.HGcAxFmxJ1K', 'user'),
(34, 'Gazmen', 'Arifi', 'ngaz@tbse.org', 'gazmen', '$2y$10$TU6EEQcKou2y61b0ohVlW.sV1aBt7xwjuDQAE1wdSmXRr5Srox.f2', 'administrator');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`idCategory`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

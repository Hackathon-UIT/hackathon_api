-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: mysqldb-hieunt.cvenaop1bmrs.ap-northeast-1.rds.amazonaws.com    Database: hackathon
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company` varchar(50) DEFAULT NULL,
  `description` text,
  `start_day` text,
  `end_day` text,
  `thumbnail` text,
  `detail_url` text,
  `goal` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logo` text,
  `title` text,
  `max_participant` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (5,'Quß╗╣ Tß║Ñm l├▓ng Viß╗çt','ß╗ªng hß╗Ö g├óy quß╗╣ ΓÇ£V├¼ mß╗Öt niß╗üm tin vß╗ü hß║ính ph├║cΓÇ¥ ΓÇô Chung tay chß║»p c├ính ╞░ß╗¢c m╞í sinh ra nhß╗»ng ─æß╗⌐a trß║╗ khß╗Åe mß║ính\n─É╞░ß╗úc l├ám mß║╣ l├á thi├¬n chß╗⌐c, v├á c┼⌐ng l├á m├│n qu├á tuyß╗çt vß╗¥i nhß║Ñt cß╗ºa ng╞░ß╗¥i phß╗Ñ nß╗». Tiß║┐ng c╞░ß╗¥i cß╗ºa nhß╗»ng ─æß╗⌐a trß║╗ c├│ lß║╜ l├á khoß║únh khß║»c kß╗│ diß╗çu v├á ngß╗ìt ng├áo nhß║Ñt ─æß╗æi vß╗¢i mß╗ùi gia ─æ├¼nh. Thß║┐ nh╞░ng, c├│ nhß╗»ng tiß║┐ng c╞░ß╗¥i chß║│ng thß╗â l├ánh lß║╖n, h├ánh tr├¼nh l├ám mß║╣ thi├¬ng li├¬ng ─æ├┤i khi rß║Ñt kh├│ kh─ân v├á t╞░ß╗ƒng chß╗½ng sinh ra mß╗Öt ─æß╗⌐a con khoß║╗ mß║ính l├á ╞░ß╗¢c m╞í kh├┤ng bao giß╗¥ th├ánh hiß╗çn thß╗▒c. V├á ─æ├│ c┼⌐ng l├á nhß╗»ng tr─ân trß╗ƒ cß╗ºa ─æß╗Öi ng┼⌐ y b├íc s─⌐ ch├║ng t├┤i.\n\nS├áng lß╗ìc gen tr╞░ß╗¢c sinh v├á s╞í sinh l├á nhß╗»ng ph╞░╞íng ph├íp c├│ thß╗â gi├║p c├íc cß║╖p vß╗ú chß╗ông v├┤ sinh, hiß║┐m muß╗Ön hoß║╖c mang gen lß║╖n ─æß╗Öt biß║┐n c├│ c╞í hß╗Öi sinh ra nhß╗»ng ─æß╗⌐a con khß╗Åe mß║ính bß║▒ng c├ích kh├ím, chß║⌐n ─æo├ín di truyß╗ün tiß╗ün l├ám tß╗ò, s├áng lß╗ìc gen bß╗çnh hiß║┐m, thß╗Ñ tinh trong ß╗æng nghiß╗çmΓÇªChi ph├¡ cho mß╗ùi ca th├ánh c├┤ng l├á t╞░╞íng ─æß╗æi lß╗¢n, khoß║úng 200 triß╗çu.\n\nThß╗¥i gian qua, ch╞░╞íng tr├¼nh ΓÇ£V├î Mß╗ÿT NIß╗ÇM TIN Vß╗Ç Hß║áNH PH├ÜCΓÇ¥ cß╗ºa Bß╗çnh viß╗çn Phß╗Ñ Sß║ún H├á Nß╗Öi ─æ├ú triß╗ân khai nhß║▒m cung cß║Ñp miß╗àn ph├¡ dß╗ïch vß╗Ñ kh├ím, chß║⌐n ─æo├ín di truyß╗ün tiß╗ün l├ám tß╗ò, s├áng lß╗ìc gen bß╗çnh hiß║┐m, thß╗Ñ tinh trong ß╗æng nghiß╗çm cho c├íc vß╗ú chß╗ông c├│ ho├án cß║únh kh├│ kh─ân mß║»c bß╗çnh l├╜ di truyß╗ün. ─Éß║┐n nay ─æ├ú c├│ h╞ín 20 cß║╖p vß╗ú chß╗ông tham gia ch╞░╞íng tr├¼nh v├á 12 em b├⌐ khß╗Åe mß║ính ra ─æß╗¥i. Nhß╗¥ ch╞░╞íng tr├¼nh, ╞░ß╗¢c m╞í ΓÇ£vß╗ü hß║ính ph├║cΓÇ¥ cß╗ºa nhiß╗üu gia ─æ├¼nh ─æ╞░ß╗úc th├ánh hiß╗çn thß╗▒c.\n\n─É├óy l├á ch╞░╞íng tr├¼nh c├│ ├╜ ngh─⌐a thiß║┐t thß╗▒c v├á nh├ón v─ân, cß║ºn ─æ╞░ß╗úc nh├ón rß╗Öng, lan tß╗Åa trong cß╗Öng ─æß╗ông x├ú hß╗Öi, vß║¡n ─æß╗Öng c├íc c├í nh├ón, tß╗ò chß╗⌐c, nhß╗»ng nh├á hß║úo t├óm ─æß╗ông h├ánh c├╣ng ch╞░╞íng tr├¼nh, hß╗ù trß╗ú nhß╗»ng cß║╖p vß╗ú chß╗ông c├│ ho├án cß║únh kh├│ kh─ân v├┤ sinh, hiß║┐m muß╗Ön, mang gen lß║╖n ─æß╗Öt biß║┐n c├│ nguß╗ôn kinh ph├¡ ─æß╗â thß╗▒c hiß╗çn s├áng lß╗ìc v├á can thiß╗çp ─æiß╗üu trß╗ï, tiß║┐p th├¬m hy vß╗ìng cho c├íc gia ─æ├¼nh ─æ╞░ß╗úc ─æ├│n nhß╗»ng thi├¬n thß║ºn nhß╗Å, khß╗Åe mß║ính ch├áo ─æß╗¥i.\n\nVß╗¢i sß╗▒ ─æß╗ông h├ánh cß╗ºa Quß╗╣ ΓÇ£Tß║ñM L├ÆNG VIß╗åTΓÇ¥ - Quß╗╣ tß╗½ thiß╗çn uy t├¡n trß╗▒c thuß╗Öc ─É├ái Truyß╗ün h├¼nh Viß╗çt Nam (VTV), Bß╗çnh viß╗çn Phß╗Ñ Sß║ún H├á Nß╗Öi rß║Ñt mong sß║╜ nhß║¡n ─æ╞░ß╗úc sß╗▒ quan t├óm, ß╗ºng hß╗Ö cß╗ºa nhiß╗üu tß║Ñm l├▓ng nh├ón ├íi, mß╗ìi sß╗▒ ─æ├│ng g├│p cß╗ºa bß║ín sß║╜ gi├║p chß║»p c├ính ╞░ß╗¢c m╞í sinh ra nhß╗»ng ─æß╗⌐a trß║╗ khß╗Åe mß║ính.','1669280400000','1671613200000','https://static.benhvienphusanhanoi.vn/660x400/images/upload/06032022/tap-1-nhan-tungnhung-so-phan-bat-hanhmoment-dae8.jpg','https://benhvienphusanhanoi.vn/hoat-dong-benh-vien/chuong-trinh-gay-quy-tu-thien-vi-mot-niem-tin-ve-','20000000','2022-11-26 04:14:48','2022-11-26 09:02:37','https://static.benhvienphusanhanoi.vn/images/common/logo.png','Ch╞░╞íng tr├¼nh g├óy quß╗╣ tß╗½ thiß╗çn \"V├¼ mß╗Öt niß╗üm tin vß╗ü hß║ính ph├║c\"\n',NULL),(6,'Western Australian International School','Cß╗æ nhß║íc s─⌐ Trß╗ïnh C├┤ng S╞ín tß╗½ng viß║┐t l├¬n nhß╗»ng nß╗æt nhß║íc: ΓÇ£Sß╗æng trong ─æß╗¥i sß╗æng, cß║ºn c├│ mß╗Öt tß║Ñm l├▓ng. ─Éß╗â l├ám g├¼ em biß║┐t kh├┤ng? ─Éß╗â gi├│ cuß╗æn ─æiΓÇ¥. ─É├óy l├á nhß╗»ng d├▓ng t├óm sß╗▒ rß║Ñt ─æß╗¥i, rß║Ñt ng╞░ß╗¥i cß╗ºa cß╗æ nhß║íc s─⌐ vß╗ü tß║Ñm l├▓ng sß║╗ chia cß╗ºa con ng╞░ß╗¥i trong x├ú hß╗Öi. V├óng! V├á trong th├íng 12 n├áy, em c├╣ng c├íc bß║ín hß╗ìc sinh T├óy ├Üc ─æ├ú hiß╗âu r├╡ h╞ín nhß╗»ng lß╗¥i nhß║»n nhß╗º ß║Ñy, c┼⌐ng nh╞░ hß╗ìc ─æ╞░ß╗úc c├ích sß║╗ chia y├¬u th╞░╞íng th├┤ng qua Dß╗▒ ├ín thiß╗çn nguyß╗çn Gi├íng sinh ß╗ƒ tr╞░ß╗¥ng.\nC├╣ng nhau l├ám n├¬n hoß║ít ─æß╗Öng nh├ón v─ân ├╜ ngh─⌐a, mang Gi├íng sinh ß║Ñm ├íp ─æß║┐n nhß╗»ng ho├án cß║únh kh├│ kh─ân cß║ºn gi├║p ─æß╗í quanh m├¼nh, hß╗ìc sinh WASS ch├║ng em ─æ├ú c├╣ng thß║ºy c├┤ tß╗▒ tay l├ám nhß╗»ng qu├á tß║╖ng handmade v├á vß║╜ c├íc t├íc phß║⌐m tranh ß║únh ─æß╗â ─æß║Ñu gi├í, b├ín g├óy quß╗╣ trong phi├¬n chß╗ú Gi├íng sinh 2018 ß╗ƒ tr╞░ß╗¥ng. ─Éß╗ông thß╗¥i, em c┼⌐ng quy├¬n g├│p c├íc vß║¡t phß║⌐m v├á vß║¡n ─æß╗Öng gia ─æ├¼nh ß╗ºng hß╗Ö tiß╗ün mß║╖t cho chuyß║┐n thiß╗çn nguyß╗çn tß║íi bß╗çnh viß╗çn Ung B╞░ß╗¢u TP.HCM. ─Éß║╖c biß╗çt l├á bß║▒ng nhß╗»ng tiß║┐t mß╗Ñc v─ân nghß╗ç ─æ╞░ß╗úc tß║¡p luyß╗çn kß╗╣ l╞░ß╗íng, ch├║ng em ─æ├ú c├╣ng nhau g├│p mß║╖t trong ─æ├¬m nhß║íc hß╗Öi Gi├íng sinh ΓÇ£A Joyful MelodyΓÇ¥ ─æß╗â chung tay g├óy quß╗╣ v├¼ cß╗Öng ─æß╗ông.\nKhi d├ánh thß╗¥i gian v├á c├┤ng sß╗⌐c cß╗ºa m├¼nh tham gia dß╗▒ ├ín, nhß║Ñt l├á khi trß╗▒c tiß║┐p ─æß║┐n th─âm c├íc bß╗çnh nhi ß╗ƒ Bß╗çnh viß╗çn Ung B╞░ß╗¢u, nhß╗»ng cß║úm x├║c, trß║úi nghiß╗çm c├╣ng b├ái hß╗ìc vß╗ü t├¼nh ng╞░ß╗¥i v├á sß╗▒ sß║╗ chia trong cuß╗Öc sß╗æng ─æ├ú d├óng l├¬n trong em h╞ín bao giß╗¥ hß║┐t. ─É├│ ch├¡nh l├á sß╗▒ quan t├óm, ─æß╗ông cß║úm, l├á tß║Ñm l├▓ng cß╗ºa ch├║ng ta d├ánh cho nhß╗»ng ng╞░ß╗¥i xung quanh th├┤ng qua nhß╗»ng h├ánh ─æß╗Öng thiß║┐t thß╗▒c, ─æ├┤i khi n├│ ─æ╞ín giß║ún chß╗ë mß╗Öt c├íi nß║»m tay, mß╗Öt c├íi ├┤m vß╗ù vß╗ü, an ß╗ºi. Ch├¡nh sß╗▒ y├¬u th╞░╞íng, san sß║╗ niß╗üm vui ß║Ñy l├á sß╗úi d├óy nß╗æi liß╗ün t├¼nh cß║úm giß╗»a ng╞░ß╗¥i vß╗¢i ng╞░ß╗¥i, gi├║p c├íc em nhß╗Å c├│ th├¬m niß╗üm tin v├áo cuß╗Öc sß╗æng ─æß╗â sß╗¢m v╞░ß╗út qua bß╗çnh tß║¡t.\nDß╗▒ ├ín thiß╗çn nguyß╗çn Gi├íng sinh ß╗ƒ tr╞░ß╗¥ng ─æ├ú gi├║p em hiß╗âu ─æ╞░ß╗úc ├╜ ngh─⌐a cß╗ºa sß╗▒ sß║╗ chia, vß╗ü l├▓ng nh├ón ├íi v├á c├│ th├¬m c├íi nh├¼n mß╗¢i vß╗ü cuß╗Öc sß╗æng. Em ─æ├ú tß╗½ng ─æß╗ìc ─æ╞░ß╗úc mß╗Öt c├óu n├│i rß║▒ng: ΓÇ£N╞íi lß║ính nhß║Ñt kh├┤ng phß║úi l├á Bß║»c Cß╗▒c m├á l├á n╞íi kh├┤ng c├│ t├¼nh th╞░╞íngΓÇ¥. Nß║┐u ch├║ng ta chß╗ë biß║┐t sß╗æng cho bß║ún th├ón m├¼nh th├¼ ─æ├│ kh├┤ng phß║úi l├á cuß╗Öc ─æß╗¥i ├╜ ngh─⌐a. Sß║╜ kh├┤ng bao giß╗¥ l├á qu├í muß╗Ön ─æß╗â y├¬u th╞░╞íng sß║╗ chia vß╗¢i ai ─æ├│, v├¼ vß║¡y ch├║ng ta h├úy mß╗ƒ rß╗Öng l├▓ng m├¼nh ─æß╗â t├¼nh y├¬u ─æ╞░ß╗úc lan tß╗Åa.\n\n','1669766400000','1671667200000','https://wass.edu.vn/wp-content/uploads/2018/12/Du-an-thien-nguyen-Giang-sinh-khi-con-hieu-duoc-y-nghia-cua-su-se-chia-4-1.jpg','https://wass.edu.vn/du-an-gay-quy-tu-thien-giang-sinh-noi-em-hieu-duoc-y-nghia-cua-su-se-chia/?fbcli','15000','2022-11-26 06:40:33','2022-11-26 11:59:06','https://cdn.international-schools-database.com/system/premium_profiles/logos/000/000/049/medium/wass_logo.jpg?1619770701','Dß╗▒ ├ín g├óy quß╗╣ tß╗½ thiß╗çn Gi├íng Sinh: N╞íi em hiß╗âu ─æ╞░ß╗úc ├╜ ngh─⌐a cß╗ºa sß╗▒ sß║╗ chia',NULL),(7,'PRUDENTIAL','Ph├ít triß╗ân cß╗Öng ─æß╗ông bß╗ün vß╗»ng - Sß╗æng khß╗Åe\nCh╞░╞íng tr├¼nh chß║íy bß╗Ö g├óy quß╗╣ tß╗½ thiß╗çn\nSß╗▒ kiß╗çn Chß║íy bß╗Ö g├óy quß╗╣ tß╗½ thiß╗çn BBGV Fun Run (hay c├▓n gß╗ìi l├á Fun Run) ─æ╞░ß╗úc tß╗ò chß╗⌐c th╞░ß╗¥ng ni├¬n bß╗ƒi Hiß╗çp hß╗Öi c├íc doanh nghiß╗çp Anh quß╗æc tß║íi Viß╗çt Nam (BBGV). Hoß║ít ─æß╗Öng thß╗â thao n├áy nhß║▒m g├óy quß╗╣ tß╗½ thiß╗çn gi├║p ─æß╗í nhß╗»ng ho├án cß║únh kh├│ kh─ân tß║íi Viß╗çt Nam, ─æß╗ông thß╗¥i khuyß║┐n kh├¡ch tinh thß║ºn vß║¡n ─æß╗Öng v├á gß║»n kß║┐t trong cß╗Öng ─æß╗ông.\n\nTrong suß╗æt 19 n─âm qua, Fun Run ─æ├ú ch├áo ─æ├│n h╞ín 110.000 ng╞░ß╗¥i tham gia v├á g├óy quß╗╣ h╞ín 11 tß╗╖ VN─É cho nhiß╗üu tß╗ò chß╗⌐c tß╗½ thiß╗çn tß║íi Viß╗çt Nam.\n\nN─âm 2019 ─æ├ính dß║Ñu mß╗æc son 20 n─âm h├¼nh th├ánh v├á ph├ít triß╗ân cß╗ºa Prudential tß║íi Viß╗çt Nam, c├┤ng ty ─æ├ú t├ái trß╗ú cho cß║ú hai sß╗▒ kiß╗çn Fun Run diß╗àn ra tß║íi TP. Hß╗ô Ch├¡ Minh v├áo th├íng 9 v├á tß║íi H├á Nß╗Öi v├áo th├íng 11. H╞ín 1,500 t├¼nh nguyß╗çn vi├¬n bao gß╗ôm ban l├únh ─æß║ío, ─æß╗Öi ng┼⌐ nh├ón vi├¬n, t╞░ vß║Ñn vi├¬n v├á ng╞░ß╗¥i th├ón cß╗ºa Prudential tham gia v├á g├│p phß║ºn g├óy quß╗╣ 2,5 tß╗╖ ─æß╗ông cho c├íc tß╗ò chß╗⌐c tß╗½ thiß╗çn tß║íi Viß╗çt Nam.\n\nL├á mß╗Öt doanh nghiß╗çp ti├¬n phong ─æ├│ng g├│p nhiß╗üu s├íng kiß║┐n x├óy dß╗▒ng mß╗Öt Viß╗çt Nam khoß║╗ mß║ính, n─âm nay Prudential mang ─æß║┐n nhiß╗üu hoß║ít ─æß╗Öng th├║ vß╗ï cho ng╞░ß╗¥i tham gia Fun Run nh╞░ c├íc tr├▓ ch╞íi trang bß╗ï kß╗╣ n─âng s╞í cß║Ñp cß╗⌐u, kiß║┐n thß╗⌐c vß╗ü an to├án ─æ╞░ß╗¥ng bß╗Ö v├á ─æß║╖c biß╗çt l├á ΓÇ£cß╗ù ma╠üy ─æi╠únh gia╠ü th├ó╠út s╞░╠ú cu╠ëa nh╞░╠úaΓÇ¥ gi├║p gia t─âng nhß║¡n thß╗⌐c vß╗ü t├íc hß║íi cß╗ºa r├íc thß║úi nhß╗▒a c├╣ng nh╞░╠âng ph├ó╠Çn qua╠Ç g├│p phß║ºn thay ─æ├┤╠ëi ha╠Çnh vi s╞░╠ë dß╗Ñng ─æ├┤╠Ç nh╞░╠úa. Nhß╗»ng hoß║ít ─æß╗Öng n├áy ─æ╞░ß╗úc thiß║┐t kß║┐ ph├╣ hß╗úp cho cß║ú ng╞░ß╗¥i lß╗¢n v├á trß║╗ em, mang ─æß║┐n kiß║┐n thß╗⌐c hß╗»u ├¡ch cho ─æß╗¥i sß╗æng h├áng ng├áy, g├│p phß║ºn c├╣ng c├íc gia ─æ├¼nh Viß╗çt h├¼nh th├ánh lß╗æi sß╗æng khoß║╗, sß╗æng an to├án.\n\nTh├┤ng qua viß╗çc ─æß╗ông h├ánh v├á t├ái trß╗ú cß╗ºa Prudential Viß╗çt Nam cho hoß║ít ─æß╗Öng thß╗â thao ├╜ ngh─⌐a n├áy suß╗æt hai thß║¡p kß╗╖ qua, c├┤ng ty tiß║┐p tß╗Ñc khß║│ng ─æß╗ïnh cam kß║┐t h├ánh ─æß╗Öng v├¼ cuß╗Öc sß╗æng tß╗æt ─æß║╣p h╞ín v├á th├║c ─æß║⌐y tinh thß║ºn x├óy dß╗▒ng lß╗æi sß╗æng khoß║╗ trong cß╗Öng ─æß╗ông.','1669597200000','1669683600000','https://www.prudential.com.vn/export/sites/prudential-vn/vi/.thu-vien/hinh-anh/hoat-dong-csr/song-khoe/csr-fun-run-01-366x206.jpg','https://www.prudential.com.vn/vi/phat-trien-cong-dong-ben-vung/song-khoe/chuong-trinh-chay-bo-gay-quy-tu-thien-fun-run-bbgv/','145555','2022-11-26 06:47:08','2022-11-26 11:59:09','https://www.prudential.com.vn/export/sites/prudential-vn/vi/.thu-vien/hinh-anh/trang-chu/prudential-logo.png','Ch╞░╞íng tr├¼nh chß║íy bß╗Ö g├óy quß╗╣ tß╗½ thiß╗çn',NULL),(8,'Unicef for every child','ß╗ªng hß╗Ö v├á ─æß╗ông h├ánh c├╣ng UNICEF ─æß╗â cung cß║Ñp cho trß║╗ em v├á gia ─æ├¼nh cß╗ºa c├íc em nhß╗»ng dß╗ïch vß╗Ñ thiß║┐t yß║┐u quan trß╗ìng vß╗ü sß╗⌐c khß╗Åe v├á dinh d╞░ß╗íng, gi├ío dß╗Ñc v├á bß║úo vß╗ç.\nH├úy g├│p phß║ºn cho sß╗▒ thay ─æß╗òi t├¡ch cß╗▒c d├ánh cho Trß║╗ em. Quy├¬n g├│p ngay b├óy giß╗¥!','1669597200000','1672362000000','https://www.unicef.org/vietnam/sites/unicef.org.vietnam/files/styles/hero_extended/public/411A0329%20Blue%20washed_0.jpg?itok=PLIVEeL9','https://www.unicef.org/vietnam/vi/support-unicef?gclid=CjwKCAiA7IGcBhA8EiwAFfUDsZepSRMR-a88ffYrJcMur','1111','2022-11-26 06:50:10','2022-11-26 11:59:15','https://www.unicef.org/vietnam/themes/custom/unicef_base/UNICEF_ForEveryChild_White_Vertical_RGB_ENG.jpg','─Éß╗ông h├ánh c├╣ng UNICEF',NULL),(9,'CLB CEO 1987 - Kß║┐t nß╗æi v├á N├óng tß║ºm','Ch╞░╞íng tr├¼nh thiß╗çn nguyß╗çn \"─É├┤ng ß║Ñm cho em\" do Ban Thiß╗çn nguyß╗çn CLB CEO 1987 tß╗ò chß╗⌐c v├á thß╗▒c hiß╗çn\n─Éß║┐n vß╗¢i x├ú Nß║¡m N├¿n, huyß╗çn M╞░ß╗¥ng Ch├á - mß╗Öt trong nhß╗»ng x├ú v├╣ng cao kh├│ kh─ân nhß║Ñt tß║íi tß╗ënh ─Éiß╗çn Bi├¬n, Ban thiß╗çn nguyß╗çn mong nhß║¡n ─æ╞░ß╗úc sß╗▒ hß╗ù trß╗ú cß║úi thiß╗çn c╞í sß╗ƒ vß║¡t chß║Ñt c├▓n thiß║┐u thß╗æn tß║íi 2 ─æiß╗âm tr╞░ß╗¥ng Cß╗⌐u T├íng v├á H├íng Trß╗ƒ, c┼⌐ng nh╞░ san sß║╗ phß║ºn n├áo nhß╗»ng kh├│ kh─ân, vß║Ñt vß║ú cß╗ºa thß║ºy v├á tr├▓ n╞íi ─æ├óy th├┤ng qua c├íc hoß║ít ─æß╗Öng:\n-Sang sß╗¡a khu vß╗▒c c├┤ng tr├¼nh phß╗Ñ\n-X├óy mß╗¢i nh├á tß║»m, bß╗â n╞░ß╗¢c\n-Lß║»p ─æß║╖t b├¼nh n╞░ß╗¢c n├│ng\n-Cß║úi tß║ío s├ón tr╞░ß╗¥ng\n-Tß║╖ng ─æß╗ô d├╣ng sinh hoß║ít, c├┤ng cß╗Ñ dß║íy hß╗ìc, quß║ºn ├ío ß║Ñm,... cho c├íc thß║ºy c├┤ v├á c├íc em\n─Éß╗â khiß║┐n nhß╗»ng ß║Ñp ß╗º trß╗ƒ th├ánh hiß╗çn thß╗▒c, chß║»c chß║»n kh├┤ng thß╗â nhiß╗üu sß╗▒ ß╗ºng hß╗Ö, ─æß╗ông h├ánh, hß╗ù trß╗ú vß╗ü tinh thß║ºn c┼⌐ng nh╞░ vß║¡t chß║Ñt cß╗ºa nhß╗»ng tß║Ñm l├▓ng hß║úo t├óm trong v├á ngo├ái CLB. Sß╗▒ ß╗ºng hß╗Ö cß╗ºa mß╗ìi ng╞░ß╗¥i ch├¡nh l├á ngh─⌐a cß╗¡ cao ─æß║╣p cß╗ºa l├▓ng nh├ón ├íi, g├│p phß║ºn s╞░ß╗ƒi ß║Ñm m├╣a ─æ├┤ng lß║ính lß║╜o cß╗ºa c├íc em nhß╗Å v├╣ng cao. Ch╞░╞íng tr├¼nh mong muß╗æn nhß║¡n ─æ╞░ß╗úc sß╗▒ quan t├óm, t├ái trß╗ú tß╗½ c├íc nh├á hß║úo t├óm:\n- Ch─ân, ├ío, tß║Ñt, d├⌐p, xß╗æp trß║úi nß╗ün ─æß╗â hß╗ù trß╗ú c├íc con qua m├╣a r├⌐t hß║íi sß║»p tß╗¢i.\n- S├ích, vß╗ƒ, ─æß╗ô d├╣ng hß╗ìc tß║¡p mß║ºm non\n- ─Éß╗ô ch╞íi gß╗ù, nhß╗▒a, an to├án v├á ph├╣ hß╗úp vß╗¢i trß║╗ nhß╗Å','1672009200000','1672362000000','https://scontent.fsgn2-5.fna.fbcdn.net/v/t39.30808-6/316134457_508832211304427_553611563339451162_n.jpg?stp=dst-jpg_p960x960&_nc_cat=106&ccb=1-7&_nc_sid=340051&_nc_ohc=sEzQSQKUezIAX8oJ2iD&_nc_ht=scontent.fsgn2-5.fna&oh=00_AfBD_KhMn3MRoLexBAjhCPAGuLLVL5D96MFxbI4hUYRQ7g&oe=638690D7','https://www.facebook.com/events/815548189752221','300000','2022-11-26 06:53:09','2022-11-26 11:59:18','https://scontent.fsgn2-6.fna.fbcdn.net/v/t39.30808-6/305468350_454380043416311_5281015165564931081_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=j9d218SIif4AX9OKJR4&_nc_ht=scontent.fsgn2-6.fna&oh=00_AfChXgvg8GFSfzHJfChAf9jsVqygwNIW9b38kc4vspnkww&oe=63867666','Ch╞░╞íng tr├¼nh thiß╗çn nguyß╗çn \"─É├┤ng ß║Ñm cho em\"',NULL),(10,'─ÉHQG-HCM','ΓÇ£≡¥É╡≡¥æÄ╠å≡¥æ¢≡¥æö ≡¥æ₧≡¥æó≡¥æÄ ΓäÄ≡¥æÆ╠é╠ü≡¥æí ≡¥æ¢≡¥æó╠ü≡¥æû ≡¥æÉ≡¥æÄ≡¥æ£, ─æ≡¥æû ≡¥æ₧≡¥æó≡¥æÄ ≡¥æÅ≡¥æÄ≡¥æ£ ≡¥æÉ≡¥æÄ╠ü≡¥æ¢ΓäÄ ─æ≡¥æ£╠é╠Ç≡¥æ¢≡¥æö\n─É≡¥æÄ╠â ≡¥æÖ≡¥æÄ╠Ç ≡¥æá≡¥æû≡¥æ¢ΓäÄ ≡¥æú≡¥æû≡¥æÆ╠é≡¥æ¢, ≡¥æÉ≡¥æó╠Ç≡¥æ¢≡¥æö ≡¥æÄ≡¥æ¢ΓäÄ ─æ≡¥æû ≡¥æí≡¥æû╠Ç≡¥æ¢ΓäÄ ≡¥æ¢≡¥æö≡¥æó≡¥æª≡¥æÆ╠ú╠é≡¥æ¢ ≡¥æ¢ΓäÄ≡¥æÆ╠ü\n≡¥æÇ≡¥æÄ≡¥æ¢≡¥æö ≡¥æí≡¥æƒ≡¥æ£≡¥æ¢≡¥æö ≡¥æÜ≡¥æû╠Ç≡¥æ¢ΓäÄ ≡¥æÜ≡¥æÄ╠Ç≡¥æó ≡¥æÑ≡¥æÄ≡¥æ¢ΓäÄ, ≡¥æí≡¥æó≡¥æ£╠é╠ë≡¥æû ≡¥æí≡¥æƒ≡¥æÆ╠ë ≡¥æÿΓäÄ≡¥æ£╠é≡¥æ¢≡¥æö ≡¥æíΓäÄ≡¥æÆ╠é╠ë ─æ≡¥æÆ╠é╠ë ≡¥ææ≡¥æÄ╠Ç≡¥æ¢ΓäÄ\n─É≡¥æÄ╠â ≡¥æÖ≡¥æÄ╠Ç ≡¥æá≡¥æû≡¥æ¢ΓäÄ ≡¥æú≡¥æû≡¥æÆ╠é≡¥æ¢ ≡¥æíΓäÄ≡¥æû╠Ç ≡¥æÉ≡¥æó╠Ç≡¥æ¢≡¥æö ≡¥æÄ≡¥æ¢ΓäÄ ─æ≡¥æû ≡¥æí≡¥æû╠Ç≡¥æ¢ΓäÄ ≡¥æ¢≡¥æö≡¥æó≡¥æª≡¥æÆ╠ú╠é≡¥æ¢.ΓÇ¥\nN├áy cß║¡u ╞íi, ─æi t├¼nh nguyß╗çn c├╣ng tß╗¢ nh├⌐!\n Sau nhiß╗üu dß╗▒ ─æß╗ïnh v├á kß║┐ hoß║ích phß║úi thay ─æß╗òi th├¼ ng├áy h├┤m nay, Chiß║┐n dß╗ïch t├¼nh nguyß╗çn Mß╗ÿC ─æ├ú ch├¡nh thß╗⌐c trß╗ƒ lß║íi. Chiß║┐n dß╗ïch t├¼nh nguyß╗çn \"Mß╗ÿC\" do Li├¬n Chi hß╗Öi Khoa Kß║┐ to├ín - Kiß╗âm to├ín, Tr╞░ß╗¥ng ─Éß║íi hß╗ìc Kinh tß║┐ - Luß║¡t v├á Li├¬n Chi hß╗Öi Khoa Kß╗╣ thuß║¡t M├íy t├¡nh, Tr╞░ß╗¥ng ─Éß║íi hß╗ìc C├┤ng nghß╗ç Th├┤ng tin, ─æß╗ông trß╗▒c thuß╗Öc ─ÉHQG-HCM phß╗æi hß╗úp tß╗ò chß╗⌐c.\n Mß╗ÿC l├á m├áu xanh cß╗ºa thi├¬n nhi├¬n, cß╗ºa c├óy cß╗Å hoa l├í t╞░ß╗úng tr╞░ng cho sß╗▒ mß╗Öc mß║íc nh╞░ng tr├án ─æß║ºy sß╗⌐c sß╗æng. Mß╗ÿC ╞░╞ím mß║ºm cho cho sß╗⌐c sß╗æng m├únh liß╗çt, tr├án ─æß║ºy n─âng l╞░ß╗úng v├á tinh thß║ºn nhiß╗çt huyß║┐t cß╗ºa tuß╗òi trß║╗.\nH├úy c├╣ng ≡¥Éé≡¥Éí≡¥Éó≡¥É₧╠é╠ü≡¥Éº ≡¥É¥≡¥Éó╠ú≡¥É£≡¥Éí ≡¥É¡≡¥Éó╠Ç≡¥Éº≡¥Éí ≡¥Éº≡¥Éá≡¥É«≡¥É▓≡¥É₧╠ú╠é≡¥Éº ≡¥Éî≡¥ÉÄ╠ú╠é≡¥Éé mang y├¬u th╞░╞íng v├á lan tß╗Åa y├¬u th╞░╞íng ─æß║┐n vß╗¢i cß╗Öng ─æß╗ông!','1670540400000','1670713200000','https://scontent.fsgn2-4.fna.fbcdn.net/v/t39.30808-6/314578847_512246104278399_9107709996509516881_n.jpg?stp=dst-jpg_p600x600&_nc_cat=101&ccb=1-7&_nc_sid=e3f864&_nc_ohc=iB31AWzGozIAX-UlpZq&_nc_ht=scontent.fsgn2-4.fna&oh=00_AfBc15qBWIMlMDh5QR7tQlHLH9BZaoTuZO2alsePFKimdA&oe=63867BA3','https://www.facebook.com/cdtnmoc','5999999','2022-11-26 06:59:24','2022-11-26 11:59:27','https://scontent.fsgn2-6.fna.fbcdn.net/v/t39.30808ΓÇªee1GPYxwGMemPhcAlzUqg1chqNGLtgHx2auAA&oe=63867586','Chiß║┐n dß╗ïch t├¼nh nguyß╗çn Mß╗ÿC',NULL);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participant`
--

DROP TABLE IF EXISTS `participant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participant` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_event` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participant`
--

LOCK TABLES `participant` WRITE;
/*!40000 ALTER TABLE `participant` DISABLE KEYS */;
INSERT INTO `participant` VALUES (1,5,'Nguyß╗àn Trung Hiß║┐u',21,'bibi030301@gmail.com','0867600311','2022-11-26 07:57:30','2022-11-26 07:57:30');
/*!40000 ALTER TABLE `participant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tid` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `cusum_balance` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `bank_sub_acc_id` varchar(100) DEFAULT NULL,
  `subAccId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'232312332131','nguyen trung hieu',100000,NULL,NULL,NULL,NULL),(2,'232312332131','PAYMENT5',100000,NULL,NULL,NULL,NULL),(3,'23231233213144','PAYMENT5',100055,NULL,NULL,NULL,NULL),(4,'23231233213144','hieu PAYMENT5',100055,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-28  9:56:07

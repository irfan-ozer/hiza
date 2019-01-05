-- phpMyAdmin SQL Dump
-- version 4.4.15.8
-- https://www.phpmyadmin.net
--
-- Anamakine: localhost
-- Üretim Zamanı: 29 Mar 2017, 17:09:56
-- Sunucu sürümü: 5.6.31
-- PHP Sürümü: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `insaat2`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin_groups`
--

CREATE TABLE IF NOT EXISTS `admin_groups` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `admin_groups`
--

INSERT INTO `admin_groups` (`id`, `name`) VALUES
(1, 'Yönetici'),
(2, 'editor');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin_perms`
--

CREATE TABLE IF NOT EXISTS `admin_perms` (
  `groupId` int(10) unsigned NOT NULL,
  `module` varchar(255) NOT NULL,
  `perm` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `admin_perms`
--

INSERT INTO `admin_perms` (`groupId`, `module`, `perm`) VALUES
(1, 'home', 'options'),
(1, 'home', 'password'),
(1, 'home', 'user-list'),
(1, 'home', 'user-insert'),
(1, 'home', 'user-update'),
(1, 'home', 'user-delete'),
(1, 'home', 'group-list'),
(1, 'home', 'group-insert'),
(1, 'home', 'group-update'),
(1, 'home', 'group-delete'),
(1, 'banner', 'list'),
(1, 'banner', 'insert'),
(1, 'banner', 'update'),
(1, 'banner', 'delete'),
(1, 'social', 'list'),
(1, 'social', 'insert'),
(1, 'social', 'update'),
(1, 'social', 'delete'),
(1, 'callyou', 'list'),
(1, 'callyou', 'delete'),
(1, 'menu', 'list'),
(1, 'menu', 'insert'),
(1, 'menu', 'update'),
(1, 'menu', 'delete'),
(1, 'project', 'list'),
(1, 'project', 'insert'),
(1, 'project', 'update'),
(1, 'project', 'delete'),
(1, 'project', 'image-list'),
(1, 'project', 'image-insert'),
(1, 'project', 'image-update'),
(1, 'project', 'image-delete'),
(1, 'category', 'list'),
(1, 'category', 'insert'),
(1, 'category', 'update'),
(1, 'category', 'delete'),
(1, 'service', 'list'),
(1, 'service', 'insert'),
(1, 'service', 'update'),
(1, 'service', 'delete'),
(1, 'news', 'list'),
(1, 'news', 'insert'),
(1, 'news', 'update'),
(1, 'news', 'delete'),
(1, 'content', 'list'),
(1, 'content', 'insert'),
(1, 'content', 'update'),
(1, 'content', 'delete'),
(1, 'contact', 'list'),
(1, 'contact', 'view'),
(1, 'contact', 'delete'),
(1, 'module', 'list'),
(1, 'module', 'update'),
(1, 'module', 'delete'),
(1, 'module', 'order'),
(1, 'tapu', 'list'),
(1, 'tapu', 'view'),
(1, 'tapu', 'delete');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin_users`
--

CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` int(10) unsigned NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `groupId` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `groupId`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `text` text NOT NULL,
  `transition` varchar(255) NOT NULL,
  `delay` int(10) unsigned NOT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `banners`
--

INSERT INTO `banners` (`id`, `title`, `image`, `link`, `text`, `transition`, `delay`, `order`, `language`) VALUES
(7, 'Her Projenin Sırrı Burada', 'cfdbc3e86a496d87914bfd9f32d9c988.png', '#', '', 'transition2d: 97', 4000, 0, 'tr'),
(10, 'Gürkayalar', '241f05d7ea0412f9cead46a6c1ff1499.png', '#', '', 'transition2d: 97', 4000, 0, 'tr'),
(11, 'Gürkayalar', 'fd9f7d45f284fcfb2ea9e56e0dc4d775.png', '', '', 'transition2d: 97', 4000, 0, 'tr');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `callyou`
--

CREATE TABLE IF NOT EXISTS `callyou` (
  `id` int(10) unsigned NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `item` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `item`, `summary`, `image`, `order`, `language`) VALUES
(1, 'Planlanan Projeler', 'planlanan-projeler', 'lastProject', 'Güven sağlamak için inşa edilen, kapıdan içeri girilen ilk andan itibaren sizi ''gerçekten evinizde'' hissettirecek projelerimizi buradan inceleyebilirsiniz.', '42de3d47e8cf3a648da6ebffff8e6731.jpg', 1, 'tr'),
(2, 'Devam Eden Projeler', 'devam-eden-projeler', 'nextProject', 'Geleceğin teknolojisini ve konforunu bugünden yaşamak için, Web Site Satışı İnşaat''in titizlik ve uzmanlıkla hazırladığı projelere buradan göz atabilir, fikir edinebilirsiniz.', '8e3fda7fcb70c52c8be26977745f94af.jpg', 2, 'tr'),
(3, 'Tamamlanan Projeler', 'tamamlanan-projeler', 'doneProject', 'Güven sağlamak için inşa edilmiş, kapıdan içeriği ilk girilen anda itibaren insanı ''gerçekten evinde'' hissettiren projelerimizi buradan inceleyebilirsiniz.', '0302e8ce7799154b0e44a07c2326a65a.jpg', 3, 'tr');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(10) unsigned NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(255) NOT NULL,
  `viewed` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contents`
--

CREATE TABLE IF NOT EXISTS `contents` (
  `id` int(10) unsigned NOT NULL,
  `parentId` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `summary` text,
  `detail` longtext,
  `image` varchar(255) DEFAULT NULL,
  `reserved` varchar(255) DEFAULT NULL,
  `metaTitle` varchar(255) DEFAULT NULL,
  `metaDescription` text,
  `metaKeywords` text,
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `contents`
--

INSERT INTO `contents` (`id`, `parentId`, `title`, `slug`, `summary`, `detail`, `image`, `reserved`, `metaTitle`, `metaDescription`, `metaKeywords`, `order`, `language`) VALUES
(1, NULL, 'KURUMSAL', 'kurumsal', 'Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500''lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960''larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.', '<p style="text-align: justify;"><strong style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-size: 14px; text-align: justify;">Lorem Ipsum</strong><span style="color: rgb(0, 0, 0); font-size: 14px; text-align: justify;">, dizgi ve baskı end&uuml;strisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak &uuml;zere bir yazı galerisini alarak karıştırdığı 1500&#39;lerden beri end&uuml;stri standardı sahte metinler olarak kullanılmıştır. Beşy&uuml;z yıl boyunca varlığını s&uuml;rd&uuml;rmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sı&ccedil;ramıştır. 1960&#39;larda Lorem Ipsum pasajları da i&ccedil;eren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayıncılık yazılımları ile pop&uuml;ler olmuştur.</span></p>\r\n', '1c6a62db313c45d06677f33c42a5dc75.jpg', NULL, 'KURUMSAL', '', '', 1, 'tr');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) unsigned NOT NULL,
  `parentId` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `hint` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `htmlID` varchar(255) DEFAULT NULL,
  `htmlClass` varchar(255) DEFAULT NULL,
  `target` varchar(20) DEFAULT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `menus`
--

INSERT INTO `menus` (`id`, `parentId`, `name`, `title`, `hint`, `link`, `htmlID`, `htmlClass`, `target`, `order`, `language`) VALUES
(1, NULL, 'main', 'Ana Menü', NULL, NULL, NULL, NULL, NULL, 0, 'tr'),
(2, NULL, 'footer', 'Footer Menü', NULL, NULL, NULL, NULL, NULL, 0, 'tr'),
(3, 1, NULL, 'ANA SAYFA', 'Anasayfa', '@home', '', '', '_self', 1, 'tr'),
(4, 1, NULL, 'PROJELER', 'Projeler', '@project', '', '', '_self', 3, 'tr'),
(5, 1, NULL, 'HİZMETLER', 'Hizmetler', '@service', '', '', '_self', 4, 'tr'),
(6, 1, NULL, 'HABERLER', 'Haberler', '@news', '', '', '_self', 5, 'tr'),
(7, 1, NULL, 'İLETİŞİM', 'İletişim', '@contact', '', '', '_self', 6, 'tr'),
(11, 1, NULL, 'KURUMSAL', 'KURUMSAL', '@content/hakkimizda/1', '', '', '_self', 2, 'tr'),
(18, 2, NULL, 'ANA SAYFA', 'Anasayfa', '@home', '', '', '_self', 1, 'tr'),
(19, 2, NULL, 'PROJELER', 'Projeler', '@project', '', '', '_self', 3, 'tr'),
(20, 2, NULL, 'HİZMETLER', 'Hizmetler', '@service', '', '', '_self', 4, 'tr'),
(21, 2, NULL, 'HABERLER', 'Haberler', '@news', '', '', '_self', 5, 'tr'),
(22, 2, NULL, 'HAKKIMIZDA', 'HAKKIMIZDA', '@content/hakkimizda/1', NULL, NULL, NULL, 2, 'tr'),
(23, 2, NULL, 'İLETİŞİM', 'İletişim', '@contact', '', '', '_self', 6, 'tr'),
(24, 4, NULL, 'Tüm Projeler', 'Projeler', '@project', '', '', '_self', 1, 'tr'),
(26, 4, NULL, 'Devam Eden Projeler', 'Devam Eden Projeler', '@category/devam-eden-projeler/2', NULL, NULL, NULL, 3, 'tr'),
(27, 4, NULL, 'Tamamlanan Projeler', 'Tamamlanan Projeler', '@category/tamamlanan-projeler/3', NULL, NULL, NULL, 4, 'tr'),
(28, 4, NULL, 'Planlanan Projeler', 'Planlanan Projeler', '@category/planlanan-projeler/1', NULL, NULL, NULL, 2, 'tr'),
(29, 11, NULL, 'HAKKIMIZDA', 'HAKKIMIZDA', '@content/kurumsal/1', '', '', '_self', 1, 'tr');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `modules`
--

CREATE TABLE IF NOT EXISTS `modules` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `table` varchar(255) NOT NULL,
  `modified` int(10) unsigned NOT NULL,
  `permissions` text NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `menuPattern` text,
  `controller` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `modules`
--

INSERT INTO `modules` (`id`, `name`, `title`, `table`, `modified`, `permissions`, `type`, `icon`, `menuPattern`, `controller`, `order`) VALUES
(1, 'home', 'Home', 'admin_users', 1428906670, 'options,password,user-list,user-insert,user-update,user-delete,group-list,group-insert,group-update,group-delete', NULL, NULL, NULL, 'HomeAdminController', 0),
(2, 'banner', 'Bannerlar', 'banners', 1454410760, 'list,insert,update,delete', NULL, NULL, NULL, 'BannerAdminController', 2),
(3, 'social', 'Sosyal Ağlar', 'socials', 1454412279, 'list,insert,update,delete', NULL, NULL, NULL, 'SocialAdminController', 11),
(4, 'callyou', 'Biz Sizi Arayalım', 'callyou', 1429795754, 'list,delete', NULL, NULL, NULL, 'CallyouAdminController', 9),
(5, 'menu', 'Menü Yönetimi', 'menus', 1430400472, 'list,insert,update,delete', NULL, NULL, NULL, 'MenuAdminController', 1),
(6, 'project', 'Projeler', 'projects', 1454665233, 'list,insert,update,delete,image-list,image-insert,image-update,image-delete', 'public', NULL, 'a:5:{s:5:"title";s:5:"title";s:4:"hint";s:5:"title";s:4:"link";a:2:{i:0;s:4:"slug";i:1;s:2:"id";}s:10:"moduleLink";b:1;s:8:"language";b:1;}', 'ProjectAdminController', 5),
(7, 'category', 'Proje Kategorileri', 'categories', 1454414035, 'list,insert,update,delete', 'public', NULL, 'a:4:{s:5:"title";s:5:"title";s:4:"hint";s:5:"title";s:4:"link";a:2:{i:0;s:4:"slug";i:1;s:2:"id";}s:8:"language";b:1;}', 'CategoryAdminController', 4),
(8, 'service', 'Hizmetler', 'services', 1454418678, 'list,insert,update,delete', 'public', NULL, 'a:5:{s:5:"title";s:5:"title";s:4:"hint";s:5:"title";s:4:"link";a:2:{i:0;s:4:"slug";i:1;s:2:"id";}s:10:"moduleLink";b:1;s:8:"language";b:1;}', 'ServiceAdminController', 6),
(9, 'news', 'Haberler', 'news', 1454421562, 'list,insert,update,delete', 'public', NULL, 'a:5:{s:5:"title";s:5:"title";s:4:"hint";s:5:"title";s:4:"link";a:2:{i:0;s:4:"slug";i:1;s:2:"id";}s:10:"moduleLink";b:1;s:8:"language";b:1;}', 'NewsAdminController', 7),
(10, 'content', 'İçerikler', 'contents', 1428906670, 'list,insert,update,delete', 'public', NULL, 'a:4:{s:5:"title";s:5:"title";s:4:"hint";s:5:"title";s:4:"link";a:2:{i:0;s:4:"slug";i:1;s:2:"id";}s:8:"language";b:1;}', 'ContentAdminController', 3),
(13, 'contact', 'İletişim', 'contacts', 1428906670, 'list,view,delete', 'public', NULL, 'a:1:{s:10:"moduleLink";b:1;}', 'ContactAdminController', 8),
(15, 'module', 'Modüller', 'modules', 1453801852, 'list,update,delete,order', NULL, NULL, NULL, 'ModuleAdminController', 12),
(16, 'tapu', 'Arsamı Değerlendir', 'tapus', 1454679102, 'list,view,delete', 'public', NULL, 'a:1:{s:10:"moduleLink";b:1;}', 'TapuAdminController', 10);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `module_arguments`
--

CREATE TABLE IF NOT EXISTS `module_arguments` (
  `id` int(10) unsigned NOT NULL,
  `module` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` longtext,
  `type` varchar(255) NOT NULL,
  `arguments` longtext NOT NULL,
  `language` varchar(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `module_arguments`
--

INSERT INTO `module_arguments` (`id`, `module`, `name`, `title`, `value`, `type`, `arguments`, `language`) VALUES
(1, 'callyou', 'notification', 'Bildirim Gönderimi', '0', 'dropdown', '{"required":true,"options":["Bildirim G\\u00f6nderme","Bilgirim G\\u00f6nder"]}', 'tr'),
(2, 'callyou', 'notificationMail', 'Bildirim Maili', NULL, 'text', '[]', 'tr'),
(3, 'project', 'title', 'Sayfa Başlığı', 'PROJELER', 'text', '{"required":true}', 'tr'),
(4, 'project', 'metaTitle', 'Meta Başlığı', 'Projeler', 'text', '[]', 'tr'),
(5, 'project', 'metaDescription', 'Meta Tanımı', '', 'textarea', '[]', 'tr'),
(6, 'project', 'metaKeywords', 'Meta Anahtar Kelimeleri', '', 'textarea', '[]', 'tr'),
(7, 'service', 'title', 'Sayfa Başlığı', 'HİZMETLER', 'text', '{"required":true}', 'tr'),
(8, 'service', 'metaTitle', 'Meta Başlığı', 'Hizmetler', 'text', '[]', 'tr'),
(9, 'service', 'metaDescription', 'Meta Tanımı', '', 'textarea', '[]', 'tr'),
(10, 'service', 'metaKeywords', 'Meta Anahtar Kelimeleri', '', 'textarea', '[]', 'tr'),
(11, 'news', 'title', 'Sayfa Başlığı', 'HABERLER', 'text', '{"required":true}', 'tr'),
(12, 'news', 'metaTitle', 'Meta Başlığı', 'Haberler', 'text', '[]', 'tr'),
(13, 'news', 'metaDescription', 'Meta Tanımı', '', 'textarea', '[]', 'tr'),
(14, 'news', 'metaKeywords', 'Meta Anahtar Kelimeleri', '', 'textarea', '[]', 'tr'),
(24, 'contact', 'title', 'Sayfa Başlığı', 'İLETİŞİM', 'text', '{"required":true}', 'tr'),
(25, 'contact', 'metaTitle', 'Meta Başlığı', 'İletişim', 'text', '[]', 'tr'),
(26, 'contact', 'metaDescription', 'Meta Tanımı', '', 'textarea', '[]', 'tr'),
(27, 'contact', 'metaKeywords', 'Meta Anahtar Kelimeleri', '', 'textarea', '[]', 'tr'),
(28, 'contact', 'notification', 'Bildirim Gönderimi', '0', 'dropdown', '{"required":true,"options":["Bildirim G\\u00f6nderme","Bilgirim G\\u00f6nder"]}', 'tr'),
(29, 'contact', 'notificationMail', 'Bildirim Maili', '', 'text', '[]', 'tr'),
(30, 'contact', 'googleMap', 'Google Map Kordinatları', '38.475380, 27.094702', 'text', '[]', 'tr'),
(31, 'contact', 'googleMapText', 'Google Map Yazısı', 'Web Site Satışı Home Ofis', 'text', '[]', 'tr'),
(32, 'contact', 'address', 'Adres Bilgileri', 'Web Site Satışı İnternet Hizmetleri Home Ofis Çalışma Sistemi', 'textarea', '{"required":true}', 'tr'),
(33, 'contact', 'phone', 'Telefon ve Faks Bilgileri', '0530 321 4199', 'textarea', '{"required":true}', 'tr'),
(34, 'contact', 'email', 'Mail Bilgileri', 'websitesatisi@gmail.com', 'text', '{"required":true}', 'tr'),
(39, 'tapu', 'title', 'Sayfa Başlığı', 'ARSAMI DEĞERLENDİR', 'text', '{"required":true}', 'tr'),
(40, 'tapu', 'metaTitle', 'Meta Başlığı', 'Arsamı Değerlendir', 'text', '[]', 'tr'),
(41, 'tapu', 'metaDescription', 'Meta Tanımı', '', 'textarea', '[]', 'tr'),
(42, 'tapu', 'metaKeywords', 'Meta Anahtar Kelimeleri', '', 'textarea', '[]', 'tr'),
(43, 'tapu', 'notification', 'Bildirim Gönderimi', '1', 'dropdown', '{"required":true,"options":["Bildirim G\\u00f6nderme","Bildirim G\\u00f6nder"]}', 'tr'),
(44, 'tapu', 'notificationMail', 'Bildirim Maili', 'websitesatisi@gmail.com', 'text', '[]', 'tr');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `detail` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `metaTitle` varchar(255) DEFAULT NULL,
  `metaDescription` text,
  `metaKeywords` text,
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `summary`, `detail`, `image`, `date`, `metaTitle`, `metaDescription`, `metaKeywords`, `order`, `language`) VALUES
(2, 'Kentsel Dönüşüm Projeleri İzmir''de Hız Kazanmalı', 'kentsel-donusum-projeleri-izmirde-hiz-kazanmali', 'Ege-Koop Genel Başkanı Hüseyin Aslan kentsel dönüşümde gereken adımlar atılmazsa İzmir''i büyük bir felaketin beklediğini söyledi.', '<p style="text-align: justify;">Ege-Koop Genel Başkanı H&uuml;seyin Aslan kentsel d&ouml;n&uuml;ş&uuml;mde gereken adımlar atılmazsa İzmir&#39;i b&uuml;y&uuml;k bir felaketin beklediğini s&ouml;yledi. &Ccedil;alışmalara hemen başlanması gerektiğinin altını &ccedil;izen Aslan, &quot;Cambridge &Uuml;niversitesi&#39;nin yaptığı araştırmaya g&ouml;re İzmir&#39;de &ouml;n&uuml;m&uuml;zdeki 10 yıl i&ccedil;inde doğal bir felaketin yaşanması halinde oluşacak hasar 30 milyar dolar. &Ouml;nlem almazsak tehlike b&uuml;y&uuml;k. Herkes sorumluluk noktasında topu birbirine atmayı, siyasi tartışma yapmayı bırakıp iş yapsın.&nbsp;</p>\n\n<p style="text-align: justify;">İzmir&#39;de kentsel d&ouml;n&uuml;ş&uuml;mden &ouml;nce, zihniyette d&ouml;n&uuml;ş&uuml;m şart. Durumun ciddiyetini bir an &ouml;nce anlamamız gerek&quot; dedi. Ege-Koop Genel Başkanı H&uuml;seyin Aslan İzmir&#39;deki kentsel d&ouml;n&uuml;ş&uuml;me ilişkin araştırmalarını ve &ouml;nerilerini Habert&uuml;rk Egeli&#39;ye anlattı.</p>\n\n<p style="text-align: justify;">&nbsp;</p>\n\n<p style="text-align: justify;"><strong>İzmir&#39;in &quot;kentsel d&ouml;n&uuml;ş&uuml;m&quot; tablosunu nasıl g&ouml;r&uuml;yorsunuz?&nbsp;</strong></p>\n\n<p style="text-align: justify;">Şehrimizde ka&ccedil;ak ve denetimsiz yapıların oranı &ccedil;ok y&uuml;ksek. Denetimli yapı stoğunun fiziksel ve yapısal (depreme dayanıklılık) &ouml;zellikleri değerlendirildiğinde, nitelikli kentsel d&ouml;n&uuml;ş&uuml;m uygulamaları &nbsp;İzmir&nbsp; ve Ege B&ouml;lgesi i&ccedil;in ka&ccedil;ınılmaz. İzmir geneline baktığımızda bina yaş ortalaması 25 yıl &uuml;zerinde. Ka&ccedil;ak yapılaşma ise resmi raporlarda y&uuml;zde 60-65 olarak tespit ediliyor.&nbsp;</p>\n\n<p style="text-align: justify;">&nbsp;</p>\n\n<p style="text-align: justify;"><strong>100 BİN KİŞİ TEHLİKEDE&nbsp;</strong></p>\n\n<p style="text-align: justify;">Kentin ne kadarlık bir b&ouml;l&uuml;m&uuml; &quot;kentsel d&ouml;n&uuml;ş&uuml;m alanı&quot; olarak ilan edildi?&nbsp;</p>\n\n<p style="text-align: justify;">İzmir&#39;de 6306 sayılı kanun kapsamında 918 hektar, 5393 sayılı Belediye Kanununun 73. maddesi kapsamında 305 hektar olmak &uuml;zere, toplam 1.223 hektarlık alan &quot;Bakanlar Kurulu kararıyla Kentsel D&ouml;n&uuml;ş&uuml;m ve gelişim proje&quot; alanı olarak ilan edildi. &Ccedil;evre ve Şehircilik Bakanlığı&#39;nm yetkisindeki 918 bin hektarlık alanda 33 mahalle ve 35 bin 836 adet konut mevcut. Bu b&ouml;lgede şuan itibariyle 97 bin 950 kişinin can ve mal g&uuml;venliği tehlikede. İzmir B&uuml;y&uuml;kşehir Belediyesi sorumluluğunda ve yetkisinde olan 305 hektarlık alanda ise 11 bin 200 adet bağımsız birimin yıkılması ve yerine yenilerinin yapılması gerekiyor.&nbsp;</p>\n\n<p style="text-align: justify;">&nbsp;</p>\n\n<p style="text-align: justify;"><strong>Peki, gereken &ccedil;alışmalar yapılıyor mu?&nbsp;</strong></p>\n\n<p style="text-align: justify;">Gerek Bakanlık yetkisinde olan gerekse de İzmir B&uuml;y&uuml;kşehir Belediyesi yetkisinde olan alanlarda şu ana kadar ne yazık ki elle tutulur, g&ouml;zle g&ouml;r&uuml;l&uuml;r somut bir &ccedil;alışma yapılamadı.&nbsp;</p>\n\n<p style="text-align: justify;">Bu durum insanların hayatlarının ne kadar tehlikede olduğunu g&ouml;stermektedir. Cambridge &Uuml;niversitesi Risk Araştırma Merkezi&#39;nin araştırmasına g&ouml;re İzmir&#39;de &ouml;n&uuml;m&uuml;zdeki 10 yıl i&ccedil;inde doğa ve insan kaynaklı felaketlerin yaşanması halinde oluşacak hasar 30 milyar dolar. &Ouml;nlem almazsak tehlike b&uuml;y&uuml;k. Biz Ege-Koop olarak zaten yıllardır bu ger&ccedil;eğe dikkat &ccedil;ekiyoruz. Kırılganlık a&ccedil;ısından d&uuml;nyanın 42&#39;inci, T&uuml;rkiye&#39;nin 2&#39;nci riskli konumdaki kenti İzmir&#39;de, zaman kaybetmeden ve siyasi malzeme yapmadan kentsel d&ouml;n&uuml;ş&uuml;m projelerinin başlaması gerekiyor.&nbsp;</p>\n\n<p style="text-align: justify;">&nbsp;</p>\n\n<p style="text-align: justify;"><strong>&Ouml;RG&Uuml;TLENMEK GEREK&nbsp;</strong></p>\n\n<p style="text-align: justify;">Zihniyet d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; sağlamak i&ccedil;in hangi adımlar atılmalı?&nbsp;</p>\n\n<p style="text-align: justify;">H&uuml;k&uuml;met ya da belediye, hangisi isterse, biz Ege-Koop olarak bug&uuml;ne kadarki bilgi, birikimleri ve deneyimlerimizle kentsel d&ouml;n&uuml;ş&uuml;m konusunda elimizi, g&ouml;vdemizi taşın altına koymaya hazırız. Bu işi H&uuml;k&uuml;met ve yerel y&ouml;netimler kesinlikle siyasi malzeme yapmamalı. TOKİ, belediyeler, H&uuml;k&uuml;met, meslek odaları sen-ben kavgası yapmadan kentsel d&ouml;n&uuml;ş&uuml;m&uuml;n ve sağlıklı yapılaşmanın biran evvel başlayabilmesi i&ccedil;in g&uuml;&ccedil;lerini birleştirmelidir. Bir &uuml;lke ve insanlık g&ouml;revidir. Şu anda ne yazık ki kentsel d&ouml;n&uuml;ş&uuml;m yasasındaki boşluktan dolayı bazı a&ccedil;ıkg&ouml;z m&uuml;teahhitler devletin sağladığı vergi, resim, har&ccedil; muafiyetlerinden faydalanmaktadır. Eğer bize yetki verilirse en kısa s&uuml;rede en azından bir mahallede, o mahallede yaşayan sakinlerle, onları dinleyerek ve mağdur etmeden kentsel d&ouml;n&uuml;ş&uuml;m&uuml; uygularız. Bir mahallede yetki versinler, d&ouml;n&uuml;ş&uuml;m nedir g&ouml;sterelim.&nbsp;</p>\n\n<p style="text-align: justify;">&nbsp;</p>\n\n<p style="text-align: justify;"><strong>TOKİ, g&ouml;revini k&ouml;t&uuml;ye kullanıyor&nbsp;</strong></p>\n\n<p style="text-align: justify;">Kentsel d&ouml;n&uuml;ş&uuml;m&uuml;n &ouml;n&uuml;ndeki engel sizce nedir?&nbsp;</p>\n\n<p style="text-align: justify;">Her an 6-7 şiddetinde bir deprem olabileceği senaryosuyla tam bir kriz y&ouml;netimi mantığıyla İzmir&#39;de ivedi olarak b&uuml;y&uuml;k bir kentsel d&ouml;n&uuml;ş&uuml;m adımını atmak, sorumlu mevkilerdeki herkesin g&ouml;revi olmalı. İzmir&#39;e sağlıklı konutların acilen yapılması gereğini tartışmalıyız. Burada g&ouml;rev H&uuml;k&uuml;mete, belediyelere, Toplu Konut İdaresi&#39;ne d&uuml;şmektedir. Toplu Konut İdaresi ne yazık ki yıllardan beri sağlıklı yaşam alanlarında gecekondu b&ouml;lgelerindeki vatandaşa imkan sunmak ve kuruluş amacına uygun olarak hi&ccedil; konutu olmayan orta gelir grubundaki vatandaşlarımızın insana yakışan yaşam alanlarında konut sahibi olmalarını sağlamayı t&uuml;m&uuml;yle g&uuml;ndeminden &ccedil;ıkararak daha &ccedil;ok l&uuml;ks konut, k&ouml;pr&uuml;, baraj, hastane, stat gibi işlerle meşgul. Bana g&ouml;re g&ouml;revini k&ouml;t&uuml;ye kullanıyor. Bu tespiti, 32 yıldır İzmir&#39;de 200 ayrı meslek kooperatifinin yer aldığı ve her kesimin yatırım ya da oturmak i&ccedil;in konut sahibi olduğu EgeKoop&#39;un Genel Başkanı sıfatımla yapıyorum. İkinci &ccedil;ağrım TOKİ&#39; y&uuml;zde 60-65&#39;i yıkılmaya muhta&ccedil; y&uuml;zde 38&#39;i kirada oturan İzmir&#39;de1 &nbsp;TOKİ&nbsp; bug&uuml;ne kadar orta gelir grubuna y&ouml;nelik b&uuml;y&uuml;k bir d&ouml;n&uuml;ş&uuml;m projesi yapmadı.&nbsp;</p>\n\n<p style="text-align: justify;">Herkes sorumluluk noktasında topu birbirine atmayı bıraksın; iş yapsın. Kentsel d&ouml;n&uuml;ş&uuml;mden &ouml;nce, zihniyette d&ouml;n&uuml;ş&uuml;m şart.&nbsp;</p>\n\n<p style="text-align: justify;">Durumun ciddiyetini bir an &ouml;nce anlamamız gerek.&nbsp;</p>\n\n<p style="text-align: justify;">&nbsp;</p>\n\n<p style="text-align: justify;"><strong>&Ccedil;imento zammı projeleri geciktirir</strong></p>\n\n<p style="text-align: justify;">&Ccedil;imento fiyatlarına gelen zammı nasıl değerlendiriyorsunuz?&nbsp;</p>\n\n<p style="text-align: justify;">Bir gecede y&uuml;zde 30&#39;u aşan oranda zamlanan &ccedil;imentodaki bu y&uuml;ksek artışı, salt taahh&uuml;t işi yapan m&uuml;teahhit g&ouml;z&uuml;yle değerlendirme yanlışına d&uuml;şmemeliyiz. Sonu&ccedil;ta b&uuml;y&uuml;k projeleri y&uuml;r&uuml;ten konut şirketleri, bu zammı konut fiyatlarına yansıtacaklar. Ancak bu &ccedil;imento zammının kamu boyutunda y&uuml;r&uuml;t&uuml;lecek projelere de, okul-hastane-yol-yurt gibi yatırımlara, ayrıca belediyelerin devam eden projelerine de etkisi negatif olacak. Dolayısıyla maliyet artışı, konut şirketlerince doğrudan devam eden projelere &ouml;deme yapan halka yansıtılacak. Bu zammın sadece kaba inşaata ek maliyet y&uuml;k&uuml; y&uuml;zde 20. Bu fark konut şirketlerinin cebinden &ccedil;ıkmayacak. Herkesin elini i&ccedil;ine soktuğu, halkın cebinden &ccedil;ıkacak.&nbsp;</p>\n\n<p style="text-align: justify;">Bu maliyet artışı, kamu projelerinde de devletin kasasından daha &ccedil;ok kaynak &ccedil;ıkmasına neden olacak.</p>\n\n<p style="text-align: justify;">&nbsp;</p>\n\n<p style="text-align: justify;"><strong>PROGRAM DEĞİŞİR</strong></p>\n\n<p style="text-align: justify;">Belki yatırım programında yapılacak işlerin sayısında d&uuml;ş&uuml;ş olacak. Herhangi bir kentsel d&ouml;n&uuml;ş&uuml;m projesi i&ccedil;in &ccedil;ivi &ccedil;akılmayan İzmir&#39;de, bundan sonra projelerin başlamasını belki geciktirecek ya da imk&acirc;nsızlaştıracak. Bu a&ccedil;ıdan bakıldığında, sağlıklı konutlarda ve sağlam bir kentte yaşama standardına erişemeyecek yurttaşlarımızın &ouml;deyeceği fatura, siyasi tartışmalarla d&ouml;n&uuml;ş&uuml;m konusunda bir arpa boyu yol alınamadığı i&ccedil;in, belki bir doğal afetle daha b&uuml;y&uuml;k olacaktır.&nbsp;</p>\n\n<p style="text-align: justify;">&nbsp;</p>\n\n<p style="text-align: justify;"><strong>H&Uuml;SEYİN ASLAN KİMDİR?&nbsp;</strong></p>\n\n<p style="text-align: justify;">1951 yılında Uşak&#39;ta doğdu. Uşak, Denizli&#39;ve İzmir&#39;de değişik gazetelerde 30 yıla yakın gazetecilik yaptı. Ege-Koop Genel Başkanlığı g&ouml;revinin yanı sıra aralıksız olarak 23 yıl T&uuml;rkiye Gazeteciler Sendikası İzmir şube Başkanlığı g&ouml;revini y&uuml;r&uuml;tt&uuml;.&nbsp;</p>\n\n<p style="text-align: justify;">T&Uuml;LOV&#39;un da Y&ouml;netim Kurulu Başkanlığı g&ouml;revini s&uuml;rd&uuml;ren ASLAN; T&uuml;rk Alman Eğitim ve Bilimsel Araştırmalar Vakfı (TAVAK) M&uuml;tevelli Heyeti &Uuml;yesi ve Birleşmiş Milletler Ekonomik ve Sosyal Konsey Sivil Toplum Danışma Kurulu &uuml;yesidir.&nbsp;</p>\n\n<p>&nbsp;</p>\n', 'ded8738cd6d67239c547d282fd2587f6.jpg', '2016-02-03 16:18:45', '', '', '', 3, 'tr'),
(3, 'Doğru Arsa Yatırımı', 'dogru-arsa-yatirimi', 'Doğru yatırım için öncelikle satın alacağımız şeyi tanımalıyız!', '<p style="text-align: justify;"><strong>1) Arsa nedir, t&uuml;rleri nelerdir?</strong></p>\n\n<p style="text-align: justify;">Arsa, sınırları belli, tapu k&uuml;t&uuml;ğ&uuml;ne kayırlı toprak par&ccedil;asıdır.A</p>\n\n<p style="text-align: justify;">Arsa, imarlı ve imarsız olmak &uuml;zere genel anlamda ikiye ayrılır.</p>\n\n<p style="text-align: justify;">İmarsız olanına ARAZİ, imar ( ifraz ) g&ouml;rm&uuml;ş olanına ARSA denir.</p>\n\n<p style="text-align: justify;">Genelde Arazi ve Arsa s&ouml;zc&uuml;kleri &ccedil;ok karıştırılır, aynı anlama geldiği sanılır. Aralarında &ccedil;ok b&uuml;y&uuml;k fark vardır.</p>\n\n<p style="text-align: justify;">&nbsp;</p>\n\n<p style="text-align: justify;"><strong>2) Arsa yatırımının konut ve işyeri yatırımlarından farkı nedir?</strong></p>\n\n<p style="text-align: justify;">Arsa yatırımı daha uzun vadelidir.</p>\n\n<p style="text-align: justify;">Arsa biraz daha bilgi ve tecr&uuml;be isteyen yatırımdır.</p>\n\n<p style="text-align: justify;">Arsa yatırımı yapacak kişi geleceği okuyabilen, şehre insanlara, genel temay&uuml;l ve arzın hareket y&ouml;n&uuml;ne bakabilen insanlardır.</p>\n\n<p style="text-align: justify;">Arsa yatırımı i&ccedil;in kenarda ihtiyacınız olmayan bir paraya ihtiya&ccedil; vardır.</p>\n\n<p style="text-align: justify;">Arsaya yatırılan para karşılığında b&uuml;y&uuml;k &ccedil;oğunlukla kira geliri elde edemezsiniz. Zira arsa, şehir i&ccedil;erisinde, liman &ndash; g&uuml;mr&uuml;k b&ouml;lgeleri haricindeki yerlerde, inşaat malzemeleri satılan b&ouml;lgelerde bulunmuyorsa a&ccedil;ık&ccedil;ası kiracı bulamaz.</p>\n\n<p style="text-align: justify;">Arsa yatırımı i&ccedil;in yol k&ouml;pr&uuml; yeni b&uuml;y&uuml;k projeler, baraj, g&ouml;l havzaları, orman, yeşil alanlar, yerleşim yoğunluğu gibi daha bir&ccedil;ok kriter etkili olur. Hepsini değerlendirmek ve bir sonu&ccedil; ile yatırım yapmak gerekir. Bu da konut ve işyeri yatırımından bilmeyenler i&ccedil;in &ccedil;ok daha karmaşık olabilir.</p>\n\n<p style="text-align: justify;">Konut ve işyerinde de ilgili belediye, kadastro ve tapu bilgilerine bakılır fakat; arsanın &ccedil;apına bakarak cepheleri, şekli değerlendirmek daha bir uzmanlık gerektirir. İmar durumu ile &uuml;zerine yapılacak inşaatın enini boyunu cephesini ışık alıp almayacağını tahayy&uuml;l etmek daha ince bir d&uuml;ş&uuml;ncenin becerisidir.</p>\n\n<p style="text-align: justify;">Arsa yatırımının en b&uuml;y&uuml;k farkı kazancıdır.</p>\n\n<p style="text-align: justify;">Zira herkes arsaya para yatıramaz. Bilenler de bu işin asıl rantını alırlar.</p>\n', '79ca945cee42a48ec9545c5b61810088.jpg', '2016-02-03 16:56:43', '', '', '', 4, 'tr'),
(4, 'BAYRAKLI KONUTLARININ İNŞAATINA BAŞLANDI', 'bayrakli-konutlarinin-insaatina-baslandi', 'İNŞAAT BAYRAKLI EMEK MAHALLESİNDEKİ İNŞAATINA BAŞLADI.', '<p>İNŞAAT AİLESİ BAYRAKLI EMEK MAHALLESİNDEKİ G&Ouml;ZDE PROJESİNİN TEMELİNİ &nbsp;27.08.2016 TARİHİNDE ATTI. G&Uuml;RKAYALARIN BU G&Ouml;ZDE PROJESİ 15 DAİRE VE 2 D&Uuml;KKANDAN OLUŞMAKTADIR.</p>\r\n', '4737ce630b134fa1aa0f7b2cbff3a2c4.jpg', '2016-08-28 12:43:05', '', '', '', 6, 'tr'),
(5, 'KARŞIYAKA ŞEMİKLER 10 PROJEMİZİ TAMAMLADIK', 'karsiyaka-semikler-10-projemizi-tamamladdik', 'Karşıyaka Şemikler10 apartmanı satışa sunulmuştur.', '<p>Karşıyaka Şemikler 10 apartmanı projemizi tamamladık.&nbsp;Se&ccedil;kin yaşam alanları ile dolu projemizin satışları başlamıştır.Projemiz 10 adet 2+1 daireden oluşmaktadır bu projemizdede &ouml;nceden yaptığımız projelerin &uuml;st&uuml;ne koymaya &ccedil;alıştık ve siz değerli izmirlilere sunduk.Dairelerimiz 2+1 115 m<sup>2</sup>&nbsp;ebeveyn banyolu kombi, &nbsp;petek, panjur, vestiyer vs. daha bir &ccedil;ok &ouml;zelliği ile satışa sunulmuştur.</p>\n', 'd515c6197e8565667b1125655ea36a7c.jpg', '2016-10-11 19:44:03', '', '', '', 5, 'tr');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `options`
--

CREATE TABLE IF NOT EXISTS `options` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` longtext,
  `type` varchar(255) NOT NULL,
  `arguments` longtext NOT NULL,
  `language` varchar(5) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `options`
--

INSERT INTO `options` (`id`, `name`, `title`, `value`, `type`, `arguments`, `language`) VALUES
(1, 'metaTitle', 'Site Başlığı', 'İnşaat Sitesi | Site Yaptır | İnşaat Sitesi Yaptır | Web Tasarım | İnşaat Web Tasarım', 'text', '{"required":true}', 'tr'),
(2, 'metaDescription', 'Site Tanımı', 'İnşaat Sitesi | Site Yaptır | İnşaat Sitesi Yaptır | Web Tasarım | İnşaat Web Tasarım', 'textarea', '{"required":true}', 'tr'),
(3, 'metaKeywords', 'Site Anahtar Kelimeleri', 'İnşaat Sitesi,Site Yaptır,İnşaat Sitesi Yaptır,Web Tasarım,İnşaat Web Tasarım', 'textarea', '{"required":true}', 'tr'),
(4, 'customMeta', 'Özel Metalar', '', 'textarea', '[]', 'tr'),
(5, 'smtpHost', 'Smtp Sunucusu', '', 'text', '[]', 'tr'),
(6, 'smtpPort', 'Smtp Port', '587', 'text', '[]', 'tr'),
(7, 'smtpUser', 'Smtp Kullanıcı Adı', '', 'text', '[]', 'tr'),
(8, 'smtpPass', 'Smtp Parola', '', 'text', '[]', 'tr'),
(9, 'sitePhone', 'Site Telefon Numarası', '0530 321 4199', 'text', '[]', 'tr'),
(10, 'siteAddress', 'Site Adres', 'Web Site Satışı İnternet Hizmetleri Home Ofis Çalışma Sistemi', 'text', '[]', 'tr'),
(11, 'aboutText', 'Hakkında Yazısı', 'Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500''lerden beri endüstri standardı sahte metinler olarak kullanılmıştır.', 'textarea', '[]', 'tr');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(10) unsigned NOT NULL,
  `projectId` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `room` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `detail` longtext,
  `metaTitle` varchar(255) DEFAULT NULL,
  `metaDescription` text,
  `metaKeywords` text,
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `projects`
--

INSERT INTO `projects` (`id`, `projectId`, `title`, `slug`, `type`, `location`, `price`, `room`, `image`, `summary`, `detail`, `metaTitle`, `metaDescription`, `metaKeywords`, `order`, `language`) VALUES
(1, 3, 'ŞEMİKLER 11 KONUTLARI', 'semikler-11-konutlari', 'Konut  Projesi', 'İzmir - Karşıyaka - Şemikler', '-', '2+1 ve 3+1', 'c3390d36ab61f2461742fa617c33825b.png', 'İnşaat''ın geleceğe bir miras olarak inşa edeceği ŞEMİKLER 11 KONUTLARI projesi.', '<p>İnşaat&#39;ın geleceğe bir miras olarak inşa edeceği ŞEMİKLER 11 KONUTLARI projesi.</p>\r\n', '', '', '', 3, 'tr'),
(3, 1, 'SOĞUKKUYU KONUTLARI', 'sogukkuyu-konutlari', 'Apartman Projesi', 'İZMİR - Soğukkuyu', '-', '2+1', '646bdfce7fbb0f9d4556e64f293fe936.jpg', 'Websitesatışı''nın gelecek projelerinden; Soğukkuyu Konutları.', '<p>Websitesatışı&#39;nın gelecek projelerinden; Soğukkuyu Konutları.</p>\r\n', '', '', '', 4, 'tr'),
(4, 3, 'ALGÜL APARTMANI', 'algul-apartmani', 'Apartman Projesi', 'İZMİR', '-', '-', '28e8fdb84b39181765e7156ba9e70103.jpg', 'İnşaat''ın geleceğe bir miras olarak inşa ettiği Algül Apartmanı projesi.', '<p>İnşaat&#39;ın geleceğe bir miras olarak inşa ettiği Alg&uuml;l Apartmanı projesi.</p>\r\n', '', '', '', 8, 'tr'),
(5, 3, 'ESNAF VAROL APARTMANI', 'esnaf-varol-apartmani', 'Apartman Projesi', 'İZMİR', '-', '-', 'e5546041f022e800194aa5101391e712.jpg', 'İnşaat''ın başarıyla tamamladığı projelerinden; Esnaf Varol Apartmanı.', '<p>İnşaat&#39;ın başarıyla tamamladığı projelerinden; Esnaf Varol Apartmanı.</p>\r\n', '', '', '', 12, 'tr'),
(6, 3, 'GÜLER APARTMANI', 'guler-apartmani', 'Apartman Projesi', 'İZMİR', '-', '-', '4ed8c7ebe08c6bf0eee73d1855c0ece3.jpg', 'İnşaat''in güven vadeden projelerinden; Güler Apartmanı.', '<p>İnşaat&#39;in g&uuml;ven vadeden projelerinden; G&uuml;ler Apartmanı.</p>\r\n', '', '', '', 13, 'tr'),
(7, 3, 'KAYALAR APARTMANI 1', 'kayalar-apartmani-1', 'Apartman Projesi', 'İZMİR', '-', '-', '75e4546cc2bfa9014ced7d1cb753209f.jpg', 'İnşaat''ın başarı ile tamamladığı biri; Kayalar Apartmanı 1.', '<p>İnşaat&#39;in bayrak projelerinden biri; Kayalar Apartmanı 1.</p>\r\n', '', '', '', 14, 'tr'),
(8, 3, 'KAYALAR APARTMANI 2', 'kayalar-apartmani-2', 'Apartman Projesi', 'İZMİR', '-', '-', '2ff37ec49de8e0f7021d0c551ce95129.jpg', 'İnşaat''in simge haline gelmiş projelerinden bir diğer; Kayalar Apartmanı 2.', '<p>İnşaat&#39;in simge haline gelmiş projelerinden bir diğeri; Kayalar Apartmanı 2.</p>\r\n', '', '', '', 10, 'tr'),
(9, 3, 'MUSTAFA BEY APARTMANI', 'mustafa-bey-apartmani', 'Apartman Projesi', 'İZMİR', '-', '-', 'd49710115c0ddfdaaf0163a7532e508c.jpg', 'Kentsel dönüşüme uygun, yeni nesil inşaat projelerine bir örnek; Mustafa Bey Apartmanı.', '<p>Kentsel d&ouml;n&uuml;ş&uuml;me uygun, yeni nesil inşaat projelerine bir &ouml;rnek; Mustafa Bey Apartmanı.</p>\r\n', '', '', '', 11, 'tr'),
(10, 3, 'ÖZCAN APARTMANI', 'ozcan-apartmani', 'Apartman Projesi', 'İZMİR', '-', '-', 'f65ac2ffd833f0e3672cc16078a6edaf.jpg', 'Gürkayalar İnşaat tarafından projelendirilen, tasarlanan ve uygulanan bir apartman projesi daha; Özcan Apartmanı.', '<p>G&uuml;rkayalar İnşaat tarafından projelendirilen, tasarlanan ve uygulanan bir apartman projesi daha; &Ouml;zcan Apartmanı.</p>\n', '', '', '', 6, 'tr'),
(11, 3, 'SEYREK APARTMANI', 'seyrek-apartmani', 'Apartman Projesi', 'İZMİR', '-', '-', '0f14fa2cb2f3f4729bdc3d2091079205.jpg', ' İnşaat tarafından özenle uygulanan, son dönem teknolojilerinin itinayla kullanıldığı bir apartman projesi; Seyrek Apartmanı.', '<p>İnşaat tarafından &ouml;zenle uygulanan, son d&ouml;nem teknolojilerinin itinayla kullanıldığı bir apartman projesi; Seyrek Apartmanı.</p>\r\n', '', '', '', 9, 'tr'),
(12, 3, 'ŞEMİKLER 10 KONUTLARI', 'semikler-10-konutlari', 'KONUT', 'İzmir - Karşıyaka - Şemikler', '270000 tl', '2+1', '86fc68fa60676c80f2cbb9099f679e2b.jpg', 'İnşaat''ın geleceğe bir miras olarak inşa edeceği ŞEMİKLER 10 KONUTLARI projesi.', '<p>İnşaat&#39;ın geleceğe bir miras olarak inşa edeceği ŞEMİKLER 10 KONUTLARI projesi.</p>\r\n', '', '', '', 2, 'tr'),
(13, 3, 'WEB SİTE SATIŞI APARTMANI', 'web-site-satisi-apartmani', 'KONUT', 'İzmir - Karşıyaka', '', '2+1 ve 3+1', '3c6413f0b1a45adf7e95b5c59cf56e55.jpg', 'Web Site Satışı İnşaat tarafından özenle uygulanan, son dönem teknolojilerinin itinayla kullanıldığı bir apartman projesi; Özcan Apartmanı 2.', '<p>Web Site Satışı İnşaat tarafından &ouml;zenle uygulanan, son d&ouml;nem teknolojilerinin itinayla kullanıldığı bir apartman projesi; &Ouml;zcan Apartmanı 2.</p>\r\n', '', '', '', 7, 'tr'),
(14, 1, 'DEMİRKÖPRÜ EVLERİ', 'demirkopru-evleri', 'KONUT', 'DEMİRKÖPRÜ/KARŞIYAKA', '-', '2+1', 'd80b18cc20bb94791aab4b334427949d.jpg', 'İnşaat''ın geleceğe bir miras olarak inşa edeceği DEMİRKÖPRÜ EVLERİ 20 adet konuttan oluşmaktadır ve 2017 yılının başında yapılması planlanmaktadır.', '<p>İnşaat&#39;ın geleceğe bir miras olarak inşa edeceği DEMİRK&Ouml;PR&Uuml; EVLERİ 20 adet konuttan oluşmaktadır ve 2017 yılının başında yapılması planlanmaktadır.</p>\r\n', '', '', '', 1, 'tr');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `project_images`
--

CREATE TABLE IF NOT EXISTS `project_images` (
  `id` int(10) unsigned NOT NULL,
  `galleryId` int(10) unsigned NOT NULL,
  `image` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `project_images`
--

INSERT INTO `project_images` (`id`, `galleryId`, `image`, `order`, `language`) VALUES
(169, 13, 'dcb67710c08fc9b7a96d21d12b248622.jpg', 8, 'tr'),
(170, 13, 'ffa2c6a2cc20ef3f986e304d919972b4.jpg', 7, 'tr'),
(171, 13, '976566c50bf04612fb49f901d6338bdf.jpg', 3, 'tr'),
(172, 13, '0ce6e326e2b9e0505e7ba191d10a1042.jpg', 5, 'tr'),
(173, 13, '2172c93efdd11357aec6a70839183979.jpg', 6, 'tr'),
(174, 13, 'eada053889251dc5d1fd630db7bd1ac2.jpg', 4, 'tr'),
(177, 13, '67d694fe95a58698b2cfdd7546711c36.jpg', 2, 'tr'),
(182, 1, '0ed849fb1862e44bd2ccecdb9a9af6e3.png', 1, 'tr'),
(187, 10, 'c71e04b68e4a72941c149dbb7086fe34.jpg', 5, 'tr'),
(188, 10, '432b8ae088bf25ae88c253452f2e5eb4.jpg', 6, 'tr'),
(190, 10, '82e7a3eae9ddadfc968d6598c89a2eae.jpg', 8, 'tr'),
(196, 10, '7b1b9b5668fa964c0dc15de07dfb80fa.jpg', 1, 'tr'),
(197, 10, 'c0b5df783862b31b4ba72f8773340527.jpg', 4, 'tr'),
(198, 10, 'd09d911e47d38eb565577c4b694d9c9f.jpg', 3, 'tr'),
(201, 10, 'ced100318b73597f011cf0667dd0da17.jpg', 2, 'tr'),
(209, 4, '8340f74372a37f4d3ec90041064ca198.jpg', 1, 'tr'),
(211, 4, 'd05cc2c9adedc3b3d4df155928817ba0.jpg', 3, 'tr'),
(213, 4, '3f886409463a24a9a8f06ff36797e9ff.jpg', 5, 'tr'),
(215, 11, 'd0fcdb3e6f12be59b2ee7ef37450b4cd.jpg', 1, 'tr'),
(217, 11, '998142e2fe119cac8c7303cffb2309c5.jpg', 3, 'tr'),
(219, 11, '18833e625ecbb0c3aa789e2377e5541b.jpg', 5, 'tr'),
(220, 8, '9b580b40d5720aa85971530596175afe.jpg', 3, 'tr'),
(221, 8, 'a11eb52facb4985c9839634cd78d6d91.jpg', 4, 'tr'),
(223, 8, '969df6bc52a2ab6c5649b93614f2eb39.jpg', 1, 'tr'),
(224, 8, '45a198fc88d6e498fcfbb74b067b8f72.jpg', 5, 'tr'),
(225, 8, '7c6f5665be6f3d022496d36d57ae6e5b.jpg', 6, 'tr'),
(227, 8, '96f3805fc27ed52e47aa23d08251f943.jpg', 7, 'tr'),
(229, 8, 'e7e9ad25d253b8643096335f21408ce4.jpg', 8, 'tr'),
(231, 8, 'b7f1c7139e718d0533eab10ecb677c25.jpg', 2, 'tr'),
(233, 9, '62f7d1476869a5d190db3597a0c5db36.jpg', 3, 'tr'),
(234, 9, 'ed452b54323dd599701099886c68c331.jpg', 2, 'tr'),
(235, 9, 'f6c7c0ed01d6edcd458a0594054759a6.jpg', 4, 'tr'),
(236, 9, '0d31cfdaf93f13814713e98fa2e61bc7.jpg', 1, 'tr'),
(237, 9, 'd0e0583ff9649e153d4f1292d6b7aee1.jpg', 5, 'tr'),
(238, 9, '9c53141d2f0228034e1a011b9011991b.jpg', 6, 'tr'),
(240, 5, 'f5342b9964e8c86688f8c6dcd277028b.jpg', 4, 'tr'),
(244, 5, '7e8dd22361211a1a9c616fe504316539.jpg', 1, 'tr'),
(245, 5, '6040e68a132ee1a123e5230f300f9ca3.jpg', 2, 'tr'),
(247, 5, '5e4203bf15ef92aa22ca2c8dc0b4eaa7.jpg', 7, 'tr'),
(249, 5, '91201b8ebdfe37f8be00c7ccb61924e7.jpg', 8, 'tr'),
(250, 5, '6f2f013ae54cf1c437298a41434bf046.jpg', 3, 'tr'),
(253, 5, '926e9cc2bbc91b2dd8c7c2c9fac82f83.jpg', 5, 'tr'),
(254, 5, '8b22b755071bb044c1bcc27fff74ba99.jpg', 6, 'tr'),
(256, 6, 'a4290c2bffc1b95e6cf8670a950555f0.jpg', 1, 'tr'),
(257, 6, '00b8eee9b2181d9835b2bd40324623bf.jpg', 2, 'tr'),
(258, 6, 'b45f7592bd7f85f44bb5f0f50e5edfad.jpg', 3, 'tr'),
(259, 7, 'a2943f1c7cdde95af801e8ca43afb518.jpg', 1, 'tr'),
(260, 7, 'f99a314f20ca3f24cb3623d7c61c2f1e.jpg', 2, 'tr'),
(261, 7, 'ff24deab1dba85e8ebc0f3c97bb84d17.jpg', 3, 'tr'),
(263, 12, '049344f55c1b892ce3de5ddbae262713.png', 2, 'tr'),
(265, 12, '38b6400fa5fb938940d2377119a122aa.jpg', 11, 'tr'),
(266, 1, '5de5d8385d6338415096e5dc0f639104.jpg', 2, 'tr'),
(269, 3, 'b01b79588b1521eec5f3e2e6e14645f6.jpg', 1, 'tr'),
(270, 12, '48b4d0755dd538da3047aa30ddd55023.jpg', 5, 'tr'),
(271, 12, '94991299810507baa79d487ca9fcaaff.jpg', 6, 'tr'),
(272, 12, '81fe9583a353511b7abc52dc77812249.jpg', 3, 'tr'),
(273, 12, '347300871ecc7f0dd31521a174dc2d77.jpg', 4, 'tr'),
(274, 12, 'f1cd2d6cbd9e40534cb15bfc7fa9d059.jpg', 7, 'tr'),
(275, 12, 'd212ff09977296aba8b716fabbf9ff4d.jpg', 8, 'tr'),
(276, 12, 'c6562c9703f59fe0a3f99897ce03ca29.jpg', 9, 'tr'),
(278, 12, 'b35594ecee1583e4e7e9727beac322d1.jpg', 10, 'tr'),
(279, 12, 'b16c2ea725a5b2eced1363032c808299.jpg', 1, 'tr');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `references`
--

CREATE TABLE IF NOT EXISTS `references` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `detail` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `metaTitle` varchar(255) DEFAULT NULL,
  `metaDescription` text,
  `metaKeywords` text,
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `services`
--

INSERT INTO `services` (`id`, `title`, `slug`, `summary`, `detail`, `image`, `icon`, `metaTitle`, `metaDescription`, `metaKeywords`, `order`, `language`) VALUES
(3, 'Kentsel Dönüşüm', 'kentsel-donusum', 'Kentsel dönüşüm çözümleri, belirlenen alanlar içinde belirlenen yapı gereksinimlerini nitelik ve nicelik olarak karşılayamayan yapıların yıkılıp, baştan tasarlanmasıdır.', '<p>Kentsel d&ouml;n&uuml;ş&uuml;m &ccedil;&ouml;z&uuml;mleri, belirlenen alanlar i&ccedil;inde belirlenen yapı gereksinimlerini nitelik ve nicelik olarak karşılayamayan yapıların yıkılıp, başta Deprem Y&ouml;netmeliği olmak &uuml;zere bir&ccedil;ok g&uuml;ncel mevzuata uygun şekilde yeniden tasarlanması ve kent yaşamına adapte edilmesi hizmetlerini kapsar.</p>\n', '0cff0471f844cc0404191965a9c57427.jpg', '3263acd6c11172b7ff1f8ef44007b968.svg', '', '', '', 3, 'tr'),
(4, 'Mühendislik', 'muhendislik', 'Her türlü arazi, arsa ve binalar için mühendislik hizmetlerini kapsayan süreçler ve hizmetlerdir.', '<p>Her t&uuml;rl&uuml; arazi, arsa ve binalar i&ccedil;in m&uuml;hendislik hizmetlerini kapsayan s&uuml;re&ccedil;ler ve hizmetlerdir.</p>\n', 'b158e4d6c584545badcc4d565e72d5c4.jpg', '0eb6eaf851780eaa56e545906625ffc0.svg', '', '', '', 5, 'tr'),
(5, 'Mimarlık', 'mimarlik', 'Mimarlık veya mimari, binaları ve diğer fiziki yapıları (okul, gökdelen...vb.) tasarlama ve kurma sanatı ve bilimidir. ', '<p><strong>Mimarlık</strong>&nbsp;veya&nbsp;<strong>mimari</strong>, binaları ve diğer fiziki yapıları (okul, g&ouml;kdelen...vb.) tasarlama ve kurma sanatı ve bilimidir. Buna istinadende projelerimizi &ouml;zenle ortaya koymaya devam ediyoruz.</p>\n', '76f4b07d81406c94c31d9d21bbfa6c37.png', '3a96f113db84c92f6893ab1edc603542.svg', '', '', '', 6, 'tr'),
(6, 'Taahhüt ve İnşaat', 'taahhut-ve-insaat', 'İnşaatta ve taahhüt; Her türlü inşaatı yapmak üzere arsa almak , inşaatları tamamlayıp satmak,\r\nkentsel dönüşüm işleri yaapmak, müteahhitlik gibi işleri  kapsar.', '<p style="text-align: justify;">İnşaatta taahh&uuml;t; <strong>&nbsp;İNŞAAT</strong>&nbsp;her t&uuml;rl&uuml; inşaatı yapmak &uuml;zere arsa almak, inşaatları tamamlayıp satmak, arsa sahibi olan ger&ccedil;ek ve t&uuml;zel kişilerle anlaşmalar yapıp inşaatları yapıp teslim etmek yine bu kişiler ile m&uuml;lk(kat) karşılığı inşaatlar yapmak,şirketin &ccedil;alışma konusu i&ccedil;inde kalan ihale ve taahh&uuml;t proje işlerine katılmak,teminatlar yatırıp bu işleri almak ve sonu&ccedil;landırmak, inşaat projeleri,tadilat , tamirat,proje ve ihalelerine katılıp neticelendirmek, şirket amacını ve konusunu ger&ccedil;ekleştirmek i&ccedil;in gayrimenkul satın alarak inşa etmek ve pazarlamaktır.&nbsp;</p>\r\n', 'f9b41154cd43f15e8aa966ccd081889e.png', '164a408d0e282a9e7ae2b18bc6ce81ca.svg', '', '', '', 4, 'tr'),
(7, 'Arsamı Değerlendirmek İstiyorum', 'arsami-degerlendirmek-istiyorum', 'Arsa yatırımı daha uzun vadeli ve biraz daha bilgi ve tecrübe isteyen bir yatırımdır. ', '<p>Arsa yatırımı daha uzun vadeli ve&nbsp;<span style="line-height: 1.42857;">biraz daha bilgi ve tecr&uuml;be isteyen bir yatırımdır.&nbsp;</span><span style="line-height: 1.42857;">Arsa yatırımı yapacak kişi geleceği okuyabilen, şehre, insanlara &nbsp;ve arzın hareket y&ouml;n&uuml;ne bakabilen insanlardır. Bu konuda teklif istemek veya iletişime ge&ccedil;mek i&ccedil;in <a class="btn btn1" href="/arsami-degerlendir">tıklayın.</a></span></p>\r\n', '616838e7844e784682e22a391861bab2.png', 'eab790a2867994485a3fc5fb18b59814.svg', '', '', '', 2, 'tr'),
(8, 'Çözüm Ortaklığı', 'cozum-ortakligi', 'Her türlü arsa, arazi, müstakil ev ve daha bir çok projenize birlikte çözümler bulup, değerlendirmek ve kazanç sağlamak için buradayız.', '<p>Her t&uuml;rl&uuml; arsa, arazi, m&uuml;stakil ev ve daha bir &ccedil;ok projenize birlikte &ccedil;&ouml;z&uuml;mler bulup, değerlendirmek ve kazan&ccedil; sağlamak i&ccedil;in buradayız.</p>\n', '0034edbfb65259302de2162f5e2e0f05.png', '445223b4d1022aebb2bab16ad0a5dc0b.svg', '', '', '', 7, 'tr');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `socials`
--

CREATE TABLE IF NOT EXISTS `socials` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `socials`
--

INSERT INTO `socials` (`id`, `title`, `link`, `image`, `icon`, `order`) VALUES
(1, 'Facebook', 'https://www.facebook.com', NULL, 'fa fa-facebook', 1),
(3, 'Twitter', '#', NULL, 'fa fa-twitter', 2),
(4, 'Instagram', '#', NULL, 'fa fa-instagram', 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tapus`
--

CREATE TABLE IF NOT EXISTS `tapus` (
  `id` int(10) unsigned NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `town` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `pafta` varchar(255) NOT NULL,
  `ada` varchar(255) NOT NULL,
  `parsel` varchar(255) NOT NULL,
  `arsa_alani` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(255) NOT NULL,
  `viewed` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin_groups`
--
ALTER TABLE `admin_groups`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `admin_perms`
--
ALTER TABLE `admin_perms`
  ADD KEY `fk_admin_perms_groupId` (`groupId`);

--
-- Tablo için indeksler `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_admin_users_groupId` (`groupId`);

--
-- Tablo için indeksler `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `callyou`
--
ALTER TABLE `callyou`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_contents_parentId` (`parentId`);

--
-- Tablo için indeksler `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menus_parentId` (`parentId`);

--
-- Tablo için indeksler `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Tablo için indeksler `module_arguments`
--
ALTER TABLE `module_arguments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_module_arguments_module` (`module`);

--
-- Tablo için indeksler `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `project_images`
--
ALTER TABLE `project_images`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `references`
--
ALTER TABLE `references`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tapus`
--
ALTER TABLE `tapus`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin_groups`
--
ALTER TABLE `admin_groups`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Tablo için AUTO_INCREMENT değeri `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Tablo için AUTO_INCREMENT değeri `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- Tablo için AUTO_INCREMENT değeri `callyou`
--
ALTER TABLE `callyou`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Tablo için AUTO_INCREMENT değeri `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Tablo için AUTO_INCREMENT değeri `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- Tablo için AUTO_INCREMENT değeri `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- Tablo için AUTO_INCREMENT değeri `module_arguments`
--
ALTER TABLE `module_arguments`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- Tablo için AUTO_INCREMENT değeri `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Tablo için AUTO_INCREMENT değeri `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- Tablo için AUTO_INCREMENT değeri `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- Tablo için AUTO_INCREMENT değeri `project_images`
--
ALTER TABLE `project_images`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=280;
--
-- Tablo için AUTO_INCREMENT değeri `references`
--
ALTER TABLE `references`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- Tablo için AUTO_INCREMENT değeri `socials`
--
ALTER TABLE `socials`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Tablo için AUTO_INCREMENT değeri `tapus`
--
ALTER TABLE `tapus`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `admin_perms`
--
ALTER TABLE `admin_perms`
  ADD CONSTRAINT `admin_perms_ibfk_1` FOREIGN KEY (`groupId`) REFERENCES `admin_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_ibfk_1` FOREIGN KEY (`groupId`) REFERENCES `admin_groups` (`id`) ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `contents`
--
ALTER TABLE `contents`
  ADD CONSTRAINT `contents_ibfk_1` FOREIGN KEY (`parentId`) REFERENCES `contents` (`id`) ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_ibfk_1` FOREIGN KEY (`parentId`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `module_arguments`
--
ALTER TABLE `module_arguments`
  ADD CONSTRAINT `module_arguments_ibfk_1` FOREIGN KEY (`module`) REFERENCES `modules` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

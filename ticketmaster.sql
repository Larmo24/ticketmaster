-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 27, 2025 at 02:01 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ticketmaster`
--

-- --------------------------------------------------------

--
-- Table structure for table `card_details`
--

CREATE TABLE `card_details` (
  `card_id` int(11) NOT NULL,
  `cardholder_name` varchar(255) NOT NULL,
  `card_long_number` varbinary(256) NOT NULL,
  `card_start_date` date NOT NULL,
  `card_end_date` date NOT NULL,
  `card_type` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `card_details`
--

INSERT INTO `card_details` (`card_id`, `cardholder_name`, `card_long_number`, `card_start_date`, `card_end_date`, `card_type`, `customer_id`) VALUES
(5, 'John Doe', 0xaf3e0b689b72d5368ac6605a86e1beb99dc5f5c1660816db91f3a68dd4c2a54e, '2022-12-12', '2025-12-12', 'Mastercard', 1),
(6, 'Bob Green', 0x88328e9eeb7b2a60d89b7ede7b4f55219dc5f5c1660816db91f3a68dd4c2a54e, '2023-04-12', '2026-01-12', 'Visa', 2),
(7, 'Jane Bloomfield', 0x927ee4ec81c6c414a481e579c96942549dc5f5c1660816db91f3a68dd4c2a54e, '2023-09-12', '2026-08-12', 'Mastercard', 3),
(8, 'Claire Brown', 0x572b0d5776c5f17376b08cd4e12cdcff9dc5f5c1660816db91f3a68dd4c2a54e, '2023-07-24', '2026-04-12', 'Mastercard', 4),
(9, 'Peter McDonald', 0x4f015a2e1344c97698e12c5e836c71fd9dc5f5c1660816db91f3a68dd4c2a54e, '2023-01-15', '2026-01-12', 'Mastercard', 5),
(10, 'Gerard Fitzpatrick', 0xb50058733047fbb2ab4d16038bc5eb109dc5f5c1660816db91f3a68dd4c2a54e, '2024-07-15', '2026-08-12', 'Mastercard', 6),
(11, 'Stephen Windsor', 0xc3d92a9c8be3c3d71f445df4bf4729a79dc5f5c1660816db91f3a68dd4c2a54e, '2024-02-19', '2026-09-12', 'Visa', 7),
(12, 'Bronagh Scullion', 0xe714719f393e3c5c42b846b8e0dcd69f9dc5f5c1660816db91f3a68dd4c2a54e, '2023-02-19', '2026-01-12', 'Visa', 8),
(14, 'Michelle McLaughlin', 0xbc7667605c8fbddc0ab9e75f794c9f469dc5f5c1660816db91f3a68dd4c2a54e, '2023-03-22', '2026-02-12', 'Mastercard', 10);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `country_id`) VALUES
(1, 'Belfast', 1),
(2, 'London', 2),
(3, 'Edinburgh', 3),
(4, 'Cardiff', 4),
(5, 'Manchester', 2),
(6, 'Glasgow', 3);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'Northern Ireland'),
(2, 'England'),
(3, 'Scotland'),
(4, 'Wales');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `currency_name` varchar(255) NOT NULL,
  `currency_symbol` varchar(255) NOT NULL,
  `currency_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currency_id`, `currency_name`, `currency_symbol`, `currency_code`) VALUES
(1, 'Pounds Sterling', '£', 'GBP'),
(2, 'Euro', '€', 'EUR'),
(3, 'US Dollars', '$', 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_account_number` int(11) NOT NULL,
  `email` varchar(320) NOT NULL,
  `password` varbinary(60) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `customer_address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_account_number`, `email`, `password`, `last_name`, `first_name`, `phone_number`, `customer_address_id`) VALUES
(1, 1234, 'john-doe@gmail.com', 0x3837613130333665363939616138366432343361663837383235336561636633366363323362383832366136613738303163373634323834, 'Doe', 'John', '07785412542', 2),
(2, 2134, 'bob-green@hotmail.com', 0x3935323466333664366263356431333535343739356637353762363864646337383435653437336434666163333262373564623964616338, 'Green', 'Bob', '07741201230', 1),
(3, 5879, 'jane.bloomfield@gmail.com', 0x3062313566323661393561666336663635383331613034316136396435316562313839353338393331653531346530636335643433613461, 'Bloomfield', 'Jane', '02864312589', 4),
(4, 8971, 'claire.Brown@hotmail.com', 0x3363366139623538333033653762316330653764393765363563353239656338383536316636356130653031396135346362666436626333, 'Brown', 'Claire', '07739412056', 5),
(5, 5410, 'Peter-mcdonald@outlook.com', 0x3666623463313763313731656434633462313665613664663436396535643939326135663261633330346231383338623831653965356134, 'Mc Donald', 'Peter', '07741200123', 6),
(6, 7410, 'gerard.fitzpatrick@gmail.com', 0x3139666332306666313963643638643937303834613366613231663535366365303561613932356332393536316462323738653361623337, 'Fitzpatrick', 'Gerard', '07797365841', 3),
(7, 9863, 'stephen.windsor@gmail.com', 0x3931343761363566303434666539646538633761633031336230623361643932343538393837383431366163353637663339363863306539, 'Windsor', 'Stephen', '07725987431', 1),
(8, 5493, 'bronagh.scullion@gmail.com', 0x6662326263363231343637333235336464306232613232613632333535383031323531326533653266666532373065343039303666333235, 'Scullion', 'Bronagh', '07797315280', 4),
(10, 5841, 'MichelleMcLaughlin@outlook.com', 0x3066333935353735313564393134646635353934653934383635353533373461386461643631636238366537386333396536386231653132, 'McLaughlin', 'Michelle', '07741212012', 7);

-- --------------------------------------------------------

--
-- Table structure for table `customer_address`
--

CREATE TABLE `customer_address` (
  `customer_address_id` int(11) NOT NULL,
  `street_name` varchar(320) NOT NULL,
  `city` varchar(255) NOT NULL,
  `postcode` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_address`
--

INSERT INTO `customer_address` (`customer_address_id`, `street_name`, `city`, `postcode`, `region`) VALUES
(1, '12 Glengreen Street', 'Belfast ', 'BT56 9LE', 'Northern Ireland'),
(2, '45 Archibald Street', 'Manchester', 'M1 1BE', 'England'),
(3, '123 Elm Street', 'Manchester', 'M1 2AB', 'England'),
(4, '789 Oak Avenue', 'Belfast', 'BT3 9XX', 'Northern Ireland'),
(5, '456 Pine Road', 'Edinburgh', 'EH1 3AA', 'Scotland'),
(6, '101 Maple Lane', 'Leeds', 'LS1 7GH', 'England'),
(7, '13 Boggy Road', 'Manchester ', 'M1 1AG', 'England'),
(8, 'Craiglockhart Road', 'Edinburgh', 'EH1 1AD', 'Scotland');

-- --------------------------------------------------------

--
-- Table structure for table `customer_event`
--

CREATE TABLE `customer_event` (
  `customer_event_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_event`
--

INSERT INTO `customer_event` (`customer_event_id`, `customer_id`, `event_id`) VALUES
(1, 1, 2),
(2, 2, 3),
(3, 3, 5),
(4, 4, 6),
(5, 5, 3),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `event_type_id` int(11) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `event_date_time` datetime NOT NULL,
  `venue_id` int(11) NOT NULL,
  `availability` int(11) NOT NULL,
  `age_restrictions` varchar(255) NOT NULL,
  `promoter_information` text NOT NULL,
  `ticket_limit` int(11) NOT NULL,
  `event_subtype_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_type_id`, `event_name`, `event_date_time`, `venue_id`, `availability`, `age_restrictions`, `promoter_information`, `ticket_limit`, `event_subtype_id`) VALUES
(1, 3, 'John Bishop: 25 Years of Stand Up', '2025-10-23 20:00:00', 4, 2500, '14+', 'Comedy superstar John Bishop goes on tour. Comedian, TV presenter and actor John Bishop took a less travelled route into show business. Born and raised in Liverpool, the younger Bishop was a semi-professional footballer for Southport and Hyde United, following in the footsteps of older brother Eddie, who played professionally for Tranmere Rovers, Chester City and Crewe Alexandria.\r\n\r\nOff the pitch, John Bishop worked as a sales rep for a pharmaceutical company for 16 years, finally giving up the job in 2006 when his comedy career properly took off. Following his debut as a stand-up in 2000, Bishop quickly started to get noticed. In 2001, he was a finalist in the BBC New Comedy Awards, The Daily Telegraph Open Mic Awards and So You Think You’re Funny, winning the North West Comedian of The Year Award. The following year he won best newcomer from BBC Radio Merseysi', 6, 1),
(2, 4, 'Disney On Ice presents Road Trip Adventures', '2024-12-26 18:30:00', 2, 5000, 'No age restriction', 'Experience the excitement of Disney On Ice presents Road Trip Adventures as Mickey Mouse and his Disney friends take you on a wild ride to your favorite Disney destinations\r\n\r\nJoin Mary Poppins as she dazzles with \"Trip a Little Light Fantastic,\" sail away to the sun-drenched Motunui with Moana, and roam the Pride Lands alongside Simba on a safari. Prepare to be swept off your feet into Aladdin\'s princely parade and experience the magic of a larger-than-life carnival with Woody and Forky.', 6, 5),
(3, 1, 'The Corrs', '2024-11-11 18:00:00', 3, 100, '14+', 'The Corrs are Ireland’s first family of music, a multi-million selling sibling quartet who have conquered the world with a seamless blend of sleek pop rock, lush harmonies and Celtic folk trimmings. Comprising Andrea (lead vocals, piano, tin whistle), Sharon (violin, piano, vocals), Caroline (drums, piano, vocals) and Jim (guitar, keyboards, vocals), The Corrs have sold over 40 million albums since their debut Forgiven, Not Forgotten in 1995, spawning a dozen classic hit singles. An enchanting mix of traditional Celtic music with a pop rock twist, The Corrs have written some of the biggest songs of the last three decades. Forgiven, Not Forgotten gave us the incredible title track, the exquisite \'Heaven Knows\' and of course, arguably one of the biggest contemporary songs of the modern era, \'Runaway\'. Their second album, Talk On Corners led with \'I Never Loved You Anyway\', \'So Young\' and \'Only When I Sleep\' and is their biggest selling album to date.', 6, 4),
(4, 3, 'Harry Potter and the Cursed Child', '2025-02-12 14:00:00', 5, 800, 'No age restriction', 'There’s magic in every moment in Harry Potter and the Cursed Child, the most awarded play in history and “one of the most defining pop culture events of the decade” (Forbes). And now, the 8th Harry Potter story is bringing the magic back to London’s West End.\r\n\r\n19 years after Harry, Ron, and Hermione saved the wizarding world, they’re back on a most extraordinary new adventure – this time, joined by a brave new generation that has only just arrived at the legendary Hogwarts School of Witchcraft and Wizardry. Prepare for spectacular spells, a mind-blowing race through time, and an epic battle to stop mysterious forces, all while the future hangs in the balance.\r\n\r\nThis one-of-a-kind theatrical experience is packed with “thrilling theatricality and pulse-pounding storytelling” (The Hollywood Reporter). It will leave you “audibly wowed, cheering and gasping” (The Telegraph), as “visions of pure enchantment send shivers down your spine” (Rolling Stone). “It is out of this world, it’s magic, it’s a hit” (The Times).', 6, 2),
(5, 2, 'Stena Line Belfast Giants V Fife Flyers', '2024-12-07 19:00:00', 1, 500, 'No age restriction', 'Whether you’re a diehard hockey fan or a total newbie, a Belfast Giants home game is not to be missed.  \r\n\r\nThe only professional ice hockey team on the island of Ireland, the Giants compete in the Elite Ice Hockey League. \r\n\r\nOver the last two decades the team has captured the hearts of millions of fans at home and abroad, with their high-octane on-ice action and entertaining game night experience. \r\n\r\nTheir passionate fan base flock to The SSE Arena, Belfast for every Giants’ home game, where — as the team’s motto ‘in the Land of the Giants everyone is equal’ implies — everyone is welcome. \r\n\r\nJoin the ‘Teal Army’ this season, and enjoy one of Belfast’s biggest nights out. ', 9, 3),
(6, 1, 'Dua Lipa - Radical Optimism Tour', '2025-06-21 19:00:00', 6, 1000, '14+', 'here is simply no denying Dua Lipa’s pop culture power. or the singer\'s sophomore album she said in a press statement, “what I wanted to make was something that felt nostalgic but had something fresh and futuristic about it too”. Inspired by artists like Kylie Minogue, Madonna, Outkast and Gwen Stefani, Future Nostalgia saw its lead track, Don’t Start Now, become a massive worldwide hit (as did its second and third singles \'Physical\' and \'Break My Heart\', respectively) – before the album came out on 27 March 2020.\r\n\r\n2023 was a huge year for Dua, starring as Mermaid Barbie in the box office smash hit Barbie. Her track \'Dance The Night Away\' also featured on the film, but beyond the big screen the song caused a frenzy of its own, reaching the Top 10 all across the world and hitting No.1 in Argentina, Belgium, Japan the U.S and beyond. Dua performed the track at the 66th Annual Grammy Awards, where it was nominated for both Song of the Year and Best Song Written for Visual Media.\r\n\r\nLater in the year she released the single \'Houdini\', the lead single from her forthcoming album Radical Optimism, released in May 2024. The track was produced by Danny L Harle and Tame Impala\'s Kevin Parker.\r\n\r\n2024 is shaping up to be even bigger. In January she released \'Training Session\', the album\'s second single, as well as starring in an ensemble cast in the spy action comedy film Argylle. In March she was announced as a Glastonbury Festival headliner and announced arena dates in Europe.', 6, 4),
(7, 2, 'Friendship Four - Championship Game', '2024-12-16 18:00:00', 1, 2750, 'No age restriction', 'Held annually in Belfast since 2015, the Friendship Four is the first and only National Collegiate Athletic Association (NCAA) Division One ice hockey tournament to take place outside North America. The high-profile four-game tournament is designed to promote education, social welfare, and community interaction, building on the sister cities agreement between Belfast and Boston, which was signed a decade ago.  ', 9, 3);

-- --------------------------------------------------------

--
-- Table structure for table `event_subtype`
--

CREATE TABLE `event_subtype` (
  `event_subtype_id` int(11) NOT NULL,
  `event_subtype_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event_subtype`
--

INSERT INTO `event_subtype` (`event_subtype_id`, `event_subtype_name`) VALUES
(1, 'Stand up comedy show'),
(2, 'Theatre production'),
(3, 'Ice Hocky '),
(4, 'Music Concert'),
(5, 'Theatre production on ice');

-- --------------------------------------------------------

--
-- Table structure for table `event_ticket`
--

CREATE TABLE `event_ticket` (
  `event_ticket_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `ticket_type_id` int(11) NOT NULL,
  `available_quantity` int(11) NOT NULL,
  `ticket_price` decimal(10,2) NOT NULL,
  `currency_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event_ticket`
--

INSERT INTO `event_ticket` (`event_ticket_id`, `event_id`, `ticket_type_id`, `available_quantity`, `ticket_price`, `currency_id`) VALUES
(1, 2, 3, 500, '28.00', 1),
(2, 2, 2, 385, '30.00', 1),
(3, 2, 1, 200, '40.00', 1),
(4, 1, 1, 500, '40.00', 1),
(5, 1, 2, 300, '32.00', 1),
(6, 1, 3, 150, '28.00', 1),
(7, 3, 1, 400, '50.00', 1),
(8, 3, 2, 500, '35.00', 1),
(9, 3, 3, 100, '30.00', 1),
(10, 6, 1, 400, '200.00', 1),
(11, 6, 2, 3500, '32.00', 1),
(12, 6, 3, 400, '28.00', 1),
(13, 5, 1, 200, '40.00', 1),
(16, 5, 2, 1500, '30.00', 1),
(17, 5, 3, 200, '25.00', 1),
(18, 7, 3, 200, '17.00', 1),
(19, 7, 2, 1000, '23.00', 1),
(20, 7, 1, 200, '35.00', 1),
(21, 4, 3, 250, '25.00', 1),
(22, 4, 2, 500, '30.00', 1),
(23, 4, 1, 100, '38.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `event_type`
--

CREATE TABLE `event_type` (
  `event_type_id` int(11) NOT NULL,
  `event_type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event_type`
--

INSERT INTO `event_type` (`event_type_id`, `event_type_name`) VALUES
(1, 'Music'),
(2, 'Sport'),
(3, 'Art_Theatre_Comedy'),
(4, 'Family_&_Attractions');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `image_id` int(11) NOT NULL,
  `image_URL` varchar(2500) NOT NULL,
  `image_alt_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`image_id`, `image_URL`, `image_alt_text`) VALUES
(1, 'https://www.shutterstock.com/image-photo/empty-main-stage-big-music-festival-1384648682', 'Stock image representing Main Stage Music Arena'),
(2, 'https://www.alamy.com/stock-photo-stage-equipment-at-concert-72494591.html?imageid=E4595B33-E525-4E68-BD7C-A9CC149FA67C&p=16399&pn=1&searchId=010e66af6f902ad449c41a74e66b13ff&searchtype=0', 'Stock image representing Back Stage Music Arena'),
(3, 'https://as1.ftcdn.net/v2/jpg/08/62/47/90/1000_F_862479040_EREI9d2ygfU6GrbfSlfKZ29mDFmE8lvj.jpg', 'Main Stage Theatre Image '),
(4, 'https://as2.ftcdn.net/v2/jpg/10/35/27/27/1000_F_1035272755_qSsxdMZj4bFeeOK4wWD9QGvxZOqkiuwU.jpg', 'Theatre Seating Image ');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date_placed` date NOT NULL,
  `total_price_paid` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `date_placed`, `total_price_paid`) VALUES
(1, 8, '2024-12-17', '80.00'),
(2, 1, '2024-12-17', '70.00'),
(3, 3, '2024-12-18', '50.00'),
(4, 4, '2024-12-19', '64.00'),
(5, 5, '2024-12-20', '100.00'),
(6, 6, '2024-12-21', '110.00'),
(7, 7, '2024-12-22', '46.00'),
(8, 2, '2024-11-15', '60.00'),
(14, 10, '2024-11-30', '80.00');

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `event_ticket_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`order_item_id`, `order_id`, `payment_method_id`, `event_ticket_id`, `quantity`) VALUES
(1, 8, 3, 2, 2),
(3, 1, 3, 3, 2),
(5, 2, 2, 8, 2),
(7, 3, 3, 17, 2),
(9, 4, 6, 11, 2),
(11, 5, 1, 7, 2),
(13, 6, 4, 1, 2),
(15, 7, 3, 2, 2),
(21, 14, 3, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `payment_status_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `order_id`, `payment_method_id`, `payment_status_id`, `currency_id`) VALUES
(1, 1, 3, 1, 1),
(2, 2, 2, 1, 1),
(3, 3, 3, 1, 1),
(4, 4, 6, 1, 1),
(5, 5, 1, 1, 1),
(6, 6, 4, 1, 1),
(7, 7, 3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `payment_method_id` int(11) NOT NULL,
  `payment_method_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`payment_method_id`, `payment_method_name`) VALUES
(1, 'Paypal'),
(2, 'Credit/Debit Card'),
(3, 'Apple Pay'),
(4, 'Google Pay'),
(5, 'Bank Transfer'),
(6, 'Klarna');

-- --------------------------------------------------------

--
-- Table structure for table `payment_status`
--

CREATE TABLE `payment_status` (
  `payment_status_id` int(11) NOT NULL,
  `payment_status_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_status`
--

INSERT INTO `payment_status` (`payment_status_id`, `payment_status_name`) VALUES
(1, 'Paid'),
(2, 'Pending'),
(3, 'Completed'),
(4, 'Cancelled'),
(5, 'Failed');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `profile_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `giftcard_balance` decimal(10,2) NOT NULL,
  `accessibility_reqs` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`profile_id`, `customer_id`, `giftcard_balance`, `accessibility_reqs`) VALUES
(1, 1, '10.00', 1),
(2, 2, '0.00', 1),
(3, 3, '0.00', 0),
(4, 4, '0.00', 0),
(5, 5, '15.00', 0),
(6, 6, '0.00', 0),
(7, 7, '0.00', 1),
(8, 8, '5.00', 0),
(10, 10, '0.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE `seat` (
  `seat_id` int(11) NOT NULL,
  `venue_id` int(11) NOT NULL,
  `seat_number` int(11) NOT NULL,
  `row` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seat`
--

INSERT INTO `seat` (`seat_id`, `venue_id`, `seat_number`, `row`, `section`) VALUES
(1, 1, 55, 'A', 'M31'),
(2, 1, 48, 'A', 'Level 1'),
(3, 2, 104, 'B', 'Level 3'),
(4, 2, 67, 'B', 'Balcony'),
(5, 3, 14, 'C', 'Balcony'),
(6, 3, 14, 'D', 'Balcony'),
(7, 4, 32, 'F', 'Level 2'),
(8, 4, 32, 'F', 'Level 2'),
(9, 5, 12, 'A', 'Level 1'),
(10, 5, 12, 'B', 'Level 1'),
(11, 2, 68, 'B', 'Balcony');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL,
  `seat_id` int(11) NOT NULL,
  `order_item_id` int(11) NOT NULL,
  `ticket_reference` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticket_id`, `seat_id`, `order_item_id`, `ticket_reference`) VALUES
(1, 1, 11, '24HFDO'),
(2, 2, 11, '24JUFD'),
(3, 3, 1, 'HU71J'),
(4, 4, 1, 'HU54G'),
(17, 3, 21, 'AD542'),
(18, 4, 21, 'HUT742'),
(19, 11, 21, 'OTA371');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_type`
--

CREATE TABLE `ticket_type` (
  `ticket_type_id` int(11) NOT NULL,
  `ticket_type_name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ticket_type`
--

INSERT INTO `ticket_type` (`ticket_type_id`, `ticket_type_name`, `description`) VALUES
(1, 'VIP', 'VIP seating with exclusive access'),
(2, 'General Admission', 'General admission with seating'),
(3, 'Early Bird', 'Discounted ticket for early purchase');

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--

CREATE TABLE `venue` (
  `venue_id` int(11) NOT NULL,
  `venue_name` varchar(255) NOT NULL,
  `address` varchar(320) NOT NULL,
  `city_id` int(11) NOT NULL,
  `venue_type_id` int(11) NOT NULL,
  `seating_plan` varchar(2500) NOT NULL,
  `capacity` int(11) NOT NULL,
  `venue_website` varchar(2500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `venue`
--

INSERT INTO `venue` (`venue_id`, `venue_name`, `address`, `city_id`, `venue_type_id`, `seating_plan`, `capacity`, `venue_website`) VALUES
(1, 'SSE Arena', '2 Queens Quay', 1, 2, 'https://www.ssearenabelfast.com/your-visit/seating-maps', 11000, 'https://www.ssearenabelfast.com/'),
(2, 'O2 Arena ', 'Peninsula Square, SE10 0DX', 2, 2, 'https://3ddigitalvenue.com/3dmap/clients/the-o2-arena-uk/', 20000, 'https://www.theo2.co.uk/'),
(3, 'AO Arena', 'Victoria Station Approach, Hunts Bank, Cheetham Hill, M3 1AR', 5, 2, 'https://www.ao-arena.com/assets/doc/AO-ARENA-MAP-d1f5c29a43.pdf', 21000, 'https://www.ao-arena.com/'),
(4, 'Utilita Arena', 'Mary Ann Street, CF10 2EQ', 4, 2, 'https://www.utilitaarenacardiff.co.uk/seating-plans', 5000, 'https://www.utilitaarenacardiff.co.uk/'),
(5, 'Palace Theatre', '113 Shaftesbury Ave, W1D 5AY', 2, 3, 'https://theatre.ticketmaster.co.uk/book/17YYA-harry-potter-and-the-cursed-child/#perf=17YYA-59Z&date=2024-11-16&time=2.00PM', 1400, 'https://palacetheatre.co.uk/'),
(6, 'Wembley Stadium ', 'Wembley HA9 0WS', 2, 1, 'https://www.wembleystadium.com/plan-your-visit/stadium-guide/view-from-your-seat', 90000, 'https://www.wembleystadium.com/'),
(10, 'The Design Museum', '224-238 Kensington High St', 2, 3, 'https://www.london-theatreland.co.uk/theatres/design-museum/seatingchart.php', 750, 'https://designmuseum.org/'),
(11, 'Marble Arch Place', '6 Marble Arch', 2, 3, 'https://frameless.com/faqs/', 450, 'https://frameless.com/'),
(12, 'O2 Ritz Manchester', 'Whitworth St', 5, 2, 'https://gigtix.uk/map/o2-ritz-manchester-seating-map/', 1500, 'https://www.academymusicgroup.com/companyo2ritzmanchester/');

-- --------------------------------------------------------

--
-- Table structure for table `venue_image`
--

CREATE TABLE `venue_image` (
  `venue_image_id` int(11) NOT NULL,
  `venue_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `venue_image`
--

INSERT INTO `venue_image` (`venue_image_id`, `venue_id`, `image_id`) VALUES
(1, 6, 1),
(2, 6, 2),
(3, 3, 1),
(4, 3, 2),
(5, 5, 3),
(6, 5, 4),
(7, 1, 1),
(8, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `venue_type`
--

CREATE TABLE `venue_type` (
  `venue_type_id` int(11) NOT NULL,
  `venue_type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `venue_type`
--

INSERT INTO `venue_type` (`venue_type_id`, `venue_type_name`) VALUES
(1, 'Stadium'),
(2, 'Arena'),
(3, 'Theatre'),
(4, 'Concert Hall'),
(5, 'Opera House'),
(6, 'Music Festival Grounds');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `card_details`
--
ALTER TABLE `card_details`
  ADD PRIMARY KEY (`card_id`),
  ADD KEY `FK_customer_customer_id2` (`customer_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `FK_country_country_id` (`country_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `FK_customer_adress_customer_address_id` (`customer_address_id`);

--
-- Indexes for table `customer_address`
--
ALTER TABLE `customer_address`
  ADD PRIMARY KEY (`customer_address_id`);

--
-- Indexes for table `customer_event`
--
ALTER TABLE `customer_event`
  ADD PRIMARY KEY (`customer_event_id`),
  ADD KEY `FK_customer_customer_id5` (`customer_id`),
  ADD KEY `FK_event_event_id2` (`event_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `FK_event_type_event_type_id` (`event_type_id`),
  ADD KEY `FK_venue_venue_id` (`venue_id`),
  ADD KEY `FK_event_subtype_event_subtype_id` (`event_subtype_id`);

--
-- Indexes for table `event_subtype`
--
ALTER TABLE `event_subtype`
  ADD PRIMARY KEY (`event_subtype_id`);

--
-- Indexes for table `event_ticket`
--
ALTER TABLE `event_ticket`
  ADD PRIMARY KEY (`event_ticket_id`),
  ADD KEY `FK_event_event_id` (`event_id`),
  ADD KEY `FK_ticket_type_ticket_type_id3` (`ticket_type_id`),
  ADD KEY `FK_currency_currency_id` (`currency_id`);

--
-- Indexes for table `event_type`
--
ALTER TABLE `event_type`
  ADD PRIMARY KEY (`event_type_id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `FK_customer_customer_id4` (`customer_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `FK_orders_order_id2` (`order_id`),
  ADD KEY `FK_event_ticket_id` (`event_ticket_id`),
  ADD KEY `FK_payment_method_payment_method_id3` (`payment_method_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `FK_payment_status_payment_status_id` (`payment_status_id`),
  ADD KEY `FK_payment_method_payment_method_id` (`payment_method_id`),
  ADD KEY `FK_orders_order_id` (`order_id`),
  ADD KEY `FK_currency_currency_id2` (`currency_id`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`payment_method_id`);

--
-- Indexes for table `payment_status`
--
ALTER TABLE `payment_status`
  ADD PRIMARY KEY (`payment_status_id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`profile_id`),
  ADD KEY `FK_customer_customer_id3` (`customer_id`);

--
-- Indexes for table `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`seat_id`),
  ADD KEY `FK_venue_venue_id3` (`venue_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `FK_seat_seat_id` (`seat_id`),
  ADD KEY `FK_order_item_order_item_id` (`order_item_id`);

--
-- Indexes for table `ticket_type`
--
ALTER TABLE `ticket_type`
  ADD PRIMARY KEY (`ticket_type_id`);

--
-- Indexes for table `venue`
--
ALTER TABLE `venue`
  ADD PRIMARY KEY (`venue_id`),
  ADD KEY `FK_type_of_venue_type_of_venue_id` (`venue_type_id`),
  ADD KEY `FK_city_city_id` (`city_id`);

--
-- Indexes for table `venue_image`
--
ALTER TABLE `venue_image`
  ADD PRIMARY KEY (`venue_image_id`),
  ADD KEY `FK_venue_venue_id2` (`venue_id`),
  ADD KEY `FK_image_image_id` (`image_id`);

--
-- Indexes for table `venue_type`
--
ALTER TABLE `venue_type`
  ADD PRIMARY KEY (`venue_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `card_details`
--
ALTER TABLE `card_details`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer_address`
--
ALTER TABLE `customer_address`
  MODIFY `customer_address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customer_event`
--
ALTER TABLE `customer_event`
  MODIFY `customer_event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `event_subtype`
--
ALTER TABLE `event_subtype`
  MODIFY `event_subtype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `event_ticket`
--
ALTER TABLE `event_ticket`
  MODIFY `event_ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `event_type`
--
ALTER TABLE `event_type`
  MODIFY `event_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `payment_method_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_status`
--
ALTER TABLE `payment_status`
  MODIFY `payment_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `seat`
--
ALTER TABLE `seat`
  MODIFY `seat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `ticket_type`
--
ALTER TABLE `ticket_type`
  MODIFY `ticket_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `venue`
--
ALTER TABLE `venue`
  MODIFY `venue_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `venue_image`
--
ALTER TABLE `venue_image`
  MODIFY `venue_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `venue_type`
--
ALTER TABLE `venue_type`
  MODIFY `venue_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `card_details`
--
ALTER TABLE `card_details`
  ADD CONSTRAINT `FK_customer_customer_id2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `FK_region_region_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `FK_customer_adress_customer_address_id` FOREIGN KEY (`customer_address_id`) REFERENCES `customer_address` (`customer_address_id`);

--
-- Constraints for table `customer_event`
--
ALTER TABLE `customer_event`
  ADD CONSTRAINT `FK_customer_customer_id5` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `FK_event_event_id2` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`);

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `FK_event_subtype_event_subtype_id` FOREIGN KEY (`event_subtype_id`) REFERENCES `event_subtype` (`event_subtype_id`),
  ADD CONSTRAINT `FK_event_type_event_type_id` FOREIGN KEY (`event_type_id`) REFERENCES `event_type` (`event_type_id`),
  ADD CONSTRAINT `FK_venue_venue_id` FOREIGN KEY (`venue_id`) REFERENCES `venue` (`venue_id`);

--
-- Constraints for table `event_ticket`
--
ALTER TABLE `event_ticket`
  ADD CONSTRAINT `FK_currency_currency_id` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`currency_id`),
  ADD CONSTRAINT `FK_event_event_id` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`),
  ADD CONSTRAINT `FK_ticket_type_ticket_type_id3` FOREIGN KEY (`ticket_type_id`) REFERENCES `ticket_type` (`ticket_type_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_customer_customer_id4` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `FK_event_ticket_id` FOREIGN KEY (`event_ticket_id`) REFERENCES `event_ticket` (`event_ticket_id`),
  ADD CONSTRAINT `FK_orders_order_id2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `FK_payment_method_payment_method_id3` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_method` (`payment_method_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `FK_currency_currency_id2` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`currency_id`),
  ADD CONSTRAINT `FK_orders_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `FK_payment_method_payment_method_id` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_method` (`payment_method_id`),
  ADD CONSTRAINT `FK_payment_status_payment_status_id` FOREIGN KEY (`payment_status_id`) REFERENCES `payment_status` (`payment_status_id`);

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `FK_customer_customer_id3` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `seat`
--
ALTER TABLE `seat`
  ADD CONSTRAINT `FK_venue_venue_id3` FOREIGN KEY (`venue_id`) REFERENCES `venue` (`venue_id`);

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `FK_order_item_order_item_id` FOREIGN KEY (`order_item_id`) REFERENCES `order_item` (`order_item_id`),
  ADD CONSTRAINT `FK_seat_seat_id` FOREIGN KEY (`seat_id`) REFERENCES `seat` (`seat_id`);

--
-- Constraints for table `venue`
--
ALTER TABLE `venue`
  ADD CONSTRAINT `FK_city_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`),
  ADD CONSTRAINT `FK_type_of_venue_type_of_venue_id` FOREIGN KEY (`venue_type_id`) REFERENCES `venue_type` (`venue_type_id`);

--
-- Constraints for table `venue_image`
--
ALTER TABLE `venue_image`
  ADD CONSTRAINT `FK_image_image_id` FOREIGN KEY (`image_id`) REFERENCES `image` (`image_id`),
  ADD CONSTRAINT `FK_venue_venue_id2` FOREIGN KEY (`venue_id`) REFERENCES `venue` (`venue_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

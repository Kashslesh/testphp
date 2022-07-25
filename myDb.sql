-- put in ./dump directory

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `users` (
      `id` int(11) NOT NULL AUTO_INCREMENT,
      `first_name` varchar(255) NULL,
      `last_name` varchar(255) NULL,
      PRIMARY KEY (ID)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `users` (`first_name`, `last_name`) VALUES
('William','' ),
('TestCreator', 'TestCreator'),
('Labinot', 'AVDIU'),
('ALBERTO', 'CASU'),
(''	, ''),
('', ''),
('Eddy', 'BOUGACI'),
('Labinot', 'AVDIU'),
('Labinottests', 'AVDIU'),
('FREE', 'FREE'),
('TestCreator', 'TestCreator'),
('TestCreator2', 'TestCreator2'),
('TestCreator', 'TestCreator'),
('Arnaud', 'de champs'),
('thomas', 'zwercher'),
('LabinotTest', 'LabinotTest'),
('Charles', 'Viard'),
(''	, ''),
('thomas', 'zwercher'),
('thomas', 'zwercher'),
(''	, ''),
('Kurt', 'Von Luis'),
('Dede', 'Alias la brick '),
('Anthony', 'Girard'),
('Jason', 'Statham'),
('Charles', 'Viard'),
(''	, '' );
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

CREATE TABLE `professions` (
     `user_id` int(11) NOT NULL,
     `profession` varchar(255) NOT NULL
);


INSERT INTO `professions` (`user_id`, `profession`) VALUES
(2,  'actor'),
(3,  'actress'),
(4,  'air traffic controller'),
(5, 'architect'),
(6, 'artist'),
(7,  'attorney'),
(8,  'banker'),
(9,  'bartender'),
(10,  'barber'),
(11,  'bookkeeper'),
(12,  'builder'),
(13,  'businessman'),
(14, 'businesswoman'),
(15,  'businessperson'),
(16,  'butcher'),
(17,  'carpenter'),
(18	, 'cashier'),
(19,  'chef'),
(20,  'coach'),
(21	, 'dental hygienist'),
(22, 'dentist'),
(23, 'designer'),
(24,  'developer'),
(25,  'dietician'),
(26,  'doctor'),
(27	, 'economist' );

CREATE TABLE `users_actions` (
      `user_id` int(11) NOT NULL,
      `activity` BOOLEAN  NOT NULL
);
INSERT INTO `users_actions` (`user_id`, `activity`) VALUES
(2,  TRUE),
(3,  TRUE),
(4,  TRUE),
(5, FALSE),
(6, FALSE),
(7,  TRUE),
(8,  TRUE),
(9,  TRUE),
(10,  TRUE),
(11,  TRUE),
(12,  TRUE),
(13,  TRUE),
(14, TRUE),
(15,  TRUE),
(16,  TRUE),
(17,  TRUE),
(18	, FALSE),
(19,  TRUE),
(20,  TRUE),
(21	, FALSE),
(22, TRUE),
(23, TRUE),
(24,  TRUE),
(25,  TRUE),
(26,  TRUE),
(27	, TRUE );
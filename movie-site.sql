-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 20, 2020 at 06:55 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie-site`
--

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Action', NULL, NULL),
(2, 'Adventure', NULL, NULL),
(3, 'Animation', NULL, NULL),
(4, 'Biography', NULL, NULL),
(5, 'Comedy', NULL, NULL),
(6, 'Crime', NULL, NULL),
(7, 'Drama', NULL, NULL),
(8, 'Family', NULL, NULL),
(9, 'Fantasy', NULL, NULL),
(10, 'Film-Noir', NULL, NULL),
(11, 'History', NULL, NULL),
(12, 'Horror', NULL, NULL),
(13, 'Music', NULL, NULL),
(14, 'Musical', NULL, NULL),
(15, 'Mystery', NULL, NULL),
(16, 'Romance', NULL, NULL),
(17, 'Sci-Fi', NULL, NULL),
(18, 'Sport', NULL, NULL),
(19, 'Thriller', NULL, NULL),
(20, 'War', NULL, NULL),
(21, 'Western', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `genre_movie`
--

CREATE TABLE `genre_movie` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `genre_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genre_movie`
--

INSERT INTO `genre_movie` (`id`, `movie_id`, `genre_id`, `created_at`, `updated_at`) VALUES
(247, 1, 6, NULL, NULL),
(248, 1, 7, NULL, NULL),
(249, 2, 7, NULL, NULL),
(250, 3, 4, NULL, NULL),
(251, 3, 7, NULL, NULL),
(252, 3, 11, NULL, NULL),
(253, 4, 4, NULL, NULL),
(254, 4, 7, NULL, NULL),
(255, 4, 18, NULL, NULL),
(256, 5, 7, NULL, NULL),
(257, 5, 16, NULL, NULL),
(258, 5, 20, NULL, NULL),
(259, 6, 7, NULL, NULL),
(260, 6, 15, NULL, NULL),
(261, 7, 7, NULL, NULL),
(262, 7, 11, NULL, NULL),
(263, 7, 16, NULL, NULL),
(264, 8, 2, NULL, NULL),
(265, 8, 8, NULL, NULL),
(266, 8, 9, NULL, NULL),
(267, 9, 7, NULL, NULL),
(268, 10, 2, NULL, NULL),
(269, 10, 4, NULL, NULL),
(270, 10, 7, NULL, NULL),
(271, 11, 15, NULL, NULL),
(272, 11, 16, NULL, NULL),
(273, 11, 19, NULL, NULL),
(274, 12, 12, NULL, NULL),
(275, 12, 15, NULL, NULL),
(276, 12, 19, NULL, NULL),
(277, 13, 6, NULL, NULL),
(278, 13, 7, NULL, NULL),
(279, 14, 6, NULL, NULL),
(280, 14, 7, NULL, NULL),
(281, 14, 19, NULL, NULL),
(282, 15, 7, NULL, NULL),
(283, 15, 10, NULL, NULL),
(284, 16, 7, NULL, NULL),
(285, 16, 16, NULL, NULL),
(286, 17, 4, NULL, NULL),
(287, 17, 7, NULL, NULL),
(288, 17, 8, NULL, NULL),
(289, 18, 7, NULL, NULL),
(290, 19, 6, NULL, NULL),
(291, 19, 7, NULL, NULL),
(292, 19, 14, NULL, NULL),
(293, 20, 1, NULL, NULL),
(294, 20, 2, NULL, NULL),
(295, 20, 9, NULL, NULL),
(296, 21, 2, NULL, NULL),
(297, 21, 17, NULL, NULL),
(298, 22, 8, NULL, NULL),
(299, 22, 17, NULL, NULL),
(300, 23, 6, NULL, NULL),
(301, 23, 7, NULL, NULL),
(302, 23, 19, NULL, NULL),
(303, 24, 7, NULL, NULL),
(304, 24, 15, NULL, NULL),
(305, 24, 19, NULL, NULL),
(306, 25, 2, NULL, NULL),
(307, 25, 7, NULL, NULL),
(308, 25, 20, NULL, NULL),
(309, 26, 5, NULL, NULL),
(310, 26, 14, NULL, NULL),
(311, 26, 16, NULL, NULL),
(312, 27, 7, NULL, NULL),
(313, 27, 8, NULL, NULL),
(314, 27, 9, NULL, NULL),
(315, 28, 5, NULL, NULL),
(316, 29, 5, NULL, NULL),
(317, 29, 13, NULL, NULL),
(318, 29, 16, NULL, NULL),
(319, 30, 2, NULL, NULL),
(320, 30, 7, NULL, NULL),
(321, 30, 11, NULL, NULL),
(322, 31, 7, NULL, NULL),
(323, 31, 15, NULL, NULL),
(324, 31, 20, NULL, NULL),
(325, 32, 4, NULL, NULL),
(326, 32, 7, NULL, NULL),
(327, 32, 11, NULL, NULL),
(328, 33, 2, NULL, NULL),
(329, 33, 7, NULL, NULL),
(330, 33, 9, NULL, NULL),
(331, 34, 1, NULL, NULL),
(332, 34, 2, NULL, NULL),
(333, 34, 7, NULL, NULL),
(334, 35, 7, NULL, NULL),
(335, 35, 16, NULL, NULL),
(336, 36, 7, NULL, NULL),
(337, 36, 16, NULL, NULL),
(338, 36, 20, NULL, NULL),
(339, 37, 7, NULL, NULL),
(340, 37, 20, NULL, NULL),
(341, 38, 7, NULL, NULL),
(342, 38, 21, NULL, NULL),
(343, 39, 1, NULL, NULL),
(344, 39, 2, NULL, NULL),
(345, 40, 7, NULL, NULL),
(346, 40, 18, NULL, NULL),
(347, 41, 7, NULL, NULL),
(348, 42, 5, NULL, NULL),
(349, 42, 16, NULL, NULL),
(350, 43, 6, NULL, NULL),
(351, 43, 7, NULL, NULL),
(352, 44, 7, NULL, NULL),
(353, 44, 14, NULL, NULL),
(354, 44, 16, NULL, NULL),
(355, 45, 7, NULL, NULL),
(356, 45, 16, NULL, NULL),
(357, 45, 20, NULL, NULL),
(358, 46, 7, NULL, NULL),
(359, 46, 8, NULL, NULL),
(360, 46, 14, NULL, NULL),
(361, 47, 6, NULL, NULL),
(362, 47, 7, NULL, NULL),
(363, 47, 17, NULL, NULL),
(364, 48, 7, NULL, NULL),
(365, 48, 16, NULL, NULL),
(366, 48, 20, NULL, NULL),
(367, 49, 2, NULL, NULL),
(368, 49, 7, NULL, NULL),
(369, 49, 21, NULL, NULL),
(370, 50, 2, NULL, NULL),
(371, 50, 7, NULL, NULL),
(372, 50, 19, NULL, NULL),
(373, 51, 4, NULL, NULL),
(374, 51, 7, NULL, NULL),
(375, 51, 20, NULL, NULL),
(376, 52, 4, NULL, NULL),
(377, 52, 6, NULL, NULL),
(378, 52, 7, NULL, NULL),
(379, 53, 2, NULL, NULL),
(380, 53, 7, NULL, NULL),
(381, 53, 21, NULL, NULL),
(382, 54, 21, NULL, NULL),
(383, 55, 5, NULL, NULL),
(384, 55, 7, NULL, NULL),
(385, 55, 16, NULL, NULL),
(386, 56, 7, NULL, NULL),
(387, 56, 20, NULL, NULL),
(388, 57, 7, NULL, NULL),
(389, 57, 19, NULL, NULL),
(390, 57, 21, NULL, NULL),
(391, 58, 4, NULL, NULL),
(392, 58, 7, NULL, NULL),
(393, 58, 11, NULL, NULL),
(394, 59, 2, NULL, NULL),
(395, 59, 7, NULL, NULL),
(396, 59, 21, NULL, NULL),
(397, 60, 1, NULL, NULL),
(398, 60, 2, NULL, NULL),
(399, 60, 17, NULL, NULL),
(400, 61, 12, NULL, NULL),
(401, 62, 4, NULL, NULL),
(402, 62, 7, NULL, NULL),
(403, 62, 13, NULL, NULL),
(404, 63, 4, NULL, NULL),
(405, 63, 6, NULL, NULL),
(406, 63, 7, NULL, NULL),
(407, 64, 7, NULL, NULL),
(408, 64, 20, NULL, NULL),
(409, 65, 7, NULL, NULL),
(410, 65, 20, NULL, NULL),
(411, 66, 1, NULL, NULL),
(412, 66, 4, NULL, NULL),
(413, 66, 6, NULL, NULL),
(414, 67, 1, NULL, NULL),
(415, 67, 6, NULL, NULL),
(416, 67, 7, NULL, NULL),
(417, 68, 5, NULL, NULL),
(418, 68, 7, NULL, NULL),
(419, 68, 16, NULL, NULL),
(420, 69, 5, NULL, NULL),
(421, 69, 16, NULL, NULL),
(422, 70, 7, NULL, NULL),
(423, 70, 16, NULL, NULL),
(424, 71, 7, NULL, NULL),
(425, 72, 5, NULL, NULL),
(426, 72, 7, NULL, NULL),
(427, 73, 7, NULL, NULL),
(428, 74, 5, NULL, NULL),
(429, 74, 16, NULL, NULL),
(430, 75, 6, NULL, NULL),
(431, 75, 7, NULL, NULL),
(432, 75, 19, NULL, NULL),
(433, 76, 7, NULL, NULL),
(434, 76, 21, NULL, NULL),
(435, 77, 7, NULL, NULL),
(436, 77, 21, NULL, NULL),
(437, 78, 7, NULL, NULL),
(438, 78, 11, NULL, NULL),
(439, 79, 6, NULL, NULL),
(440, 79, 7, NULL, NULL),
(441, 79, 9, NULL, NULL),
(442, 80, 7, NULL, NULL),
(443, 80, 17, NULL, NULL),
(444, 81, 5, NULL, NULL),
(445, 81, 7, NULL, NULL),
(446, 81, 13, NULL, NULL),
(447, 82, 7, NULL, NULL),
(448, 83, 5, NULL, NULL),
(449, 83, 7, NULL, NULL),
(450, 83, 16, NULL, NULL),
(451, 84, 5, NULL, NULL),
(452, 84, 7, NULL, NULL),
(453, 85, 6, NULL, NULL),
(454, 85, 7, NULL, NULL),
(455, 86, 5, NULL, NULL),
(456, 86, 7, NULL, NULL),
(457, 87, 7, NULL, NULL),
(458, 87, 16, NULL, NULL),
(459, 88, 2, NULL, NULL),
(460, 88, 7, NULL, NULL),
(461, 88, 16, NULL, NULL),
(462, 89, 2, NULL, NULL),
(463, 89, 7, NULL, NULL),
(464, 89, 21, NULL, NULL),
(465, 90, 2, NULL, NULL),
(466, 90, 4, NULL, NULL),
(467, 90, 7, NULL, NULL),
(468, 91, 5, NULL, NULL),
(469, 91, 7, NULL, NULL),
(470, 91, 20, NULL, NULL),
(471, 92, 6, NULL, NULL),
(472, 92, 7, NULL, NULL),
(473, 92, 10, NULL, NULL),
(474, 93, 10, NULL, NULL),
(475, 93, 15, NULL, NULL),
(476, 94, 7, NULL, NULL),
(477, 94, 16, NULL, NULL),
(478, 95, 6, NULL, NULL),
(479, 95, 7, NULL, NULL),
(480, 96, 15, NULL, NULL),
(481, 96, 19, NULL, NULL),
(482, 97, 10, NULL, NULL),
(483, 97, 15, NULL, NULL),
(484, 97, 19, NULL, NULL),
(485, 98, 7, NULL, NULL),
(486, 99, 2, NULL, NULL),
(487, 99, 15, NULL, NULL),
(488, 99, 19, NULL, NULL),
(489, 100, 4, NULL, NULL),
(490, 100, 7, NULL, NULL),
(491, 100, 14, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `director` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stars` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `length` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `description`, `director`, `stars`, `length`, `image`, `year`, `created_at`, `updated_at`) VALUES
(1, 'Godfather', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 'Francis Ford Coppola', 'Marlon Brando, Al Pacino, James Caan', 175, 'Godfather.jpg', 1972, NULL, '2020-05-20 15:56:21'),
(2, 'The Shawshank Redemption', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 'Frank Darabont', 'Tim Robbins, Morgan Freeman, Bob Gunton', 142, 'The Shawshank Redemption.jpg', 1994, NULL, '2020-05-20 15:56:21'),
(3, 'Schindler\'s List', 'In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.', 'Steven Spielberg', 'Liam Neeson, Ralph Fiennes, Ben Kingsley', 195, 'Schindler\'s List.jpg', 1993, NULL, '2020-05-20 15:56:21'),
(4, 'Raging Bull', 'The life of boxer Jake LaMotta, whose violence and temper that led him to the top in the ring destroyed his life outside of it.', 'Martin Scorsese', 'Robert De Niro, Cathy Moriarty, Joe Pesci', 129, 'Raging Bull.jpg', 1980, NULL, '2020-05-20 15:56:21'),
(5, 'Casablanca', 'A cynical American expatriate struggles to decide whether or not he should help his former lover and her fugitive husband escape French Morocco.', 'Michael Curtiz', 'Humphrey Bogart, Ingrid Bergman, Paul Henreid', 102, 'Casablanca.jpg', 1942, NULL, '2020-05-20 15:56:21'),
(6, 'Citizen Kane', 'Following the death of publishing tycoon Charles Foster Kane, reporters scramble to uncover the meaning of his final utterance; \'Rosebud\'.', 'Orson Welles', 'Orson Welles, Joseph Cotten, Dorothy Comingore', 119, 'Citizen Kane.jpg', 1941, NULL, '2020-05-20 15:56:21'),
(7, 'Gone with the Wind', 'A manipulative woman and a roguish man conduct a turbulent romance during the American Civil War and Reconstruction periods.', 'Directors:Victor Fleming, George Cukor, Sam Wood', 'Clark Gable, Vivien Leigh, Thomas Mitchell', 238, 'Gone with the Wind.jpg', 1939, NULL, '2020-05-20 15:56:21'),
(8, 'The Wizard of Oz', 'Dorothy Gale is swept away from a farm in Kansas to a magical land of Oz in a tornado and embarks on a quest with her new friends to see the Wizard who can help her return home to Kansas and help her friends as well.', 'Directors:Victor Fleming, George Cukor, Mervyn LeRoy, Norman Taurog, Richard Thorpe, King Vidor', 'Judy Garland, Frank Morgan, Ray Bolger', 102, 'The Wizard of Oz.jpg', 1939, NULL, '2020-05-20 15:56:21'),
(9, 'One Flew Over the Cuckoo\'s Nest', 'A criminal pleads insanity and is admitted to a mental institution, where he rebels against the oppressive nurse and rallies up the scared patients.', 'Milos Forman', 'Jack Nicholson, Louise Fletcher, Will Sampson', 133, 'One Flew Over the Cuckoo\'s Nest.jpg', 1975, NULL, '2020-05-20 15:56:21'),
(10, 'Lawrence of Arabia', 'The story of T.E. Lawrence, the English officer who successfully united and led the diverse, often warring, Arab tribes during World War I in order to fight the Turks.', 'David Lean', 'Peter O\'Toole, Alec Guinness, Anthony Quinn', 228, 'Lawrence of Arabia.jpg', 1962, NULL, '2020-05-20 15:56:21'),
(11, 'Vertigo', 'A former police detective juggles wrestling with his personal demons and becoming obsessed with a hauntingly beautiful woman.', 'Alfred Hitchcock', 'James Stewart, Kim Novak, Barbara Bel Geddes', 128, 'Vertigo.jpg', 1958, NULL, '2020-05-20 15:56:21'),
(12, 'Psycho', 'A Phoenix secretary embezzles forty thousand dollars from her employer\'s client, goes on the run, and checks into a remote motel run by a young man under the domination of his mother.', 'Alfred Hitchcock', 'Anthony Perkins, Janet Leigh, Vera Miles', 109, 'Psycho.jpg', 1960, NULL, '2020-05-20 15:56:21'),
(13, 'Godfather: Part II', 'The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.', 'Francis Ford Coppola', 'Al Pacino, Robert De Niro, Robert Duvall', 202, 'Godfather II.jpg', 1974, NULL, '2020-05-20 15:56:21'),
(14, 'On the Waterfront', 'An ex-prize fighter turned longshoreman struggles to stand up to his corrupt union bosses.', 'Elia Kazan', 'Marlon Brando, Karl Malden, Lee J. Cobb', 108, 'On the Waterfront.jpg', 1954, NULL, '2020-05-20 15:56:21'),
(15, 'Sunset Blvd.', 'A screenwriter develops a dangerous relationship with a faded film star determined to make a triumphant return.', 'Billy Wilder', 'William Holden, Gloria Swanson, Erich von Stroheim', 110, 'Sunset Blvd..jpg', 1950, NULL, '2020-05-20 15:56:21'),
(16, 'Forrest Gump', 'The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate and other historical events unfold through the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.', 'Robert Zemeckis', 'Tom Hanks, Robin Wright, Gary Sinise', 142, 'Forrest Gump.jpg', 1994, NULL, '2020-05-20 15:56:21'),
(17, 'The Sound of Music', 'A woman leaves an Austrian convent to become a governess to the children of a Naval officer widower.', 'Robert Wise', 'Julie Andrews, Christopher Plummer, Eleanor Parker', 172, 'The Sound of Music.jpg', 1965, NULL, '2020-05-20 15:56:21'),
(18, '12 Angry Men', 'A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.', 'Sidney Lumet', 'Henry Fonda, Lee J. Cobb, Martin Balsam', 96, '12 Angry Men.jpg', 1957, NULL, '2020-05-20 15:56:21'),
(19, 'West Side Story', 'Two youngsters from rival New York City gangs fall in love, but tensions between their respective friends build toward tragedy.', 'Directors:Jerome Robbins, Robert Wise', 'Natalie Wood, George Chakiris, Richard Beymer', 153, 'West Side Story.jpg', 1961, NULL, '2020-05-20 15:56:21'),
(20, 'Star Wars', 'Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire\'s world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader.', 'George Lucas', 'Mark Hamill, Harrison Ford, Carrie Fisher', 121, 'Star Wars.jpg', 1977, NULL, '2020-05-20 15:56:21'),
(21, '2001: A Space Odyssey', 'After discovering a mysterious artifact buried beneath the Lunar surface, mankind sets off on a quest to find its origins with help from intelligent supercomputer H.A.L. 9000.', 'Stanley Kubrick', 'Keir Dullea, Gary Lockwood, William Sylvester', 149, '2001.jpg', 1968, NULL, '2020-05-20 15:56:21'),
(22, 'E.T. the Extra-Terrestrial', 'A troubled child summons the courage to help a friendly alien escape Earth and return to his home world.', 'Steven Spielberg', 'Henry Thomas, Drew Barrymore, Peter Coyote', 115, 'E.T. the Extra-Terrestrial.jpg', 1982, NULL, '2020-05-20 15:56:21'),
(23, 'The Silence of the Lambs', 'A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.', 'Jonathan Demme', 'Jodie Foster, Anthony Hopkins, Lawrence A. Bonney', 118, 'The Silence of the Lambs.jpg', 1991, NULL, '2020-05-20 15:56:21'),
(24, 'Chinatown', 'A private detective hired to expose an adulterer finds himself caught up in a web of deceit, corruption, and murder.', 'Roman Polanski', 'Jack Nicholson, Faye Dunaway, John Huston', 130, 'Chinatown.jpg', 1974, NULL, '2020-05-20 15:56:21'),
(25, 'The Bridge on the River Kwai', 'British POWs are forced to build a railway bridge across the river Kwai for their Japanese captors.', 'David Lean', 'William Holden, Alec Guinness, Jack Hawkins', 161, 'The Bridge on the River Kwai.jpg', 1957, NULL, '2020-05-20 15:56:21'),
(26, 'Singin\' in the Rain', 'A silent film production company and cast make a difficult transition to sound.', 'Directors:Stanley Donen, Gene Kelly', 'Gene Kelly, Donald O\'Connor, Debbie Reynolds', 103, 'Singin\' in the Rain.jpg', 1952, NULL, '2020-05-20 15:56:21'),
(27, 'It\'s a Wonderful Life', 'An angel is sent from Heaven to help a desperately frustrated businessman by showing him what life would have been like if he had never existed.', 'Frank Capra', 'James Stewart, Donna Reed, Lionel Barrymore', 130, 'It\'s a Wonderful Life.jpg', 1946, NULL, '2020-05-20 15:56:21'),
(28, 'Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb', 'An insane general triggers a path to nuclear holocaust that a War Room full of politicians and generals frantically tries to stop.', 'Stanley Kubrick', 'Peter Sellers, George C. Scott, Sterling Hayden', 95, 'Dr. Strangelove.jpg', 1964, NULL, '2020-05-20 15:56:21'),
(29, 'Some Like It Hot', 'After two male musicians witness a mob hit, they flee the state in an all-female band disguised as women, but further complications set in.', 'Billy Wilder', 'Marilyn Monroe, Tony Curtis, Jack Lemmon', 121, 'Some Like It Hot.jpg', 1959, NULL, '2020-05-20 15:56:21'),
(30, 'Ben-Hur', 'After a Jewish prince is betrayed and sent into slavery by a Roman friend, he regains his freedom and comes back for revenge.', 'William Wyler', 'Charlton Heston, Jack Hawkins, Stephen Boyd', 212, 'Ben-Hur.jpg', 1959, NULL, '2020-05-20 15:56:21'),
(31, 'Apocalypse Now', 'A U.S. Army officer serving in Vietnam is tasked with assassinating a renegade Special Forces Colonel who sees himself as a god.', 'Francis Ford Coppola', 'Martin Sheen, Marlon Brando, Robert Duvall', 147, 'Apocalypse Now.jpg', 1979, NULL, '2020-05-20 15:56:21'),
(32, 'Amadeus', 'The life, success and troubles of Wolfgang Amadeus Mozart, as told by Antonio Salieri, the contemporaneous composer who was insanely jealous of Mozart\'s talent and claimed to have murdered him.', 'Milos Forman', 'F. Murray Abraham, Tom Hulce, Elizabeth Berridge', 160, 'Amadeus.jpg', 1984, NULL, '2020-05-20 15:56:21'),
(33, 'The Lord of the Rings: The Return of the King', 'Gandalf and Aragorn lead the World of Men against Sauron\'s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.', 'Peter Jackson', 'Elijah Wood, Viggo Mortensen, Ian McKellen', 201, 'lotr.jpg', 2003, NULL, '2020-05-20 15:56:21'),
(34, 'Gladiator', 'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.', 'Ridley Scott', 'Russell Crowe, Joaquin Phoenix, Connie Nielsen', 155, 'Gladiator.jpg', 2000, NULL, '2020-05-20 15:56:21'),
(35, 'Titanic', 'A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.', 'James Cameron', 'Leonardo DiCaprio, Kate Winslet, Billy Zane', 194, 'Titanic.jpg', 1997, NULL, '2020-05-20 15:56:21'),
(36, 'From Here to Eternity', 'In Hawaii in 1941, a private is cruelly punished for not boxing on his unit\'s team, while his captain\'s wife and second-in-command are falling in love.', 'Fred Zinnemann', 'Burt Lancaster, Montgomery Clift, Deborah Kerr', 118, 'From Here to Eternity.jpg', 1953, NULL, '2020-05-20 15:56:21'),
(37, 'Saving Private Ryan', 'Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper whose brothers have been killed in action.', 'Steven Spielberg', 'Tom Hanks, Matt Damon, Tom Sizemore', 169, 'Saving Private Ryan.jpg', 1998, NULL, '2020-05-20 15:56:21'),
(38, 'Unforgiven', 'Retired Old West gunslinger William Munny (Clint Eastwood) reluctantly takes on one last job, with the help of his old partner Ned Logan (Morgan Freeman) and a young man, The \"Schofield Kid\" (Jaimz Woolvett).', 'Clint Eastwood', 'Clint Eastwood, Gene Hackman, Morgan Freeman', 130, 'Unforgiven.jpg', 1992, NULL, '2020-05-20 15:56:21'),
(39, 'Raiders of the Lost Ark', 'In 1936, archaeologist and adventurer Indiana Jones is hired by the U.S. government to find the Ark of the Covenant before Adolf Hitler\'s Nazis can obtain its awesome powers.', 'Steven Spielberg', 'Harrison Ford, Karen Allen, Paul Freeman', 115, 'Raiders of the Lost Ark.jpg', 1981, NULL, '2020-05-20 15:56:21'),
(40, 'Rocky', 'A small-time boxer gets a supremely rare chance to fight a heavy-weight champion in a bout in which he strives to go the distance for his self-respect.', 'John G. Avildsen', 'Sylvester Stallone, Talia Shire, Burt Young', 120, 'Rocky.jpg', 1976, NULL, '2020-05-20 15:56:21'),
(41, 'A Streetcar Named Desire', 'Disturbed Blanche DuBois moves in with her sister in New Orleans and is tormented by her brutish brother-in-law while her reality crumbles around her.', 'Elia Kazan', 'Vivien Leigh, Marlon Brando, Kim Hunter', 122, 'A Streetcar Named Desire.jpg', 1951, NULL, '2020-05-20 15:56:21'),
(42, 'The Philadelphia Story', 'When a rich woman\'s ex-husband and a tabloid-type reporter turn up just before her planned remarriage, she begins to learn the truth about herself.', 'George Cukor', 'Cary Grant, Katharine Hepburn, James Stewart', 112, 'The Philadelphia Story.jpg', 1940, NULL, '2020-05-20 15:56:21'),
(43, 'To Kill a Mockingbird', 'Atticus Finch, a lawyer in the Depression-era South, defends a black man against an undeserved rape charge, and his children against prejudice.', 'Robert Mulligan', 'Gregory Peck, John Megna, Frank Overton', 129, 'To Kill a Mockingbird.jpg', 1962, NULL, '2020-05-20 15:56:21'),
(44, 'An American in Paris', 'Three friends struggle to find work in Paris. Things become more complicated when two of them fall in love with the same woman.', 'Vincentenelli', 'Gene Kelly, Leslie Caron, Oscar Levant', 114, 'An American in Paris.jpg', 1951, NULL, '2020-05-20 15:56:21'),
(45, 'The Best Years of Our Lives', 'Three World War II veterans return home to small-town America to discover that they and their families have been irreparably changed.', 'William Wyler', 'Myrna Loy, Dana Andrews, Fredric March', 170, 'The Best Years of Our Lives.jpg', 1946, NULL, '2020-05-20 15:56:21'),
(46, 'My Fair Lady', 'Snobbish phonetics Professor Henry Higgins agrees to a wager that he can make flower girl Eliza Doolittle presentable in high society.', 'George Cukor', 'Audrey Hepburn, Rex Harrison, Stanley Holloway', 170, 'My Fair Lady.jpg', 1964, NULL, '2020-05-20 15:56:21'),
(47, 'A Clockwork Orange', 'In the future, a sadistic gang leader is imprisoned and volunteers for a conduct-aversion experiment, but it doesn\'t go as planned.', 'Stanley Kubrick', 'Malcolm McDowell, Patrick Magee, Michael Bates', 136, 'A Clockwork Orange.jpg', 1971, NULL, '2020-05-20 15:56:21'),
(48, 'Doctor Zhivago', 'The life of a Russian physician and poet who, although married to another, falls in love with a political activist\'s wife and experiences hardship during World War I and then the October Revolution.', 'David Lean', 'Omar Sharif, Julie Christie, Geraldine Chaplin', 197, 'Doctor Zhivago.jpg', 1965, NULL, '2020-05-20 15:56:21'),
(49, 'The Searchers', 'An American Civil War veteran embarks on a journey to rescue his niece from the Comanches.', 'John Ford', 'John Wayne, Jeffrey Hunter, Vera Miles', 119, 'The Searchers.jpg', 1956, NULL, '2020-05-20 15:56:21'),
(50, 'Jaws', 'When a killer shark unleashes chaos on a beach community, it\'s up to a local sheriff, a marine biologist, and an old seafarer to hunt the beast down.', 'Steven Spielberg', 'Roy Scheider, Robert Shaw, Richard Dreyfuss', 124, 'Jaws.jpg', 1975, NULL, '2020-05-20 15:56:21'),
(51, 'Patton', 'The World War II phase of the career of controversial American general George S. Patton.', 'Franklin J. Schaffner', 'George C. Scott, Karl Malden, Stephen Young', 172, 'Patton.jpg', 1970, NULL, '2020-05-20 15:56:21'),
(52, 'Butch Cassidy and the Sundance Kid', 'Wyoming, early 1900s. Butch Cassidy and The Sundance Kid are the leaders of a band of outlaws. After a train robbery goes wrong they find themselves on the run with a posse hard on their heels. Their solution - escape to Bolivia.', 'George Roy Hill', 'Paul Newman, Robert Redford, Katharine Ross', 110, 'Butch Cassidy and the Sundance Kid.jpg', 1969, NULL, '2020-05-20 15:56:21'),
(53, 'The Treasure of the Sierra Madre', 'Two Americans searching for work in Mexico convince an old prospector to help theme for gold in the Sierra Madre Mountains.', 'John Huston', 'Humphrey Bogart, Walter Huston, Tim Holt', 126, 'The Treasure of the Sierra Madre.jpg', 1948, NULL, '2020-05-20 15:56:21'),
(54, 'Il buono, il brutto, il cattivo', 'A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery.', 'Sergio Leone', 'Clint Eastwood, Eli Wallach, Lee Van Cleef', 161, 'Il buono, il brutto, il cattivo.jpg', 1966, NULL, '2020-05-20 15:56:21'),
(55, 'The Apartment', 'A man tries to rise in his company by letting its executives use his apartment for trysts, but complications and a romance of his own ensue.', 'Billy Wilder', 'Jack Lemmon, Shirley MacLaine, Fred MacMurray', 125, 'The Apartment.jpg', 1960, NULL, '2020-05-20 15:56:21'),
(56, 'Platoon', 'A young soldier in Vietnam faces a moral crisis when confronted with the horrors of war and the duality of man.', 'Oliver Stone', 'Charlie Sheen, Tom Berenger, Willem Dafoe', 120, 'Platoon.jpg', 1986, NULL, '2020-05-20 15:56:21'),
(57, 'High Noon', 'A town Marshal, despite the disagreements of his newlywed bride and the townspeople around him, must face a gang of deadly killers alone at high noon when the gang leader, an outlaw he sent up years ago, arrives on the noon train.', 'Fred Zinnemann', 'Gary Cooper, Grace Kelly, Thomas Mitchell', 85, 'High Noon.jpg', 1952, NULL, '2020-05-20 15:56:21'),
(58, 'Braveheart', 'When his secret bride is executed for assaulting an English soldier who tried to rape her, William Wallace begins a revolt against King Edward I of England.', 'Mel Gibson', 'Mel Gibson, Sophie Marceau, Patrick McGoohan', 178, 'Braveheart.jpg', 1995, NULL, '2020-05-20 15:56:21'),
(59, 'Dances with Wolves', 'Lieutenant John Dunbar, assigned to a remote western Civil War outpost, befriends wolves and Indians, making him an intolerable aberration in the military.', 'Kevin Costner', 'Kevin Costner, Mary McDonnell, Graham Greene', 181, 'Dances with Wolves.jpg', 1990, NULL, '2020-05-20 15:56:21'),
(60, 'Jurassic Park', 'A pragmatic paleontologist visiting an almost complete theme park is tasked with protecting a couple of kids after a power failure causes the park\'s cloned dinosaurs to run loose.', 'Steven Spielberg', 'Sam Neill, Laura Dern, Jeff Goldblum', 127, 'Jurassic Park.jpg', 1993, NULL, '2020-05-20 15:56:21'),
(61, 'The Exorcist', 'When a 12 year-old girl is possessed by a mysterious entity, her mother seeks the help of two priests to save her.', 'William Friedkin', 'Ellen Burstyn, Max von Sydow, Linda Blair', 122, 'The Exorcist.jpg', 1973, NULL, '2020-05-20 15:56:21'),
(62, 'The Pianist', 'A Polish Jewish musician struggles to survive the destruction of the Warsaw ghetto of World War II.', 'Roman Polanski', 'Adrien Brody, Thomas Kretschmann, Frank Finlay', 150, 'The Pianist.jpg', 2002, NULL, '2020-05-20 15:56:21'),
(63, 'Goodfellas', 'The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate.', 'Martin Scorsese', 'Robert De Niro, Ray Liotta, Joe Pesci', 146, 'Goodfellas.jpg', 1990, NULL, '2020-05-20 15:56:21'),
(64, 'The Deer Hunter', 'An in-depth examination of the ways in which the U.S. Vietnam War impacts and disrupts the lives of people in a small industrial town in Pennsylvania.', 'Michael Cimino', 'Robert De Niro, Christopher Walken, John Cazale', 183, 'The Deer Hunter.jpg', 1978, NULL, '2020-05-20 15:56:21'),
(65, 'All Quiet on the Western Front', 'A young soldier faces profound disillusionment in the soul-destroying horror of World War I.', 'Lewis Milestone', 'Lew Ayres, Louis Wolheim, John Wray', 152, 'All Quiet on the Western Front.jpg', 1930, NULL, '2020-05-20 15:56:21'),
(66, 'Bonnie and Clyde', 'Bored waitress Bonnie Parker falls in love with an ex-con named Clyde Barrow and together they start a violent crime spree through the country, stealing cars and robbing banks.', 'Arthur Penn', 'Warren Beatty, Faye Dunaway, Michael J. Pollard', 111, 'Bonnie and Clyde.jpg', 1967, NULL, '2020-05-20 15:56:21'),
(67, 'The French Connection', 'A pair of NYC cops in the Narcotics Bureau stumble onto a drug smuggling job with a French connection.', 'William Friedkin', 'Gene Hackman, Roy Scheider, Fernando Rey', 104, 'The French Connection.jpg', 1971, NULL, '2020-05-20 15:56:21'),
(68, 'City Lights', 'With the aid of a wealthy erratic tippler, a dewy-eyed tramp who has fallen in love with a sightless flower girl accumulates money to be able to help her medically.', 'Charles Chaplin', 'Charles Chaplin, Virginia Cherrill, Florence Lee', 87, 'City Lights.jpg', 1931, NULL, '2020-05-20 15:56:21'),
(69, 'It Happened One Night', 'A spoiled heiress running away from her family is helped by a man who is actually a reporter in need of a story.', 'Frank Capra', 'Clark Gable, Claudette Colbert, Walter Connolly', 105, 'It Happened One Night.jpg', 1934, NULL, '2020-05-20 15:56:21'),
(70, 'A Place in the Sun', 'A poor boy gets a job working for his rich uncle and ends up falling in love with two women.', 'George Stevens', 'Montgomery Clift, Elizabeth Taylor, Shelley Winters', 122, 'A Place in the Sun.jpg', 1951, NULL, '2020-05-20 15:56:21'),
(71, 'Midnight Cowboy', 'A naive hustler travels from Texas to New York City to seek personal fortune, finding a new friend in the process.', 'John Schlesinger', 'Dustin Hoffman, Jon Voight, Sylvia Miles', 113, 'Midnight Cowboy.jpg', 1969, NULL, '2020-05-20 15:56:21'),
(72, 'Mr. Smith Goes to Washington', 'A naive man is appointed to fill a vacancy in the United States Senate. His plans promptly collide with political corruption, but he doesn\'t back down.', 'Frank Capra', 'James Stewart, Jean Arthur, Claude Rains', 129, 'Mr. Smith Goes to Washington.jpg', 1939, NULL, '2020-05-20 15:56:21'),
(73, 'Rain Man', 'Selfish yuppie Charlie Babbitt\'s father left a fortune to his savant brother Raymond and a pittance to Charlie; they travel cross-country.', 'Barry Levinson', 'Dustin Hoffman, Tom Cruise, Valeria Golino', 133, 'Rain Man.jpg', 1988, NULL, '2020-05-20 15:56:21'),
(74, 'Annie Hall', 'Neurotic New York comedian Alvy Singer falls in love with the ditzy Annie Hall.', 'Woody Allen', 'Woody Allen, Diane Keaton, Tony Roberts', 93, 'Annie Hall.jpg', 1977, NULL, '2020-05-20 15:56:21'),
(75, 'Fargo', 'Jerry Lundegaard\'s inept crime falls apart due to his and his henchmen\'s bungling and the persistent police work of the quite pregnant Marge Gunderson.', 'Directors:Joel Coen, Ethan Coen', 'William H. Macy, Frances McDormand, Steve Buscemi', 98, 'Fargo.jpg', 1996, NULL, '2020-05-20 15:56:21'),
(76, 'Giant', 'Sprawling epic covering the life of a Texas cattle rancher and his family and associates.', 'George Stevens', 'Elizabeth Taylor, Rock Hudson, James Dean', 201, 'Giant.jpg', 1956, NULL, '2020-05-20 15:56:21'),
(77, 'Shane', 'A weary gunfighter attempts to settle down with a homestead family, but a smoldering settler/rancher conflict forces him to act.', 'George Stevens', 'Alan Ladd, Jean Arthur, Van Heflin', 118, 'Shane.jpg', 1953, NULL, '2020-05-20 15:56:21'),
(78, 'The Grapes of Wrath', 'A poor Midwest family is forced off their land. They travel to California, suffering the misfortunes of the homeless in the Great Depression.', 'John Ford', 'Henry Fonda, Jane Darwell, John Carradine', 129, 'The Grapes of Wrath.jpg', 1940, NULL, '2020-05-20 15:56:21'),
(79, 'The Green Mile', 'The lives of guards on Death Row are affected by one of their charges: a black man accused of child murder and rape, yet who has a mysterious gift.', 'Frank Darabont', 'Tom Hanks, Michael Clarke Duncan, David Morse', 189, 'The Green Mile.jpg', 1999, NULL, '2020-05-20 15:56:21'),
(80, 'Close Encounters of the Third Kind', 'Roy Neary, an electric lineman, watches how his quiet and ordinary daily life turns upside down after a close encounter with a UFO.', 'Steven Spielberg', 'Richard Dreyfuss, François Truffaut, Teri Garr', 138, 'Close Encounters of the Third Kind.jpg', 1977, NULL, '2020-05-20 15:56:21'),
(81, 'Nashville', 'Over the course of a few hectic days, numerous interrelated people prepare for a political convention as secrets and lies are surfaced and revealed.', 'Robert Altman', 'Keith Carradine, Karen Black, Ronee Blakley', 160, 'Nashville.jpg', 1975, NULL, '2020-05-20 15:56:21'),
(82, 'Network', 'A television network cynically exploits a deranged former anchor\'s ravings and revelations about the news media for its own profit.', 'Sidney Lumet', 'Faye Dunaway, William Holden, Peter Finch', 121, 'Network.jpg', 1976, NULL, '2020-05-20 15:56:21'),
(83, 'The Graduate', 'A disillusioned college graduate finds himself torn between his older lover and her daughter.', 'Mike Nichols', 'Dustin Hoffman, Anne Bancroft, Katharine Ross', 106, 'The Graduate.jpg', 1967, NULL, '2020-05-20 15:56:21'),
(84, 'American Graffiti', 'A couple of high school grads spend one final night cruising the strip with their buddies before they go off to college.', 'George Lucas', 'Richard Dreyfuss, Ron Howard, Paul Le Mat', 110, 'American Graffiti.jpg', 1973, NULL, '2020-05-20 15:56:21'),
(85, 'Pulp Fiction', 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', 'Quentin Tarantino', 'John Travolta, Uma Thurman, Samuel L. Jackson', 154, 'Pulp Fiction.jpg', 1994, NULL, '2020-05-20 15:56:21'),
(86, 'Terms of Endearment', 'Follows hard-to-please Aurora looking for love, and her daughter\'s family problems.', 'James L. Brooks', 'Shirley MacLaine, Debra Winger, Jack Nicholson', 132, 'Terms of Endearment.jpg', 1983, NULL, '2020-05-20 15:56:21'),
(87, 'Good Will Hunting', 'Will Hunting, a janitor at M.I.T., has a gift for mathematics, but needs help from a psychologist to find direction in his life.', 'Gus Van Sant', 'Robin Williams, Matt Damon, Ben Affleck', 126, 'Good Will Hunting.jpg', 1997, NULL, '2020-05-20 15:56:21'),
(88, 'The African Queen', 'In WWI Africa, a gin-swilling riverboat captain is persuaded by a strait-laced missionary to use his boat to attack an enemy warship.', 'John Huston', 'Humphrey Bogart, Katharine Hepburn, Robert Morley', 105, 'The African Queen.jpg', 1951, NULL, '2020-05-20 15:56:21'),
(89, 'Stagecoach', 'A group of people traveling on a stagecoach find their journey complicated by the threat of Geronimo and learn something about each other in the process.', 'John Ford', 'John Wayne, Claire Trevor, Andy Devine', 96, 'Stagecoach.jpg', 1939, NULL, '2020-05-20 15:56:21'),
(90, 'Mutiny on the Bounty', 'A tyrannical ship captain decides to exact revenge on his abused crew after they form a mutiny against him, but the sailor he targets had no hand in it.', 'Frank Lloyd', 'Charles Laughton, Clark Gable, Franchot Tone', 132, 'Mutiny on the Bounty.jpg', 1935, NULL, '2020-05-20 15:56:21'),
(91, 'The Great Dictator', 'Dictator Adenoid Hynkel tries to expand his empire while a poor Jewish barber tries to avoid persecution from Hynkel\'s regime.', 'Charles Chaplin', 'Charles Chaplin, Paulette Goddard, Jack Oakie', 125, 'The Great Dictator.jpg', 1940, NULL, '2020-05-20 15:56:21'),
(92, 'Double Indemnity', 'An insurance representative lets himself be talked by a seductive housewife into a murder/insurance fraud scheme that arouses the suspicion of an insurance investigator.', 'Billy Wilder', 'Fred MacMurray, Barbara Stanwyck, Edward G. Robinson', 107, 'Double Indemnity.jpg', 1944, NULL, '2020-05-20 15:56:21'),
(93, 'The Maltese Falcon', 'A private detective takes on a case that involves him with three eccentric criminals, a gorgeous liar, and their quest for a priceless statuette.', 'John Huston', 'Humphrey Bogart, Mary Astor, Gladys George', 100, 'The Maltese Falcon.jpg', 1941, NULL, '2020-05-20 15:56:21'),
(94, 'Wuthering Heights', 'A servant in the house of Wuthering Heights tells a traveller the unfortunate tale of lovers Cathy (Merle Oberon) and Heathcliff (Sir Laurence Olivier).', 'William Wyler', 'Merle Oberon, Laurence Olivier, David Niven', 104, 'Wuthering Heights.jpg', 1939, NULL, '2020-05-20 15:56:21'),
(95, 'Taxi Driver', 'A mentally unstable veteran works as a nighttime taxi driver in New York City, where the perceived decadence and sleaze fuels his urge for violent action by attempting to liberate a presidential campaign worker and an underage prostitute.', 'Martin Scorsese', 'Robert De Niro, Jodie Foster, Cybill Shepherd', 114, 'Taxi Driver.jpg', 1976, NULL, '2020-05-20 15:56:21'),
(96, 'Rear Window', 'A wheelchair-bound photographer spies on his neighbors from his apartment window and becomes convinced one of them has committed murder.', 'Alfred Hitchcock', 'James Stewart, Grace Kelly, Wendell Corey', 112, 'Rear Window.jpg', 1954, NULL, '2020-05-20 15:56:21'),
(97, 'The Third Man', 'Pulp novelist Holly Martins travels to shadowy, postwar Vienna, only to find himself investigating the mysterious death of an old friend, Harry Lime.', 'Carol Reed', 'Orson Welles, Joseph Cotten, Alida Valli', 104, 'The Third Man.jpg', 1949, NULL, '2020-05-20 15:56:21'),
(98, 'Rebel Without a Cause', 'A rebellious young man with a troubled past comes to a new town, finding friends and enemies.', 'Nicholas Ray', 'James Dean, Natalie Wood, Saleo', 111, 'Rebel Without a Cause.jpg', 1955, NULL, '2020-05-20 15:56:21'),
(99, 'North by Northwest', 'A New York City advertising executive goes on the run after being mistaken for a government agent by a group of foreign spies.', 'Alfred Hitchcock', 'Cary Grant, Eva Marie Saint, James Mason', 136, 'North by Northwest.jpg', 1959, NULL, '2020-05-20 15:56:21'),
(100, 'Yankee Doodle Dandy', 'The life of the renowned musical composer, playwright, actor, dancer, and singer George M. Cohan.', 'Michael Curtiz', 'James Cagney, Joan Leslie, Walter Huston', 126, 'Yankee Doodle Dandy.jpg', 1942, NULL, '2020-05-20 15:56:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genre_movie`
--
ALTER TABLE `genre_movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genre_movie_movie_id_foreign` (`movie_id`),
  ADD KEY `genre_movie_genre_id_foreign` (`genre_id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `genre_movie`
--
ALTER TABLE `genre_movie`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=492;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `genre_movie`
--
ALTER TABLE `genre_movie`
  ADD CONSTRAINT `genre_movie_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `genre_movie_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

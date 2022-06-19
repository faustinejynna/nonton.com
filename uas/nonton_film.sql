SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nonton_film`
--

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `plot_summary` text NOT NULL,
  `release_date` date NOT NULL,
  `review_count` int(11) NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id`, `title`, `genre`, `image`, `plot_summary`, `release_date`, `review_count`, `rate`) VALUES
(190, 'Dune', '1', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/d5NXSklXo0qyIYkgV94XAgMIckC.jpg', 'A noble family becomes embroiled in a war for control over the galaxy`s most valuable asset while its heir becomes troubled by visions of a dark future.', '2021-10-22', 580,233, 8,0),
(191, 'Sing 2', '1', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/aWeKITRFbbwY8txG5uCj4rMCfSP.jpg', 'Buster Moon and his friends must persuade reclusive rock star Clay Calloway to join them for the opening of a new show.', '2021-12-22', 50,988, 7,4),
(192, 'Ron`s Gone Wrong', '1', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/plzgQAXIEHm4Y92ktxU6fedUc0x.jpg', 'The story of Barney, an awkward middle-schooler and Ron, his new walking, talking, digitally-connected device. Ron`s malfunctions set against the backdrop of the social media age launch them on a journey to learn about true friendship.', '2021-10-09', 316,037, 7,0),
(193, 'The King`s Man', '1', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/nj5HmHRZsrYQEYYXyAusFv35erP.jpg', 'In the early years of the 20th century, the Kingsman agency is formed to stand against a cabal plotting a war to wipe out millions.', '2021-12-22', 130,008, 6,3),
(194, 'No Time to Die', '1', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/iUgygt3fscRoKWCV1d0C7FbM9TP.jpg', 'James Bond has left active service. His peace is short-lived when Felix Leiter, an old friend from the CIA, turns up asking or help, leading Bond onto the trail of a mysterious villain armed with dangerous new technology.', '2021-10-08', 36.286, 7.3),
(195, 'Jurrasic World: Dominion', '1', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/kAVRgw7GgK1CfYEJq8ME6EvRIgU.jpg', 'Four years after the destruction of Isla Nublar, dinosaurs now live-and hunt-alongside humans all over the world. This fragile balance will reshape the future and determine, once and for all, whether human beings are remain to the apex predators on a planet they now share with history`s most fearsome creatures in a new Era.', '2022-06-10', 40.731, 6.0),
(196, 'Fantastic Beasts: The Secrets of Dumbledore', '1', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/jrgifaYeUtTnaH7NF5Drkgjg2MB.jpg', 'Albus Dumbledore assings Newt and his allies with a mission related to the rising power of Grindelwald.', '2022-04-15', 94,038, 6,2),
(197, 'The Batman', '1', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/74xTEgt7R36Fpooo50r9T25onhq.jpg', 'When a sadistic serial killer begins murdering key political figures in Gotham, Batman is forced to investigate the city`s hidden corruption and question his family`s involvement.', '2022-03-04', 512.470, 7.9),
(198, 'Uncharted', '1', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/tlZpSxYuBRoVJBOpUrPdQe9FmFq.jpg', 'Street-smart Nathan Drake is recruited by seasoned treasure hunter Victor "Sully" Sullivan to recover a fortune amassed by Ferdinand Magellan, and lost 500 years ago by the House of Moncada.', '2022-02-18', 132.650, 6.4),
(199, 'Nightmare Alley', '1', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/680klE0dIreQQOyWKFgNnCAJtws.jpg', 'A grifter working his way up from low-ranking carnival worker to lauded psychic medium matches wits with a psychiatrist bent on exposing him.', '2021-12-17', 126.512, 7.0),
(200, 'Doctor Strange in the Multiverse of Madness', '4', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/9Gtg2DzBhmYamXBS1hKAhiwbBKS.jpg', 'Doctor Strange teams up with a mysterious teenage girl from his dreams who can travel across multiverses, to battle multiple threats, including other-universe versions of himself, which threaten to wipe out millions across the multiverse. They seek help from Wanda the Scarlet Witch, Wong and others.', '2022-05-06', 206.609, 7.3),
(201, 'Spider-Man: No Way Home', '4', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg', 'With Spider-Man`s identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man.', '2021-12-17', 655.571, 8.3),
(202, 'Avengers: Endgame', '4', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/or06FN3Dka5tukK1e9sl16pB3iy.jpg', 'After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos` actions and restore balance to the universe', '2019-04-26', 999.999, 8.4),
(203, 'Eternals', '4', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/bcCBq9N1EMo3daNIjWJ8kYvrQm6.jpg', 'The saga of the Eternals, a race of immortal beings who lived on Earth and shaped its history and civilizations.', '2021-11-05', 311.965, 6.3),
(204, 'Shang-Chi and the Legend of the Ten Rings', '4', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/1BIoJGKbXjdFDAqUEiA2VHqkK1Z.jpg', 'Shang-Chi, the master of weaponry-based Kung Fu, is forced to confront his past after being drawn to the Ten Rings organization.', '2021-09-03', 356.958, 7.4),
(205, 'Thor: Ragnarok', '4', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/rzRwTcFvttcN1ZpX2xv4j3tSdJu.jpg', 'Imprisoned on the planet Sakaar, Thor must race against time to return Asgard and stop Ragnarok, the destruction of his world, at the hands of the powerful and ruthless villain Hela.', '2017-11-03', 705.677, 7.9),
(206, 'Avengers: Infinity War', '4', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/7WsyChQLEftFiDOVTGkv3hFpyyt.jpg', 'The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.', '2018-04-27', 999.999, 8.4),
(207, 'Black Panther', '4', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/uxzzxijgPIY7slzFvMotPv8wjKA.jpg', 'T`Challa, heir to the hidden but advanced kingdom of Wakanda, must step forward to lead his people into a new future and must confront a challenger from his country past', '2018-02-16', 727.086, 7.3),
(208, 'Morbius', '4', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/6JjfSchsU6daXk2AKX8EEBjO3Fm.jpg', 'Biochemist Michael Morbius tries to cure himself of a rare blood disease, but he inadvertently infects himself with a form of vampirism instead.', '2022-04-01', 78.906, 5.1),
(209, 'Guardians of the Galaxy', '4', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/y4MBh0EjBlMuOzv9axM4qJlmhzz.jpg,', 'A group of intergalactic criminals must pull together to stop a fanatical warrior with plans to purge the universe', '2014-08-01-', 999.999, 8.0),
(210, 'KKN di Desa Penari', '3', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/63InZxeGgfNQCoWkImR14fB99AY.jpg', 'Six students who had to carry out KKN in a remote village are warned not to across the boundary of the forbidden gate that leading to the mysterious place that may related to the figure of a beautiful dancer who began to disturb them.', '2022-04-30', 1.078, 6.3),
(211, 'Ngeri-Ngeri Sedap', '3', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/jq5OpWNBgXrEmgCnZ2SM9Iv8KqE.jpg', 'Parents from the Batak tribe pretend to fight to that their children come home from overseas.', '2022-06-02', 406, 8.5),
(212, 'Gundala', '3', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/wZCo5qUz3IdIhs6466B9PpFglXU.jpg', 'Indonesia`s preeminent comic book superhero and his alter ego Sancaka enter the cinematic universe to battle the wicked Pengkor and his diabolical squad of orphan assassins.', '2019-08-29', 4.878, 6.1),
(213, 'Ghost Writer', '3', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/7fdA913DJO01sTX5WdwjTB3DDIY.jpg', 'An old diary containing dark secrets is found by Naya, a novelist who has been on a writer`s book block for 3 years. This book contains great materials for her latest novel, but something unexpected starts to happen.', '2019-06-04', 404, 6.7),
(214, 'Filosofi Kopi 2: Ben & Jody', '3', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/3JCXWQdgepkKxK86drRh8tpViL2.jpg', 'Two years after Ben & Jody decided to sell their store and travel around Indonesia to distribute the "best coffee", the adventures of Ben & Jody with Kombi Coffee Philosophy hit a dead end.', '2017-06-13', 398, 7.2),
(215, 'Marlina si Pembunuh dalam Empat Babak', '63', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/7pDpym7ix9dsB9a1KWVLN95X4z1.jpg', 'Marlina lived quietly in Sumba until one day a man named Markus and his gang try to rob her house and she kills him. Eventually, she is haunted by Markus, and her life turns in 180 degrees.', '2017-11-16', 2.978, 6.9),
(216, 'Story of Kale: When Someone`s in Love', '3', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/m326dvGv8DfXFxDRykARtSuOP6b.jpg', 'Dinda is saved by Kale from her toxic relationship with Argo. Dinda and Kale then have a relationship together. The relationship that start out beautiful, turned into a new nightmare.', '2020-10-23', 275, 6.4),
(217, 'Dua Garis Biru', '3', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/rqHzHops7SudBKvxjbB15ZnUABp.jpg', 'A young couple violated the boundary without knowing the consequences. They try to take responsibility to their choices and their innocence is tested when the families who really loved them knew, then forced into their chosen journey.', '2019-06-11', 1.222, 7.9),
(218, 'Habibie & Ainun', '3', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/eOdYhBFF7vE5v83KVVQfDEyLgEu.jpg', 'This movie is based on the memoir written by the 3rd President of Indonesia and one of the world-famous engineer, B.J. Habibie about his wife, Hasri Ainun Habibie.', '2012-12-20', 2.105, 7.6),
(219, 'Perahu Kertas', '3', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/bcLRYE0sF9dotqpU7ZlW1jRVZPp.jpg', 'Tidal relationship between two human beings, Kugy and Keenan. Kugy is a tomboyish girl, cheerful, and who believes that she is the agent of Neptune.', '2012-08-16', 588, 7.0),
(220, 'Encanto', '2', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/4j0PNHkMr5ax3IA8tjtxcmPU3QT.jpg', 'A Colombian teenage girl has to face the frustration of being the only member of her family without magical powers.', '2021-11-24', 201.589, 7.2),
(221, 'Raya and the Last Dragon', '2', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/lPsD10PP4rgUGiGR4CCXA6iY0QQ.jpg', 'In a realm known as Kumandra, a re-imagined Earth inhabited by an acient civilization, a warrior named Raya is determined to find the last dragon.', '2021-03-05', 144.022, 7.3),
(222, 'Coco', '2', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/gGEsBPAijhVUFoiNpgZXqRVWJt2.jpg', 'Aspiring musician Miguel, confronted with his family`s ancestral ban on music, enters the Land of the Dead to find his great-great-grandfather, a legendary singer.', '2017-11-22', 481.461, 8.4),
(223, 'Onward', '2', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/f4aul3FyD3jv3v4bul1IrkWZvzq.jpg', 'Two elven brothers embark on a quest to bring their father back for one day.', '2020-03-06', 142.862, 7.4),
(224, 'Luca', '2', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/8tABCBpzu3mZbzMB3sRzMEHEvJi.jpg', 'On the Italian Riviera, an unlikely but strong friendship grows between a human being and a sea monster disguised as a human', '2021-06-18', 151.722, 7.4),
(225, 'Brave', '2', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/1XAuDtMWpL0sYSFK0R6EZate2Ux.jpg', 'Determined to make her own path in life, Princess Merida defies a custom that brings chaos to her kingdom. Granted one wish, Merida must rely on her bravery and her archery skills to undo a beastly curse.', '2012-06-22', 403.601, 7.1),
(226, 'Frozen', '2', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/kgwjIb2JDHRhNk13lmSxiClFjVk.jpg', 'When the newly crowned Queen Elsa accidentally uses her power to turn things into ice to curse her home in infinite winter, her sister Anna teams up with a mountain man, his playful reindeer, and a snowman to change the weather condition.', '2013-11-27', 613.114, 7.4),
(227, 'Frozen II', '2', 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/mINJaa34MtknCYl5AjtNJzWj8cD.jpg', 'Anna, Elsa, Kristoff, Olaf, and Sven leave Arendelle to travel to an ancient, autumn-bound forest of an enchanted land. They set out to find the origin of Elsa`s power in order to save their kingdom.', '2019-11-22', 165.965, 6.8),
(228, 'Tangled', '2', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ym7Kst6a4uodryxqbGOxmewF235.jpg', 'The magically long-haired Rapunzel has spent her entire life in a tower, but now that a runaway thief has stumbled upon her, she is about to discover the world for the first time, and who she really is.', '2010-11-24', 442.283, 7.7),
(229, 'Big Hero 6', '2', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/2mxS4wUimwlLmI1xp6QW6NSU361.jpg', 'A special bond develops between plus-sized inflatable robot Baymax and prodigy Hiro Hamada, who together team up with a group of friends to form a band of high-tech heroes.', '2014-11-07', 450.122, 7.8),
(230, 'Stranger Things', '5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/49WJfeN0moxb9IPfGn8AIqMGskD.jpg', 'When a young boy disappears, his mother, a police chief and his friends must confront terrifying supernatural forces in order to get him back.', '2016-06-15', 999.999, 8.7),
(231, 'Friends', '5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/f496cm9enuEsZkSPzCwnTESEK5s.jpg', 'Follows the personal and professional lives of six twenty to thirty-something-year-old friends living in Manhattan', '1994-12-02', 956.625, 8.9),
(232, 'Grey`s Anatomy', '5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/zPIug5giU8oug6Xes5K1sTfQJxY.jpg', 'A drama centered on the personal and professional lives of five surgical interns and their supervisors.', '2005-03-27', 296.238, 7.6),
(233, 'Gossip Girl', '5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/mRvSUuU1VQQkZZ578jKJpcUCuL8.jpg', 'Privileged teens living on the Upper East Side of New York can hide no secret from the ruthless blogger who is always watching.', '2007-11-09', 170.485, 7.4),
(234, '13 Reasons Why', '5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/nel144y4dIOdFFid6twN5mAX9Yd.jpg', 'Follows teenager Clay Jensen, in his quest to uncover the story behind his classmate and crush, Hannah, and her decision to end her life.', '2017-06-15', 283.976, 7.5),
(235, 'Pretty Little Liars', '5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/aUPbHiLS3hCHKjtLsncFa9g0viV.jpg', 'Four friends band together against an anonymous foe who threatens to reveal their darkest secrets, while also investigating the disappearance of their best friend.', '2010-07-17', 163.844, 7.4),
(236, 'The Vampire Diaries', '5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/aBkVgChtyyJaHyZh1gfd8DbzQon.jpg', 'The lives, loves, dangers and disasters in the town, Mystic Falls, Virginia. Creatures of unspeakable horror lurk beneath this town as a teenage girl is suddenly torn between two vampire brothers.', '2009-08-19', 312.372, 7.7),
(237, 'Riverdale', '5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/kzZUa05wZOEiC2UVuJA2T8VrETU.jpg', 'While navigating the troubled waters of romance, school and family, Archie and his gang become entangled in dark Riverdale mysteries.', '2017-07-08', 139.946, 6.7),
(238, 'Elite', '5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/3NTAbAiao4JLzFQw6YxP1YZppM8.jpg', 'When three working-class teenagers begin attending an exclusive private school in Spain, the clash between them and the wealthy students leads to murder.', '2018-10-05', 74.195, 7.4),
(239, 'Game of Thrones', '5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/u3bZgnGQ9T01sWNhyveQz0wH0Hl.jpg', 'Nine noble families fight for control over the lands of Westeros, while an ancient enemy returns after being dormant for millennia.', '2011-02-25', 999.999, 9.2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

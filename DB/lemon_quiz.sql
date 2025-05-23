-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2025 at 07:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lemon_quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `option_a` varchar(255) NOT NULL,
  `option_b` varchar(255) NOT NULL,
  `option_c` varchar(255) NOT NULL,
  `option_d` varchar(255) NOT NULL,
  `correct_option` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `correct_option`) VALUES
(1, 'What is the boiling point of water at sea level?', '90°C', '100°C', '110°C', '120°C', 'b'),
(2, 'Who wrote the play \"Romeo and Juliet\"?', 'William Wordsworth', 'Jane Austen', 'William Shakespeare', 'Leo Tolstoy', 'c'),
(3, 'What planet is known as the Red Planet?', 'Venus', 'Mars', 'Jupiter', 'Saturn', 'b'),
(4, 'Which gas do plants absorb from the atmosphere?', 'Oxygen', 'Carbon Dioxide', 'Nitrogen', 'Hydrogen', 'b'),
(5, 'What is the capital of France?', 'Berlin', 'Madrid', 'Paris', 'Rome', 'c'),
(6, 'Which element has the chemical symbol O?', 'Gold', 'Oxygen', 'Osmium', 'Iron', 'b'),
(7, 'What is the powerhouse of the cell?', 'Nucleus', 'Ribosome', 'Mitochondria', 'Chloroplast', 'c'),
(8, 'Which continent is the Sahara Desert located in?', 'Asia', 'Africa', 'Australia', 'South America', 'b'),
(9, 'How many legs does a spider have?', '6', '8', '10', '12', 'b'),
(10, 'What is the largest planet in our solar system?', 'Earth', 'Jupiter', 'Saturn', 'Neptune', 'b'),
(11, 'What is the chemical symbol for sodium?', 'Na', 'So', 'Sn', 'Sd', 'a'),
(12, 'Who painted the Mona Lisa?', 'Vincent van Gogh', 'Leonardo da Vinci', 'Michelangelo', 'Raphael', 'b'),
(13, 'What is the capital of Japan?', 'Seoul', 'Beijing', 'Tokyo', 'Bangkok', 'c'),
(14, 'Which part of the plant conducts photosynthesis?', 'Root', 'Stem', 'Leaf', 'Flower', 'c'),
(15, 'Who discovered gravity?', 'Isaac Newton', 'Albert Einstein', 'Galileo Galilei', 'Nikola Tesla', 'a'),
(16, 'What is the largest organ in the human body?', 'Heart', 'Skin', 'Liver', 'Lung', 'b'),
(17, 'Which country is known as the Land of the Rising Sun?', 'China', 'Japan', 'Thailand', 'India', 'b'),
(18, 'What is the smallest prime number?', '0', '1', '2', '3', 'c'),
(19, 'Which blood cells help our body fight infection?', 'Red blood cells', 'Platelets', 'White blood cells', 'Plasma', 'c'),
(20, 'What is the main gas found in the air we breathe?', 'Oxygen', 'Nitrogen', 'Carbon Dioxide', 'Hydrogen', 'b'),
(21, 'Which language has the most native speakers?', 'English', 'Hindi', 'Spanish', 'Mandarin Chinese', 'd'),
(22, 'What is the process of water changing from liquid to gas?', 'Condensation', 'Precipitation', 'Evaporation', 'Sublimation', 'c'),
(23, 'What planet is closest to the sun?', 'Mercury', 'Venus', 'Earth', 'Mars', 'a'),
(24, 'What is the currency of the UK?', 'Dollar', 'Euro', 'Pound', 'Franc', 'c'),
(25, 'How many continents are there?', '5', '6', '7', '8', 'c'),
(26, 'What is the longest river in the world?', 'Amazon', 'Nile', 'Yangtze', 'Mississippi', 'b'),
(27, 'Which scientist developed the theory of relativity?', 'Isaac Newton', 'Marie Curie', 'Albert Einstein', 'Charles Darwin', 'c'),
(28, 'How many teeth does an adult human usually have?', '28', '30', '32', '36', 'c'),
(29, 'Which is the hardest natural substance on Earth?', 'Gold', 'Iron', 'Diamond', 'Granite', 'c'),
(30, 'Which metal is liquid at room temperature?', 'Iron', 'Mercury', 'Zinc', 'Aluminum', 'b'),
(31, 'What is the powerhouse of a cell?', 'Nucleus', 'Mitochondria', 'Ribosome', 'Cytoplasm', 'b'),
(32, 'Who invented the telephone?', 'Alexander Graham Bell', 'Thomas Edison', 'Nikola Tesla', 'Tim Berners-Lee', 'a'),
(33, 'Which is the largest ocean on Earth?', 'Atlantic', 'Indian', 'Pacific', 'Arctic', 'c'),
(34, 'Which vitamin is produced in the skin when exposed to sunlight?', 'Vitamin A', 'Vitamin C', 'Vitamin D', 'Vitamin E', 'c'),
(35, 'Who was the first man to walk on the moon?', 'Buzz Aldrin', 'Yuri Gagarin', 'Neil Armstrong', 'Michael Collins', 'c'),
(36, 'What is the capital of Canada?', 'Toronto', 'Ottawa', 'Vancouver', 'Montreal', 'b'),
(37, 'How many bones are in the adult human body?', '206', '208', '210', '212', 'a'),
(38, 'Which gas is used in balloons to make them float?', 'Oxygen', 'Hydrogen', 'Nitrogen', 'Helium', 'd'),
(39, 'Which part of the brain controls breathing?', 'Cerebrum', 'Cerebellum', 'Medulla', 'Hypothalamus', 'c'),
(40, 'Which country gifted the Statue of Liberty to the USA?', 'Germany', 'France', 'Italy', 'Spain', 'b'),
(41, 'Which continent is the largest by land area?', 'Africa', 'Asia', 'Europe', 'North America', 'b'),
(42, 'What does DNA stand for?', 'Deoxyribonucleic Acid', 'Dinitrogen Acid', 'Double Helix Acid', 'Dynamic Nucleic Agent', 'a'),
(43, 'How many players are on a soccer team?', '9', '10', '11', '12', 'c'),
(44, 'Which organ is responsible for pumping blood?', 'Liver', 'Lung', 'Heart', 'Kidney', 'c'),
(45, 'What is the freezing point of water?', '0°C', '32°C', '100°C', '273°C', 'a'),
(46, 'What is the national language of Brazil?', 'Spanish', 'Portuguese', 'French', 'English', 'b'),
(47, 'Which bird is the fastest on land?', 'Ostrich', 'Penguin', 'Sparrow', 'Peacock', 'a'),
(48, 'What is the tallest mountain in the world?', 'K2', 'Mount Everest', 'Kilimanjaro', 'Makalu', 'b'),
(49, 'Who is the author of \"Harry Potter\"?', 'J.R.R. Tolkien', 'J.K. Rowling', 'George R.R. Martin', 'Suzanne Collins', 'b'),
(50, 'Which country has the most population?', 'India', 'USA', 'China', 'Russia', 'c'),
(51, 'Which planet has rings?', 'Earth', 'Mars', 'Saturn', 'Mercury', 'c'),
(52, 'Which insect can lift the most weight for its size?', 'Butterfly', 'Ant', 'Beetle', 'Wasp', 'b'),
(53, 'Which is the longest bone in the human body?', 'Humerus', 'Tibia', 'Femur', 'Fibula', 'c'),
(54, 'What is the main source of energy for Earth?', 'The Moon', 'The Sun', 'The Stars', 'Wind', 'b'),
(55, 'Who was the first President of the United States?', 'Abraham Lincoln', 'George Washington', 'Thomas Jefferson', 'John Adams', 'b'),
(56, 'What is the process by which plants make food?', 'Respiration', 'Digestion', 'Photosynthesis', 'Transpiration', 'c'),
(57, 'How many hours are in a day?', '24', '12', '48', '60', 'a'),
(58, 'Which animal is known as the King of the Jungle?', 'Elephant', 'Tiger', 'Lion', 'Leopard', 'c'),
(59, 'What does a thermometer measure?', 'Weight', 'Height', 'Temperature', 'Speed', 'c'),
(60, 'Which gas do humans exhale?', 'Oxygen', 'Nitrogen', 'Carbon Dioxide', 'Hydrogen', 'c'),
(61, 'What color are most leaves?', 'Red', 'Yellow', 'Green', 'Blue', 'c'),
(62, 'Which tool is used to look at stars?', 'Microscope', 'Periscope', 'Telescope', 'Binoculars', 'c'),
(63, 'Which planet is known for its big red spot?', 'Earth', 'Jupiter', 'Saturn', 'Uranus', 'b'),
(64, 'How many sides does a triangle have?', '2', '3', '4', '5', 'b'),
(65, 'What is H2O?', 'Hydrogen', 'Oxygen', 'Salt', 'Water', 'd'),
(66, 'How many months are there in a year?', '10', '11', '12', '13', 'c'),
(67, 'What is the capital of Australia?', 'Sydney', 'Melbourne', 'Canberra', 'Perth', 'c'),
(68, 'What is 10 multiplied by 10?', '100', '1000', '10', '110', 'a'),
(69, 'Which animal can live both in water and on land?', 'Tiger', 'Elephant', 'Frog', 'Giraffe', 'c'),
(70, 'Which famous scientist developed the laws of motion?', 'Einstein', 'Newton', 'Tesla', 'Curie', 'b'),
(71, 'What part of the plant absorbs water?', 'Stem', 'Leaf', 'Root', 'Flower', 'c'),
(72, 'Which instrument is used to measure weight?', 'Thermometer', 'Barometer', 'Scale', 'Telescope', 'c'),
(73, 'What do bees collect from flowers?', 'Seeds', 'Honey', 'Nectar', 'Pollen', 'c'),
(74, 'What does a compass show?', 'Height', 'Time', 'Direction', 'Temperature', 'c'),
(75, 'What is the main language spoken in Spain?', 'French', 'English', 'Portuguese', 'Spanish', 'd'),
(76, 'What is the nearest planet to Earth?', 'Mars', 'Venus', 'Jupiter', 'Mercury', 'b'),
(77, 'What shape has 4 equal sides?', 'Triangle', 'Rectangle', 'Circle', 'Square', 'd'),
(78, 'How many hours are there in a week?', '168', '172', '160', '150', 'a'),
(79, 'Which is the second largest planet in our solar system?', 'Earth', 'Saturn', 'Jupiter', 'Uranus', 'b'),
(80, 'Which ancient civilization built the pyramids?', 'Romans', 'Indians', 'Chinese', 'Egyptians', 'd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

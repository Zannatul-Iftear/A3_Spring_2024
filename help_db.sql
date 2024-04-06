-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2024 at 01:54 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `help_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `chapters`
--

CREATE TABLE `chapters` (
  `chapterID` int(10) NOT NULL,
  `chapterSubject` varchar(50) NOT NULL,
  `chapterNumber` int(10) NOT NULL,
  `chapterName` varchar(50) NOT NULL,
  `chapterPages` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `chapters`
--

INSERT INTO `chapters` (`chapterID`, `chapterSubject`, `chapterNumber`, `chapterName`, `chapterPages`) VALUES
(1, 'Physics', 1, 'Physical Quantities and Their Measurements', '1-30'),
(2, 'Physics', 2, 'Motion', '31-60'),
(3, 'Physics', 3, 'Force', '61-96'),
(4, 'Physics', 4, 'Work, Power and Energy', '97-126'),
(5, 'Physics', 5, 'State of Matter and Pressure', '127-159'),
(6, 'Physics', 6, 'Effect of Heat on Matter', '160-186'),
(7, 'Physics', 7, 'Waves and Sound', '187-210'),
(8, 'Physics', 8, 'Reflection of Light', '211-241'),
(9, 'Physics', 9, 'Refraction of Light', '242-277'),
(10, 'Physics', 10, 'Static Electricity', '278-306'),
(11, 'Physics', 11, 'Current Electricity', '307-337'),
(12, 'Physics', 12, 'Magnetic Effects of Current', '338-354'),
(13, 'Physics', 13, 'Modern Physics and Electronics', '355-388'),
(14, 'Physics', 14, 'Physics to Save Life', '389-408'),
(15, 'Higher Mathematics', 1, 'Sets and Functions', '1-40'),
(16, 'Higher Mathematics', 2, 'Algebraic Expressions', '41-64'),
(17, 'Higher Mathematics', 3, 'Geometry', '65-80'),
(18, 'Higher Mathematics', 4, 'Geometric Constructions', '81-91'),
(19, 'Higher Mathematics', 5, 'Equations', '92-112'),
(20, 'Higher Mathematics', 6, 'Inequality', '113-124'),
(21, 'Higher Mathematics', 7, 'Infinite Series', '125-133'),
(22, 'Higher Mathematics', 8, 'Trigonometry', '134-180'),
(23, 'Higher Mathematics', 9, 'Exponential & Logarithmic Functions', '181-208'),
(24, 'Higher Mathematics', 10, 'Binomial Expansion', '209-224'),
(25, 'Higher Mathematics', 11, 'Coordinate Geometry', '225-255'),
(26, 'Higher Mathematics', 12, 'Vectors in a Plane', '256-269'),
(27, 'Higher Mathematics', 13, 'Solid Geometry', '270-285'),
(28, 'Higher Mathematics', 14, 'Probability', '286-295');

-- --------------------------------------------------------

--
-- Table structure for table `papers`
--

CREATE TABLE `papers` (
  `paperID` int(10) NOT NULL,
  `paperLevel` varchar(10) NOT NULL,
  `paperYear` int(10) NOT NULL,
  `paperSubject` varchar(50) NOT NULL,
  `paperBoard` varchar(30) NOT NULL,
  `paperMarks` varchar(30) NOT NULL,
  `paperTime` varchar(30) NOT NULL,
  `paperNote` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `papers`
--

INSERT INTO `papers` (`paperID`, `paperLevel`, `paperYear`, `paperSubject`, `paperBoard`, `paperMarks`, `paperTime`, `paperNote`) VALUES
(14, 'SSC', 2015, 'Higher Mathematics', 'Dhaka Board', 'Full marks — 40', 'Time — 2 Hours', '[N.B. — Answer 4 questions out of 6. Answering minimum 1 question from every set is a mandatory.]'),
(15, 'SSC', 2015, 'Physics', 'Model Question', 'Full marks — 40', 'Time — 2 Hours', '[N.B.- The figures in the right margin indicate full marks. Answer any four Questions]'),
(16, 'SSC', 2016, 'Physics', 'Dhaka Board', 'Full marks — 40', 'Time — 2 Hours 10 minutes', '[N.B.- The figures in the right margin indicate full marks. Answer any four Questions]'),
(18, 'SSC', 2017, 'Physics', 'Dhaka Board', 'Full marks — 50', 'Time — 2 Hours 35 minutes', '[N.B.- The figures in the right margin indicate full marks. Answer any five Questions]'),
(19, 'SSC', 2018, 'Physics', 'Model Question', 'Full marks — 50', 'Time — 2 Hours 35 minutes', '[N.B.- The figures in the right margin indicate full marks. Answer any five Questions]'),
(20, 'SSC', 2019, 'Physics', 'Model Question', 'Full marks — 50', 'Time — 2 Hours 35 minutes', '[N.B.- The figures in the right margin indicate full marks. Answer any five Questions]'),
(22, 'SSC', 2020, 'Physics', 'Model Question', 'Full marks — 50', 'Time — 2 Hours 35 minutes', '[N.B.- The figures in the right margin indicate full marks. Answer any five Questions]'),
(23, 'SSC', 2021, 'Physics', 'Model Question', 'Full marks — 50', 'Time — 2 Hours 35 minutes', '[N.B.- The figures in the right margin indicate full marks. Answer any five Questions]');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `questionID` int(10) NOT NULL,
  `questionType` varchar(10) NOT NULL,
  `questionMarks` varchar(20) NOT NULL,
  `questionSet` varchar(50) DEFAULT NULL,
  `questionText` mediumtext NOT NULL,
  `questionImg` varchar(10) DEFAULT NULL,
  `paperID` int(10) NOT NULL,
  `chapterID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`questionID`, `questionType`, `questionMarks`, `questionSet`, `questionText`, `questionImg`, `paperID`, `chapterID`) VALUES
(84, 'Creative', '(2+4+4) = 10 Marks', 'A: Algebra', 'A = {x : x ∈ R and x<sup>2</sup> - (a + b)x + ab = 0}, B = {2,3}, C = {2,4,5} where a,b ∈ R<br><br>\r\n\r\na. Determine the elements of Set A.<br>\r\nb. Show that, P(B ∩ C) = P(B) ∩ P(C).<br>\r\nc. Prove that, A × (B ∪ C) = (A × B) ∪ (A × C).', 'none', 14, 15),
(85, 'Creative', '(2+4+4) = 10 Marks', 'A: Algebra', 'The polynomial of x, y, z is F(x,y,z) = x<sup>3</sup> + y<sup>3</sup> + z<sup>3</sup> - 3xyz<br><br>\r\n\r\na. Show that F(x,y,z) is a cyclic expression.<br>\r\nb. Factorize F(x,y,z) and if F(x,y,z) = 0, x+y+z ≠ 0; then show that x<sup>2</sup> + y<sup>2</sup> +  z<sup>2</sup> = xy + yz + zx.<br>\r\nc. If x = b + c - a, y = c + a - b and z = a + b - c; then show\r\nthat F(a,b,c) : F(x,y,z) = 1 : 4', 'none', 14, 16),
(86, 'Creative', '(2+4+4) = 10 Marks', 'B: Geometry and Vector', 'The medians of △ABC; AD, BE and CF intersect at point O.<br><br>\r\n\r\na. Define point O. In what ratio it divides AD?\r\n<br>b. Draw the figure given in the system and show that, \r\nAB<sup>2</sup> + AC<sup>2</sup> - 2(AD<sup>2</sup> + BD<sup>2</sup>).\r\n<br>c. Prove that, AB<sup>2</sup> + BC<sup>2</sup> + AC<sup>2</sup> = 3(AO<sup>2</sup> + BO<sup>2</sup> + CO<sup>2</sup>).', 'none', 14, 18),
(87, 'Creative', '(2+4+4) = 10 Marks', 'B: Geometry and Vector', 'The line passing through A(1, 4a) and B(5, a<sup>2</sup> - 1) has a slope of -1.<br><br>\r\n\r\na. Show that A has two values.<br>\r\nb. Four points, obtained from values of A, are named C,D,E,F. Find out the area of CDEF.<br>\r\nc. Determine whether the polygon is parallelogram or\r\nrectangle.\r\n', 'none', 14, 26),
(88, 'Creative', '(2+4+4) = 10 Marks', 'C: Trigonometry and Probability', 'Answer the following questions for the figure above:<br><br>\r\na. If O is the centre of the circle, then find AC.<br>\r\nb. Prove that, tanA + tanB + tanC + tanD = 0.<br>\r\nc. If secθ + cosθ = x then solve the equations and find x.\r\n', 'h15c5.png', 14, 22),
(89, 'Creative', '(2+4+4) = 10 Marks', 'C: Trigonometry and Probability', 'An unbiased coin is thrown three times.<br><br>\r\na. Define sample space with example.<br>\r\nb. Create sample space mentioning a probability tree.<br>\r\nc. Find out the probability of these events:<br>\r\n(i) Only one tail.<br>\r\n(ii) Minimum one head.', 'none', 14, 28),
(90, 'MCQ', '1 Mark', 'null', 'In which quadrant -240° angle is located?<br><br>\r\nⒶ 1st<br>\r\nⒷ 2nd<br>\r\nⒸ 3rd <br>\r\nⒹ 4th\r\n', 'none', 14, 25),
(91, 'MCQ', '1 Mark', 'null', 'If the n<sup>th</sup> term of a sequence is <sup>1</sup>/<sub>2n-1</sub>, then what is the value of the 12th term?<br><br>\r\nⒶ 23<br>\r\nⒷ 12<br>\r\nⒸ <sup>1</sup>/<sub>12</sub><br>\r\nⒹ <sup>1</sup>/<sub>13</sub>', 'none', 14, 21),
(92, 'MCQ', '1 Mark', 'null', 'If (x + 1) is a factor of x<sup>3</sup> + 2x<sup>2</sup> + 2x + a, then a = ?<br><br>\r\nⒶ -5<br>\r\nⒷ -1<br>\r\nⒸ 1<br>\r\nⒹ 5', 'none', 14, 19),
(93, 'MCQ', '1 Mark', 'null', 'From the figure, B is the middle point of EF and DC⊥EF;<br>\r\ni. DE<sup>2</sup> = DC<sup>2</sup> + CE<sup>2</sup><br>\r\nii. DE<sup>2</sup> + DF<sup>2</sup> = 2(BE<sup>2</sup> + BD<sup>2</sup>)<br>\r\niii. DF<sup>2</sup> = BF<sup>2</sup> + CD<sup>2</sup><br><br>\r\n\r\nWhich of the following is true?<br><br>\r\nⒶ i<br>\r\nⒷ i & ii<br>\r\nⒸ i & iii<br>', 'h15m4.png', 14, 17),
(94, 'MCQ', '1 Mark', 'null', 'What is the value of sin 120°?<br><br>\r\n\r\nⒶ <sup>√3</sup>/<sub>2</sub><br>\r\nⒷ <sup>1</sup>/<sub>2</sub><br>\r\nⒸ <sup>1</sup>/<sub>√2</sub><br>\r\nⒹ -<sup>1</sup>/<sub>2</sub>', 'none', 14, 22),
(95, 'MCQ', '1 Mark', 'null', 'What is the leading coefficient of the polynomial x<sup>6</sup> + 3x<sup>5</sup> - 2x<sup>4</sup> - 5?<br><br>\r\n\r\nⒶ -5<br>\r\nⒷ 1<br>\r\nⒸ 3<br>\r\nⒹ 6', 'none', 14, 16),
(96, 'MCQ', '1 Mark', 'null', 'If the side of a equilateral triangle is 5 cm, then what is the length of the median?<br><br>\r\n\r\nⒶ 2.50 cm<br>\r\nⒷ 4.33 cm<br>\r\nⒸ 5 cm<br>\r\nⒹ 8.66 cm', 'none', 14, 17),
(97, 'MCQ', '1 Mark', 'null', 'If a set has 3 elements then what is the number of real subsets?<br><br>\r\n\r\nⒶ 3<br>\r\nⒷ 6<br>\r\nⒸ 8<br>\r\nⒹ 7', 'none', 14, 15),
(98, 'MCQ', '1 Mark', 'null', 'If the given data are the lengths of 3 sides of a triangle, then which can be drawn into an obtuse triangle?<br><br>\r\n\r\nⒶ 3, 3, 4<br>\r\nⒷ 3, 4, 4<br>\r\nⒸ 3, 4, 5<br>\r\nⒹ 3, 4, 6', 'none', 14, 18),
(100, 'MCQ', '1 Mark', 'null', 'For the function <i>f</i>(x) = <sup>2x</sup>/<sub>x-4</sub> [x ≠ 4] what is the value of <i>f</i>(10)?\r\n<br><br>\r\n\r\nⒶ 10<br>\r\nⒷ 5<br>\r\nⒸ <sup>10</sup>/<sub>3</sub><br>\r\nⒹ <sup>3</sup>/<sub>10</sub>', 'none', 14, 15),
(101, 'MCQ', '1 Mark', 'null', 'What is the distance between (6, 3) and (2, 2)?<br><br>\r\n \r\nⒶ √15<br>\r\nⒷ √17<br>\r\nⒸ √65<br>\r\nⒹ √97', 'none', 14, 25),
(102, 'MCQ', '1 Mark', 'null', 'The side of a cube has a length of 3 cm, what is the length of a diagonal?<br><br>\r\n\r\nⒶ 27 cm<br>\r\nⒷ 9 cm<br>\r\nⒸ 3√3 cm<br>\r\nⒹ 3√2 cm', 'none', 14, 27),
(103, 'MCQ', '1 Mark', 'null', 'What is the probability of getting a number divisible by 2 if a dice is thrown?<br><br>\r\n\r\nⒶ <sup>1</sup>/<sub>6</sub><br>\r\nⒷ <sup>1</sup>/<sub>3</sub><br>\r\nⒸ <sup>1</sup>/<sub>2</sub><br>\r\nⒹ <sup>2</sup>/<sub>3</sub>', 'none', 14, 28),
(104, 'MCQ', '1 Mark', 'null', 'L, M, N points are the midpoints of their lines.<br>\r\nPO : OL = ?<br><br>\r\n\r\nⒶ 1 : 1<br>\r\nⒷ 2 : 1<br>\r\nⒸ 3 : 1<br>\r\nⒹ 3 : 2', 'h15m14.png', 14, 17),
(105, 'MCQ', '1 Mark', 'null', 'L, M, N points are the midpoints of their lines. The radius of the circumcircle is 3 cm. What is the radius of the 9-point circle?<br><br>\r\n\r\nⒶ 9 cm<br>\r\nⒷ 6 cm<br>\r\nⒸ 3 cm<br>\r\nⒹ 1.5 cm', 'h15m15.png', 14, 17),
(106, 'MCQ', '1 Mark', 'null', 'If p(x, y) = x<sup>2</sup> + y<sup>2</sup> - 2xy then p(1, -2)?<br><br>\r\n\r\nⒶ 9<br>\r\nⒷ 1<br>\r\nⒸ -1<br>\r\nⒹ -9', 'none', 14, 25),
(107, 'MCQ', '1 Mark', 'null', 'What is the half angle of the supplementary angle of 60°?<br><br>\r\n\r\nⒶ 120°<br>\r\nⒷ 60°<br>\r\nⒸ 30°<br>\r\nⒹ 15°', 'none', 14, 18),
(108, 'MCQ', '1 Mark', 'null', 'Two unbiased coins are tossed once at the same time. What is the probability of not getting any H?<br><br>\r\n\r\nⒶ <sup>3</sup>/<sub>4</sub><br>\r\nⒷ <sup>1</sup>/<sub>4</sub><br>\r\nⒸ <sup>3</sup>/<sub>8</sub><br>\r\nⒹ <sup>1</sup>/<sub>8</sub>', 'none', 14, 28),
(109, 'MCQ', '1 Mark', 'null', 'Two unbiased coins are tossed once at the same time. What is the probability of getting at least 1 H?<br><br>\r\n\r\nⒶ <sup>3</sup>/<sub>4</sub><br>\r\nⒷ <sup>1</sup>/<sub>2</sub><br>\r\nⒸ <sup>1</sup>/<sub>4</sub><br>\r\nⒹ <sup>3</sup>/<sub>8</sub>\r\n', 'none', 14, 28),
(110, 'MCQ', '1 Mark', 'null', 'log<sub>√2</sub>16√2 = ?<br><br>\r\nⒶ 2√2<br>\r\nⒷ 4<br>\r\nⒸ 8<br>\r\nⒹ 9', 'none', 14, 23),
(111, 'MCQ', '1 Mark', 'null', 'If the position vectors of points A and B with respect to origin O are <u>a</u> and <u>b</u> respectively and P divides AB int 2 : 1 internally, then vector OP = ?<br><br>\r\n\r\nⒶ <u>a</u> - 2<u>b</u><br>\r\nⒷ 2<u>a</u> - <u>b</u><br>\r\nⒸ <sup>(2<u>a</u> + <u>b</u>)</sup>/<sub>3</sub><br>\r\nⒹ <sup><u>(a</u> + 2<u>b</u>)</sup>/<sub>3</sub>', 'none', 14, 26),
(112, 'MCQ', '1 Mark', 'null', 'For the series 2 - 2 + 2 = 2 + .....<br>\r\ni. General term = 2(-1)<sup>n-1</sup><br>\r\nii. 15<sup>th</sup> term = 2<br>\r\niii. Summation of first 50 terms = 0<br><br>\r\n\r\nWhich of the following is true?<br><br>\r\n\r\nⒶ i & ii<br>\r\nⒷ ii & iii<br>\r\nⒸ i & iii<br>\r\nⒹ i, ii & iii', 'none', 14, 21),
(113, 'MCQ', '1 Mark', 'null', 'For the equation and inequality —<br>\r\ni. the solution of the inequality x<sup>2</sup> - 4x + 4 > 0 is x = 2<br>\r\nii. the roots of the equation x<sup>2</sup> + 6x + 9 = 0, are equal<br>\r\niii. If b<sup>2</sup> - 4ac > 0 then the roots of the equation ax<sup>2</sup> + bx + c = 0 are real and inequal<br><br>\r\n\r\nWhich of the following is true?<br><br>\r\n\r\nⒶ i<br>\r\nⒷ ii<br>\r\nⒸ ii & iii<br>\r\nⒹ i, ii & iii', 'none', 14, 20),
(114, 'MCQ', '1 Mark', 'null', 'Which of the following is symmetric?<br><br>\r\n\r\nⒶ 2a<sup>2</sup> - 5ab + c<sup>2</sup><br>\r\nⒷ xy + yz - zx<br>\r\nⒸ x<sup>2</sup> - y<sup>2</sup> + z<sup>2</sup><br>\r\nⒹ a + b + c', 'none', 14, 16),
(115, 'MCQ', '1 Mark', 'null', 'What is the value of cubeRoot(cubeRoot(cubeRoot(729)))?<br><br>\r\n\r\nⒶ 3<sup><sup>1</sup>/<sub>9</sub></sup><br>\r\nⒷ 3<sup><sup>2</sup>/<sub>9</sub></sup><br>\r\nⒸ 3<sup><sup>1</sup>/<sub>3</sub></sup><br>\r\nⒹ 3\r\n', 'none', 14, 16),
(116, 'MCQ', '1 Mark', 'null', 'The summation and difference of two angles are <sup>π</sup>/<sub>3</sub> and <sup>π</sup>/<sub>6</sub> radian respectively. Find the larger angle.<br><br>\r\n\r\nⒶ <sup>π</sup>/<sub>2</sub><br>\r\nⒷ <sup>π</sup>/<sub>3</sub><br>\r\nⒸ <sup>π</sup>/<sub>4</sub><br>\r\nⒹ <sup>π</sup>/<sub>6</sub>', 'none', 14, 17),
(117, 'MCQ', '1 Mark', 'null', '(x - y)<sup>6</sup> is a binomial term. How many terms will be there for the expansion of the binomial?<br><br>\r\n\r\nⒶ 3<br>\r\nⒷ 6<br>\r\nⒸ 7<br>\r\nⒹ 12\r\n', 'none', 14, 24),
(118, 'MCQ', '1 Mark', 'null', '(x - y)<sup>6</sup> is a binomial term. If y = <sup>1</sup>/<sub>x</sub> then, what will be the constant term?<br><br>\r\n\r\nⒶ -20<br>\r\nⒷ 1<br>\r\nⒸ 4<br>\r\nⒹ 20', 'none', 14, 24),
(119, 'MCQ', '1 Mark', 'null', 'A student buys 5 ballpens at x tk each and 7 pencils at (x + 4) tk each from a shopkeeper for not more than 112 taka. What is the correct expression of x?<br><br>\r\n\r\nⒶ 11 > x ≥ 7<br>\r\nⒷ 11 ≥ x ≥ 7<br>\r\nⒸ 0 < x ≤ 7<br>\r\nⒹ 0 < x < 7', 'none', 14, 20),
(120, 'MCQ', '1 Mark', 'null', 'F = {(2, -1), (3, -2), (4, -2)} —<br>\r\ni. F is a function<br>\r\nii. F is a one-one function<br>\r\niii. the range of F is {-1, -2}<br><br>\r\n\r\nWhich of the following is true?<br><br>\r\n\r\nⒶ i<br>\r\nⒷ ii<br>\r\nⒸ i & iii<br>\r\nⒹ ii & iii', 'none', 14, 15),
(121, 'MCQ', '1 Mark', 'null', 'A triangular uniform prism has a base of 4 cm and height 4 cm. What is the volume?<br><br>\r\n\r\nⒶ 16√3 cm<sup>3</sup><br>\r\nⒷ 48 cm<sup>3</sup><br>\r\nⒸ 48√3 cm<sup>3</sup><br>\r\nⒹ 64 cm<sup>3</sup>', 'none', 14, 27),
(122, 'MCQ', '1 Mark', 'null', 'A triangular uniform prism has a base of 4 cm and height 4 cm. What is the total surface area?<br><br>\r\n\r\nⒶ 48 cm<sup>2</sup><br>\r\nⒷ 61.86 cm<sup>2</sup><br>\r\nⒸ 64 cm<sup>2</sup><br>\r\nⒹ 77.86 cm<sup>2</sup>', 'none', 14, 27),
(123, 'MCQ', '1 Mark', 'null', 'The line joining (4, 2) and (7, 5) is tilted with x-axis by an angle of —<br><br>\r\n\r\nⒶ 90°<br>\r\nⒷ 60°<br>\r\nⒸ 45°<br>\r\nⒹ 0°', 'none', 14, 25),
(124, 'MCQ', '1 Mark', 'null', 'If x<sup>x√x</sup> = (x√x)<sup>x</sup>, x = ?<br><br>\r\n\r\nⒶ <sup>√3</sup>/<sub>√2</sub><br>\r\nⒷ <sup>3</sup>/<sub>2</sub><br>\r\nⒸ <sup>9</sup>/<sub>2</sub><br>\r\nⒹ <sup>9</sup>/<sub>4</sub>', 'none', 14, 16),
(125, 'MCQ', '1 Mark', 'null', 'At 6am in the morning, what is the angle in radian between the hour-hand and minute-hand?<br><br>\r\nⒶ <sup>π</sup>/<sub>3</sub><br>\r\nⒷ <sup>π</sup>/<sub>2</sub><br>\r\nⒸ π<br>\r\nⒹ 2π\r\n', 'none', 14, 17),
(126, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'a. What is force?<br>\r\nb. What do you mean by inertia of motion?<br>\r\nc. Calculate the impulse of force of the first body of above system.<br>\r\nd. Analyze the law of conservation of momentum in the light of above system.', 'p15c1.png', 15, 3),
(127, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'A truck driver of mass 105kg was driving his truck with velocity 60m/s. He saw a boy 40m away from him. He breaks the car and stops 1m ahead of the boy.<br><br>\r\na. What is instantaneous speed?<br>\r\nb. What do you mean by uniform acceleration?<br>\r\nc. Calculate the force from above system.<br>\r\nd. Will the driver save the boy if he breaks the car with 45ms? Explain mathematically. ', 'none', 15, 2),
(128, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'Two stones of masses 40kg and 50kg are allowed to fall down from 100m height.<br><br>\r\na. What is power?<br>\r\nb. What do you mean by the work 20j?<br>\r\nc. Calculate potential energy of mass 40kg of above system.<br>\r\nd. Whose velocity will be more of above system before striking the ground? Explain mathematically.', 'none', 15, 4),
(129, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'a. Define pressure. <br>\r\nb. What do you mean by density of water is 1000kgm<sup>-3</sup>?<br>\r\nc. Calculate pressure on the body B of above system. <br>\r\nd. Explain mathematically why the two bodies have different position in the beaker of water of above system. ', 'p15c4.png', 15, 5),
(130, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'a. Define focal length.<br>\r\nb. What do you mean by the refractive index of glass is 1.5?<br>\r\nc. Calculate refractive index of above system. <br>\r\nd. Explain a natural incident when incident angle is greater than critical angle. ', 'p15c5.png', 15, 9),
(131, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'a. What is resistance?<br>\r\nb. What do you mean by electric induction? <br>\r\nc. Calculate the equivalent resistance of above system? <br>\r\nd. Explain mathematically through which resistance flow of current flow of current is more of above system. ', 'p15c6.png', 15, 11),
(132, 'MCQ', '1 Mark', 'null', 'Who discovered Calculus?<br><br>\r\nⒶ Newton<br>\r\nⒷ Galileo<br>\r\nⒸ Keplar<br>\r\nⒹ Al Hazen\r\n', 'none', 15, 1),
(133, 'MCQ', '1 Mark', 'null', 'The things that depend on fundamental unit —<br>\r\ni. Volume<br>\r\nii. Time<br>\r\niii. Displacement in unit time<br><br>\r\n\r\nWhich one is correct?<br><br>\r\nⒶ i & ii<br>\r\nⒷ ii & iii<br>\r\nⒸ i & iii<br>\r\nⒹ i, ii & iii', 'none', 15, 1),
(134, 'MCQ', '1 Mark', 'null', 'Diameter of a circle bisects the circle. Who discovered that?<br><br>\r\nⒶ Stresemann<br>\r\nⒷ Aristarchus<br>\r\nⒸ Archimedes<br>\r\nⒹ Thales', 'none', 15, 1),
(135, 'MCQ', '1 Mark', 'null', 'If the velocity of a body of mass is one unit, then what is its kinetic energy?<br><br>\r\nⒶ <sup>1</sup>/<sub>2</sub> units<br>\r\nⒷ 1 unit<br>\r\nⒸ 2 units<br>\r\nⒹ 3 units', 'none', 15, 4),
(136, 'MCQ', '1 Mark', 'null', 'A body falls freely under the action of gravity, the changes of energy are—<br>\r\ni. the potential energy is increased <br>\r\nii. the kinetic energy is increased<br>\r\niii. the potential energy a decreased <br><br>\r\n\r\nWhich one is correct? <br><br>\r\nⒶ i<br>\r\nⒷ ii & iii<br>\r\nⒸ iii<br>', 'none', 15, 4),
(137, 'MCQ', '1 Mark', 'null', 'In transformer the coil in which an a.c e.m.f is applied is known as—<br><br>\r\nⒶ Primary coil <br>\r\nⒷ Secondary coil<br>\r\nⒸ Tertiary coil<br>\r\nⒹ Forth coil', 'none', 15, 11),
(138, 'MCQ', '1 Mark', 'null', 'A transformer can change—<br>\r\ni. magnetic field<br>\r\nii. voltage<br>\r\niii. current<br><br>\r\nWhich one is correct?<br><br>\r\nⒶ i & ii<br>\r\nⒷ ii & iii<br>\r\nⒸ i & iii<br>\r\nⒹ i, ii & iii', 'none', 15, 11),
(139, 'MCQ', '1 Mark', 'null', 'Which one is correct equation for the potential?<br><br>\r\nⒶ V = <sup>W</sup>/<sub>q</sub><br>\r\nⒷ V = Wq<br>\r\nⒸ V = <sup>q</sup>/<sub>W</sub><br>\r\nⒹ V = <sup>W</sup>/<sub>p</sub>', 'none', 15, 11),
(140, 'MCQ', '1 Mark', 'null', 'If three resistances each of 10 Ω are connected in parallel then what will be the equivalent resistance?<br><br>\r\nⒶ 30<br>\r\nⒷ 10<br>\r\nⒸ 3.33<br>\r\nⒹ 0.33\r\n', 'none', 15, 11),
(141, 'MCQ', '1 Mark', 'null', 'If the refractive index of water with respect to air is 4/3 then what will be the refractive Index of air with respect to water?<br><br>\r\nⒶ 0.75<br>\r\nⒷ 1.33<br>\r\nⒸ 1.5<br>\r\nⒹ 0.666', 'none', 15, 9),
(142, 'MCQ', '1 Mark', 'null', 'The stick dipped under water obliquely looks bent, because of—<br><br>\r\nⒶ Reflection<br>\r\nⒷ Refraction<br>\r\nⒸ Diffraction<br>\r\nⒹ Polarization', 'none', 15, 9),
(143, 'MCQ', '1 Mark', 'null', 'A group of optical fiber is called?<br><br>\r\nⒶ Light ray<br>\r\nⒷ Tube of light<br>\r\nⒸ Optical lens<br>\r\nⒹ Optical Mirror', 'none', 15, 13),
(144, 'MCQ', '1 Mark', 'null', 'The wave length of a sound wave is produced by a body in air is 0.2m. If the speed of the sound is 340m/s in air, find its frequency.<br><br>\r\nⒶ 1700m<br>\r\nⒷ 1700Hz<br>\r\nⒸ 64Hz<br>\r\nⒹ 680Hz', 'none', 15, 7),
(145, 'MCQ', '1 Mark', 'null', 'A train starting from rest moves with uniform acceleration of 10ms<sup>-2</sup>. It was crossing a post at a distance of 125m. What was the time taken by the train to pass 125m?<br><br>\r\nⒶ 5√10<br>\r\nⒷ 10√5<br>\r\nⒸ 5<br>\r\nⒹ 15', 'none', 15, 2),
(146, 'MCQ', '1 Mark', 'null', 'A train starting from rest moves with uniform acceleration of 10ms<sup>-2</sup>. It was crossing a post at a distance of 125m. What will be its velocity while crossing a post at that distance?<br><br>\r\nⒶ 5 m/s<br>\r\nⒷ 50 m/s<br>\r\nⒸ 25 m/s<br>\r\nⒹ 30 m/s', 'none', 15, 2),
(147, 'MCQ', '1 Mark', 'null', 'The expansion of liquid means—<br>\r\ni. linear expansion<br>\r\nii. Superficial expansion<br>\r\niii. Volume expansion<br><br>\r\nWhich one is correct?<br><br>\r\nⒶ i<br>\r\nⒷ ii<br>\r\nⒸ iii<br>\r\nⒹ i & ii', 'none', 15, 5),
(148, 'MCQ', '1 Mark', 'null', 'Which is the specific heat of iron?<br><br>\r\nⒶ 1000J/kg K<br>\r\nⒷ 460J/kg K<br>\r\nⒸ 900J/Kg K<br>\r\nⒹ 210J/Kg K', 'none', 15, 6),
(149, 'MCQ', '1 Mark', 'null', 'Which gas is used in refrigerator?<br><br>\r\nⒶ ethelen glycol<br>\r\nⒷ carbon tetra chloride<br>\r\nⒸ difloro dichloro ethane<br>\r\nⒹ dichloro difloro methane', 'none', 15, 6),
(150, 'MCQ', '1 Mark', 'null', 'What will be the focal length of lens of power +2d?<br><br>\r\nⒶ 0.5m<br>\r\nⒷ 2m<br>\r\nⒸ 1m<br>\r\nⒹ 0.2m', 'none', 15, 8),
(151, 'MCQ', '1 Mark', 'null', 'Three identical light bulbs are connected to a battery as shown at the right. W, X, Y and Z represent locations along the circuit. Current measured at X will—<br>\r\ni remove one of the bulbs<br>\r\nii. increase the resistance of one of the bulbs<br>\r\niii. increase the voltage of the hattery<br><br>\r\nWhich one is correct?<br><br>\r\nⒶ i &ii<br>\r\nⒷ ii & iii<br>\r\nⒸ i & iii<br>\r\nⒹ i, ii & iii', 'p15m20.png', 15, 11),
(152, 'MCQ', '1 Mark', 'null', 'Three identical light bulbs are connected to a battery as shown at the right. W, X, Y and Z represent locations along the circuit. Which one of the following statements is true?<br><br>\r\nⒶ All three bulbs will have the same brightness<br>\r\nⒷ The bulb between X and Y will be the brightest<br>\r\nⒸ The bulb between Y and Z. will be the brightest<br>\r\nⒹ The bulb between Z and the battery will be the brightest', 'p15m21.png', 15, 11),
(153, 'MCQ', '1 Mark', 'null', 'Which machine works on the principal of electromagnetic induction?<br><br>\r\nⒶ Motor<br>\r\nⒷ Generator<br>\r\nⒸ Transformer<br>\r\nⒹ Charger\r\n', 'none', 15, 12),
(154, 'MCQ', '1 Mark', 'null', 'The unit of conductance is—<br><br>\r\nⒶ Ohm<br>\r\nⒷ Ampere<br>\r\nⒸ Joule<br>\r\nⒹ mho', 'none', 15, 11),
(155, 'MCQ', '1 Mark', 'null', 'If the length of a conductor is made doubled and area of cross section is made half then its resistance will be—<br><br>\r\nⒶ same<br>\r\nⒷ doubled<br>\r\nⒸ 4 times<br>\r\nⒹ 8 times\r\n', 'none', 15, 11),
(156, 'MCQ', '1 Mark', 'null', 'Who discovered X-ray?<br><br>\r\nⒶ Becuerel<br>\r\nⒷ Rontgen<br>\r\nⒸ Hook<br>\r\nⒹ Maxwell', 'none', 15, 1),
(157, 'MCQ', '1 Mark', 'null', 'Which is mostly used in case of disces of mouth?<br><br>\r\nⒶ X-ray<br>\r\nⒷ M.R.I<br>\r\nⒸ E.T.T<br>\r\nⒹ E.C.G', 'none', 15, 14),
(158, 'MCQ', '1 Mark', 'null', 'By which machine electric signal is directed?<br><br>\r\nⒶ E.C.G<br>\r\nⒷ M.R.I<br>\r\nⒸ E.T.T<br>\r\nⒹ C.T. scan', 'none', 15, 14),
(159, 'MCQ', '1 Mark', 'null', 'To get the full picture of heart in E.C.G how many electrodes are used?<br><br>\r\nⒶ 9<br>\r\nⒷ 10<br>\r\nⒸ 11<br>\r\nⒹ 12\r\n', 'none', 15, 14),
(160, 'MCQ', '1 Mark', 'null', 'The relation among them is—<br>\r\ni. P-VI<br>\r\nii. V-IR<br>\r\niii. W-I<sup>2</sup>R<br><br>\r\nWhich one is correct?<br><br>\r\nⒶ i & ii<br>\r\nⒷ ii & iii<br>\r\nⒸ i & iii <br>\r\nⒹ i, ii & iii<br>', 'none', 15, 11),
(161, 'MCQ', '1 Mark', 'null', 'How many basic colors in a color TV?<br><br>\r\nⒶ 3<br>\r\nⒷ 7<br>\r\nⒸ 5<br>\r\nⒹ 9\r\n', 'none', 15, 13),
(162, 'MCQ', '1 Mark', 'null', 'In which way we can decrease the magnetic field?<br><br>\r\nⒶ Increasing the current<br>\r\nⒷ Decreasing current<br>\r\nⒸ Increasing the number of turns<br>\r\nⒹ Using powerful magnet\r\n', 'none', 15, 12),
(163, 'MCQ', '1 Mark', 'null', 'Frect image formed in retina is created again by which part?<br><br>\r\nⒶ Brain<br>\r\nⒷ Iris<br>\r\nⒸ Optic<br>\r\nⒹ Retina\r\n', 'none', 15, 9),
(164, 'MCQ', '1 Mark', 'null', 'Which ray is neutral?<br><br>\r\nⒶ α ray<br>\r\nⒷ β ray<br>\r\nⒸ ϒ ray<br>\r\nⒹ cathode ray', 'none', 15, 7),
(165, 'MCQ', '1 Mark', 'null', 'How many p-n junctions are there in a transistor?<br><br>\r\nⒶ 1<br>\r\nⒷ 2<br>\r\nⒸ 3<br>\r\nⒹ 4', 'none', 15, 13),
(166, 'MCQ', '1 Mark', 'null', 'What is the value of constant in vacuum a coulomb\'s law?<br><br>\r\nⒶ 7x10<sup>9</sup> Nm<sup>2</sup>C<sup>-2</sup><br>\r\nⒷ 9×10<sup>9</sup> Nm<sup>2</sup>C<sup>-2</sup><br>\r\nⒸ 9x10<sup>8</sup> Nm<sup>2</sup>C<sup>-2</sup><br>\r\nⒹ 9x10<sup>7</sup> Nm<sup>2</sup>C<sup>-2</sup>\r\n', 'none', 15, 10),
(167, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'The change of magnitude of velocity of different times for a moving car from rest is shown in the given chart.<br><br>\r\na. What is dimension?<br>\r\nb. What do you mean by instantaneous speed? Explain. <br>\r\nc. Calculate the distance travelled by the car within 1st 32s?<br>\r\nd. According to given system draw the graph and explain the nature of velocity for different parts.', 'p16c1.png', 16, 2),
(168, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'A radio station broadcasts folk song in every morning 10 a.m. with frequency 350 kHz. Radio wave velocity is 3×10<sup>8</sup> m/s. Wave length of another wave created in water is one percent of radio wave. Velocity of sound in water is 1450 m/s.<br><br>\r\na. What is frequency?<br>\r\nb. Male voice is harsh but child and female voice is shrill. Explain.<br>\r\nc. Calculate the wave length of radio wave.<br>\r\nd. Frequency of radio wave, how many times of that of wave created in water? Analyze mathematically.', 'none', 16, 7),
(169, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'An engine of 1.5 H.P can fill up a tank of height 20m within 30 minutes. Capacity of the tank is 2,000 litre. Another engine of 2 H.P can lift 3000 kg bricks at the same height within 25 minutes.<br><br>\r\na. What is stress? <br>\r\nb. What do you mean by potential energy? Explain. <br>\r\nc. Calculate the work done by 1st engine. <br>\r\nd. Mathematically analyze the ratio of efficiency for both the engines. \r\n', 'none', 16, 4),
(170, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'Answer the following questions according to given figure.<br><br>\r\na. What is lens?<br>\r\nb. Explain why concave lens is known as diverging lens.<br>\r\nc. What will be the position, nature and size of image for the given object? Explain with suitable ray diagram. <br>\r\nd. Is it possible to get virtual image from the given mirror? Analyze with ray diagram. ', 'p16c5.png', 16, 8),
(171, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'Answer the given questions according to figure.<br><br>\r\na. What is the full form of MRI?<br>\r\nb. Explain why more current flows through the wider wire in compare to narrow wire. <br>\r\nc. Calculate equivalent resistance of the given circuit.<br>\r\nd. What amount of money is to pay as electric bill for one month if the given circuit run 6 hours per day? (Price per unit Tk. 5, 1 month = 30 Days).', 'p16c6.png', 16, 11),
(172, 'MCQ', '1 Mark', 'null', 'Who discovered calculus?<br><br>\r\nⒶ Al Hazen<br>\r\nⒷ Newton<br>\r\nⒸ Galileo<br>\r\nⒹ Keplar\r\n', 'none', 16, 1),
(173, 'MCQ', '1 Mark', 'null', 'How many basic colours are in a colour TV?<br><br>\r\nⒶ 3<br>\r\nⒷ 4<br>\r\nⒸ 5<br>\r\nⒹ 7', 'none', 16, 13),
(174, 'MCQ', '1 Mark', 'null', 'Which one is the unit of pressure?<br><br>\r\nⒶ Newton<br>\r\nⒷ Joule<br>\r\nⒸ Pascal<br>\r\nⒹ Watt', 'none', 16, 5),
(175, 'MCQ', '1 Mark', 'null', 'Below which one follows total internal reflection?<br><br>\r\nⒶ ECG<br>\r\nⒷ Endoscopy<br>\r\nⒸ MRI<br>\r\nⒹ ETT', 'none', 16, 14),
(176, 'MCQ', '1 Mark', 'null', 'How much pressure in Pa will be felt at the bottom of the container?<br><br>\r\nⒶ 49000<br>\r\nⒷ 19600<br>\r\nⒸ 9800<br>\r\nⒹ 1960\r\n', 'p16m5.png', 16, 5),
(177, 'MCQ', '1 Mark', 'null', 'If 20N force is applied on the free surface of the container then this force—<br>\r\ni. will exert pressure everywhere in water uniformly<br>\r\nii. will exert pressure in all directions of the container<br>\r\niii. will exert pressure at the bottom of the container<br><br>\r\n\r\nWhich one is correct?<br><br>\r\nⒶ i and ii<br>\r\nⒷ i and iii<br>\r\nⒸ ii and iii<br>\r\nⒹ i, ii and iii', 'p16m6.png', 16, 5),
(178, 'MCQ', '1 Mark', 'null', 'What is the value of Coulomb’s constant in vacuum?<br><br>\r\nⒶ 9×10<sup>9</sup> Nm<sup>-2</sup>C<sup>-2</sup><br>\r\nⒷ 9×10<sup>9</sup> Nm<sup>2</sup>C<sup>-2</sup><br>\r\nⒸ 9×10<sup>9</sup> Nm<sup>2</sup>C<sup>-1</sup><br>\r\nⒹ 9×10<sup>9</sup> Nm<sup>-2</sup>C<sup>-1</sup>', 'none', 16, 10),
(179, 'MCQ', '1 Mark', 'null', 'Which change occurs due to latent heat?<br><br>\r\nⒶ Temperature<br>\r\nⒷ State<br>\r\nⒸ Pressure<br>\r\nⒹ Heat', 'none', 16, 6),
(180, 'MCQ', '1 Mark', 'null', 'Which one of the following is fundamental quantity?<br><br>\r\nⒶ Force<br>\r\nⒷ Displacement<br>\r\nⒸ Velocity<br>\r\nⒹ Time', 'none', 16, 1),
(181, 'MCQ', '1 Mark', 'null', 'Where convex mirrors are used?<br><br>\r\nⒶ Cars<br>\r\nⒷ Torch light<br>\r\nⒸ Solar oven<br>\r\nⒹ Radar', 'none', 16, 8),
(182, 'MCQ', '1 Mark', 'null', 'A body falls freely under the action of gravity; the changes of energy are—<br>\r\ni. the potential energy is decreased<br>\r\nii. the kinetic energy is increased<br>\r\niii. total energy is unchanged<br><br>\r\n\r\nWhich one is correct?<br><br>\r\nⒶ i and ii<br>\r\nⒷ i and iii<br>\r\nⒸ ii and iii<br>\r\nⒹ i, ii and iii', 'none', 16, 4),
(183, 'MCQ', '1 Mark', 'null', 'The length of an object and magnification of a convex mirror are respectively 0.5 and 0.2. What will be the length of the image in m?<br><br>\r\nⒶ 0.1<br>\r\nⒷ 0.4<br>\r\nⒸ 0.7<br>\r\nⒹ 2.5\r\n', 'none', 16, 8),
(184, 'MCQ', '1 Mark', 'null', 'Which one is vector?<br><br>\r\nⒶ Energy<br>\r\nⒷ Momentum<br>\r\nⒸ Time<br>\r\nⒹ Temperature', 'none', 16, 2),
(185, 'MCQ', '1 Mark', 'null', 'Which is the unit of power of lens?<br><br>\r\nⒶ Watt<br>\r\nⒷ Kilowatt Hour<br>\r\nⒸ Dioptre<br>\r\nⒹ Watt-Hour', 'none', 16, 9),
(186, 'MCQ', '1 Mark', 'null', 'A machine is able to lift 200kg of object vertically up to a height of 30m above the ground in 50s. What is the power of the machine?<br><br>\r\nⒶ 0.12 KW<br>\r\nⒷ 2 KW<br>\r\nⒸ 6.0KW<br>\r\nⒹ 300 KW', 'none', 16, 4),
(187, 'MCQ', '1 Mark', 'null', 'The figure indicates—<br>\r\ni. current of resistances is same<br>\r\nii. voltage of resistances are same<br>\r\niii. equivalent resistance of the circuit is 16Ω<br><br>\r\n\r\nWhich one is correct?<br><br>\r\nⒶ i<br>\r\nⒷ ii<br>\r\nⒸ iii<br>\r\nⒹ i, ii and iii', 'p16m16.png', 16, 11),
(188, 'MCQ', '1 Mark', 'null', 'What is the reading of the ammeter in A?<br><br>\r\nⒶ 8<br>\r\nⒷ 2<br>\r\nⒸ 1<br>\r\nⒹ 0.5', 'p16m17.png', 16, 11),
(189, 'MCQ', '1 Mark', 'null', 'In a solenoid, change the direction of electric current in opposite direction—<br>\r\ni. the polls are changed<br>\r\nii. the direction of lines of forces will be opposite<br>\r\niii. the iron rod lose its magnetism <br><br>\r\n\r\nWhich one is correct?<br><br>\r\nⒶ i and ii<br>\r\nⒷ i and iii<br>\r\nⒸ ii and-ii<br>\r\nⒹ i, ii and iii', 'none', 16, 12),
(190, 'MCQ', '1 Mark', 'null', 'What is the wavelength of X-ray in m?<br><br>\r\nⒶ 10<sup>-8</sup><br>\r\nⒷ 10<sup>-10</sup><br>\r\nⒸ 10<sup>-12</sup><br>\r\nⒹ 10<sup>-16</sup>', 'none', 16, 7),
(191, 'MCQ', '1 Mark', 'null', 'If the distance between the two charges is made double, then what will be the force between the two charges?<br><br>\r\nⒶ Double<br>\r\nⒷ Half<br>\r\nⒸ One-third<br>\r\nⒹ One-fourth\r\n', 'none', 16, 10),
(192, 'MCQ', '1 Mark', 'null', 'A man uses a concave lens as a spectacle whose focal length is 20 cm. What is the power of lens in diopter?<br><br>\r\nⒶ -5<br>\r\nⒷ -0.5<br>\r\nⒸ +0.5<br>\r\nⒹ +5\r\n', 'none', 16, 8),
(193, 'MCQ', '1 Mark', 'null', 'Which machine works on the principle of electromagnetic induction?<br><br>\r\nⒶ Motor<br>\r\nⒷ Generator<br>\r\nⒸ Transformer<br>\r\nⒹ Hair dryer', 'none', 16, 12),
(194, 'MCQ', '1 Mark', 'null', 'If the reading of the linear scale is 4mm and No. of division of the circular scale is 50. then what will be the diameter of the wire in mm? [Least count = 0.01]<br><br>\r\nⒶ 2.25<br>\r\nⒷ 3.5<br>\r\nⒸ 4.5<br>\r\nⒹ 9.0', 'none', 16, 1),
(195, 'MCQ', '1 Mark', 'null', 'Which animal can hear infrasonic sound?<br><br>\r\nⒶ Bat<br>\r\nⒷ Elephant<br>\r\nⒸ Bee<br>\r\nⒹ Man', 'none', 16, 7),
(196, 'MCQ', '1 Mark', 'null', 'Which one is constant force?<br><br>\r\nⒶ Weak nuclear force<br>\r\nⒷ Gravitational force<br>\r\nⒸ Magnetic force<br>\r\nⒹ Friction force', 'none', 16, 3),
(197, 'MCQ', '1 Mark', 'null', 'At 0°C the length of a steel bar is 100 m, but at 40°C the length of the bar is 100.046 m. What is the value of co-efficient of linear expansion of steel in K<sup>-1</sup>?<br><br>\r\nⒶ 11.5×10<sup>-6</sup><br>\r\nⒷ 11.0×10<sup>-6</sup><br>\r\nⒸ 23.0×10<sup>-6</sup><br>\r\nⒹ 34.5×10<sup>-6</sup>', 'none', 16, 6),
(198, 'MCQ', '1 Mark', 'null', 'An object of 5kg is raised at the point of A from the ground. What is the potential energy of the object at the point of A?<br><br>\r\nⒶ 980 J<br>\r\nⒷ 98 J<br>\r\nⒸ 9.8 J<br>\r\nⒹ 0.98 J', 'p16m27.png', 16, 4),
(199, 'MCQ', '1 Mark', 'null', 'An object of 5kg is raised at the point of A from the ground. The figure reveals that—<br>\r\nі. Е<sub>k</sub> - E<sub>p</sub> = 0 at point B<br>\r\nii. E<sub>p</sub> at point A = 2 × E<sub>p</sub> at point C<br>\r\niii. work done at part AC > work done at part CD<br><br>\r\n\r\nWhich one is correct?<br><br>\r\nⒶ i and ii<br>\r\nⒷ i and iii<br>\r\nⒸ ii and iii<br>\r\nⒹ i, ii and iii', 'p16m28.png', 16, 4),
(200, 'MCQ', '1 Mark', 'null', 'What is the cause of short sighted-ness?<br><br>\r\nⒶ Decrease of rod and Connell<br>\r\nⒷ Increase of radius of eye ball<br>\r\nⒸ Increase of focal length of eye lens<br>\r\nⒹ Decrease of power of convergence of eye lens', 'none', 16, 14),
(201, 'MCQ', '1 Mark', 'null', 'A motor cycle having velocity 54 km/h is accelerated during time 5 seconds and final velocity rises up to 35m/s. What was the acceleration in m/s<sup>2</sup>?<br><br>\r\nⒶ 5<br>\r\nⒷ 4<br>\r\nⒸ -4<br>\r\nⒹ -5', 'none', 16, 2),
(202, 'MCQ', '1 Mark', 'null', 'Which wire is used in electric heater?<br><br>\r\nⒶ Copper<br>\r\nⒷ Nichrome<br>\r\nⒸ Silver<br>\r\nⒹ Manganese', 'none', 16, 6),
(203, 'MCQ', '1 Mark', 'null', 'Digital signals include—<br>\r\ni. audio and video voltage<br>\r\nii. binary code<br>\r\niii. particular value<br><br>\r\n\r\nWhich one is correct?<br><br>\r\nⒶ i and ii<br>\r\nⒷ i and iii<br>\r\nⒸ ii and iii<br>\r\nⒹ i, ii and iii', 'none', 16, 13),
(204, 'MCQ', '1 Mark', 'null', '1 Pascal = ?<br><br>\r\nⒶ 1 Nm<sup>-2</sup><br>\r\nⒷ 1 N<sup>-1</sup>m<sup>-1</sup><br>\r\nⒸ 1 Nm<sup>-1</sup><br>\r\nⒹ 1 Nm', 'none', 16, 5),
(205, 'MCQ', '1 Mark', 'null', 'Freely falling of all bodies<br>\r\ni. go down equal distance at equal time<br>\r\nii. reach at the earth in various time<br>\r\niii. distance travelled is directly proportional to square of the time<br><br>\r\n\r\nWhich one is correct?<br><br>\r\nⒶ i and ii<br>\r\nⒷ i and iii<br>\r\nⒸ ii and iii<br>\r\nⒹ i, ii and iii', 'none', 16, 2),
(206, 'MCQ', '1 Mark', 'null', 'Which one is the dimension of energy?<br><br>\r\nⒶ MLT<sup>-2</sup><br>\r\nⒷ ML<sup>2</sup>T<sup>-2</sup><br>\r\nⒸ ML<sup>-1</sup>T<sup>-1</sup><br>\r\nⒹ ML<sup>-1</sup>T<sup>-2</sup>', 'none', 16, 4),
(207, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'Answer the related questions according to given figure.<br><br>\r\na. What is solenoid? <br>\r\nb. On the outer level of an engine is written \'220V-1000W\'. What does it mean?<br>\r\nc. Calculate the ratio of current flow between primary and secondary coil of the given device. <br>\r\nd. Analyze the importance of the given device to supply electric current. ', 'p16c4.png', 16, 12),
(208, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'A deer of mass 80kg is running with uniform velocity 72km/h. In the meantime, a tiger of mass 200kg which was hiding behind a tree started chasing the deer from 75m behind with uniform acceleration 1.5m/s<sup>2</sup> for 30s.<br><br>\r\na. What is inertia?<br>\r\nb. What do you understand by 50N force?<br>\r\nc. Find the kinetic energy of the tiger after 10s.<br>\r\nd. Is it possible for the tiger to catch the deer? Give your opinion with mathematical analysis.', 'none', 18, 2),
(209, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'The depth of a well is 3500cm, air temperature is 60°F. At this temperature the velocity of sound is 343m/s.<br><br>\r\na. What is wave velocity?<br>\r\nb. Set the relationship between frequency and time period. <br>\r\nc. What is the temperature of that place in Celsius scale?<br>\r\nd. If any sound is produced at the mouth of the well, will echo be heard? Explain mathematically. ', 'none', 18, 7),
(210, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'Charges A and B are placed in air medium.<br><br>\r\na. What is electric potential?<br>\r\nb. 220V-60W is written in an electric bulb. Explain the meaning.<br>\r\nc. Find out the amount of force acting between the charges A and B.<br>\r\nd. If a unit positive charge is placed at the point C, for which charge the intensity at C will be greater? Explain mathematically.', 'p17c3.png', 18, 10),
(211, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'a. What is kinetic energy?<br>\r\nb. When we throw an arrow by stretching the string of a bow. how does the energy transformation take place?<br>\r\nc. Determine at which velocity the object will hit the ground?<br>\r\nd. If the object is dropped freely from the point B, the object follows the conservation of energy. - Explain mathematically.', 'p17c7.png', 18, 4),
(212, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'The ratio of the number of turns of the primary and secondary coil of a transformer is 1:50. The electric current and voltage of the primary coil is 5A and 220V respectively.<br><br>\r\na. What is solenoid?<br>\r\nb. Why motor is called the opposite instrument of generator?<br>\r\nc. Find E<sub>p</sub> : E<sub>s</sub> according to the system.<br>\r\nd. From the system mathematically shows that the electric power of the primary and secondary coil of the transformer remains constant.', 'none', 18, 11),
(213, 'MCQ', '1 Mark', 'null', 'Condition of total internal reflection is- <br>\r\ni. Light rays pass from denser to rarer medium<br>\r\nii. Incident angle > Critical angle<br>\r\niii. Incident angle = Reflection angle<br><br>\r\n\r\nWhich one is correct?<br><br>\r\n\r\nⒶ i and ii<br>\r\nⒷ i and iii<br>\r\nⒸ ii and iii<br>\r\nⒹ i, ii and iii\r\n', 'none', 18, 8),
(214, 'MCQ', '1 Mark', 'null', 'What kind of defect of eye is indicated in the above figure?<br><br>\r\nⒶ Myopia<br>\r\nⒷ Night blindness<br>\r\nⒸ Retinal detachment<br>\r\nⒹ Hypermetropia\r\n', 'p17m3.png', 18, 14),
(215, 'MCQ', '1 Mark', 'null', 'If mass, specific heat and thermal capacity of a body are m, S and C respectively, then which of the following relation is correct?<br><br>\r\nⒶ C=<sup>S</sup>/<sub>m</sub><br>\r\nⒷ S=<sup>m</sup>/<sub>C</sub><br>\r\nⒸ S=Cm<br>\r\nⒹ S=<sup>C</sup>/<sub>m</sub>', 'none', 18, 6),
(216, 'MCQ', '1 Mark', 'null', 'Density of water is the highest at which of the following temperature?<br><br>\r\nⒶ 4 K<br>\r\nⒷ 273 K<br>\r\nⒸ 277 K<br>\r\nⒹ 278 K', 'none', 18, 5),
(217, 'MCQ', '1 Mark', 'null', 'The length of a steel wire at 20°C is 100m. If the length of the wire at 50°C is 100.033m what is the co-efficient of linear expansion of steel?<br><br>\r\nⒶ 11x10<sup>-6</sup>K<sup>-1</sup><br>\r\nⒷ 22x10<sup>-6</sup>K<sup>-1</sup><br>\r\nⒸ 33x10<sup>-6</sup>K<sup>-1</sup><br>\r\nⒹ 44x10<sup>-6</sup>K<sup>-1</sup>', 'none', 18, 6),
(218, 'MCQ', '1 Mark', 'null', 'In the above figure n<sub>p</sub>= 10, n<sub>s</sub>=50. What is the value of E<sub>s</sub>?<br><br>\r\nⒶ 0 volt<br>\r\nⒷ 12 volt<br>\r\nⒸ 50 volt<br>\r\nⒹ 60 volt', 'p17m7.png', 18, 12),
(219, 'MCQ', '1 Mark', 'null', 'Which of the following is an address of rahim43@yahoo.com?<br><br>\r\nⒶ Fax address<br>\r\nⒷ Internet address<br>\r\nⒸ E-mail address<br>\r\nⒹ G-mail address\r\n', 'none', 18, 13),
(220, 'MCQ', '1 Mark', 'null', 'Which of the following two scientists invented that \"nucleus is fissionable\"?<br><br>\r\nⒶ Otto Herin and Stresemann<br>\r\nⒷ Neill Bohr and Emest Rutherford<br>\r\nⒸ Pierre Curie and Madam Curic<br>\r\nⒹ Max Planck and Albert Einstein', 'none', 18, 1),
(221, 'MCQ', '1 Mark', 'null', 'Which of the following is measured by spring balance?<br><br>\r\nⒶ Mass<br>\r\nⒷ Acceleration due to gravity<br>\r\nⒸ Force of gravity<br>\r\nⒹ Force of friction', 'none', 18, 3),
(222, 'MCQ', '1 Mark', 'null', 'Which of the above graphs indicates uniform velocity?<br><br>\r\nⒶ i<br>\r\nⒷ ii<br>\r\nⒸ iii<br>\r\nⒹ iv', 'p17m11.png', 18, 2),
(223, 'MCQ', '1 Mark', 'null', 'If constant force is applied on a body —<br>\r\ni. When mass is less accelerations is greater<br>\r\nii. When mass is less acceleration is also less<br>\r\niii. When mass is greater then acceleration will be less<br><br>\r\n\r\nWhich one is correct?<br><br>\r\n\r\nⒶ ii<br>\r\nⒷ i & ii<br>\r\nⒸ i & iii<br>\r\nⒹ ii & iii', 'none', 18, 3),
(224, 'MCQ', '1 Mark', 'null', '54km/h equals to which of the following?<br><br>\r\nⒶ 12m/s<br>\r\nⒷ 15m/s<br>\r\nⒸ 20m/s<br>\r\nⒹ 25m/s', 'none', 18, 2),
(225, 'MCQ', '1 Mark', 'null', 'Mass of a body is 2kg and initial velocity is 5m/s. After 3s velocity of body becomes 8m/s then what amount of force is applied on the body?<br><br>\r\nⒶ 1N<br>\r\nⒷ 2N<br>\r\nⒸ 3N<br>\r\nⒹ 4N', 'none', 18, 3),
(226, 'MCQ', '1 Mark', 'null', 'What will be the Kinetic energy of the freely falling body at point Q if it falls from R?<br><br>\r\nⒶ 0<br>\r\nⒷ mgx<br>\r\nⒸ mgh<br>\r\nⒹ mg(h-x)', 'p17m15.png', 18, 4),
(227, 'MCQ', '1 Mark', 'null', 'In case of a free-falling body from point R —<br>\r\ni. The body will gain velocity<br>\r\nii. The Kinetic energy will transform into potential energy<br>\r\niii. Velocity will increase as distance increases<br><br>\r\n\r\nWhich one is correct?<br><br>\r\n\r\nⒶ i & ii<br>\r\nⒷ i & iii<br>\r\nⒸ ii & ii<br>\r\nⒹ i, ii & iii\r\n', 'p17m16.png', 18, 4),
(228, 'MCQ', '1 Mark', 'null', 'An electric motor lifts a body of mass 2kg by 5m and consumed 107J of energy. What amount of energy wasted by the motor?<br><br>\r\nⒶ 6J<br>\r\nⒷ 9J<br>\r\nⒸ 10J <br>\r\nⒹ 49J', 'none', 18, 5),
(229, 'MCQ', '1 Mark', 'null', 'N/C is the unit of which of the following —<br><br>\r\nⒶ Electric power<br>\r\nⒷ Intensity of sound<br>\r\nⒸ Pitch of sound<br>\r\nⒹ Electric Intensity\r\n', 'none', 18, 10),
(230, 'MCQ', '1 Mark', 'null', 'What is the refractive index of the layer of optical fiber?<br><br>\r\nⒶ 1.50<br>\r\nⒷ 1.55<br>\r\nⒸ 1.70<br>\r\nⒹ 1.77', 'none', 18, 9),
(231, 'MCQ', '1 Mark', 'null', 'How many alphabets will not change when an image of the word \"EXAMINATION\" is seen in a plane mirror?<br><br>\r\nⒶ 5<br>\r\nⒷ 7<br>\r\nⒸ 8<br>\r\nⒹ 9', 'none', 18, 8),
(232, 'MCQ', '1 Mark', 'null', 'What is the dimension of energy?<br><br>\r\nⒶ MLT<sup>-2</sup><br>\r\nⒷ MLT<sup>2</sup><br>\r\nⒸ ML<sup>-2</sup>T<sup>2</sup><br>\r\nⒹ ML<sup>2</sup>T<sup>-2</sup>', 'none', 18, 4),
(233, 'MCQ', '1 Mark', 'null', 'What is voltage between point A and B?<br><br>\r\nⒶ 2 V<br>\r\nⒷ 3 V<br>\r\nⒸ 4 V<br>\r\nⒹ 6 V', 'p17m22.png', 18, 11),
(234, 'MCQ', '1 Mark', 'null', 'In case of current flowing in the circuit of above system<br>\r\ni. I = I<sub>1</sub> = I<sub>2</sub><br>\r\nii. I<sub>1</sub> = I<sub>2</sub><br>\r\niii. I > I<sub>2</sub><br><br>\r\n\r\nWhich one is correct?<br><br>\r\nⒶ i & ii<br>\r\nⒷ i & iii<br>\r\nⒸ ii & iii<br>\r\nⒹ i, ii & iii', 'p17m23.png', 18, 11),
(235, 'MCQ', '1 Mark', 'null', 'Melting point of which of the following matter increases as pressure increase?<br><br>\r\nⒶ Ice<br>\r\nⒷ Cast Iron<br>\r\nⒸ Wax<br>\r\nⒹ Antimony\r\n', 'none', 18, 6),
(236, 'MCQ', '1 Mark', 'null', 'Three dimensional images of different organs of human body can be generated by which of the following?<br><br>\r\nⒶ CT scan<br>\r\nⒷ X-Rav<br>\r\nⒸ ECG<br>\r\nⒹ Angiography', 'none', 18, 14),
(237, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'The weight of an object of area 20cm and height 10cm in air and water is 9.8N and 7.84N respectively. Here g = 9.8m/s<sup>2</sup>.<br><br>\r\na. State Archimedes\' law.<br>\r\nb. Write down the conditions of floatation and immersion of a body.<br>\r\nc. Calculate the density of the material of the object.<br>\r\nd. Does the system follow Archimedes\' law? Give mathematical explanation. \r\n', 'none', 18, 5),
(238, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'a. What is an electric circuit?<br>\r\nb. How can \'System Loss\' be reduced?<br>\r\nc. Find out the equivalent resistance of the circuit.<br>\r\nd. If all the resistances in the system are connected in parallel, will the fuse be burnt for the produced electricity? Analyze mathematically.\r\n', 'p17c5.png', 18, 11),
(239, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'Here, ∠BON’=48°, ∠B’ON=90° and C<sub>a</sub> = 3x10<sup>8</sup>m/s.<br><br>\r\na. What is reflection of light?<br>\r\nb. When total internal reflection will take place? Explain.<br>\r\nc. Calculate the velocity of light in \'b\' medium.<br>\r\nd. If air medium in the system is replaced with glass medium, is it possible to find total internal reflection? Analyze drawing required figure.', 'p17c6.png', 18, 9),
(240, 'MCQ', '1 Mark', 'null', 'From which Newton\'s Laws of motion can force be measured?<br><br>\r\nⒶ First law<br>\r\nⒷ Second law<br>\r\nⒸ Third law<br>\r\nⒹ First and Third law\r\n', 'none', 18, 2),
(241, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'A car starts from rest with constant acceleration of 2m/s<sup>2</sup> for 6 sec. After that it moves with constant speed for 1 min.<br><br>\r\na. What is deceleration?<br>\r\nb. Show that force is a derived-quantity.<br>\r\nc. Calculate the distance travelled with constant acceleration.<br>\r\nd. If the car travelled the whole distance mentioned in the above path with constant acceleration 2m/s<sup>2</sup>, what would be the total time?\r\n', 'none', 19, 2),
(242, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'An object of 250 gm. has been thrown upward in the vertical direction with the initial velocity 49m/s.<br><br>\r\na. What is efficiency?<br>\r\nb. How can Geo-Thermal energy be used? Explain it.<br>\r\nc. How long time it will expend to reach the highest point?<br>\r\nd. Show that the initial total energy is equal to the total energy at the highest point.', 'none', 19, 4),
(243, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'a. What is electromagnetic induction?<br>\r\nb. \"p-n junction works as a rectifier\". Explain.<br>\r\nc. Calculate the voltage of secondary coil?<br>\r\nd. From the system, mathematically show that the total power in the primary coil is equal to that of the secondary coil.', 'p18c3.png', 19, 12),
(244, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'The distance of the object is 10 cm in the figure.<br><br>\r\na. What is optical fiber?<br>\r\nb. What do you understand by the power of lens is 3D?<br>\r\nc. Calculate the distance of the image.<br>\r\nd. If the object is placed at 5 cm distance in front of the mirror. Analyze the position, size and nature of the image by ray diagram.', 'p18c5.png', 19, 8),
(245, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'The area and height of a rectangular object is 24cm<sup>2</sup> and 3cm respectively. The weight of the object is 1.4N when it is merged in kerosene. The density of kerosene is 800kg/m<sup>3</sup>.<br><br>\r\na. What is buoyancy? <br>\r\nb. Why is it easy to swim in the sea than in the river?<br> \r\nc. Determine the density of the object. <br>\r\nd. Analyze mathematically whether the given information follows the Archimedes principle. ', 'none', 19, 5),
(246, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'A solid object of mass 3 kg and temperature 15°C is placed beside a burning oven with temperature 200°C. So, the temperature of the object rises to 86°F after a certain period. Specific heat of the object is 361 Jkg<sup>-1</sup>k<sup>-1</sup>. The latent heat of the ice is 336000 Jkg<sup>-1</sup>.<br><br>\r\n\r\na. What is specific heat?<br>\r\nb. What is meant by coefficient of linear expansion of steel is 11 x 10<sup>-6</sup> k<sup>-1</sup>?<br>\r\nc. How much heat absorbed by the object to rise the temperature at 86°F?<br>\r\nd. If the object is placed in 500gm ice cool water what will be the highest temperature of the mixture? Analyze mathematically.\r\n', 'none', 19, 6),
(247, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'a. What is electric induction?<br>\r\nb. Why the potential of earth is taken as zero?<br>\r\nc. Determine the current in fig-1.<br>\r\nd. In fig-2 what will be the value of resistance R to produce double current than that of fig-1.', 'p18c8.png', 19, 11),
(248, 'MCQ', '1 Mark', 'null', 'Electric lines of force is used to explain the direction of which of the following?<br><br>\r\nⒶ Electric field<br>\r\nⒷ Electric intensity<br>\r\nⒸ Electric potential<br>\r\nⒹ Electric induction', 'none', 19, 10),
(249, 'MCQ', '1 Mark', 'null', 'Which of the following is non-conservative force?<br><br>\r\nⒶ Frictional force<br>\r\nⒷ Electric force<br>\r\nⒸ Gravitational force<br>\r\nⒹ Magnetic force', 'none', 19, 3),
(250, 'MCQ', '1 Mark', 'null', 'How much ampere of electricity will flow through the load (R) of the transformer?<br><br>\r\nⒶ 12<br>\r\nⒷ 24<br>\r\nⒸ 48<br>\r\nⒹ 120', 'p18m3.png', 19, 12),
(251, 'MCQ', '1 Mark', 'null', 'Which of the following points are in same phase?<br><br>\r\nⒶ A, B, C<br>\r\nⒷ A, C, E<br>\r\nⒸ B, D, F<br>\r\nⒹ A, E, I', 'p18m4.png', 19, 7),
(252, 'MCQ', '1 Mark', 'null', 'The correct relation is-<br>\r\ni. λ = CE<br>\r\nii. 2 λ = AI<br>\r\niii. 3/2 λ = CI<br><br>\r\n\r\nWhich one of the following is correct?<br><br>\r\n\r\nⒶ i & ii<br>\r\nⒷ i & iii<br>\r\nⒸ ii & iii<br>\r\nⒹ i, ii & iii', 'p18m5.png', 19, 7),
(253, 'MCQ', '1 Mark', 'null', 'All the distances of the lens are measured from<br><br>\r\nⒶ optical center<br>\r\nⒷ center of curvature<br>\r\nⒸ principal focus<br>\r\nⒹ surface', 'none', 19, 8),
(254, 'MCQ', '1 Mark', 'null', 'From the integrated use of main scale and the Vernier scale, the net reading is 12.66 cm. If the vernier coincidence with the main scale is 6, what is the value of Vernier constant? (Given that the main scale reading is 12.6 cm)<br><br>\r\nⒶ 0.1 mm<br>\r\nⒷ 0.01mm<br>\r\nⒸ 0.5mm<br>\r\nⒹ 0.05mm', 'none', 19, 1),
(255, 'MCQ', '1 Mark', 'null', 'Which of the following is the thermometric property of a mercury thermometer?<br><br>\r\nⒶ Pressure<br>\r\nⒷ Length<br>\r\nⒸ Density<br>\r\nⒹ Resistance', 'none', 19, 6),
(256, 'MCQ', '1 Mark', 'null', 'Which of the following is used for more developed type of periscope in a submarine?<br><br>\r\nⒶ Convex lens<br>\r\nⒷ Plane mirror<br>\r\nⒸ LED<br>\r\nⒹ Prism', 'none', 19, 8),
(257, 'MCQ', '1 Mark', 'null', 'ML<sup>2</sup>T<sup>-3</sup> is the dimension of —<br>\r\ni. Work done per unit time<br>\r\nii. Power<br>\r\niii. Energy used per unit time<br><br>\r\n\r\nWhich one of the following is correct?<br><br>\r\nⒶ i & ii<br>\r\nⒷ i & iii<br>\r\nⒸ ii & iii<br>\r\nⒹ i, ii & iii', 'none', 19, 4),
(258, 'MCQ', '1 Mark', 'null', 'If the absolute refractor index of a medium is √2, what is the critical angle of that medium with respect to air?<br><br>\r\nⒶ 60°<br>\r\nⒷ 45°<br>\r\nⒸ 30°<br>\r\nⒹ 24°\r\n', 'none', 19, 9),
(259, 'MCQ', '1 Mark', 'null', 'Which one is used in three-pin plugs?<br><br>\r\nⒶ Circuit breaker<br>\r\nⒷ Switch<br>\r\nⒸ Fuse<br>\r\nⒹ Earth wire', 'none', 19, 11),
(260, 'MCQ', '1 Mark', 'null', 'The correct relation is —<br>\r\ni. σ = <sup>I</sup>/<sub>ρ</sub><br>\r\nii. G = <sup>I</sup>/<sub>R</sub><br>\r\niii. σ = G <sup>L</sup>/<sub>A</sub><br><br>\r\n\r\nWhich one of the following is correct?<br><br>\r\nⒶ i and ii<br>\r\nⒷ i and iii<br>\r\nⒸ ii and iii<br>\r\nⒹ i, ii and iii', 'none', 19, 11),
(261, 'MCQ', '1 Mark', 'null', 'What is the velocity of alpha-ray in m/s?<br><br>\r\nⒶ 3x10<sup>5</sup><br>\r\nⒷ 3x10<sup>6</sup><br>\r\nⒸ 3x10<sup>7</sup><br>\r\nⒹ 3x10<sup>8</sup>', 'none', 19, 7),
(262, 'MCQ', '1 Mark', 'null', 'What is the potential energy of the body at point B?<br><br>\r\nⒶ mgh<sub>1</sub><br>\r\nⒷ mgh<sub>2</sub><br>\r\nⒸ mg(h<sub>1</sub>+h<sub>2</sub>)<br>\r\nⒹ mg(h<sub>1</sub>-h<sub>2</sub>)', 'p18m17.png', 19, 4),
(263, 'MCQ', '1 Mark', 'null', 'While falling freely at which height the kinetic energy of the object will be three times of the potential energy?<br><br>\r\n\r\nⒶ <sup>h<sub>1</sub></sup>/<sub>3</sub><br>\r\n\r\nⒷ <sup>h<sub>2</sub></sup>/<sub>4</sub><br>\r\n\r\nⒸ <sup>h<sub>1</sub>+ h<sub>2</sub></sup>/<sub>3</sub><br>\r\n\r\nⒹ <sup>h<sub>1</sub>+ h<sub>2</sub></sup>/<sub>4</sub>', 'p18m18.png', 19, 4),
(264, 'MCQ', '1 Mark', 'null', 'What will be the stress if a weight of 98N is hung in a wire of diameter 1 mm? <br><br>\r\nⒶ 1.25x10<sup>10</sup> Nm<sup>-2</sup><br>\r\nⒷ 1.25x10<sup>8</sup> Nm<sup>-2</sup><br>\r\nⒸ 1.2x10<sup>8</sup> Nm<sup>-2</sup><br>\r\nⒹ 1.2x10<sup>8</sup> Nm<sup>-2</sup>', 'none', 19, 7),
(265, 'MCQ', '1 Mark', 'null', 'What is the angle of reflection in the above figure?<br><br>\r\na. 30°<br>\r\nb. 45°<br>\r\nc. 60°<br>\r\nd. 90°', 'p18m21.png', 19, 8),
(266, 'MCQ', '1 Mark', 'null', 'If a force of 30N is applied to an object of mass 8kg which is kept on a surface, it achieves an acceleration of 3m/s<sup>2</sup>. What is the frictional force in Newton between the object and the surface?<br><br>\r\na. 0<br>\r\nb. 6<br>\r\nc. 24<br>\r\nd. 54', 'none', 19, 3);
INSERT INTO `questions` (`questionID`, `questionType`, `questionMarks`, `questionSet`, `questionText`, `questionImg`, `paperID`, `chapterID`) VALUES
(267, 'MCQ', '1 Mark', 'null', 'Which one is necessary to detect a recent heart attack?<br><br>\r\na. ECG<br>\r\nb. CT scan<br>\r\nc. ETT<br>\r\nd. Angiography', 'none', 19, 14),
(268, 'MCQ', '1 Mark', 'null', 'What is the dimension of ut in the equation, S= ut = <sup>1</sup>/<sub>2</sub>at<sup>2</sup>?<br><br>\r\na. LT<sup>-3</sup><br>\r\nb. LT<sup>-2</sup><br>\r\nc. L<br>\r\nd. 0', 'none', 19, 12),
(269, 'MCQ', '1 Mark', 'null', 'Which of the following is better during Thunder storm?<br><br>\r\na. To stay under an umbrella<br>\r\nb. To stay under a tree<br>\r\nc. To stay under an electric pole<br>\r\nd. Getting wet in rain', 'none', 19, 14),
(270, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'One day Rony and Johny was standing in front of a hill. Johny shot a bullet with the gun in his hand. Though Johny couldn\'t hear the echo Rony easily heard it after 0.1005 sec staying behind 1 meter. The temperature of air on that day was 25 °C.<br><br>\r\na. What is Amplitude?<br>\r\nb. Why sound can be heard faster in the rainy season than in winter?<br>\r\nc. Determine the distance between Rony and the hill.<br>\r\nd. Find the minimum temperature in which Johny could heard the echo? Analyze mathematically.', 'none', 19, 7),
(271, 'MCQ', '1 Mark', 'null', 'What is the radius of the cylinder which is used as the standard of \'kilogram\' in measuring the SI unit of mass?<br><br>\r\nⒶ 1 cm<br>\r\nⒷ 1.95 cm<br>\r\nⒸ 3.3 cm<br>\r\nⒹ 3.9 cm', 'none', 19, 1),
(272, 'MCQ', '1 Mark', 'null', 'What is the \'p\' section in the n-p-n transistor?<br><br>\r\nⒶ Collector<br>\r\nⒷ Emitter<br>\r\nⒸ Base<br>\r\nⒹ Amplifier', 'none', 19, 13),
(273, 'MCQ', '1 Mark', 'null', 'In which Muslim Scientist\'s book, the reference of the Windmill is found?<br><br>\r\nⒶ Al-Masudi<br>\r\nⒷ Ibne-Al-Haitham<br>\r\nⒸ Al-Hazen<br>\r\nⒹ Abdus Salam', 'none', 19, 1),
(274, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'A train starts from rest with acceleration 10 m/s<sup>2</sup>. Parallel to this a car starts at the same time with uniform velocity 100 m/s.<br><br>\r\na. What is friction?<br>\r\nb. When someone jumps from a boat, why does the boat move backward?<br>\r\nc. Find the required time for travelling 50 cm by the train?<br>\r\nd. Will the train overtake the car? Explain it mathematically?', 'none', 20, 2),
(275, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'a. What is buoyancy?<br>\r\nb. What do you mean by the co-efficient of real expansion of the liquid 18 x 10<sup>-5</sup>K<sup>-1</sup>?<br>\r\nc. What will be the frequency if the wave travels 4356m in 3 seconds?<br>\r\nd. If the wave length of the wave is reduced of half while keeping the same amplitude, evaluated the changes that will occur in wave velocity and frequency.', 'p19c2.png', 20, 7),
(276, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'A tank having capacity of carrying 1000-liter water situated at roof of a three storied building requires 10 minutes to fill with water. Capacity of pump is 0.5 kW and bottom of the rank is at a height of 10 meter from the ground.<br><br>\r\na. What is potential energy?<br>\r\nb. Derive that the kinetic energy is proportional to the square of the velocity.<br>\r\nc. What is work done by the pump?<br>\r\nd. Find the efficiency of the pump?', 'none', 20, 4),
(277, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'a. What is specific resistance?<br>\r\nb. Write at least two differences between ammeter and voltmeter.<br>\r\nc. What is the value of current flowing through the first circuit?<br>\r\nd. How much more or less is the value of current flowing through the second circuit than the first circuit?', 'p19c6.png', 20, 11),
(278, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'In a transformer the ratio of turns of the primary to secondary coils is N : <sup>N</sup>/<sub>8</sub>. 10 volt is found in secondary coil by applying emf e volt. the current available in primary coil is I<sub>p</sub> and 2 amp respectively.<br><br>\r\na. What is analogue signal?<br>\r\nb. Mention some fundamental differences between the power of computer and the human brain.<br>\r\nc. Calculate the value of E and I<sub>p</sub>?<br>\r\nd. If turns of the secondary coils is N also then what is the current in secondary coil for I<sub>p</sub> amp current in primary coil.', 'none', 20, 12),
(279, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'Look at the diagram and answer the following questions:<br><br>\r\na. What is electric induction?<br>\r\nb. Why do you mean by the e.m.f. of 3 volts?<br>\r\nc. Find the value of electric force acting between the two charges of the above diagram.<br>\r\nd. Derive mathematically if the two charges M and N are made one-fifth times but the distance between them is made four times, then what will be the change of force.', 'p19c8.png', 20, 10),
(280, 'MCQ', '1 Mark', 'null', 'Which one of the following quantities is independent?<br><br>\r\nⒶ Potential difference<br>\r\nⒷ Acceleration<br>\r\nⒸ Amount of substance<br>\r\nⒹ Force\r\n', 'none', 20, 1),
(281, 'MCQ', '1 Mark', 'null', 'What does the tangent drawn at point of the velocity time graph indicate?<br><br>\r\nⒶ displacement<br>\r\nⒷ momentum<br>\r\nⒸ acceleration<br>\r\nⒹ velocity', 'none', 20, 2),
(282, 'MCQ', '1 Mark', 'null', 'In the table, the velocity of a car is given in every alternate 5s. What distance will be travelled by the car in 20s?<br><br>\r\nⒶ 250m<br>\r\nⒷ 150m<br>\r\nⒸ 825m<br>\r\nⒹ 375m', 'p19m3.png', 20, 2),
(283, 'MCQ', '1 Mark', 'null', 'In the table, the velocity of a car is given in every alternate 5s. The motion of the car is —<br>\r\ni. Firstly acceleration secondly uniform velocity then retardation<br>\r\nii. Total travelled distance will be 925m<br>\r\niii. Total travelled distance will be 825m<br><br>\r\n\r\nWhich one is correct?<br><br>\r\nⒶ i & ii<br>\r\nⒷ i & iii<br>\r\nⒸ ii & iii<br>\r\nⒹ i, ii & iii', 'p19m4.png', 20, 2),
(284, 'MCQ', '1 Mark', 'null', 'An efficient civil engineer —<br>\r\ni. must construct a friction free road<br>\r\nii. must fix boards at different distances mentioning highest speed level<br>\r\niii. must warn the drivers about risk bridges <br><br>\r\n\r\nWhich one is correct?<br><br>\r\nⒶ i & ii<br>\r\nⒷ ii & iii<br>\r\nⒸ i & iii<br>\r\nⒹ i, ii & iii', 'none', 20, 14),
(285, 'MCQ', '1 Mark', 'null', 'How can you find our displacement?<br><br>\r\nⒶ Multiplying work-done by applied force<br>\r\nⒷ dividing work-done by applied force<br>\r\nⒸ dividing work-done by applied by time<br>\r\nⒹ  multiplying work done by time taken', 'none', 20, 2),
(286, 'MCQ', '1 Mark', 'null', 'A joule is compound unit one which is meter, what is another once?<br><br>\r\nⒶ Watt<br>\r\nⒷ Newton<br>\r\nⒸ Kilowatt<br>\r\nⒹ Second\r\n', 'none', 20, 4),
(287, 'MCQ', '1 Mark', 'null', 'Which of the following relation is correct?<br><br>\r\nⒶ W = <sup>hρg</sup>/<sub>A</sub><br>\r\nⒷ F = hρgA<br>\r\nⒸ W = <sup>hρ</sup>/<sub>gA</sub><br>\r\nⒹ F = <sup>A</sup>/<sub>hρg</sub>', 'none', 20, 5),
(288, 'MCQ', '1 Mark', 'null', 'What is the unit of buoyancy?<br><br>\r\nⒶ N<br>\r\nⒷ <sup>N</sup>/<sub>m</sub><br>\r\nⒸ Pa<br>\r\nⒹ <sup>H</sup>/<sub>P</sub>', 'none', 20, 5),
(289, 'MCQ', '1 Mark', 'null', 'In which direction does the negative charge move?<br><br>\r\nⒶ From higher potential to lower potential<br>\r\nⒷ From higher potential to higher potential<br>\r\nⒸ From lower potential to higher potential<br>\r\nⒹ From lower potential to lower potential', 'none', 20, 10),
(290, 'MCQ', '1 Mark', 'null', 'Step up transformers —<br>\r\ni. Transformer-1<br>\r\nii. Transformer-2<br>\r\niii. Transformer-3<br><br>\r\n\r\nWhich one is correct?<br><br>\r\nⒶ i & ii<br>\r\nⒷ i & iii<br>\r\nⒸ ii & iii<br>\r\nⒹ i, ii & iii', 'p19m11.png', 20, 12),
(291, 'MCQ', '1 Mark', 'null', 'What will be the highest output voltage?<br><br>\r\nⒶ 60v<br>\r\nⒷ 100v<br>\r\nⒸ 200v<br>\r\nⒹ 150v', 'p19m12.png', 20, 12),
(292, 'MCQ', '1 Mark', 'null', 'What will be the temperature in Kelvin scale if it measures 70° in Celsius scale?<br><br>\r\nⒶ 273K<br>\r\nⒷ 373K<br>\r\nⒸ 243K<br>\r\nⒹ 343K', 'none', 20, 6),
(293, 'MCQ', '1 Mark', 'null', 'What is actually beta ray emitted due to the radioactive decay? The flow of —<br><br>\r\nⒶ negative electron<br>\r\nⒷ A charge neutral particle nucleus<br>\r\nⒸ nucleus<br>\r\nⒹ proton', 'none', 20, 13),
(294, 'MCQ', '1 Mark', 'null', 'Which type of velocity do we find of sound on moon? <br><br>\r\nⒶ Maximum<br>\r\nⒷ Minimum<br>\r\nⒸ 332 m/s<br>\r\nⒹ zero', 'none', 20, 7),
(295, 'MCQ', '1 Mark', 'null', 'Which equation is correct?<br><br>\r\nⒶ Ft > (mv - mu) <br>\r\nⒷ Ft = mv + mu<br>\r\nⒸ Ft = mv - mu<br>\r\nⒹ <sup>F</sup>/<sub>t</sub> = mv - mu', 'none', 20, 3),
(296, 'MCQ', '1 Mark', 'null', 'In Sphero meter least count is —<br><br>\r\nⒶ Pitch (Total number of deviations of circular scale)<br>\r\nⒷ Pitch / (Total number of deviations of linear scale)<br>\r\nⒸ (Total number of deviations of circular scale) / Pitch<br>\r\nⒹ Linear scale reading - Circular scale reading', 'none', 20, 1),
(297, 'MCQ', '1 Mark', 'null', 'The body at rest may have —<br><br>\r\nⒶ Energy<br>\r\nⒷ Speed<br>\r\nⒸ Momentum<br>\r\nⒹ Velocity', 'none', 20, 2),
(298, 'MCQ', '1 Mark', 'null', 'What is the equivalent resistance of the circuit?<br><br>\r\nⒶ 1Ω<br>\r\nⒷ 2Ω<br>\r\nⒸ 3Ω<br>\r\nⒹ 4Ω\r\n', 'p19m20.png', 20, 11),
(299, 'MCQ', '1 Mark', 'null', 'Which one is correct?<br><br>\r\na. Four resistance are in series<br>\r\nb. R<sub>1</sub> II R<sub>2</sub>, R<sub>3</sub> II R<sub>4</sub><br>\r\nc. R<sub>1</sub> series R<sub>2</sub>, R<sub>3</sub> II R<sub>4</sub><br>\r\nd. Four resistances are in parallel\r\n', 'none', 20, 11),
(300, 'MCQ', '1 Mark', 'null', 'To examine eye, ear, nose and throat what kind of mirrors are used?<br><br>\r\na. Plain<br>\r\nb. Concave<br>\r\nc. Convex<br>\r\nd. Any', 'none', 20, 14),
(301, 'MCQ', '1 Mark', 'null', 'What isotope is used in treating the abnormal growth of the thyroid gland?<br><br>\r\na. lodinc-131<br>\r\nb. carbon-14<br>\r\nc. cobalt-60<br>\r\nd. phosphorus-32', 'none', 20, 14),
(302, 'MCQ', '1 Mark', 'null', '<sup>Sin i</sup>/<sub>Sin r</sub> = Constant; This constant depends on —<br><br>\r\na. Nature of media<br>\r\nb. Velocity of light<br>\r\nc. Wavelength<br>\r\nd. Angle of incidence', 'none', 20, 8),
(303, 'MCQ', '1 Mark', 'null', 'Full form of ETT is —<br><br>\r\na. Exercise Tomography Test<br>\r\nb. Exercise Tolerance Test<br>\r\nc. Exercise Turbulence Test<br>\r\nd. Exercise Tissue Test', 'none', 20, 14),
(304, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'In the figure a cylinder is shown, whose area of base, A = 0.2m<sup>3</sup> and height of the liquid, h = 1.5m. 80 kg liquid is required to fill the CD part of the cylinder.<br><br>\r\n\r\na. What is Pascal\'s law?<br>\r\nb. A small piece of iron sinks in water but a ship made of iron floats in it — why?<br>\r\nc. Find the magnitude of pressure of a point 75 cm deep from the surface of liquid?<br>\r\nd. According to the statement prove that \"pressure rises with the increase of the liquid\"? ', 'p19c3.png', 20, 5),
(305, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'a. What is Snell\'s law?<br>\r\nb. Write down two advantages of having two eyes?<br>\r\nc. In figure, when an object is placed at C, Find the position. nature and size of the image?<br>\r\nd. In the mirror MN, focal length is half of the radius of curvature. Explain it.', 'p19c4.png', 20, 8),
(306, 'MCQ', '1 Mark', 'null', 'Two friends are sitting face to face in a compartment of a running train. What is one\'s position with respect to a static reference object?<br><br>\r\nⒶ Relative rest<br>\r\nⒷ relative motion<br>\r\nⒸ absolute rest<br>\r\nⒹ absolute motion', 'none', 20, 13),
(307, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'An athlete completes one round of a circular track of diameter 200m in 40s and finishes his run at the end of 2 minutes 20s.<br><br>\r\n\r\na. Define average speed. <br>\r\nb. Explain the nature of the distance-time graphs for uniform and non-uniform motion of the object. <br>\r\nc. Calculate his speed. <br>\r\nd. Displacement never exceeds the diameter of the circular track. Put your logic through mathematical analysis. ', 'none', 22, 2),
(308, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'Akhter, Kiran and Rahul were riding in a car of mass 1500 kg that was moving with a high velocity 90km/h on an expressway when an insect of mass 10g hit the windshield and got stuck on the windscreen. Kiran suggested that the insect suffered a greater change in momentum but Akhter said that it exerted a larger force on the insect and as a result, the insect died.<br><br>\r\n\r\na. What is non-contact force?<br>\r\nb. How does a man walk? Explain it. <br>\r\nc. Find out the velocity of the car after collision. <br>\r\nd. Whose observation is correct? Comment through mathematical analysis. ', 'none', 22, 3),
(309, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'Two stones of equal masses are allowed to slide down from rest on two inclined frictionless surfaces shown in figure. (Assuming a = g sinθ and θ<sub>1</sub>=30°, θ<sub>2</sub>=60°, h=10m, g=10ms<sup>-2</sup>)<br><br>\r\n\r\na. Define 1 joule. <br>\r\nb. Explain the advantages of renewable energy. <br>\r\nc. Find out the speed of the stones. <br>\r\nd. Work done by the stones are same but times to reach the bottom are not same. Put your logic through mathematical analysis. ', 'p20c3.png', 22, 4),
(310, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'The mass of an ancient Greek coin is determined in air to be 8.630g. When the coin is submerged in water, its apparent mass is 7.800g. The density of pure silver is 10500kgm<sup>-3</sup>.<br><br>\r\n\r\na. Define 1 Pa. <br>\r\nb. A couple of ice cubes floats in a glass of water. Will the water level in the glass change when the ice cubes have melted? Why? <br>\r\nc. Find out the weight of the displaced water. <br>\r\nd. Comment the element of coin through mathematical logic. ', 'none', 22, 5),
(311, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'Length vs. Temperature graph of three different solid materials A, B and C is given in the diagram. Here the initial length of A is 100m at 20°C and value of angle is 45°.<br><br>\r\n\r\na. Define triple point of water. <br>\r\nb. Explain fundamental principle of measurement of heat. <br>\r\nc. Find out the coefficient of linear expansion of A.<br>\r\nd. Which materials are more suitable for making rail lines? Put your logic through mathematical analysis. ', 'p20c5.png', 22, 6),
(312, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'Three particles with charges +q at point A, -q at point B and +c at point C, are located at vertices of an equilateral triangle of side 10cm each and the line through A and B is parallel to the x axis.<br><br>\r\n\r\na. What is electric induction? <br>\r\nb. Potential of the earth is taken as zero. Explain why.<br>\r\nc. Find out the nature of force between A and B. <br>\r\nd. Comment the force acting on the charge at point C.', 'p20c7.png', 22, 10),
(313, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'A small town with a demand of 800 kW of electric at 220V is situated 15km away from an electric plant generating power at 440V. The resistance of the two-wire line carrying power is 0.5Ω per km. The town gets power from the line through a 4000-220V step down transformer at a sub-station in the town. Due to high power loss earlier transformer is replaced by a 40000-220V step down transformer.<br><br>\r\n\r\na. What is system loss?<br>\r\nb. What do you mean by 220V-100W written on a bulb?<br>\r\nс. Find out the rating of step-up transformer at the plant.<br>\r\nd. High voltage transmission is preferred, why? Analyze it mathematically.', 'none', 22, 12),
(314, 'MCQ', '1 Mark', 'null', 'Which phenomenon of sound is used in ultrasonography?<br><br>\r\nⒶ Reflection<br>\r\nⒷ Refraction<br>\r\nⒸ Interference<br>\r\nⒹ Diffraction', 'none', 22, 13),
(315, 'MCQ', '1 Mark', 'null', 'What is the use of diode?<br><br>\r\nⒶ Switch<br>\r\nⒷ Amplifier<br>\r\nⒸ Storage<br>\r\nⒹ Charger', 'none', 22, 13),
(316, 'MCQ', '1 Mark', 'null', 'At the time of measuring the length of an object by the slide calipers it was found that the main scale reading is 7mm. Vernier scale reading 6 and instrumental error -0.04 mm. (Vernier constant 0.002 cm). What is the actual length of the object?<br><br>\r\nⒶ 5.6 mm<br>\r\nⒷ 8.88 mm<br>\r\nⒸ 7.16 mm<br>\r\nⒹ 9.12 mm', 'none', 22, 1),
(317, 'MCQ', '1 Mark', 'null', 'At the time of measuring the length of an object by the slide calipers it was found that the main scale reading is 7mm. Vernier scale reading 6 and instrumental error -0.04 mm. (Vernier constant 0.002 cm). With the slide calipers of the system —<br>\r\ni. minimum 0.002 mm length can be measured<br>\r\nii. minimum 0.02 mm length can be measured<br>\r\niii. 49 division of main scale = 50 divisions of Vernier scale<br><br>\r\n\r\nWhich one is the following is correct?<br><br>\r\n\r\nⒶ i<br>\r\nⒷ ii<br>\r\nⒸ i & iii<br>\r\nⒹ ii & iii', 'none', 22, 1),
(318, 'MCQ', '1 Mark', 'null', 'Usually which type of filament is used in electric bulb?<br><br>\r\nⒶ Tungsten<br>\r\nⒷ Nichrome<br>\r\nⒸ Copper<br>\r\nⒹ Aluminum', 'none', 22, 11),
(319, 'MCQ', '1 Mark', 'null', 'Rony bought an electric bulb whose filament resistance is 550 Ω and voltage is 220 V. What is the amount of electric current?<br><br>\r\nⒶ 5A<br>\r\nⒷ 4A<br>\r\nⒸ 0.4 A<br>\r\nⒹ 0.5A', 'none', 22, 11),
(320, 'MCQ', '1 Mark', 'null', 'It is found that the birds are sitting on high voltage line. Because —<br>\r\ni. the birds lay eggs<br>\r\nii. there is no direct connection of electric line and the birds with the soil<br>\r\niii. the circuit not to be complete<br><br>\r\n\r\nWhich one of the following is correct?<br><br>\r\n\r\nⒶ i<br>\r\nⒷ iii<br>\r\nⒸ i & ii<br>\r\nⒹ ii  iii', 'none', 22, 11),
(321, 'MCQ', '1 Mark', 'null', 'What is the acceleration of the object in the last 2 sec?<br><br>\r\nⒶ  4 m/s<sup>2</sup><br>\r\nⒷ 1.35 m/s<sup>2</sup><br>\r\nⒸ -1.35 m/s<sup>2</sup><br>\r\nⒹ -4 m/s<sup>2</sup>', 'p20m8.png', 22, 2),
(322, 'MCQ', '1 Mark', 'null', 'What is the total distance travelled by the object?<br><br>\r\nⒶ 32 m<br>\r\nⒷ 34 m<br>\r\nⒸ 36 m<br>\r\nⒹ 38 m', 'p20m9.png', 22, 2),
(323, 'MCQ', '1 Mark', 'null', 'What is the wavelength of X-ray?<br><br>\r\nⒶ 10<sup>-10</sup> m<br>\r\nⒷ 10<sup>-8</sup> m<br>\r\nⒸ 10<sup>-6</sup> m<br>\r\nⒹ 10<sup>-4</sup> m', 'none', 22, 7),
(324, 'MCQ', '1 Mark', 'null', 'Stress is —<br><br>\r\nⒶ the change per unit length or per unit volume<br>\r\nⒷ the developed internal restoring force per unit area<br>\r\nⒸ certain limit of deforming force to regain its the previous shape<br>\r\nⒹ property by which a body is able to resist deformation', 'none', 22, 3),
(325, 'MCQ', '1 Mark', 'null', 'Cell phones use —<br>\r\ni. microwave<br>\r\nii. radio wave<br>\r\niii. ringer<br><br>\r\n\r\nWhich one of the following is correct?<br><br>\r\nⒶ i & ii<br>\r\nⒷ i & iii<br>\r\nⒸ ii & iii<br>\r\nⒹ i, ii & iii', 'none', 22, 13),
(326, 'MCQ', '1 Mark', 'null', 'How is the system loss of electricity transmission line decreased?<br><br>\r\nⒶ By increase the voltage<br>\r\nⒷ By increasing the resistance<br>\r\nⒸ By decreasing the voltage<br>\r\nⒹ By increasing the value of current', 'none', 22, 11),
(327, 'MCQ', '1 Mark', 'null', 'Which one of the following is called the process of charging a neutral body by bringing it very near to the charged body?<br><br>\r\nⒶ Electric conduction<br>\r\nⒷ Electric induction<br>\r\nⒸ Electric current<br>\r\nⒹ Electromagnetic induction', 'none', 22, 10),
(328, 'MCQ', '1 Mark', 'null', 'A student can see the black board distinctly and he can understand the lecture, but he cannot see his hand-writing of his khata distinctly without spectacle. What is the name of the defect of the student?<br><br>\r\nⒶ Myopia<br>\r\nⒷ Hypermetropia<br>\r\nⒸ Presbyopia<br>\r\nⒹ Astigmatism', 'none', 22, 14),
(329, 'MCQ', '1 Mark', 'null', 'A student can see the black board distinctly and he can understand the lecture, but he cannot see his hand-writing of his khata distinctly without spectacle. What type of lens is required for his spectacle?<br><br>\r\nⒶ Convex<br>\r\nⒷ Concave<br>\r\nⒸ Bi-focal<br>\r\nⒹ Plano-convex', 'none', 22, 14),
(330, 'MCQ', '1 Mark', 'null', 'Which one is the characteristic musical sound?<br><br>\r\nⒶ Smooth<br>\r\nⒷ Intensity<br>\r\nⒸ Reflection<br>\r\nⒹ Echo', 'none', 22, 7),
(331, 'MCQ', '1 Mark', 'null', 'What is the velocity of sound in iron at 20° C?<br><br>\r\nⒶ 344 m/s<br>\r\nⒷ 1450 m/s<br>\r\nⒸ 5014 m/s<br>\r\nⒹ 5130 m/s', 'none', 22, 7),
(332, 'MCQ', '1 Mark', 'null', 'What is the density of a liquid of mass 2000 kg and volume 2 m<sup>3</sup>?<br><br>\r\nⒶ 1000 kg/m<sup>3</sup><br>\r\nⒷ 2000 kg/m<sup>3</sup><br>\r\nⒸ 3000 kg/m<sup>3</sup><br>\r\nⒹ 4000 kg/m<sup>3</sup>', 'none', 22, 5),
(333, 'MCQ', '1 Mark', 'null', 'How the frictional force can be reduced?<br><br>\r\nⒶ Using lubricants<br>\r\nⒷ Increasing velocity<br>\r\nⒸ Using rough surface<br>\r\nⒹ Making tight contact', 'none', 22, 3),
(334, 'MCQ', '1 Mark', 'null', 'Who invented Calculus?<br><br>\r\nⒶ Newton<br>\r\nⒷ Aristotle<br>\r\nⒸ Galileo<br>\r\nⒹ Planck', 'none', 22, 1),
(335, 'MCQ', '1 Mark', 'null', 'What will be the potential energy of a body of mass 6 kg if it is raised to a height of 20 m above the surface of the earth?<br><br>\r\nⒶ 1116 J<br>\r\nⒷ 1126 J<br>\r\nⒸ 1176 J<br>\r\nⒹ 1186 J', 'none', 22, 4),
(336, 'MCQ', '1 Mark', 'null', 'What is the name of changing of position with time and with respect to its surroundings?<br><br>\r\nⒶ Motion<br>\r\nⒷ Rest<br>\r\nⒸ Displacement<br>\r\nⒹ Acceleration', 'none', 22, 2),
(337, 'MCQ', '1 Mark', 'null', 'Taking some wax into a test tube and placing a thermometer in it gradually applied heat balancedly and then after every five minutes reading are taken. In this way above graph is drawn from the information. What is the boiling point of the wax?<br><br>\r\nⒶ 45 K<br>\r\nⒷ 453 K<br>\r\nⒸ 0°C<br>\r\nⒹ -273 K', 'p20m24.png', 22, 6),
(338, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'A light ray strikes a homogenous rectangular block of glass of thickness w at an angle i. The ray emerges at point B and an angle i. The ray emerges at point B and an angle i. See diagram above. Here n<sub>1</sub> = 1, n<sub>2</sub> = 1.55, w = 3 cm and i = 32°.<br><br>\r\n\r\na. Define image. <br>\r\nb. Explain Snell\'s law. <br>\r\nc. Find in icons of i. <br>\r\nd. If refractive index of glass block is less than 1.55, lateral displacement of the incident ray will be less. Analyze it mathematically. ', 'p20c6.png', 22, 9),
(339, 'MCQ', '1 Mark', 'null', 'Taking some wax into a test tube and placing a thermometer in it gradually applied heat balancedly and then after every five minutes reading are taken. In this way following graph is drawn from the information. From the above graph we can get wax\'s<br>\r\ni. latent heat<br>\r\nii. melting point<br>\r\niii. boiling point<br><br>\r\n\r\nWhich one of the following is correct?<br><br>\r\nⒶ i<br>\r\nⒷ i & ii<br>\r\nⒸ ii & iii<br>\r\nⒹ i, ii & iii', 'p20m25.png', 22, 6),
(340, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'Farhan threw a marble of mass 100g vertically upward with velocity 50 m/s. It is assumed that there is no frictional force. <br><br>\r\na. What is unit of measurement of energy?<br>\r\nb. Determine the dimension of kinetic energy.<br>\r\nc. Find out the velocity of the marble after 7s.<br>\r\nd. Is it possible to stop the marble at height 12m applying an opposite force 10 N? Determine it with mathematical logic. ', 'none', 23, 2),
(341, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'A truck of mass 1200 kg was moving with 20 m/s velocity. But on the way driver lost its control and collided with a static car of mass 1000 kg near the road. After collision, the truck and car slided together for 150 m before stopping.<br><br>\r\n\r\na. Write down the conservation law of momentum.<br>\r\nb. Explain G.<br>\r\nc. Determine the combined velocity of the truck and car.<br>\r\nd. Is it possible to find out the resistive force of the moving truck from the above information? Explain it with mathematical logic. ', 'none', 23, 3),
(342, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'A stone of mass 1 kg is freely released from a height 300m.<br><br>\r\na. What is effective energy?<br>\r\nb. What is the reason of temperature variation between the top and bottom of water fall?<br>\r\nc. At what height the ratio of kinetic energy and potential energy will be 2 : 3?<br>\r\nd. Explain that the body supports the conservation law of energy after determining the total energy in 3s and 5s. ', 'none', 23, 4),
(343, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'In the diagram OF<sub>1</sub> = 10cm, PQ = 6cm & PQ object is placed at mid-point of F<sub>1</sub> & C<sub>1</sub>.<br><br>\r\n\r\na. What is absolute refractive index?<br>\r\nb. How does a periscope work?<br>\r\nc. What will be the size of the image formed by the object PQ?<br>\r\nd. To create a virtual image but same magnification for PQ object on that lens, in which distance the object needs to be placed? Explain mathematically. ', 'p21c5.png', 23, 8),
(344, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'a. What is electric intensity?<br>\r\nb. Why lost voltage is created? Explain.<br>\r\nc. What is the force of repulsion between the two charges?<br>\r\nd. Where do both the charges have same electric intensity? Explain Mathematically. ', 'p21c6.png', 23, 10),
(345, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'a. What is electro motive force?<br>\r\nb. How a p-type semiconductor is formed? <br>\r\nc. What will be the electromotive force in the circuit?<br>\r\nd. What will be the voltage on the voltmeter if k<sub>2</sub> key is opened? Explain mathematically. ', 'p21c7.png', 23, 11),
(346, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'a. What is semiconductor?<br>\r\nb. How does a p-n junction work?<br>\r\nc. What will be the frequency of the x-ray?<br>\r\nd. What will be the speed of electron on that x-ray machine?', 'p21c8.png', 23, 13),
(347, 'MCQ', '1 Mark', 'null', 'If a body of charge 5C is placed at a point in an electric field then it gains a force of 200 N. Which one is the magnitude of electric intensity of that point?<br><br>\r\nⒶ 10 NC<sup>-1</sup><br>\r\nⒷ 20 NC<sup>-1</sup><br>\r\nⒸ 30 NC<sup>-1</sup><br>\r\nⒹ 40 NC<sup>-1</sup>', 'none', 23, 10),
(348, 'MCQ', '1 Mark', 'null', 'Critical angle of a medium with respect to air is 45°, then what will be the refractive index of that medium?<br><br>\r\nⒶ √3<br>\r\nⒷ <sup>1</sup>/<sub>√3</sub><br>\r\nⒸ √2<br>\r\nⒹ <sup>1</sup>/<sub>√2</sub>', 'none', 23, 9),
(349, 'MCQ', '1 Mark', 'null', 'If the half-life of a radioactive element is 5 years, then what time will be required for decaying 7/8th of element?<br><br>\r\nⒶ 5 years<br>\r\nⒷ 10 years<br>\r\nⒸ 15 years<br>\r\nⒹ 20 years', 'none', 23, 13),
(350, 'MCQ', '1 Mark', 'null', 'What is the wavelength of X-ray?<br><br>\r\nⒶ 10x10<sup>-8</sup><br>\r\nⒷ 10x10<sup>-10</sup><br>\r\nⒸ 10x10<sup>-12</sup><br>\r\nⒹ 10x10<sup>-14</sup>', 'none', 23, 7),
(351, 'MCQ', '1 Mark', 'null', 'For what is beta decay occurred?<br><br>\r\nⒶ strong nuclear force<br>\r\nⒷ gravity<br>\r\nⒸ weak nuclear force<br>\r\nⒹ electromagnetic force', 'none', 23, 13),
(352, 'MCQ', '1 Mark', 'null', 'How many basic colors are there in a color TV?<br><br>\r\nⒶ 1<br>\r\nⒷ 2<br>\r\nⒸ 3<br>\r\nⒹ 4', 'none', 23, 13),
(353, 'MCQ', '1 Mark', 'null', 'The base of a rectangular vessel poured in to a depth of 4 cm. What is the pressure on the base?<br><br>\r\nⒶ 392 Pa<br>\r\nⒷ 396 Pa<br>\r\nⒸ 432 Pa<br>\r\nⒹ 496 Pa', 'none', 23, 5),
(354, 'MCQ', '1 Mark', 'null', 'Which one is the dimension of intensity of sound?<br><br>\r\nⒶ ML<sup>2</sup>T<sup>-3</sup><br>\r\nⒷ MLT<sup>-3</sup><br>\r\nⒸ MT<sup>-3</sup><br>\r\nⒹ MT<sup>-2</sup>', 'none', 23, 7),
(355, 'MCQ', '1 Mark', 'null', 'On the body of an electric bulb 100W - 220V is written. What is its filament resistance?<br><br>\r\nⒶ 488 Ω<br>\r\nⒷ 448 Ω<br>\r\nⒸ 844 Ω<br>\r\nⒹ 484 Ω', 'none', 23, 11),
(356, 'MCQ', '1 Mark', 'null', 'On the body of an electric bulb 100W - 220V is written. What amount of electricity will flow through it?<br><br>\r\nⒶ 0.455 A<br>\r\nⒷ 4.55 A<br>\r\nⒸ 5.54 A<br>\r\nⒹ 0.554 A', 'none', 23, 11),
(357, 'MCQ', '1 Mark', 'null', 'In which device, electromagnetic induction is used?<br><br>\r\nⒶ motor<br>\r\nⒷ transistor<br>\r\nⒸ transformer<br>\r\nⒹ amplifier', 'none', 23, 12),
(358, 'MCQ', '1 Mark', 'null', 'The technology to examine blockage in a fine blood vessel —<br><br>\r\nⒶ angiogram<br>\r\nⒷ angioplasty<br>\r\nⒸ ETT<br>\r\nⒹ ECG', 'none', 23, 14),
(359, 'MCQ', '1 Mark', 'null', 'What did Dr. Gibert conduct his research on?<br><br>\r\nⒶ electricity<br>\r\nⒷ light<br>\r\nⒸ magnetism<br>\r\nⒹ sound', 'none', 23, 1),
(360, 'MCQ', '1 Mark', 'null', 'What is the displacement of the object according to the figure?<br><br>\r\nⒶ 3m<br>\r\nⒷ 4m<br>\r\nⒸ 5m<br>\r\nⒹ 6m', 'p21m14.png', 23, 2),
(361, 'MCQ', '1 Mark', 'null', 'What does the figure represent?<br><br>\r\nⒶ uniform velocity<br>\r\nⒷ non uniform velocity<br>\r\nⒸ non-uniform acceleration<br>\r\nⒹ uniform acceleration', 'p21m15.png', 23, 2),
(362, 'MCQ', '1 Mark', 'null', 'Fossil fuel is —<br>\r\ni. Oil<br>\r\nii. Gas<br>\r\niii. Salt<br><br>\r\n\r\nWhich of the following is correct?<br><br>\r\n\r\nⒶ i & ii<br>\r\nⒷ ii & iii<br>\r\nⒸ i & iii<br>\r\nⒹ i, ii & iii', 'none', 23, 13),
(363, 'MCQ', '1 Mark', 'null', 'How much pressure is felt by the bottom of a cylinder that is 0.1m long, if it is filled with water?<br><br>\r\nⒶ 1.96 Pa<br>\r\nⒷ 980 Pa<br>\r\nⒸ 1960 Pa<br>\r\nⒹ 1.96x10<sup>4</sup> Pa', 'none', 23, 5),
(364, 'MCQ', '1 Mark', 'null', 'An object was released in a liquid. Densities of liquid and object are, respectively, 860kg/m<sup>3</sup> and 2700kg/m<sup>3</sup>. This object in the liquid will —<br><br>\r\n\r\nⒶ Sink<br>\r\nⒷ Float<br>\r\nⒸ Float being partially immersed<br>\r\nⒹ Float being fully immersed', 'none', 23, 5),
(365, 'MCQ', '1 Mark', 'null', 'Taking latent heat by an object —<br>\r\ni. temperature increases<br>\r\nii. state changes<br>\r\niii. increase its internal energy<br><br>\r\n\r\nWhich of the following is correct?<br><br>\r\n\r\nⒶ i & ii<br>\r\nⒷ ii & iii<br>\r\nⒸ i & iii<br>\r\nⒹ i, ii & iii', 'none', 23, 6),
(366, 'MCQ', '1 Mark', 'null', 'Unit of the thermal capacity of an object is —<br><br>\r\nⒶ Jkg<sup>-1</sup><br>\r\nⒷ Jk<sup>-1</sup><br>\r\nⒸ Jkg<sup>-1</sup>K<sup>-1</sup><br>\r\nⒹ NmJ', 'none', 23, 6),
(367, 'MCQ', '1 Mark', 'null', 'If the frequency of the wave is 100 Hz its wave velocity will be —<br><br>\r\nⒶ 8m/s<br>\r\nⒷ 10m/s<br>\r\nⒸ 14m/s<br>\r\nⒹ 16m/s', 'p21m21.png', 23, 7),
(368, 'MCQ', '1 Mark', 'null', 'The process of surveying oil or gas inside the ground is called —<br><br>\r\nⒶ Detection<br>\r\nⒷ SONAR<br>\r\nⒸ Geophone<br>\r\nⒹ Seismic survey', 'none', 23, 13),
(369, 'MCQ', '1 Mark', 'null', 'Regular reflection occurs in —<br>\r\ni. Plane mirror<br>\r\nii. Concave mirror<br>\r\niii. Convex mirror<br><br>\r\n\r\nWhich of the following is correct?<br><br>\r\n\r\nⒶ i<br>\r\nⒷ ii & iii<br>\r\nⒸ i & iii<br>\r\nⒹ i, ii & iii', 'none', 23, 8),
(370, 'MCQ', '1 Mark', 'null', 'For an object at infinity it can be written for position of image as usual meaning of the symbol is —<br><br>\r\nⒶ u = v<br>\r\nⒷ v = f<br>\r\nⒸ <sup>1</sup>/<sub>f</sub> = <sup>1</sup>/<sub>u</sub><br>\r\nⒹ v = <sup>1</sup>/<sub>f</sub>', 'none', 23, 8),
(371, 'MCQ', '1 Mark', 'null', 'A student calculated the magnification with the help of a lens as <sup>2</sup>/<sub>3</sub>. If the image is virtual then the lens will be —<br><br>\r\nⒶ Concave<br>\r\nⒷ Plane<br>\r\nⒸ Convex<br>\r\nⒹ Plane-concave', 'none', 23, 8),
(372, 'Creative', '(1+2+3+4) = 10 Marks', 'null', 'A piece of brass of density 8.5g/cm<sup>3</sup> is attached to a piece of wood of mass 100g and density 0.2g/cm<sup>3</sup> so that the two together will just submerge beneath water. <br><br>\r\n\r\na. State Pascal\'s law.<br>\r\nb. A rotten egg floats on water but not a fresh egg — Explain why.<br>\r\nc. Determine the volume of brass.<br>\r\nd. Determine the weight of brass in a liquid of density 1.4 g/cm<sup>3</sup>', 'none', 23, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chapters`
--
ALTER TABLE `chapters`
  ADD PRIMARY KEY (`chapterID`);

--
-- Indexes for table `papers`
--
ALTER TABLE `papers`
  ADD PRIMARY KEY (`paperID`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`questionID`),
  ADD KEY `test` (`paperID`),
  ADD KEY `test2` (`chapterID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chapters`
--
ALTER TABLE `chapters`
  MODIFY `chapterID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `papers`
--
ALTER TABLE `papers`
  MODIFY `paperID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `questionID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=373;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `test` FOREIGN KEY (`paperID`) REFERENCES `papers` (`paperID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `test2` FOREIGN KEY (`chapterID`) REFERENCES `chapters` (`chapterID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

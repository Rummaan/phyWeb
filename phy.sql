-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2020 at 06:21 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phy`
--

-- --------------------------------------------------------

--
-- Table structure for table `qa`
--

CREATE TABLE `qa` (
  `sr` int(11) NOT NULL,
  `q` text COLLATE utf8_unicode_ci NOT NULL,
  `a` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `qa`
--

INSERT INTO `qa` (`sr`, `q`, `a`) VALUES
(1, 'A diffraction grating used at normal incidence gives a yellow line (λ =6000A0)in a certain spectral order superimposed on a blue line (λ =4800A0) of next higher order. If the angle of diffraction is sin-1(3/4) calculate the grating element.', 'fwddiffraction/Q1.pdf'),
(2, 'Monocromatic light of wavelength 6560A falls normally on a grating 2 cm wide. The frist order spectrum is produced at an angle of 16®17’ from the normal. Calculate the total number of lines on the grating.', 'fwddiffraction/Q2.pdf'),
(5, 'A parallel beam of light is incident on a plane transmission grating having 3000 lines/cm. A third order diffraction is observed at 30®. calculate the wavelength of the line.', 'fwddiffraction/Q3.pdf'),
(6, 'The visible spectrum ranges from 4000A0 to 7000A0 . Find the angular breath of the first order  visible spectrum produced by a plane grating having 6000 lines/cm when light is incident normally on the grating.', 'fwddiffraction/Q4.pdf'),
(7, 'In plane transmission grating the angle of diffraction for the second order principal maxima for the wavelength 5 x 10-5 cm is 35®. Calculate the number of lines/cm on the diffraction grating.', 'fwddiffraction/Q5.pdf'),
(8, 'A grating has 620 ruling/mm and is 0.5 mm wide. What is the smallest wavelength interval that can be resolved in the third order at λ =481mm ?', 'fwddiffraction/Q6.pdf'),
(9, 'Calculate the minimum number of lines required on grating that can just resolve the two sodium lines λ 1=5890A and λ 2=5893 A in third order.', 'fwddiffraction/Q7.pdf'),
(10, 'Calculate the maximum order of diffraction maxima seen from plane transmission grating with 2500 lines per inch if light of wavelength 6900 A falls normally on it.', 'fwddiffraction/Q8.pdf'),
(11, 'Convert the point P(1,3,5) from Cartesian to Cylindrical and Spherical polar coordinates', 'fwdelectrodynamics/Q1.pdf'),
(12, 'Given vector A ⃗(x,y,z)=yi ̂+(x+z)j ̂ in Cartesian coordinate system at point P(-2,6,3). Convert the vector A ⃗ into cylindrical and spherical coordinates.', 'fwdelectrodynamics/Q2.pdf'),
(13, 'Find the divergence and curl of the field F=30i ̂+2xy( j) ̂+5xz^2 k ̂  in Cartesian coordinates.', 'fwdelectrodynamics/Q3.pdf'),
(14, 'If ∅(x,y,z)=3(x^2 y-y^2 x), Calculate gradient.', 'fwdelectrodynamics/Q4.pdf'),
(15, 'A region is specified by the potential function given by ∅=4x^2+3y^2-9z^2. Calculate electric field strength.', 'fwdelectrodynamics/Q5.pdf'),
(16, 'Calculate the numerical aperture and hence the acceptance angle for an optical fiber. Given that the refractive indices of the core and the cladding are 1.45 and 1.40 respectively.', 'fwdfiberoptics/Q1.pdf'),
(17, 'The refractive index of core and cladding of a SI fiber are 1.52 and 1.41 respectively. Calculate (i) critical angle (ii) NA and (iii) maximum incidence angle.', 'fwdfiberoptics/Q2.pdf'),
(18, 'An optical fiber has a NA of 0.20 and refractive index of cladding is 1.59. Determine the core refractive index and the acceptance angle for the fiber in water which has a refractive index of 1.33.', 'fwdfiberoptics/Q3.pdf'),
(19, 'A typical relative refractive index difference for an optical fiber is 1%. Estimated the numerical aperture and the critical angle at the core cladding interface if the core refractive index is 1.46.', 'fwdfiberoptics/Q4.pdf'),
(20, 'A glass clad fiber is made with core glass of refractive index 1.5 and the cladding is doped to get a frictional index difference of 0.0005. Find [a] the refractive index of the cladding. [b] the critical internal reflection angle [c] Acceptance angle.', 'fwdfiberoptics/Q5.pdf'),
(21, 'A step index fiber has core diameter 29x10-6m . The refractive indices of the core and the cladding are 1.52 and 1.5189 resp. If the light of wavelength 1.3µm is transmitted through the fiber, determine [a]Normalized frequency of the fiber. [b] The number of modes fiber will support.', 'fwdfiberoptics/Q6.pdf'),
(22, 'What will be the length of a meter rod appear to a person travelling parallel to the length of the rod at a speed of 0.8c relative to rod?', 'fwdquestionsseperatedrelativity/Q1.pdf'),
(23, 'A meter ruler moves past an observer on the earth with a velocity of 2.5 ×1010 cm/ sec, along the direction of its length. What is its apparent length with respect to the observer?', 'fwdquestionsseperatedrelativity/Q2.pdf'),
(24, 'A spaceship 50m long passes the earth at a speed of 2.8× 108 m/s. what will be its apparent length?', 'fwdquestionsseperatedrelativity/Q3.pdf'),
(25, 'A rocketship is 50m long. When it is on flight its length appears to be 49.5 to an observer on ground. Find the speed of the rocket?', 'fwdquestionsseperatedrelativity/Q4.pdf'),
(26, 'A certain particle called meson has a life time 2 ×10-6sec; a] What is the mean life time when the particle is travelling with a speed of 2.9994× 108 m/sec?; b] How far does it go during one mean life?', 'fwdquestionsseperatedrelativity/Q5.pdf'),
(27, 'The mean life of meson is 2x10-8 sec. calculate the mean life of a meson moving with a velocity 0.8c?', 'fwdquestionsseperatedrelativity/Q6.pdf'),
(28, 'A wrist watch keeps correct time on earth. If it is worn by pilot in spaceship, leaving earth with constant velocity of 109 cm/sec. How many seconds does it appear to lose in one day with respect to the observer on the Earth.', 'fwdquestionsseperatedrelativity/Q7.pdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `qa`
--
ALTER TABLE `qa`
  ADD PRIMARY KEY (`sr`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `qa`
--
ALTER TABLE `qa`
  MODIFY `sr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

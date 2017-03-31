-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2017 at 10:36 AM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phonecase`
--

-- --------------------------------------------------------

--
-- Table structure for table `dataphone`
--

CREATE TABLE `dataphone` (
  `id` int(10) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dataphone`
--

INSERT INTO `dataphone` (`id`, `userid`, `data`) VALUES
(1, '0', '[{"url_case":"localhost/sroce/iphone/","userId":"0","widthWindow":375,"heightWindow":647,"device":"iphone7plus","typecase":"","colordevice":"","imagedevice":"ico/iphone-case-temp.png","height":512,"width":248,"zoom":1,"content":{"background":"url(http://172.16.6.17/sroce/iphone/background/background_05.png)","element":"\\n\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t"}}]'),
(2, '0', '[{"url_case":"localhost/sroce/iphone/","userId":"0","widthWindow":375,"heightWindow":647,"device":"iphone7plus","typecase":"","colordevice":"","imagedevice":"ico/iphone-case-temp.png","height":512,"width":248,"zoom":1,"content":{"background":"url(http://172.16.6.17/sroce/iphone/background/background_06.png)","element":"\\n\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t<div id=\\"rect0_view\\" style=\\"transform: translate3d(23px, 25px, 0px) scale(0.4286313797582056, 0.4286313797582056) rotate3d(0, 0, 1, 0.7502769413047758deg);\\"><img src=\\"ico/stamp/ninja.png\\" style=\\"width:240px;\\"></div><div id=\\"rect1_view\\" style=\\"transform: translate3d(-11px, 222px, 0px) scale(0.37383464990289017, 0.37383464990289017) rotate3d(0, 0, 1, 19.709805355751485deg);\\"><img src=\\"ico/stamp/doll.png\\" style=\\"width:240px;\\"></div>"}}]'),
(3, '0', '[{"url_case":"localhost/sroce/iphone/","userId":"0","widthWindow":375,"heightWindow":647,"device":"iphone7plus","typecase":"","colordevice":"","imagedevice":"ico/iphone-case-temp.png","height":512,"width":248,"zoom":1,"content":{"background":"rgb(56, 204, 36)","element":"\\n\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t<div id=\\"rect0_view\\" style=\\"transform: translate3d(27px, 80px, 0px) scale(1.1211208995695203, 1.1211208995695203) rotate3d(0, 0, 1, -24.41926422073459deg);\\"><img id=\\"imgrect0\\" class=\\"rotate6\\" src=\\"upload/cYVgRkfhfOO1k2n.jpeg\\"></div><div id=\\"rect1_view\\" style=\\"transform: translate3d(26px, 342px, 0px) scale(2.128760998085106, 2.128760998085106) rotate3d(0, 0, 1, 335.1802370254278deg);\\"><span class=\\"font5\\" style=\\"color:rgb(204, 36, 36)\\">Afghj </span></div>"}}]'),
(4, '0', '[{"url_case":"localhost/sroce/iphone/","userId":"0","widthWindow":375,"heightWindow":647,"device":"iphone7plus","typecase":"","colordevice":"","imagedevice":"ico/iphone-case-temp.png","height":512,"width":248,"zoom":1,"content":{"background":"#fff","element":"\\n\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t<div id=\\"rect0_view\\" style=\\"transform: translate3d(27px, 36px, 0px) scale(1.7566193472249818, 1.7566193472249818) rotate3d(0, 0, 1, 6.346442724945376deg);\\"><img id=\\"imgrect0\\" class=\\"rotate6\\" src=\\"upload/U2aDAeN7G3k0zXS.jpeg\\"></div>"}}]'),
(5, '0', '[{"url_case":"localhost/sroce/iphone/","userId":"0","widthWindow":375,"heightWindow":647,"device":"iphone7plus","typecase":"","colordevice":"","imagedevice":"ico/iphone-case-temp.png","height":512,"width":248,"zoom":1,"content":{"background":"#fff","element":"\\n\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t<div id=\\"rect0_view\\" style=\\"transform: translate3d(0px, 6px, 0px) scale(1, 1) rotate3d(0, 0, 0, 0deg);\\"><img id=\\"imgrect0\\" class=\\"rotate1\\" src=\\"upload/y3V0ruqQUKqYG8n.jpeg\\"></div>"}}]'),
(6, '0', '[{"url_case":"localhost/sroce/iphone/","userId":"0","widthWindow":375,"heightWindow":647,"device":"iphone7plus","typecase":"","colordevice":"","imagedevice":"ico/iphone-case-temp.png","height":512,"width":248,"zoom":1,"content":{"background":"#fff","element":"\\n\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t<div id=\\"rect0_view\\" style=\\"transform: translate3d(0px, 6px, 0px) scale(1, 1) rotate3d(0, 0, 0, 0deg);\\"><img id=\\"imgrect0\\" class=\\"rotate1\\" src=\\"upload/y3V0ruqQUKqYG8n.jpeg\\"></div>"}},{"url_case":"localhost/sroce/iphone/","userId":"0","widthWindow":375,"heightWindow":647,"device":"iphone7plus","typecase":"","colordevice":"","imagedevice":"ico/iphone-case-temp.png","height":512,"width":248,"zoom":1,"content":{"background":"#fff","element":"\\n\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t<div id=\\"rect0_view\\" style=\\"transform: translate3d(0px, 6px, 0px) scale(1, 1) rotate3d(0, 0, 0, 0deg);\\"><img id=\\"imgrect0\\" class=\\"rotate1\\" src=\\"upload/HuDmOQ8yF1wktTN.jpeg\\"></div>"}}]'),
(7, '0', '[{"url_case":"localhost/sroce/iphone/","userId":"0","widthWindow":768,"heightWindow":1004,"device":"iphone7plus","typecase":"","colordevice":"","imagedevice":"ico/iphone-case-temp.png","height":869,"width":421,"zoom":1,"content":{"background":"#fff","element":"\\n\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t<div id=\\"rect0_view\\" style=\\"transform: translate3d(-15px, -71px, 0px) scale(0.8624479130968956, 0.8624479130968956) rotate3d(0, 0, 1, -3.0437263306058355deg);\\"><img id=\\"imgrect0\\" class=\\"rotate1\\" src=\\"upload/MHux00uqya5vSgv.jpeg\\"></div><div id=\\"rect2_view\\" style=\\"transform: translate3d(22px, 191px, 0px) scale(1, 1) rotate3d(0, 0, 0, 0deg);\\"><img src=\\"ico/stamp/ninja.png\\" style=\\"width:240px;\\"></div><div id=\\"rect1_view\\" style=\\"transform: translate3d(0px, 318px, 0px) scale(2.470824230027423, 2.470824230027423) rotate3d(0, 0, 1, -4.231662739314629deg);\\"><span class=\\"font7\\" style=\\"color:rgb(204, 68, 153)\\">Tefhjjju </span></div>"}}]'),
(8, '0', '[{"url_case":"localhost/sroce/iphone/","userId":"0","widthWindow":768,"heightWindow":1004,"device":"iphone7plus","typecase":"","colordevice":"","imagedevice":"ico/iphone-case-temp.png","height":869,"width":421,"zoom":1,"content":{"background":"#fff","element":"\\n\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t<div id=\\"rect0_view\\" style=\\"transform: translate3d(-15px, -71px, 0px) scale(0.8624479130968956, 0.8624479130968956) rotate3d(0, 0, 1, -3.0437263306058355deg);\\"><img id=\\"imgrect0\\" class=\\"rotate1\\" src=\\"upload/MHux00uqya5vSgv.jpeg\\"></div><div id=\\"rect2_view\\" style=\\"transform: translate3d(22px, 191px, 0px) scale(1, 1) rotate3d(0, 0, 0, 0deg);\\"><img src=\\"ico/stamp/ninja.png\\" style=\\"width:240px;\\"></div><div id=\\"rect1_view\\" style=\\"transform: translate3d(0px, 318px, 0px) scale(2.470824230027423, 2.470824230027423) rotate3d(0, 0, 1, -4.231662739314629deg);\\"><span class=\\"font7\\" style=\\"color:rgb(204, 68, 153)\\">Tefhjjju </span></div>"}},{"url_case":"localhost/sroce/iphone/","userId":"0","widthWindow":768,"heightWindow":1004,"device":"iphone7plus","typecase":"","colordevice":"","imagedevice":"ico/iphone-case-temp.png","height":869,"width":421,"zoom":1,"content":{"background":"#fff","element":"\\n\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t<div id=\\"rect0_view\\" style=\\"transform: translate3d(-22px, -61px, 0px) scale(1.3950674449064107, 1.3950674449064107) rotate3d(0, 0, 1, 3.1403373627375686deg);\\"><img id=\\"imgrect0\\" class=\\"rotate1\\" src=\\"upload/MHux00uqya5vSgv.jpeg\\"></div><div id=\\"rect2_view\\" style=\\"transform: translate3d(22px, 191px, 0px) scale(1, 1) rotate3d(0, 0, 0, 0deg);\\"><img src=\\"ico/stamp/ninja.png\\" style=\\"width:240px;\\"></div><div id=\\"rect1_view\\" style=\\"transform: translate3d(0px, 318px, 0px) scale(2.470824230027423, 2.470824230027423) rotate3d(0, 0, 1, -4.231662739314629deg);\\"><span class=\\"font7\\" style=\\"color:rgb(204, 68, 153)\\">Tefhjjju </span></div>"}}]'),
(9, '0', '[{"url_case":"localhost/sroce/iphone/","userId":"0","widthWindow":768,"heightWindow":1004,"device":"iphone7plus","typecase":"","colordevice":"","imagedevice":"ico/iphone-case-temp.png","height":869,"width":421,"zoom":1,"content":{"background":"#fff","element":"\\n\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t<div id=\\"rect0_view\\" style=\\"transform: translate3d(25px, -80px, 0px) scale(2.2683825882745183, 2.2683825882745183) rotate3d(0, 0, 1, 7.39193778565982deg);\\"><img id=\\"imgrect0\\" class=\\"rotate1\\" src=\\"upload/tXwhXtfAvq9gIyz.jpeg\\"></div>"}}]'),
(10, '130', '[{"url_case":"localhost/sroce/iphone/","userId":"130","widthWindow":768,"heightWindow":1004,"device":"iphone7plus","typecase":"","colordevice":"","imagedevice":"ico/iphone-case-temp.png","height":809,"width":392,"zoom":1,"content":{"background":"#fff","element":"\\n\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t<div id=\\"rect0_view\\" style=\\"transform: translate3d(520px, 449px, 0px) scale(5.838141589967681, 5.838141589967681) rotate3d(0, 0, 1, -0.15874044926320607deg);\\"><img id=\\"imgrect0\\" class=\\"rotate1\\" src=\\"upload/eliN44gYZoB6qqv.jpeg\\"></div>"}}]'),
(11, '130', '[{"url_case":"localhost/sroce/iphone/","userId":"130","widthWindow":768,"heightWindow":1004,"device":"iphone7plus","typecase":"","colordevice":"","imagedevice":"ico/iphone-case-temp.png","height":809,"width":392,"zoom":1,"content":{"background":"#fff","element":"\\n\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t<div id=\\"rect0_view\\" style=\\"transform: translate3d(-118px, -90px, 0px) scale(2.168004437120958, 2.168004437120958) rotate3d(0, 0, 1, 5.555950557213208deg);\\"><img id=\\"imgrect0\\" class=\\"rotate1\\" src=\\"upload/EXUtbfbcXIFpkRu.jpeg\\"></div>"}}]'),
(12, '130', '[{"url_case":"localhost/sroce/iphone/","userId":"130","widthWindow":375,"heightWindow":647,"device":"iphone7plus","typecase":"","colordevice":"","imagedevice":"ico/iphone-case-temp.png","height":467,"width":226,"zoom":1,"content":{"background":"#fff","element":"\\n\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t<div id=\\"rect0_view\\" style=\\"transform: translate3d(199px, 222px, 0px) scale(2.7839593451211493, 2.7839593451211493) rotate3d(0, 0, 1, 8.269599819956824deg);\\"><img id=\\"imgrect0\\" class=\\"rotate1\\" src=\\"upload/2mJH7fqqc55mBkP.jpeg\\"></div>"}}]'),
(13, '130', '[{"url_case":"localhost/sroce/iphone/","userId":"130","widthWindow":768,"heightWindow":1004,"device":"iphone7plus","typecase":"","colordevice":"","imagedevice":"ico/iphone-case-temp.png","height":809,"width":392,"zoom":1,"content":{"background":"#fff","element":"\\n\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t<div id=\\"rect0_view\\" style=\\"transform: translate3d(39px, -151px, 0px) scale(1.6464208288827116, 1.6464208288827116) rotate3d(0, 0, 1, 13.009504129140495deg);\\"><img id=\\"imgrect0\\" class=\\"rotate1\\" src=\\"upload/bnyT9JEHbG6sKk8.jpeg\\"></div><div id=\\"rect1_view\\" style=\\"transform: translate3d(27px, 591px, 0px) scale(2.8815486768578276, 2.8815486768578276) rotate3d(0, 0, 1, -8.923254077280035deg);\\"><span class=\\"null\\" style=\\"color:rgb(204, 68, 153)\\">Ozeee </span></div><div id=\\"rect2_view\\" style=\\"transform: translate3d(110px, -32px, 0px) scale(0.5810376333722075, 0.5810376333722075) rotate3d(0, 0, 1, -4.037140275364919deg);\\"><img src=\\"ico/stamp/fox.png\\" style=\\"width:240px;\\"></div>"}}]'),
(14, '130', '[{"url_case":"localhost/sroce/iphone/","userId":"130","widthWindow":375,"heightWindow":647,"device":"iphone6s","typecase":"","colordevice":"","imagedevice":"ico/iphone-case-temp-iphone6plus.png","height":666,"width":345,"zoom":0.7462462462462462,"content":{"background":"#fff","element":"\\n\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t<div id=\\"rect0_view\\" style=\\"transform: translate3d(28px, 21px, 0px) scale(1.0818794793912563, 1.0818794793912563) rotate3d(0, 0, 1, 10.414766039927486deg);\\"><img id=\\"imgrect0\\" class=\\"rotate1\\" src=\\"upload/LbWdkioniLFSmXd.jpeg\\"></div><div id=\\"rect1_view\\" style=\\"transform: translate3d(84px, -59px, 0px) scale(0.41698810337932557, 0.41698810337932557) rotate3d(0, 0, 1, 10.06940651091466deg);\\"><img src=\\"ico/stamp/ninja.png\\" style=\\"width:240px;\\"></div>"}}]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dataphone`
--
ALTER TABLE `dataphone`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dataphone`
--
ALTER TABLE `dataphone`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

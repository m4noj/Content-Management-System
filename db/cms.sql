-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 15, 2022 at 08:50 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Javascript'),
(2, 'PHP'),
(3, 'Python'),
(4, 'Java');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `comment_author` varchar(255) DEFAULT NULL,
  `comment_email` varchar(255) DEFAULT NULL,
  `comment_status` varchar(255) DEFAULT NULL,
  `comment_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment`, `comment_author`, `comment_email`, `comment_status`, `comment_date`) VALUES
(1, 1, 'nice post.', 'Neil', 'neil@neil.biz', 'Approved', '2019-03-23'),
(2, 6, 'Eius, architecto, dolor! Dolorum.', 'Mahesh', 'mahesh@cms.in', 'Approved', '2019-03-23'),
(3, 6, 'well done, mr. John.', 'clara', 'clara@yahoo.com', 'Approved', '2019-03-23'),
(4, 4, 'Vero, error, ad soluta eligendi repellendus consequuntur.', 'Danny', 'danny@gmail.com', 'Unapproved', '2019-03-23');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_cat_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_img` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'Draft',
  `post_views` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_cat_id`, `post_title`, `post_author`, `post_date`, `post_img`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views`) VALUES
(1, 1, 'Introduction to Javascript', 'Manoj', '2022-10-15', 'img-code_js.jpg', '<h2><strong>Introduction to Javascript</strong></h2><p><a href=\"http://www.google.com\">http://www.google.com</a></p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi ea delectus, aut quidem, aliquam, quo facilis, eius et totam in est. Nihil suscipit mollitia reiciendis reprehenderit nisi architecto corrupti nostrum, eveniet a <strong>perspiciatis dignissimos. Autem alias adipisci obcaecati, in ratio</strong>ne ipsum amet reiciendis culpa provident illum fugit dignissimos quod odio hic, ipsam temporibus non, rerum rem natus quis sit eligendi dolorem ullam? Iure voluptatibus ut enim alias animi saepe, quasi sed nisi dicta consectetur, architecto, eum id praesentium quisquam, rerum totam possimus veritatis! Quaerat iusto nisi provident ipsum sequi perferendis vero totam asperiores repudiandae consectetur voluptatibus&nbsp;</p><ol><li><strong>lorem</strong></li><li><strong>ipsum</strong></li><li><strong>dolor</strong></li><li><strong>sit</strong></li><li><strong>amet</strong></li></ol><p>ut quas laudantium eos, porro, minima dicta, hic dignissimos velit itaque, sapiente maiores expedita nemo! Perferendis sit alias, quibusdam doloremque sed delectus cum accusamus, pariatur reprehenderit! Repellendus qui id dicta <strong>corporis</strong>, <strong>error</strong> quo, minima maxime. Libero officiis veritatis qui asperiores eligendi unde doloremque dicta odit delectus animi, velit, corporis saepe pariatur in quisquam tempora.</p><p>&nbsp;</p><p><strong>by</strong></p><p><strong>Manoj</strong></p>', 'javascript, js', 1, 'published', 7),
(2, 2, 'PHP Programming', 'Manoj', '2022-10-15', 'img-code_php.jpg', '<h2><strong>PHP Programming</strong></h2><p>&nbsp;</p><p><strong>minima dicta, hic dignissimos velit itaque, sapiente maiores ex</strong>pedita nemo! Perferendis sit alias, quibusdam doloremque sed delectus cum accusamus, pariatur reprehenderit! Repellendus qui id dicta corporis, <strong>error</strong> quo, minima maxime. Libero officiis veritatis qui asperiores eligendi unde doloremque dicta odit delectus animi, velit, corporis saepe pariatur in quisquam tempora.</p><p><i>minima dicta, hic dignissimos velit itaque, sapiente maiores expedita nemo! Perferendis sit alias.</i></p><ul><li>lorem</li><li>dolor</li><li>sit</li><li>amet</li></ul><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi ea delectus, aut quidem, aliquam, quo facilis, eius et totam in est. Nihil suscipit mollitia reiciendis reprehenderit nisi architecto corrupti nostrum, eveniet a <strong>perspiciatis dignissimos. Autem alias adipisci obcaecati, in ratio</strong>ne ipsum amet reiciendis culpa provident illum fugit dignissimos quod odio hic, ipsam temporibus non, rerum rem natus quis sit eligendi dolorem ullam? Iure voluptatibus ut enim alias animi saepe, quasi sed nisi dicta consectetur, architecto, eum id praesentium quisquam, rerum totam possimus veritatis! Quaerat iusto nisi provident ipsum sequi perferendis vero totam asperiores repudiandae consectetur voluptatibus&nbsp;</p><p>source:</p><p><a href=\"http://www.google.com\">lorem ipsum</a></p><p><strong>Manoj</strong></p>', 'php,programming,server side', 0, 'published', 6),
(3, 3, 'Playing with Python ', 'John Doe', '2022-10-15', 'img-code_python.jpg', '<h2>A Guide to Python Programming &nbsp;&nbsp;</h2><p>&nbsp;</p><p>Perferendis sit alias, quibusdam doloremque sed delectus cum accusamus, pariatur reprehenderit! Repellendus qui id dicta corporis, <strong>error</strong> quo, minima maxime. Libero officiis veritatis qui asperiores eligendi unde doloremque dicta odit delectus animi, velit, corporis saepe pariatur in quisquam tempora.</p><p><i>minima dicta, hic dignissimos velit itaque, sapiente maiores expedita nemo! Perferendis sit alias.</i></p><ul><li>lorem</li><li>dolor</li><li>sit</li><li>amet</li></ul><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi ea delectus, aut quidem, aliquam, quo facilis, eius et totam in est. Nihil suscipit mollitia reiciendis reprehenderit nisi architecto corrupti nostrum, eveniet a <strong>perspiciatis dignissimos. Autem alias adipisci obcaecati, in ratio</strong>ne ipsum amet reiciendis culpa provident illum fugit dignissimos quod odio hic, ipsam temporibus non, rerum rem natus quis sit eligendi dolorem ullam? Iure voluptatibus ut enim alias animi saepe, quasi sed nisi dicta consectetur, architecto, eum id praesentium quisquam, rerum totam possimus veritatis! Quaerat iusto nisi provident ipsum sequi perferendis vero totam asperiores repudiandae consectetur voluptatibus&nbsp;</p><p>&nbsp;</p><p><a href=\"https://www.google.com\"><strong>John Doe</strong></a></p><p><strong>March 2022</strong></p>', 'python,py', 0, 'published', 2),
(4, 4, 'Object Oriented Java', 'Clementine', '2022-10-15', 'img-code2.jpg', '<h2>Object Oriented Java</h2><p>&nbsp;</p><p>Lorem <strong>ipsum dolor</strong> sit amet, consectetur adipisicing elit. Perferendis sit alias, quibusdam doloremque sed delectus cum accusamus, pariatur reprehenderit! Repellendus qui id dicta corporis, <strong>error</strong> quo, minima maxime. Libero officiis veritatis qui asperiores eligendi unde doloremque dicta odit delectus animi, velit, corporis saepe pariatur in quisquam tempora.</p><p><i>minima dicta, hic dignissimos velit itaque, sapiente maiores expedita nemo! Perferendis sit alias.</i></p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi ea delectus, aut quidem, aliquam, quo facilis, eius et totam in est. Nihil suscipit mollitia reiciendis reprehenderit nisi architecto corrupti nostrum, eveniet a <strong>perspiciatis dignissimos. Autem alias adipisci obcaecati, in ratio</strong>ne ipsum amet reiciendis culpa provident illum fugit dignissimos quod odio hic, ipsam temporibus non, rerum rem natus quis sit eligendi dolorem ullam? Iure voluptatibus ut enim alias animi saepe, quasi sed nisi dicta consectetur, architecto, eum id praesentium quisquam, rerum totam possimus veritatis! Quaerat iusto nisi provident ipsum sequi perferendis vero totam asperiores repudiandae consectetur voluptatibus:</p><ul><li>lorem</li><li>dolor</li><li>sit</li><li>amet</li></ul><p>&nbsp;</p><p><a href=\"https://www.google.com\">Clementine</a></p><p><strong>Dec 2022</strong></p>', 'java,oop', 1, 'published', 4),
(5, 1, 'Advanced Javascript', 'Manoj', '2022-10-15', 'img-code_js4.jpg', '<h2>Advanced Javascript</h2><p>&nbsp;</p><blockquote><p><i>Dolore ad, consectetur est ab non qui itaque ipsam!&nbsp;</i></p></blockquote><p>Fuga laboriosam cum repudiandae quam, est nisi aliquam inventore eum saepe. Quaerat aspernatur vero quo, asperiores quibusdam ex maiores praesentium blanditiis corporis hic doloremque ipsa quia neque in dolorem eligendi tempore incidunt! Magni dolorum rem tempora architecto iusto harum delectus amet est eum mollitia ex enim iste, hic maiores, quo omnis atque eaque.<strong> Iure in quod dicta veritatis harum repe</strong>llendus non, ea quas sequi molestiae. Maxime ipsa necessitatibus doloribus, blanditiis veniam voluptatem earum optio non dolor odit corporis voluptate labore officia. Voluptates tempora aliquam iste natus expedita non totam vel velit deleniti, voluptatem quod, corporis vero, cum incidunt voluptatibus harum.&nbsp;</p><p><strong>Ducimus, officiis, animi. Porro maiores quaerat ea aspernatur facere cupiditate :</strong></p><ul><li>lorem</li><li>ipsum</li><li>dolor</li><li>sit</li><li>amet</li></ul><p>Illum blanditiis perferendis maxime ratione, sequi rem ipsam animi sed architecto, totam magnam pariatur qui et quod consectetur sint, at expedita ipsum ullam similique nostrum, aliquam! Ducimus, officiis, animi. Porro maiores quaerat ea aspernatur facere cupiditate quam rerum sit maxime deserunt dolore, perferendis nemo perspiciatis facilis, tempore modi mollitia, neque exercitationem.</p><p>&nbsp;</p><p><a href=\"https://localhost/cms\"><strong>Manoj</strong></a></p><p><strong>Sept 2022</strong></p>', 'js,javascript,advanced', 0, 'published', 4),
(6, 3, 'Python Generators', 'John Doe', '2022-10-15', 'img-code2.jpg', '<h2>Python Generators</h2><p>&nbsp;</p><p>Est voluptatibus, perspiciatis? <i><strong>Cupiditate fugiat facilis,</strong></i> aliquid voluptatum odit sint eligendi obcaecati molestiae velit inventore dignissimos ipsam, esse minima tempore qui ipsa accusantium.</p><p><a href=\"https://localhost/cms\">lorem ipsum.</a></p><p>Quae corporis non repudiandae. Asperiores, eaque quibusdam at, beatae consectetur vero nesciunt cumque repellat tenetur suscipit ullam tempora fugit ipsam pariatur molestias nobis nihil. Voluptatibus excepturi recusandae suscipit quibusdam &nbsp;quaerat nam beatae. Quis iste autem iure, asperiores sapiente rerum fugit distinctio eligendi! Vero, error, ad soluta eligendi repellendus consequuntur, numquam debitis earum iure quasi facilis. Dolorum eveniet laboriosam blanditiis et. Consequatur libero q<strong>ui enim eveniet cupiditate tenetur unde consequuntur voluptates, temporibus, cum fugiat id incidunt voluptatibus quos quibusdam officia, officiis laborum eos nobis reiciendis doloribus nem</strong>o excepturi commodi fugit. Tenetur quod ex possimus omnis debitis minima perferendis, illum repellendus rem sed consequatur ipsa, officiis, magnam culpa. Recusandae id error earum distinctio veniam modi harum deleniti rerum provident nostrum. Excepturi ducimus, aperiam sapiente assumenda tenetur culpa nostrum mollitia eveniet animi quia odio facilis natus iure rerum molestiae. Impedit voluptatum dolorum quia. Rem ullam, sit nihil, alias maxime optio accusantium sequi ducimus, provident inventore dolorum. Eius, architecto, dolor! Dolorum, placeat consequuntur tempore aut dolore iusto mollitia, reiciendis earum. Vero beatae voluptate quisquam quae, repudiandae.</p><p>&nbsp;</p><p><a href=\"https://localhost/cms\"><strong>John Doe</strong></a></p><p><strong>October 2022</strong></p>', 'python,generators', 2, 'published', 12);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `usr_id` int(3) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `usr_email` varchar(255) DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `usr_role` varchar(255) DEFAULT NULL,
  `hash` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usr_id`, `username`, `password`, `first_name`, `last_name`, `usr_email`, `avatar`, `usr_role`, `hash`) VALUES
(1, 'manoj', 'manojmm', 'Manoj', 'Borkar', 'manoj@cms.com', 'avatar2.png', 'admin', '$2y$12$yt6LH.anpEN2lVWRJmeq3OfjD3ksBJSIK4sdd0tO.51wLMxFtKcqC'),
(2, 'jdoe', 'johnd', 'John', 'Doe', 'john@doe.com', 'avatar3.png', 'subscriber', '$2y$12$YH4dlvLYnhwOKUVvhYh48eGaPZitqvSVBy2BnHcUwUoeUH9ShHOve'),
(3, 'ervin', 'ervincms', 'Ervin', 'Schulz', 'shanna@melissa.tv', 'avatar.png', 'subscriber', '$2y$12$UueybQyCZCaQXr2BZ5vnT.gYfhdXij6qNx5.NXUOo5lflwScjKeMO'),
(4, 'clementine', 'clementinecms', 'Clementine', 'Richards', 'clementine@yahoo.com', 'avatar7.png', 'subscriber', '$2y$12$rblIXUOBozQJ45vroqiKGeJLA5I5iXCBoROQ7w6hqhTSwInL.hM4G'),
(5, 'danny', 'dannycms', 'Daniel', 'Watson', 'daniel@gmail.com', 'avatar8.png', 'subscriber', '$2y$12$cj0exf2A14REOM5V/A.eMe9tFnMQUO4kd8fKi3TozhIEac5R4dPcy');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(255) NOT NULL,
  `session` varchar(255) DEFAULT NULL,
  `time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `session`, `time`) VALUES
(1, '2d65dce69d7a7a1f0ba3c654c84b23ed', 1559762087),
(2, '1fa823aa2fea60555d64ce23e74b71f6', 1559762104),
(3, '1oivh264ihrss9gut6qs4jf5m1', 1665853964);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usr_id`);

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `usr_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

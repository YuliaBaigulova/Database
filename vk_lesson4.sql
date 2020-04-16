DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `comments` VALUES ('1','1','Reiciendis at voluptatem debitis aut ad atque. Molestiae sit minima optio incidunt laboriosam ullam totam. Ea expedita sed similique doloremque aut deleniti. Facilis nihil sit eaque soluta corporis.','1','2019-11-21 11:40:44'),
('2','2','Quo sunt corporis esse dolore. Qui assumenda consectetur autem saepe et sequi. Velit eveniet animi non nisi.','2','2009-09-21 06:38:22'),
('3','3','Cum perspiciatis voluptatem illo eveniet veritatis et. Odit et et cum nesciunt soluta corporis exercitationem. Qui nam officiis dolor voluptatem aliquid itaque consequatur.','3','2006-11-23 15:06:06'),
('4','4','A ea et suscipit ut quisquam aliquid totam. Minima nobis ad aut. Necessitatibus incidunt porro nulla est voluptas pariatur. Aliquam minus et quibusdam est.','4','2004-06-22 23:41:51'),
('5','5','Minima dolorem alias expedita suscipit eum quia qui labore. Aut doloribus velit provident. Rem et harum sunt.','5','1982-08-20 06:11:32'),
('6','6','Distinctio adipisci consectetur et laudantium laborum. Molestiae repellat cupiditate ea quas quas impedit. Optio eligendi dicta provident a doloribus maiores ipsam.','6','1984-05-08 22:25:08'),
('7','7','Quasi culpa et nobis magni est dolorum fugit. Voluptas et earum omnis in nobis est. Voluptatem enim aliquid delectus consequatur quo numquam. Autem enim sapiente sapiente quasi voluptas ullam eos quibusdam. Dolorem tempora modi rerum ut quos nihil.','7','2015-02-19 09:23:43'),
('8','8','Quos mollitia minima debitis suscipit asperiores. Consequuntur neque eligendi fugiat nihil ad magnam.','8','1979-03-29 10:03:17'),
('9','9','In consequuntur provident tempore autem. Quae nostrum perspiciatis repellat ea. Debitis et et aut ipsum aut veniam nemo. Voluptas vero doloremque minima ducimus consequatur.','9','1980-12-14 12:52:55'),
('10','10','Dolores exercitationem porro reprehenderit ab impedit voluptatum nesciunt. Vero et nulla et animi earum sequi. Voluptatem rerum debitis autem dolores et est non. Dolorum officiis similique velit voluptatibus mollitia quam nobis sit.','10','1988-08-17 11:03:25'),
('11','11','Dolore quidem omnis consequatur facere. Soluta nobis dolorem molestiae quo. Ea sunt occaecati totam qui.','11','2004-06-08 23:22:38'),
('12','12','Consequatur ut commodi similique dolorem. Doloremque deleniti aut labore consequatur incidunt sunt laudantium nostrum. Iusto ipsum quia eaque placeat iusto similique.','12','1989-12-03 17:08:16'),
('13','13','Iure labore error numquam praesentium consequatur et facere. Suscipit eligendi velit ut laudantium quae delectus et fuga.','13','2011-08-05 15:35:07'),
('14','14','Enim dolore aut velit deleniti doloremque error. Accusamus ex nisi vero et et enim. Veritatis quia ipsa odit hic atque doloremque dolor eveniet. Id hic sunt veritatis sit dolorem.','14','2005-05-28 06:07:13'),
('15','15','Cupiditate mollitia delectus ducimus possimus iusto. Minima fugit qui corporis velit libero. Eum ex nihil voluptatem fuga voluptatem animi.','15','1997-11-02 00:37:26'),
('16','16','Et et magni et non quibusdam omnis placeat officia. Perspiciatis perferendis dolorum fugiat veniam ut. Placeat quasi numquam consequatur error accusantium. Velit et odio molestiae voluptatem accusantium libero.','16','1990-01-26 23:44:02'),
('17','17','Eum totam non blanditiis excepturi dignissimos excepturi. Veritatis excepturi deserunt et odio maiores.','17','2013-05-31 13:36:58'),
('18','18','Rerum sed fugit porro qui. Nisi ex est ut nihil sint odio ut in. Molestias ea quibusdam cumque adipisci quos et.','18','2003-07-27 21:41:33'),
('19','19','Consequatur ipsum totam a optio voluptatem nam explicabo. Non ut est eos non molestiae voluptas. Voluptatem omnis nihil qui tempora.','19','2003-08-14 03:22:00'),
('20','20','Sunt expedita quaerat quia. Et eaque mollitia eos sunt corrupti. Velit accusantium voluptas ipsa quia. Iure dolorem voluptatem quis aperiam.','20','1990-08-30 15:08:17'),
('21','21','Adipisci aliquid aut atque earum iusto omnis est. Quos facilis laboriosam consectetur voluptatem occaecati voluptatem. Ex non qui quas.','21','2003-03-16 17:30:24'),
('22','22','In et atque voluptatem officia et enim eligendi. Quasi et numquam quidem saepe alias. Sit veniam non ut accusantium assumenda aspernatur eos. Necessitatibus magni molestiae rem impedit. Sit illum ullam dolorem dolorem.','22','1995-04-24 12:54:31'),
('23','23','Error sint laborum qui unde qui voluptatem et voluptatem. Aliquid culpa corrupti possimus blanditiis placeat et eveniet. Non et molestiae eos in officiis eum eaque. Consequatur ut temporibus sed aut adipisci voluptas.','23','2016-03-08 09:15:33'),
('24','24','Architecto natus quam numquam et. Odit id doloremque non doloribus cum sunt. Totam quaerat voluptas et esse. Dolor labore itaque incidunt.','24','2014-05-29 12:02:44'),
('25','25','Dolor id deserunt quisquam suscipit qui et. Dolores et officia nihil eveniet aut. Quo corrupti in totam quia rem. Rerum hic dolores ut asperiores facilis odit.','25','1990-12-14 03:00:16'),
('26','26','Ipsa dolore provident qui praesentium sapiente. Rerum adipisci qui sed dolore dignissimos. Tempore unde quibusdam perspiciatis omnis non dolorem.','26','2001-09-26 21:52:59'),
('27','27','Atque alias sunt commodi. Ducimus et rerum sapiente praesentium et asperiores. Minima sequi repellat rerum perspiciatis sunt ipsa praesentium. Qui delectus veritatis nesciunt et assumenda accusantium suscipit.','27','2013-11-05 05:58:03'),
('28','28','Tempora corrupti reiciendis vitae. Aut accusamus nulla vitae ab suscipit qui. Praesentium dolorem similique eum quas tempora.','28','1997-11-05 05:07:58'),
('29','29','Culpa et nihil eveniet quos sunt omnis. Amet perspiciatis quam et maiores dignissimos aliquam magni corrupti.','29','1982-11-02 04:16:08'),
('30','30','Praesentium molestiae saepe asperiores hic perspiciatis asperiores. Voluptates est dicta rem sit culpa. Excepturi atque laborum unde laboriosam delectus necessitatibus. Temporibus facere ad amet mollitia eaque.','30','1995-03-24 19:27:16'),
('31','31','Suscipit enim molestias itaque. Qui earum occaecati hic perferendis quis necessitatibus. Ea aut esse animi magnam.','31','1986-02-14 06:21:32'),
('32','32','Esse aut impedit quia molestias corporis illum. Cum expedita ullam ut non ea exercitationem quod. Porro consequatur distinctio quam expedita vel qui delectus. Natus eaque eos a perferendis voluptas quas sint sit.','32','2005-03-09 08:06:05'),
('33','33','Voluptatem officia consequatur amet dolorem enim quae quia. Eos dolores sed voluptas dolorum excepturi et molestiae. Laboriosam id odit sit sed ea. Aspernatur incidunt quo voluptas ex culpa et.','33','2001-03-31 10:39:53'),
('34','34','Ratione nisi ratione quia nobis autem expedita alias. Et iste minima cum numquam.','34','1988-04-12 23:54:47'),
('35','35','Voluptate ullam omnis distinctio molestias officia ea odit molestias. Accusantium rem natus vel modi deleniti et. Et necessitatibus quos corporis fugiat dolores aperiam voluptatem. A excepturi recusandae sed dignissimos quisquam itaque repellendus repudiandae.','35','2011-09-09 18:27:50'),
('36','36','Perferendis enim quidem et. Earum amet quos voluptatem. Rerum consequuntur porro ab tenetur esse doloribus sed aut.','36','1997-09-27 10:09:22'),
('37','37','Rem quisquam velit qui et laborum excepturi voluptatibus dolores. Pariatur maiores hic modi esse. Dolorum ut incidunt et.','37','1995-04-09 14:45:44'),
('38','38','Alias optio sint consequuntur dignissimos corrupti consequatur. Et dolorum blanditiis odio qui molestiae. Eaque qui quasi saepe. Pariatur officiis deserunt quia saepe. Sapiente quo et quo fugiat.','38','2018-12-15 21:08:10'),
('39','39','Repellat impedit sed adipisci ea et deleniti. Voluptatibus architecto rerum aut unde excepturi exercitationem. Id incidunt consequuntur consequuntur est eligendi vel. Iure totam et ratione hic sit quia quae.','39','2008-01-26 01:49:27'),
('40','40','Quis beatae doloribus quia in neque atque architecto. Possimus laboriosam ex voluptates enim nulla dolorem. Accusamus eum in commodi fuga numquam.','40','2004-11-11 16:31:15'),
('41','41','Et est reprehenderit a iusto vitae quasi. Et aperiam et culpa facere autem. Consequuntur deleniti sit aut atque. Molestiae impedit voluptate est molestiae tempora odio.','41','1974-07-21 00:40:08'),
('42','42','Voluptate minima eum accusantium tempore. Ipsa aut et dicta exercitationem quos omnis qui. Ut rem numquam ex ut et. Qui rerum ratione earum et. Exercitationem libero tenetur temporibus a iste et qui.','42','2018-12-02 20:07:26'),
('43','43','Error dolorem eos dolorem quos. Voluptates vitae esse aut. Voluptas qui quo ut alias molestiae tempore.','43','2000-10-23 20:56:43'),
('44','44','Quaerat praesentium perferendis sunt error ut. Dolores laudantium in cupiditate qui unde. Voluptates tempora dolore ullam qui cum.','44','1994-10-15 02:20:36'),
('45','45','Culpa rerum quas voluptatibus magni quasi recusandae officia. Id ut soluta occaecati ut dolorem recusandae. Ab voluptatibus aut consequatur voluptatibus. Similique quam distinctio et rerum.','45','1975-07-12 10:12:44'),
('46','46','Facere eveniet mollitia eaque repellendus qui consequatur minima. Enim ad aut et temporibus at rerum. Repellendus modi sapiente sed.','46','1999-07-24 22:05:52'),
('47','47','Impedit eos voluptatibus ipsum. Dolores qui voluptas sit corrupti eos odit.','47','1973-02-19 01:32:39'),
('48','48','Velit doloremque eligendi esse accusantium consequatur. Velit eaque voluptas corrupti ipsam mollitia omnis repudiandae. Et quae est non et rerum sapiente. Eum sint expedita quos quo.','48','2001-08-08 15:16:33'),
('49','49','Dolores in aut delectus qui minima. Et rerum repellendus et eos minus dolor est. Itaque itaque minima corporis. Ea voluptatem exercitationem voluptas beatae adipisci quos reiciendis dolores.','49','1988-02-22 00:08:42'),
('50','50','Et tempore numquam est et sapiente et. Consequuntur quo cumque ullam cupiditate alias nobis sed tenetur. Sint dicta assumenda molestias.','50','1971-12-06 08:00:33'),
('51','51','Officia voluptatum harum perspiciatis qui accusamus. Sapiente ab dolorem pariatur aperiam eum ullam. Ut amet non debitis eos.','51','1983-08-31 01:50:09'),
('52','52','Rem qui ut dolor omnis aut. Reiciendis autem vel hic eaque dolores et debitis sed. Beatae deleniti necessitatibus eaque sit.','52','2007-12-11 12:20:32'),
('53','53','Et ratione nemo molestias expedita. Dolorem ut quaerat sint est sint blanditiis accusantium velit. Et similique non aut velit dolor sint aut.','53','1974-06-27 15:09:11'),
('54','54','Id harum aliquid libero sapiente aspernatur explicabo. Facere odio sed et. Doloribus et magni mollitia reprehenderit aut illo.','54','2017-08-04 08:16:36'),
('55','55','Adipisci vel qui dolorem et aut aut. Amet harum et laborum velit omnis perferendis sed. Eos aut odit consequatur facere iste optio sunt. Qui sequi consectetur temporibus.','55','2004-04-06 23:23:54'),
('56','56','Pariatur est error saepe atque qui modi. Ex architecto et aut modi aliquam adipisci quia provident. Ad commodi voluptatem omnis molestias voluptatum. Qui maiores velit excepturi dignissimos.','56','1996-02-20 10:08:58'),
('57','57','Laboriosam sint magnam cumque provident temporibus minima nobis. Minima vero temporibus quae ut sint distinctio totam reprehenderit. Sed aut aut iste eos quia quas est. Corporis consequatur similique cupiditate atque quia dolor. A sint quisquam ad nostrum ipsum.','57','1995-05-24 01:51:30'),
('58','58','Aut sit ipsam sequi nemo beatae id voluptatem. Voluptas facilis nihil accusamus sit doloribus ipsa est cumque. Repellendus pariatur dolorem voluptate et architecto quia. Sit ut qui non perferendis dolorem.','58','2013-12-09 01:28:48'),
('59','59','Vitae facilis sunt nobis doloremque voluptatum doloribus iusto. Velit qui dolorem occaecati omnis dolorum deleniti. Quia quis inventore similique sed reiciendis. Maiores eaque qui assumenda. Harum commodi accusantium incidunt et.','59','1981-12-04 20:23:30'),
('60','60','Sit fugit alias saepe dicta voluptas quia. Ut voluptas unde pariatur. Eaque vel in repellat quibusdam sequi et. Nulla necessitatibus nihil est quasi aliquid iste labore unde.','60','1988-12-28 10:57:28'),
('61','61','Vero voluptatem veniam repellendus quia ullam ex quas. Molestiae dolorum voluptatem sequi quis voluptas eum. Omnis ut ea atque asperiores qui sed. Atque odio enim nam quia impedit.','61','1997-12-17 06:18:37'),
('62','62','Et illo explicabo quibusdam rerum. Ut magni quo unde officiis esse. Alias reiciendis dolores suscipit sunt. Eaque accusamus eius ad consectetur et maiores nulla et.','62','1992-05-13 22:44:37'),
('63','63','Deleniti nesciunt qui eaque tempore. Et molestias tempore laboriosam dolor quam. Molestiae nostrum molestiae ad ex.','63','1992-12-10 00:27:28'),
('64','64','Provident quos odio unde est iusto possimus. Dolor quia ducimus dolor rerum. Dignissimos ex odit veritatis quibusdam vero aut ratione sunt.','64','1970-06-12 03:55:53'),
('65','65','Mollitia sint ut beatae et sit sint. Ullam ipsa tenetur et ea. Natus et dolorem quia eius est. Debitis excepturi vero maxime vel vero. Facilis illo molestias cumque aut assumenda explicabo.','65','2015-11-01 19:43:37'),
('66','66','Mollitia minima enim laborum similique velit autem. Facere perferendis nostrum maxime officiis quia nulla nulla. Recusandae debitis asperiores illo sint dolor consequatur.','66','2007-12-03 00:29:06'),
('67','67','Excepturi ducimus corrupti optio. Dignissimos at nostrum provident omnis quae accusantium nulla laborum. Similique possimus odit et et voluptas consequatur. Sunt ea illo fugit officia iste sunt. Deserunt animi ipsam impedit quia cupiditate accusamus numquam nihil.','67','1988-09-07 04:34:50'),
('68','68','Sunt distinctio doloribus fugit autem aut. Culpa dicta nisi impedit et sint asperiores. Est minus doloremque adipisci maxime illo repudiandae delectus reprehenderit. Enim enim nobis excepturi ut dolore inventore perferendis.','68','1986-12-04 18:58:34'),
('69','69','Voluptatem velit impedit nisi quisquam omnis voluptas. Dolorem autem quo quasi eaque excepturi aliquam. Aspernatur voluptatem cum quidem aut optio. Corrupti iusto quia laudantium est sit ad consequatur aut.','69','1972-12-26 17:00:23'),
('70','70','Ut unde iure in. Dolores qui voluptatem sit vitae porro omnis excepturi. Incidunt enim ut est corporis consequatur veritatis possimus. Consequatur quae tempora exercitationem dicta voluptatum quasi.','70','1995-04-10 19:33:52'),
('71','71','Sunt repudiandae consequatur voluptatem natus aliquam fugit in. Ratione impedit quisquam eos. Assumenda ipsa vel deserunt eveniet molestiae corporis omnis consequatur. Quisquam qui sapiente tempora. Quisquam eligendi et reprehenderit qui non.','71','1975-11-03 15:53:54'),
('72','72','Aut provident quaerat odit. Non et fuga ea. Ab nam aut minus mollitia sit.','72','1996-08-20 10:24:25'),
('73','73','Totam consequatur voluptatum cum omnis. Atque alias porro et ab delectus aut.','73','2011-06-05 01:55:11'),
('74','74','Qui et voluptas unde voluptate quo. Voluptates minus officiis consequatur provident eligendi voluptas et. Aperiam est iure totam natus laudantium at. Blanditiis voluptatem sunt culpa provident sed et.','74','2014-09-11 22:18:22'),
('75','75','Aspernatur eius earum fugiat ea dolor eius. Tenetur nihil et molestiae. Et neque tenetur et rerum optio distinctio explicabo sed. Ut assumenda velit accusantium consequatur omnis aut et. Nostrum adipisci nam sed incidunt soluta vero.','75','2006-05-06 22:21:34'),
('76','76','Optio labore aut officia quo. Nihil a maxime expedita ea non distinctio.','76','2010-03-09 09:33:53'),
('77','77','Ea deserunt quasi tempora voluptas qui accusamus consequatur. Quae vel harum deleniti vero sequi voluptatem harum expedita. Aspernatur perferendis consequatur sit rerum tempore. Nobis qui alias velit debitis quo alias.','77','2014-04-04 20:09:23'),
('78','78','Aut corrupti maxime ab. Molestias excepturi reprehenderit laboriosam quia. Dolores tenetur reiciendis fugit aut nihil.','78','2009-04-06 04:40:05'),
('79','79','Vero neque et iste quo dicta sint est. Sed est vero quis recusandae consectetur error. Quibusdam et iste quod. Et veniam ducimus saepe nostrum perferendis excepturi.','79','2009-04-05 23:19:04'),
('80','80','Enim consequatur dignissimos quia maxime. Exercitationem impedit est fugit doloremque. Fugiat sint veniam inventore sint a reiciendis alias.','80','1995-09-15 21:11:02'),
('81','81','Itaque eius quas impedit dolorum repellendus est. Necessitatibus dolor qui dolores earum. Architecto sit nihil omnis est alias et culpa. Et enim odio hic libero quia. Vel repellat est nisi sint tempore minus.','81','1994-12-20 07:55:11'),
('82','82','Est ratione nostrum non neque aut rerum voluptates et. Deserunt tempora dignissimos quibusdam quia porro rem. Ipsum vitae eligendi qui quo qui velit.','82','1987-08-16 08:47:49'),
('83','83','Similique quos natus repellendus qui sit vel vel. Tenetur aspernatur expedita accusamus doloribus similique in. Ut molestiae voluptatum sapiente sit.','83','1975-12-22 04:31:53'),
('84','84','Dolore quam sit fugit quaerat quibusdam sed suscipit. Fugit et voluptatem laudantium beatae sequi. Voluptas debitis consequatur non sit aut. Dolor cum et earum doloremque.','84','1997-06-02 07:07:20'),
('85','85','Officia voluptate sit qui reiciendis nihil deleniti suscipit. Et occaecati delectus sed earum natus nostrum qui. Velit aliquam saepe sit perspiciatis accusamus ipsam dolor facilis.','85','1985-08-09 23:39:09'),
('86','86','Facere nihil aut molestias ipsa provident doloremque consectetur excepturi. Tempora eum id itaque et odio. Distinctio quia repellendus unde sed rerum quaerat doloribus minus.','86','2011-04-08 02:27:48'),
('87','87','Est assumenda non sunt sint voluptatibus unde. Veniam porro veritatis porro harum ipsa nemo. Minima nostrum ipsum dolorem. Cumque dicta cupiditate aperiam illum.','87','2010-06-14 17:30:20'),
('88','88','Omnis cum eos asperiores voluptatem. Officiis perferendis vitae occaecati est qui saepe. Provident et sunt magnam enim. Autem voluptatem earum dignissimos esse.','88','1997-12-05 09:36:49'),
('89','89','Est ratione suscipit possimus quia dolor. Et quis ut numquam et fuga quia. Aspernatur voluptatem aspernatur ullam voluptate occaecati consequatur doloremque. Et perspiciatis reprehenderit ex et earum ipsum.','89','2011-06-21 22:29:13'),
('90','90','Dicta laboriosam fugit eos sint. Minus rerum sit rerum et suscipit.','90','2016-06-27 00:48:20'),
('91','91','Et harum accusamus voluptatem ab beatae. Aperiam non facilis non et. Omnis repellat alias ea temporibus inventore.','91','1988-04-09 00:25:36'),
('92','92','Pariatur quia sit quas. Ut quo similique veritatis deleniti. Sed consequatur tempora adipisci unde et non facere.','92','1983-05-29 02:17:58'),
('93','93','Nihil pariatur voluptas odio et amet voluptatibus quisquam. Fugiat laborum eum quas. Perspiciatis nulla qui corporis eum porro qui. Consequuntur qui modi debitis vel mollitia deleniti voluptatibus.','93','1985-08-06 07:55:12'),
('94','94','Blanditiis placeat ratione quam provident eos. Laboriosam est fugiat quae aut odit. Fugiat sint dolor libero nesciunt.','94','2005-05-16 09:41:22'),
('95','95','Ipsa voluptates atque aut optio qui aut. Eum nisi fuga quasi excepturi dolor. Fugit dolores ullam provident quibusdam dolor voluptates vitae. Vitae explicabo est hic in sed minima corrupti perspiciatis.','95','1971-12-15 09:06:31'),
('96','96','Voluptatem reiciendis esse quaerat aut ullam incidunt. Quia hic sit rem. Aut sequi officiis excepturi voluptatem.','96','2012-07-12 08:39:16'),
('97','97','Molestiae nemo aut molestiae facilis. Eveniet officiis reprehenderit quam ipsum sint. Et ullam magni quis quae suscipit accusamus.','97','1987-06-25 15:47:00'),
('98','98','Aut deleniti reprehenderit numquam sit. Voluptatibus autem suscipit atque voluptas suscipit. Ut eos adipisci dignissimos doloribus enim perspiciatis. Saepe quasi accusamus voluptatem laboriosam.','98','1973-09-21 01:28:12'),
('99','99','Perferendis rerum quisquam repellat at et cumque odio. Sed qui quis nihil. Omnis et qui omnis sed fugit nulla. Optio vitae inventore voluptatem fugit molestias quia.','99','1996-11-19 03:54:20'),
('100','100','Quia a dolorum architecto maxime optio est eaque molestias. Atque sequi ut minus provident. Incidunt qui excepturi quia.','100','1972-05-01 08:33:11'); 

INSERT INTO users
SET
	firstname = 'Иван',
	lastname = 'Федоров',63+
	email = 'ivan@mail.ru',
	phone = '987654321'
;

SELECT *
FROM friend_requests 
LIMIT 10;

INSERT INTO friend_requests (`initiator_user_id`, `target_user_id`, `status`)
VALUES ('90', '91', 'requested');

SELECT *
FROM friend_requests 
WHERE initiator_user_id = 90;

UPDATE friend_requests
SET 
	status = 'approved',
	confirmed_at = now()
WHERE 
	initiator_user_id = 90 and target_user_id = 91;
	
SELECT *
FROM friend_requests 
WHERE initiator_user_id = 90;

INSERT INTO messages (from_user_id, to_user_id, body, created_at) VALUES
('10','90','Voluptatem ut quaerat quia. Pariatur esse amet ratione qui quia. In necessitatibus reprehenderit et. Nam accusantium aut qui quae nesciunt non.','2020-04-15 22:44:29');

SELECT * FROM messages 
WHERE from_user_id = 10;
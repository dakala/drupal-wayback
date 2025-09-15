-- Default data

INSERT INTO `blocks`
VALUES
    ('user','0','garland',1,0,'left',0,0,0,'',''),
    ('user','1','garland',1,0,'left',0,0,0,'','');

INSERT INTO `filter_formats`
VALUES
    (1,'Filtered HTML',',1,2,',1),
    (2,'PHP code','',0),(3,'Full HTML','',1);

INSERT INTO `filters`
VALUES
    (1,'filter',3,0),
    (1,'filter',0,1),
    (1,'filter',2,2),
    (2,'filter',1,0),
    (3,'filter',3,0),
    (3,'filter',2,1);

INSERT INTO `menu` VALUES (2,0,'','Primary links','',0,115);

INSERT INTO `node_access` VALUES (0,0,'all',1,0,0);

INSERT INTO `node_type`
VALUES
    ('page','Page','node','If you want to add a static page, like a contact page or an about page, use a page.','',1,'Title',1,'Body',0,1,1,0,'page'),
    ('story','Story','node','Stories are articles in their simplest form: they have a title, a teaser and a body, but can be extended by other modules. The teaser is part of the body too. Stories may be used as a personal blog or for news articles.','',1,'Title',1,'Body',0,1,1,0,'story');

INSERT INTO `permission`
VALUES
    (1,'access content',0),
    (2,'access comments, access content, post comments, post comments without approval',0);

INSERT INTO `role`
VALUES
    (1,'anonymous user'),
    (2,'authenticated user');

INSERT INTO `system`
VALUES
    ('modules/aggregator/aggregator.module','aggregator','module','Aggregates syndicated content (RSS, RDF, and Atom feeds).',0,0,0,-1,0),
    ('modules/block/block.module','block','module','Controls the boxes that are displayed around the main content.',1,0,0,0,0),
    ('modules/blog/blog.module','blog','module','Enables keeping easily and regularly updated user web pages or blogs.',0,0,0,-1,0),
    ('modules/blogapi/blogapi.module','blogapi','module','Allows users to post content using applications that support XML-RPC blog APIs.',0,0,0,-1,0),
    ('modules/book/book.module','book','module','Allows users to collaboratively author a book.',0,0,0,-1,0),
    ('modules/color/color.module','color','module','Allows the user to change the color scheme of certain themes.',1,0,0,0,0),
    ('modules/comment/comment.module','comment','module','',1,0,0,1,0),
    ('modules/contact/contact.module','contact','module','Enables the use of both personal and site-wide contact forms.',0,0,0,-1,0),
    ('modules/drupal/drupal.module','drupal','module','',0,0,0,-1,0),
    ('modules/filter/filter.module','filter','module','Handles the filtering of content in preparation for display.',1,0,0,0,0),
    ('modules/forum/forum.module','forum','module','Enables threaded discussions about general topics.',0,0,0,-1,0),
    ('modules/help/help.module','help','module','Manages the display of online help.',1,0,0,0,0),
    ('modules/legacy/legacy.module','legacy','module','Provides legacy handlers for upgrades from older Drupal installations.',0,0,0,-1,0),
    ('modules/locale/locale.module','locale','module','Enables the translation of the user interface to languages other than English.',0,0,0,-1,0),
    ('modules/menu/menu.module','menu','module','Allows administrators to customize the site navigation menu.',1,0,0,0,0),
    ('modules/node/node.module','node','module','',1,0,0,0,0),
    ('modules/path/path.module','path','module','Allows users to rename URLs.',0,0,0,-1,0),
    ('modules/ping/ping.module','ping','module','Alerts other sites when your site has been updated.',0,0,0,-1,0),
    ('modules/poll/poll.module','poll','module','',0,0,0,-1,0),
    ('modules/profile/profile.module','profile','module','Supports configurable user profiles.',0,0,0,-1,0),
    ('modules/search/search.module','search','module','Enables site-wide keyword searching.',0,0,0,-1,0),
    ('modules/statistics/statistics.module','statistics','module','Logs access statistics for your site.',0,0,0,-1,0),
    ('modules/system/system.module','system','module','Handles general site configuration for administrators.',1,0,0,1022,0),
    ('modules/taxonomy/taxonomy.module','taxonomy','module','Enables the categorization of content.',1,0,0,0,0),
    ('modules/throttle/throttle.module','throttle','module','Handles the auto-throttling mechanism, to control site congestion.',0,0,0,-1,0),
    ('modules/tracker/tracker.module','tracker','module','Enables tracking of recent posts for users.',0,0,0,-1,0),
    ('modules/upload/upload.module','upload','module','Allows users to upload and attach files to content.',0,0,0,-1,0),
    ('modules/user/user.module','user','module','Manages the user registration and login system.',1,0,0,0,0),
    ('modules/watchdog/watchdog.module','watchdog','module','Logs and records system events.',1,0,0,0,0),
    ('themes/engines/phptemplate/phptemplate.engine','phptemplate','theme_engine','',1,0,0,0,0),
    ('themes/garland/page.tpl.php','garland','theme','themes/engines/phptemplate/phptemplate.engine',1,0,0,0,0);

INSERT INTO `users` VALUES (0,'','','',0,0,0,'','',0,0,0,0,NULL,'','','',NULL);

INSERT INTO `variable`
VALUES
    ('comment_page','i:0;'),
    ('filter_html_1','i:1;'),
    ('install_profile','s:7:\"default\";'),
    ('menu_primary_menu','i:2;'),
    ('menu_secondary_menu','i:2;'),
    ('node_options_forum','a:1:{i:0;s:6:\"status\";}'),
    ('node_options_page','a:1:{i:0;s:6:\"status\";}'),
    ('theme_default','s:7:\"garland\";'),
    ('theme_settings','a:1:{s:21:\"toggle_node_info_page\";b:0;}'),
    ('clean_url','s:1:\"1\";');


-- Demo data

INSERT INTO `users`
    (`uid`, `name`, `pass`, `mail`, `status`, `created`, `init`, `data`)
VALUES
    (1,'admin', 'd41e98d1eafa6d6011d3a70f1a5b92f0', 'admin@example.com', 1, UNIX_TIMESTAMP(), 'admin@example.com', 'a:0:{}');

INSERT INTO `node`
VALUES
    (1,1,'story','AI in 2025',1,1,UNIX_TIMESTAMP(),UNIX_TIMESTAMP(),2,1,0,0),
    (2,2,'story','Glastonbury lives on',1,1,UNIX_TIMESTAMP(),UNIX_TIMESTAMP(),2,1,0,0);

INSERT INTO `node_revisions`
VALUES
    (1,1,1,'AI in 2025','Artificial Intelligence in 2025 has become an essential part of everyday life, seamlessly embedded in homes, workplaces, and public spaces. Smart assistants, powered by advanced natural language processing, understand context and intent, making interactions more intuitive and productive. AI-driven automation handles routine tasks, freeing people to focus on creativity and problem-solving.\r\n\r\nIn healthcare, AI systems analyze vast datasets to assist in diagnostics, personalize treatment plans, and predict outbreaks. Doctors and researchers rely on machine learning models to identify patterns that were previously undetectable, leading to earlier interventions and improved patient outcomes. AI-powered robots and virtual nurses provide support, especially in underserved areas.\r\n\r\nEducation has been transformed by adaptive learning platforms that tailor content to individual students’ needs and learning styles. AI tutors offer real-time feedback, helping learners overcome challenges and stay motivated. Teachers use analytics to track progress and adjust their methods, ensuring that no student is left behind.\r\n\r\nBusinesses leverage AI for data-driven decision-making, customer service, and supply chain optimization. Predictive analytics help companies anticipate market trends, while chatbots and virtual agents provide instant support. AI also plays a crucial role in cybersecurity, detecting threats and responding to incidents faster than ever before.\r\n\r\nAs AI’s influence grows, ethical considerations have become central to its development and deployment. Policymakers, technologists, and communities collaborate to address issues like bias, transparency, and privacy. The focus is on building trustworthy AI systems that respect human values, ensuring that technological progress benefits society as a whole.','Artificial Intelligence in 2025 has become an essential part of everyday life, seamlessly embedded in homes, workplaces, and public spaces. Smart assistants, powered by advanced natural language processing, understand context and intent, making interactions more intuitive and productive. AI-driven automation handles routine tasks, freeing people to focus on creativity and problem-solving.\r\n\r','',UNIX_TIMESTAMP(),1),
    (2,2,1,'Glastonbury lives on','Glastonbury 2025 delivered another unforgettable chapter in the festival’s storied history, drawing music lovers from around the globe to Somerset’s iconic Worthy Farm. This year’s event was marked by a diverse and electrifying lineup, with headline performances from both legendary acts and rising stars. The Pyramid Stage saw a triumphant return of classic rock icons, while the Other Stage pulsed with the energy of cutting-edge electronic and hip-hop artists, ensuring there was something for every musical taste.\r\n\r\nBeyond the music, Glastonbury 2025 continued its tradition of championing sustainability and community spirit. Festival organizers introduced new eco-friendly initiatives, including expanded recycling programs and innovative renewable energy solutions powering much of the site. Attendees embraced these efforts, making this year’s festival one of the greenest yet.\r\n\r\nArt installations and immersive experiences dotted the landscape, transforming fields into vibrant galleries and interactive playgrounds. Workshops, talks, and wellness activities offered festival-goers opportunities for reflection and connection, reinforcing Glastonbury’s reputation as more than just a music festival—it’s a celebration of creativity, activism, and togetherness.\r\n\r\nAs the sun set on another magical weekend, Glastonbury 2025 left attendees with lasting memories and a renewed sense of hope, proving once again why it remains the world’s most beloved festival.','Glastonbury 2025 delivered another unforgettable chapter in the festival’s storied history, drawing music lovers from around the globe to Somerset’s iconic Worthy Farm. This year’s event was marked by a diverse and electrifying lineup, with headline performances from both legendary acts and rising stars. The Pyramid Stage saw a triumphant return of classic rock icons, while the Other Stage pulsed with the energy of cutting-edge electronic and hip-hop artists, ensuring there was something for every musical taste.\r\n\r','',UNIX_TIMESTAMP(),1);


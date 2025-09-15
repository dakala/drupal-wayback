INSERT INTO `users`
    (`id`, `name`, `userid`, `passwd`, `real_email`, `fake_email`, `url`, `nodes`, `mode`, `sort`, `threshold`, `bio`, `theme`, `signature`, `last_access`, `last_host`, `status`, `hash`, `rating`, `timezone`, `language`, `role`)
VALUES
    (1,'','admin','*DDFB542AA0BD1D251995D81AEBEB96DEEAD1132F','admin@example.com','','',10,1,0,0,NULL,'','',NULL,'',1,'9e10edfbcb6b', NULL,NULL, 'en', '');


INSERT INTO `node`
    (`lid`, `type`, `title`, `status`, `author`)
VALUES
    (1, 'story', 'AI in 2025', 3, 1);

INSERT INTO `node`
    (`lid`, `type`, `title`, `status`, `author`)
VALUES
    (2, 'story', 'Glastonbury lives on', 3,1);


INSERT INTO `story`
    (`nid`, `abstrakt`, `body`)
VALUES
    (1, 'AI in 2025 is deeply integrated into daily life, powering personalized services, automating complex tasks, and enhancing decision-making across industries. Advances in natural language processing, computer vision, and ethical frameworks have made AI more accessible, trustworthy, and collaborative, driving innovation while raising important questions about privacy, bias, and human-AI interaction.','<p>Artificial Intelligence in 2025 has become an essential part of everyday life, seamlessly embedded in homes, workplaces, and public spaces. Smart assistants, powered by advanced natural language processing, understand context and intent, making interactions more intuitive and productive. AI-driven automation handles routine tasks, freeing people to focus on creativity and problem-solving.</p> <p>In healthcare, AI systems analyze vast datasets to assist in diagnostics, personalize treatment plans, and predict outbreaks. Doctors and researchers rely on machine learning models to identify patterns that were previously undetectable, leading to earlier interventions and improved patient outcomes. AI-powered robots and virtual nurses provide support, especially in underserved areas.</p> <p>Education has been transformed by adaptive learning platforms that tailor content to individual students’ needs and learning styles. AI tutors offer real-time feedback, helping learners overcome challenges and stay motivated. Teachers use analytics to track progress and adjust their methods, ensuring that no student is left behind.</p> <p>Businesses leverage AI for data-driven decision-making, customer service, and supply chain optimization. Predictive analytics help companies anticipate market trends, while chatbots and virtual agents provide instant support. AI also plays a crucial role in cybersecurity, detecting threats and responding to incidents faster than ever before.</p> <p>As AI’s influence grows, ethical considerations have become central to its development and deployment. Policymakers, technologists, and communities collaborate to address issues like bias, transparency, and privacy. The focus is on building trustworthy AI systems that respect human values, ensuring that technological progress benefits society as a whole.</p>');


INSERT INTO `story`
    (`nid`, `abstrakt`, `body`)
VALUES
    (2,'Glastonbury 2025 dazzled with legendary performances, groundbreaking art installations, and a vibrant celebration of music, culture, and sustainability.','<p>Glastonbury 2025 delivered another unforgettable chapter in the festival’s storied history, drawing music lovers from around the globe to Somerset’s iconic Worthy Farm. This year’s event was marked by a diverse and electrifying lineup, with headline performances from both legendary acts and rising stars. The Pyramid Stage saw a triumphant return of classic rock icons, while the Other Stage pulsed with the energy of cutting-edge electronic and hip-hop artists, ensuring there was something for every musical taste.</p> \n\n<p>Beyond the music, Glastonbury 2025 continued its tradition of championing sustainability and community spirit. Festival organizers introduced new eco-friendly initiatives, including expanded recycling programs and innovative renewable energy solutions powering much of the site. Attendees embraced these efforts, making this year’s festival one of the greenest yet.</p> \n\n<p>Art installations and immersive experiences dotted the landscape, transforming fields into vibrant galleries and interactive playgrounds. Workshops, talks, and wellness activities offered festival-goers opportunities for reflection and connection, reinforcing Glastonbury’s reputation as more than just a music festival—it’s a celebration of creativity, activism, and togetherness.</p> \n\n<p>As the sun set on another magical weekend, Glastonbury 2025 left attendees with lasting memories and a renewed sense of hope, proving once again why it remains the world’s most beloved festival.</p>');

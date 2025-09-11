<?php

require_once './modules/node/node.pages.inc';


$articles = [
  [
    'title' => 'AI in 2025',
    'teaser' => 'Artificial Intelligence in 2025 has become an essential part of everyday life, seamlessly embedded in homes, workplaces, and public spaces. Smart assistants, powered by advanced natural language processing, understand context and intent, making interactions more intuitive and productive. AI-driven automation handles routine tasks, freeing people to focus on creativity and problem-solving.',
    'body' => 'Artificial Intelligence in 2025 has become an essential part of everyday life, seamlessly embedded in homes, workplaces, and public spaces. Smart assistants, powered by advanced natural language processing, understand context and intent, making interactions more intuitive and productive. AI-driven automation handles routine tasks, freeing people to focus on creativity and problem-solving.

    In healthcare, AI systems analyze vast datasets to assist in diagnostics, personalize treatment plans, and predict outbreaks. Doctors and researchers rely on machine learning models to identify patterns that were previously undetectable, leading to earlier interventions and improved patient outcomes. AI-powered robots and virtual nurses provide support, especially in underserved areas.

    Education has been transformed by adaptive learning platforms that tailor content to individual students’ needs and learning styles. AI tutors offer real-time feedback, helping learners overcome challenges and stay motivated. Teachers use analytics to track progress and adjust their methods, ensuring that no student is left behind.

    Businesses leverage AI for data-driven decision-making, customer service, and supply chain optimization. Predictive analytics help companies anticipate market trends, while chatbots and virtual agents provide instant support. AI also plays a crucial role in cybersecurity, detecting threats and responding to incidents faster than ever before.

    As AI’s influence grows, ethical considerations have become central to its development and deployment. Policymakers, technologists, and communities collaborate to address issues like bias, transparency, and privacy. The focus is on building trustworthy AI systems that respect human values, ensuring that technological progress benefits society as a whole.','Artificial Intelligence in 2025 has become an essential part of everyday life, seamlessly embedded in homes, workplaces, and public spaces. Smart assistants, powered by advanced natural language processing, understand context and intent, making interactions more intuitive and productive. AI-driven automation handles routine tasks, freeing people to focus on creativity and problem-solving.',
    ],
  [
    'title' => 'Glastonbury lives on',
    'teaser' => 'Glastonbury 2025 delivered another unforgettable chapter in the festival’s storied history, drawing music lovers from around the globe to Somerset’s iconic Worthy Farm. This year’s event was marked by a diverse and electrifying lineup, with headline performances from both legendary acts and rising stars. The Pyramid Stage saw a triumphant return of classic rock icons, while the Other Stage pulsed with the energy of cutting-edge electronic and hip-hop artists, ensuring there was something for every musical taste.',
    'body' => 'Glastonbury 2025 delivered another unforgettable chapter in the festival’s storied history, drawing music lovers from around the globe to Somerset’s iconic Worthy Farm. This year’s event was marked by a diverse and electrifying lineup, with headline performances from both legendary acts and rising stars. The Pyramid Stage saw a triumphant return of classic rock icons, while the Other Stage pulsed with the energy of cutting-edge electronic and hip-hop artists, ensuring there was something for every musical taste.

    Beyond the music, Glastonbury 2025 continued its tradition of championing sustainability and community spirit. Festival organizers introduced new eco-friendly initiatives, including expanded recycling programs and innovative renewable energy solutions powering much of the site. Attendees embraced these efforts, making this year’s festival one of the greenest yet.

    Art installations and immersive experiences dotted the landscape, transforming fields into vibrant galleries and interactive playgrounds. Workshops, talks, and wellness activities offered festival-goers opportunities for reflection and connection, reinforcing Glastonbury’s reputation as more than just a music festival—it’s a celebration of creativity, activism, and togetherness.

    As the sun set on another magical weekend, Glastonbury 2025 left attendees with lasting memories and a renewed sense of hope, proving once again why it remains the world’s most beloved festival.','Glastonbury 2025 delivered another unforgettable chapter in the festival’s storied history, drawing music lovers from around the globe to Somerset’s iconic Worthy Farm. This year’s event was marked by a diverse and electrifying lineup, with headline performances from both legendary acts and rising stars. The Pyramid Stage saw a triumphant return of classic rock icons, while the Other Stage pulsed with the energy of cutting-edge electronic and hip-hop artists, ensuring there was something for every musical taste.\r\n\r',
    ],

];

foreach ($articles as $article) {
  $article = (object) $article;

  $node = new stdClass();
  $node->type = 'page';
  $node->title = $article->title;
  $node->language = LANGUAGE_NONE;
  $node->uid = 1;
  $node->promote = 1;

  node_object_prepare($node);

  $node->body[$node->language][0]['value'] = $article->body;
  $node->body[$node->language][0]['summary'] = $article->teaser;
  $node->body[$node->language][0]['format'] = 'filtered_html';

  $node = node_submit($node);
  node_save($node);

}

echo "Created " . count($articles) . " nodes\n";

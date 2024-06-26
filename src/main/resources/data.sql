-- Utilisez UTF-8 pour l'encodage
SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;

----
---- Déchargement des données de la table USER password: Azerty-12
----
INSERT IGNORE INTO user (id,created_at,email,filename,firstname,is_verified,lastname,password,pseudo,`role`,updated_at) VALUES
	 (1,'2023-10-07 11:16:10.472996','lanzae32@gmail.com','61c6411de4211620488497.png','Eric',0,'Lanza','$2a$10$kLc7BnGmiSEcYdEU6EiLtOkSo2syOZn0a1Z.jhBWspPkCLzvNVRlS','Eric','ADMIN','2023-12-15 08:52:16.899556'),
	 (2,'2023-10-07 11:31:53.420574','alice@gmail.com','61b2f10973d82626462629.png','Alicia',0,'Blue','$2a$10$kLc7BnGmiSEcYdEU6EiLtOkSo2syOZn0a1Z.jhBWspPkCLzvNVRlS','Alice','USER','2023-12-04 09:21:58.979272'),
	 (21,'2023-11-16 18:25:45.057887','skywalker@gmail.com','t-bdd1e1bfb71e4af7888d9a0c696b9e6f.png','firstname',0,'lastname','$2a$10$6XxMymzF62bi6/6VX7B2.ONM5Af2BpDPNCMPVnwD5bQuYybXIb3Uy','skywalker','USER','2023-11-26 20:08:30.085766'),
	 (24,'2023-11-26 20:09:32.895620','jo@gmail.com','1-bc6ceca6868c4456b326f00d34b9902e.PNG','Jonathan',0,'Joubert','$2a$10$Ja/uVQqmiOgln9r.k2zZB.TEXVd1JWsk9tzH.364mqAVt/yX932SK','Jo','USER','2023-12-14 18:21:56.465988'),
	 (25,'2023-11-26 20:09:32.895620','EmmaMartin@gmail.com','3-4109fc9f823345dd910d4466d567d81b.PNG','Emma',0,'Martin','$2a$10$Ja/uVQqmiOgln9r.k2zZB.TEXVd1JWsk9tzH.364mqAVt/yX932SK','Emma','USER','2023-12-14 18:21:56.465988'),
	 (26,'2023-11-26 20:09:32.895620','LéaDupont@gmail.com','2-8e2bd6ea3cd3444db2fbae1e4d59428e.PNG','Léa',0,'Dupont','$2a$10$Ja/uVQqmiOgln9r.k2zZB.TEXVd1JWsk9tzH.364mqAVt/yX932SK','Léa','USER','2023-12-14 18:21:56.465988'),
	 (27,'2023-11-26 20:09:32.895620','ChloéDubois@gmail.com','4-aee2323058604dbbbff5a93f37b1f132.PNG','Chloé',0,'Dubois','$2a$10$Ja/uVQqmiOgln9r.k2zZB.TEXVd1JWsk9tzH.364mqAVt/yX932SK','Chloé','USER','2023-12-14 18:21:56.465988');


----
---- Déchargement des données de la table EDIBILITY
----
INSERT IGNORE INTO edibility (id, created_at, name, filename) VALUES
(1, '2023-10-07 11:16:10.472996', 'Mortel', 'mortel.png'),
(2, '2023-10-07 11:16:10.472996', 'Toxique', 'toxique.png'),
(3, '2023-10-07 11:16:10.472996', 'A rejeter', 'rejeter.png'),
(4, '2023-10-07 11:16:10.472996', 'Comestible médiocre', 'mediocre.png'),
(5, '2023-10-07 11:16:10.472996', 'Bon comestible', 'bon.png'),
(6, '2023-10-07 11:16:10.472996', 'Excellent comestible', 'excellent.png');


----
---- Déchargement des données de la table LAMELLATYPE
----
INSERT IGNORE INTO lamella_type (id, name, filename, created_at) VALUES
(1, 'Adnées', 'adnees.png', '2021-12-04 11:30:15'),
(2, 'Décurrentes', 'decurrentes.png', '2021-12-04 11:30:15'),
(3, 'Echancrées', 'echancrees.png', '2021-12-04 11:30:15'),
(4, 'Emarginées', 'emarginees.png', '2021-12-04 11:30:15'),
(5, 'Libres', 'libres.png', '2021-12-04 11:30:15'),
(6, 'Sécédentes', 'secedentes.png', '2021-12-04 11:30:15'),
(7, 'Sinuées', 'sinuees.png', '2021-12-04 11:30:15'),
(8, 'Subdécurrentes', 'subdecurrentes.png', '2021-12-04 11:30:15');


----
---- Déchargement des données de la table MUSHROOM
----
INSERT IGNORE INTO mushroom (id, lamellatype_id, edibility_id, created_at, updated_at, visibility, commonname, latinname, flesh, hat, lamella, foot, habitat, comment, slug) VALUES
(1, NULL, 6, '2021-11-04 00:00:00', '2021-12-07 05:30:25', 1, 'Cèpe de Bordeaux', 'BOLETUS EDULIS', 'blanche.', 'de 10 à 20 cm, hémisphérique puis convexe, charnu, de couleur allant du beige au marron à brun noisette ou brun ochracé clair, parfois plus clair selon exposition, à marge épaisse, souvent excédente et généralement soulignée d\'un fin liseré blanchâtre.', 'tubes fins et serrés prolongés de pores d\'abord de couleur blanche à blanchâtre puis jaune, devenant ensuite verdâtre sur la fin.', 'robuste et ferme, renflé à ventru ou allongé en massue vers la base, de couleur fauve strié d\'un fin réseau blanc en saillie, devenant blanc vers la base.', NULL, 'excellent comestible.', 'cepe-de-bordeaux'),
(2, NULL, 6, '2021-11-04 00:00:00', '2021-11-26 11:32:34', 1, 'Cèpe bronzé', 'BOLETUS AEREUS', 'saveur et odeur douces.', 'de 10 à 20 cm hémisphérique puis convexe, charnu, à surface plus ou moins bosselée et cuticule veloutée devenant mate, à marge lisse et régulière devenant très faiblement sinueuse, de couleur brun foncé à reflets bronzés, brun ochracés ou chamois, parfois plus clair selon l\'exposition.', 'tubes fins de couleur blanchâtre devenant crème puis jaune à jaune verdâtre en vieillissant', '6 à 10 cm, très trapu, robuste, renflé à la base, obèse même, de couleur chamois à roux, strié d\'un fin réseau d\'abord blanc puis brun ; en bordure de sentier, lorsqu\'il est bien exposé, il est parfois très court , le camouflant ainsi davantage dans la végétation ...', 'thermophile, il pousse de la fin de l\'été au début de l\'hiver, généralement dans les chênaies aérées.', 'La chair du bolet bronzé est blanche et ferme lorsqu\'il est frais et les spores sont de couleur brun olivâtre. Rarement isolé, il est le plus souvent entouré de plusieurs individus de la même espèce. Ses couleurs peuvent être claires ou sombres et il est assez fréquent de voir des individus à la cuticule aux couleurs zonées. Il s\'agit d\'un des plus fins champignons des bois qui dégage son arôme avec intensité à la cuisson.', 'cepe-bronze'),
(3, NULL, 2, '2021-11-04 00:00:00', NULL, 1, 'Amanite tue mouches', 'AMANITA MUSCARIA', 'blanche.', 'après avoir émergé du sol, le chapeau est couvert de nombreuses verrues blanches en forme de pyramides.', 'libres, sont blanches, de même que l\'empreinte de spore.', 'est blanc, il mesure 5 à 20 centimètres de haut pour 1 à 2 centimètres de diamètre, et a la texture fibreuse et légèrement friable typique de la plupart des grands champignons. À sa base, la volve (ou bulbe) porte des résidus du voile universel sous la forme d\'un ou deux anneaux concentriques.', 'Amanita muscaria est un champignon cosmopolite, qui croît dans les forêts de conifères et de feuillus de toutes les régions tempérées et boréales de l\'hémisphère Nord.', 'toxique, hallucinogène.', 'amanite-tue-mouche'),
(4, NULL, 6, '2021-11-04 00:00:00', '2021-11-23 20:23:57', 1, 'Amanite des césars', 'AMANITA CAESAREA', 'ferme, blanche, jaune sous la cuticule. La marge est nettement striée, jaune d\'or.', 'de 8 à 15-20 cm, est ovoïde jeune puis hémisphérique et enfin convexe. La cuticule est rouge orangé vif, luisante, assez souvent couvert de grands lambeaux de la volve, blancs.', 'serrées, jaune d\'or clair.', 'de 8 à 15 cm est robuste, droit ou légèrement courbé, de la couleur des lames. La base du stipe est ovoïde vers le sol. La volve est épaisse, blanc grisâtre, s\'écartant du stipe et ample.Son anneau membraneux, concolore au pied, placé haut et pendant. L\'odeur est agréable, sa saveur douce de noix. La sporée est blanche.', NULL, 'sa réputation d\'excellent comestible, sa beauté et sa relative rareté en font un champignon recherché.', 'amanite-des-cesars'),
(5, NULL, 3, '2021-11-04 00:00:00', '2021-11-23 20:24:34', 1, 'Bolet enduit', 'SUILLUS COLLINITUS', 'de blanchâtre à jaune pâle, plus soutenu dans le pied, non grisonnante ni bleuissante, ferme jeune vite amollie, goût douceâtre, légèrement acidulée, odeur agréable, épicée', 'de 4 à 10/15 cm., globuleux à hémisphérique puis convexe à plan-convexe ;\r\ncuticule visqueuse, collante, brillante, facile à séparer, beige jaunâtre à orangé jaunâtre, orangé ocre ou encore brun ;\r\nmarge concolore, incurvée, un peu excédante .', 'adnés à décurrents, séparables, jaune pâle puis se salissant dans l\'âge - pores fins, réguliers, anguleux, jaune crème pâle puis jaunâtres à jaune vif, exsudant des gouttes laiteuses chez les jeunes spécimens.', '4-10 cm de hauteur, 1 à 2 cm de diam., élancé, égal ou partie inférieure renflée et parfois coudée, base atténuée, plein et mou, blanchâtre à jaunâtre, brunâtre en partie inférieure, ponctué de granulations blanchâtres laiteuses puis jaunissantes et brunissantes.', 'sous les pins et plus particulièrement pins d’Alep et les milieux herbeux. C\'est une espèce très commune que l\'on rencontre du mois de juillet au mois d\'octobre, toujours sous les pins ou peu éloigné d\'eux, mais toujours en étroite relation avec les racines (mycorhizes), et généralement en terrain calcaire.', 'considéré comme comestible. il reste cependant laxatif.', 'bolet-enduit'),
(6, NULL, 5, '2021-11-04 00:00:00', NULL, 1, 'Bolet jaune', 'SUILLUS LUTEUS', 'épaisse, tendre, aqueuse, cotonneuse dans l\'âge, blanchâtre, jaune vers les tubes, immuable à la coupe, bonne odeur fruitée, saveur légèrement acidulée', 'de 5 à 12 cm, hémisphérique puis convexe, à marge lisse, de couleur brune à brun ochracé, parfois nettement plus clair et jusqu\'à jaune, à l\'aspect brillant et visqueux.', 'relativement longs, adnés à légèrement décurrents, séparables, jaunes ;\r\npores très petits ronds puis anguleux dans l\'âge, concolores aux tubes puis brun-olivâtre, immuables à la pression.', '4-10 x 1,5-3 cm, plein, ferme, cylindrique, court et massif, blanchâtre à jaunâtre, plutôt granuleux vers le sommet .\r\nAnneau membraneux, ample, blanchâtre teinté de violet', 'Sous les pins', 'bon comestible à l\'état juvénile.\r\nIl porte un anneau membraneux formé d\'un voile tendu entre le haut du pied et la marge du chapeau', 'bolet-jaune'),
(7, NULL, 4, '2021-11-04 00:00:00', NULL, 1, 'Bolet moucheté', 'SUILLUS VARIEGATUS', 'blanc, Crème, Jaune.', 'brun, Crème, Gris, Jaune. Entièrement feutré mécheux ou moucheté.', 'brun, Jaune, Vert.', 'brun, Crème, Gris, Jaune.', 'Sous les pins sur sol calcaire', 'comestible.', 'bolet-mouchete'),
(8, NULL, 6, '2021-11-04 00:00:00', NULL, 1, 'Lactaire sanguin', 'LACTARIUS SANGUIFLUUS', 'blanchatre a la coupe puis sécretion d\'un latex rouge vineux', 'blanc cassé à orangé,verdissant.', 'rosé à reflets vineux, tachées de vert et de rouge vineux dans les blessures.', 'rosé vineux pâle,blanchâtre au sommet,vite creux.', 'sous les pins maritimes, d’Alep..., en mélange avec chênes, arbousiers, bruyères,romarin.', 'excellent comestible.', 'lactaire_sanguin'),
(9, NULL, 5, '2021-11-04 00:00:00', NULL, 1, 'Lactaire délicieux', 'LACTARIUS DELICIOSUS', 'blanchâtre se colorant d\'un lait couleur carotte.', 'convexe puis creusé, orangé,marqué de petite tache concentrique,tache blanche, verdissant dans les blessures.', 'orangé se tachant orange vif puis verdissant aux endroits blessés.', 'blanchâtre à orangé pâle, creux.', 'en automne sous pins maritimes,sylvestre, en forêts mixtes pins, chênes, bruyère.', 'Bon comestible', 'lactaire-delicieux'),
(10, NULL, 4, '2021-11-04 00:00:00', NULL, 1, 'Bolet joli', 'LECCINUM LEPIDUM', NULL, NULL, NULL, NULL, NULL, NULL, 'bolet-joli'),
(11, NULL, 3, '2021-11-04 00:00:00', NULL, 1, 'Lactaire des lieux sauvages', 'LACTARIUS TESQUORUM', 'latex blanc saveur âcre.', 'Crème, Jaune, Saumon', 'Crème, Jaune, Saumon.', 'Blanc, Crème, Saumon.', 'sous les pins.', 'Sans intérêt.', 'lactaire-des-lieux-sauvages'),
(12, NULL, 6, '2021-11-04 00:00:00', NULL, 1, 'Russule verdoyante', 'RUSSULA VIRESCENS', 'blanche avec une odeur fongique faible et une saveur de noisette', 'chapeau vert allant du vert pâle au vert-bleu-gris mesurant de 5 à 10 cm, souvent craquelé et parsemé de petites plaques lui donnant un aspect de moisi.', 'blanc-crème, assez serrées.', 'est blanc, cassant (comme chez toutes les russules) et mesure 1,5 à 2 cm de diamètre pour 4 à 8 cm de hauteur.', 'Sous feuillus(chêne, hêtre, châtaignier),sous conifères.', 'excellent comestible, sans doute la meilleure des russules.', 'russule-verdoyante'),
(13, NULL, 5, '2021-11-04 00:00:00', '2021-11-23 20:33:59', 1, 'Lepiote élevée', 'MACROLEPIOTA PROCERA', 'est blanche, molle, avec une odeur et une saveur fruitées agréables.', 'ovoïde puis convexe et enfin largement étalé en parasol, de 10 à 30 cm de diamètre, surmonté d\'un mamelon, avec une cuticule sèche, gris-roux, couvert d\'écailles brunes, plus denses vers le centre.', 'blanches, serrées, molles', 'haut de 15 à 40 cm, est élancé, creux, bulbeux à la base, brun tigré et de plus en plus écaillé en allant vers la base. Il est pourvu d\'un anneau double, blanchâtre et coulissant. Le pied est fibreux, ce qui le rend immangeable.', 'sur sol à tendance acide de type schiteux. sous-bois dégagés ou les clairières.', 'Comestible recherché.', 'lepiote-eleve'),
(14, NULL, 6, '2021-11-04 00:00:00', NULL, 1, 'Cèpe d\'été', 'BOLETUS AESTIVALIS', 'blanche, épaisse, ferme.', 'jusqu’à 25 cm, hémisphérique puis convexe, sec, velouté, brun noisette.', 'blancs puis jaunâtres ou ocre.', 'de 5 à 15 cm, ventru, allongé, réseau saillant, brun plus pâle que le chapeau.', 'bois de feuillus, lisières, souvent sous hêtres & chênes, clairières.', 'de Mai à Septembre\r\nLe cèpes d’été est un des meilleurs cèpes, incontestablement ! C’est le plus précoce, mais on le trouve rarement après le mois de septembre.', 'cepe-d-ete'),
(15, NULL, 5, '2021-11-04 00:00:00', '2021-11-23 20:36:01', 1, 'Chanterelle comestible', 'CANTHARELLUS CIBARIUS', 'compacte, blanc-crème, légèrement fibreuse dans le pied, jamais attaquée par les larves', 'de 2 à 12 cm, convexe puis centre légèrement déprimé avec l\'âge, d\'une belle couleur jaune d\'œuf .\r\nmarge d\'abord enroulée, puis sinueuse, lobée et fragile .\r\ncuticule séparable, sèche, unie.', 'assez espacés, parfois ressemblant à de grossières lamelles, fourchus, largement décurrents sur le stipe', 'de 4 à 7 cm et ~1,5 de diam, charnu, plein, inégal et s\'amincissant vers la base, sec, concolore au chapeau', 'Les girolles se ramassent de juin à novembre, selon les conditions météorologiques, dans les bois sous les feuillus ou les conifères, et poussent en groupes, c\'est à dire qu\'il est bien rare de ne trouver qu\'une chanterelle : elles sont souvent nombreuses sur une petite zone, dès lors que le sol est chaud et humide. Les régions de prédilection des girolles sont la Sologne, le sud-ouest, le massif central, les Vosges.', 'Sa croissance est assez lente : 1 à 2 semaines pour arriver à maturité, mais les girolles ont une longévité pouvant atteindre 1 mois. \r\nConfusion possible avec le clitocybe de l\'olivier (Omphalotus olearius). Toutefois, les deux sont quand même très différents : le clitocybe de l\'olivier est souvent beaucoup plus gros, il possède de vraies lames sous le chapeau, un pied strié et il pousse essentiellement sur des vieilles souches de bois, en touffes.', 'chanterelle-comestible'),
(16, NULL, 5, '2021-11-04 00:00:00', NULL, 1, 'Chanterelle jaunissante', 'CANTHARELLUS LUTESCENS', 'fibreuse. odeur fruitée saveur douce.', 'de 2 à 5 cm jaune brun ; Marge ondulée.', 'veiné, jaune pâle, sporée crème.', 'arrondi à aplati, creux, jaune, creux, jaune orangé.', 'en colonie sous feuillus, conifère souvent sous bruyère. Sur sol a tendance acide de type schisteux dans le sud de la France.', 'bon comestible.', 'chanterelle-jaunissante'),
(17, NULL, 4, '2021-11-04 00:00:00', '2021-11-23 20:37:29', 1, 'Clavaire jaune', 'RAMARIA FLAVA', 'blanchâtre. Odeur légère, agréable.', 'non différencié, forme coralloïde, Haut. 5 à 12 cm, Diam. 6 à 15 cm.', 'lisse.', 'tronc épais.', 'sous les chênes.', 'comestible médiocre.', 'clavaire-jaune'),
(18, NULL, 5, '2021-11-04 00:00:00', '2021-12-09 22:39:29', 1, 'Coprin chevelu', 'COPRINUS COMATUS', NULL, 'de 5 à 12 cm de hauteur, est blanc, cylindrique et couvert de peluches blanchâtres. Son sommet est plus foncé et nu. En vieillissant, il s\'évase pour former des cloches ; le bord noircit et exsude des gouttelettes noires. Au-dessous, les lames d\'abord blanches noircissent.', 'blanches virent rapidement au rose puis au noir.  L\'anneau est léger, mobile, et ne présente pas de volve.', 'long (jusqu\'à plus de 20 cm) est creux et cylindrique, un peu renflé en bulbe, blanc, avec un petit anneau en forme de bague qui finit par se détacher.', 'Le coprin chevelu apparaît dans la pelouse, dans les prés, au bord de chemins et des routes. Il apprécie les sols riches en matière organique, notamment ceux qui ont bénéficié d\'apports de fumier. Il décompose et recycle cette matière organique dans le sol. Ce champignon est un excellent indicateur d\'une terre riche en matière organique et en azote et donc idéal pour des graminées à gazon. Il pousse dans toutes les régions.', 'considéré comme un excellent comestible, à condition toutefois de le consommer jeune, c\'est-à-dire entièrement blanc à la coupe, s\'il y a du noir il est à rejeter.', 'coprin-chevelu'),
(19, NULL, 2, '2021-11-04 00:00:00', NULL, 1, 'Pezize étoilée', 'SARCOSPHAERA CORONARIA', 'blanchâtre à violacée, cassante. Odeur et saveurs faible.', NULL, 'en forme de pomme de terre, blanchâtre à l\'état jeune puis s\'ouvrant en étoile. Face intérieur( hyménium) blanchâtre puis vite violet et enfin brun violet. face exterieur blanchetachée de jaune.', NULL, 'Sous conifères, chênes sur sol calcaire.', 'toxique(mortel cru).', 'pezize-etoile'),
(20, NULL, 6, '2021-11-04 00:00:00', '2021-12-09 22:39:28', 1, 'Hydne commun', 'Hydnum repandum', 'épaisse, ferme, cassante, blanche fonçant légèrement au contact de l\'air, très légère odeur agréable, saveur parfois légèrement amère.', 'de 4 à 15 cm, massif, de forme très variable, irrégulièrement bosselé, souvent soudé les uns aux autres, convexe puis étalé, déprimé ;\r\ncuticule adnée, sèche, mate, de crème à chamois, non zonée et non écailleuse ;\r\nmarge épaisse, largement enroulée au début puis s\'étalant et devenant lobée et sinueuse.', 'serrés, décurrents, longs de 3-5 mm, fragiles, blancs puis crèmes et brunissants.', 'épais, charnu, trapu, plein, de 3 à 8 x 1 à 4 cm, difforme, excentré rarement central, s\'épaississant à la base, blanchâtre puis roussissant par endroits.', NULL, 'c\'est un excellent comestible, mais non de premier choix, sa chair présentant souvent l\'inconvénient d\'une légère amertume.', 'hydne-commun'),
(21, NULL, 5, '2021-11-04 00:00:00', NULL, 1, 'Chanterelle violette', 'Gomphus clavatus', 'blanche et ferme.', '5 à 10 cm de diamètre, un peu déprimé au sommet; marge sinueuse, devenant lobée; lilas, puis brun-jaune.', 'sinueux, fourchus et boursoufflés, violacés, puis brun-ocre.', 'court, souvent latéral, plus mince en bas, violet, devenant plus terne avec l\'âge.', 'conifères ( pins, sapins ) surtout en montagne.Souvent en touffes.Fin de l\' été et automne.Peu courant à assez courant selon les régions.', 'bon comestible jeune, légèrement amer par la suite.Ce champignon est apprécié pour sa chair plus tendre que la girolle mais il est aussi moins parfumé que cette dernière.', 'chanterelle-violette'),
(22, NULL, 3, '2021-11-04 00:00:00', '2021-12-09 22:39:28', 1, 'Géastre sessile', 'Geastrum fimbriatum', 'molle blanche à grise.', 'Sphérique de 2 à 4 cm de diamètre avant ouverture.\r\nIl éclate en 6 à 10 segments ocre avec une boule au centre allant de l\' ocre au gris parfois brun surmontée d\' une pointe plus sombre.', NULL, NULL, NULL, 'non comestible', 'geastre-sessile'),
(24, NULL, 5, '2021-11-04 00:00:00', '2021-11-23 20:41:55', 1, 'Clitocybe anisé', 'clitocybe odora', 'blanc sale à bleutée, élastique, peu épaisse sauf au disque, odeur forte d\'anis, saveur douce fortement anisée', '6 (10) cm de diam, convexe puis plat, légèrement omboné-déprimé ;\r\nrevêtement vert finement fibrilleux, vert, bleu-vert surtout au disque, pâlissant et décoloré dans l\'âge, sec, non visqueux ;\r\nmarge', 'adnées, très légèrement décurrentes, blanchâtres à concolores au chapeau mais plus pâles, inégales, moyennement serrées, parfois fourchues, veinées sur la face et interveinées dans le fond, surtout sur vieux sujets', '8 x 1,5 cm, cylindrique, blanchâtre plus ou moins bleuté verdâtre, pruineux, floconneux-fibrilleux, base velue légèrement épaissie.', NULL, 'bon comestible, mais très (trop) parfumé, à utiliser de préférence en condiment', 'clitocybe-anise'),
(25, NULL, 6, '2021-11-04 00:00:00', '2021-11-23 20:42:35', 1, 'Morille conique', 'Morchella elata', 'Crème, peu épaisse', '6 à 12 cm, conique, brun à brun-noir, côtes longitudinales rectilignes.', 'alvéoles irrégulières', 'jusqu’à 12 cm, trapu, crème, creux, granuleux', NULL, NULL, 'morille-conique'),
(26, NULL, 3, '2021-11-04 00:00:00', '2022-03-03 17:05:49', 1, 'Amadouvier', 'Fomes fomentarius', 'La chair est subéreuse, très difficile à couper, de couleur fauve à brun foncé. La croûte est épaisse, très coriace, gris noirâtre et brillante à la coupe. Les exemplaires frais dégagent une odeur de pomme.', 'Le chapeau, de 10 à 40, voire 50 cm de large, et de 10 à 20 cm d\'épaisseur, en sabot de cheval, gris pâle, blanchissant, avec une marge crème à brun noisette est en réalité une concrétion de multiples chapeaux empilés les uns sous les autres. Ils sont ainsi gravés de sillons concentriques délimitant des bourrelets de taille croissante en allant vers la base, indiquant chaque nouvelle fructification.', 'Les tubes sont longs, bruns et totalement stratifiés car, ici encore, à chaque poussée de ce champignon pérennant , une nouvelle couche de tubes recouvre la précédente. Les pores sont gris clair à noisette, petits, arrondis, environ 0,2 mm. La sporée est jaunâtre.', 'il n\'y a pas de pied, le champignon pousse en console.', 'C\'est un redoutable parasite de plusieurs feuillus : hêtre, platane, bouleau, peuplier, chêne ou marronnier, entre autres. Il se fixe sur des arbres faibles ou blessés, produit une pourriture blanche et finit en quelques années par tuer son hôte.', 'l\'amadouvier n\'est pas comestible. Il était utilisé comme substance inflammable dès la Préhistoire.', 'amadouvier'),
(27, NULL, 3, '2021-11-04 00:00:00', NULL, 1, 'Rhizopogon rose', 'Rhizopogon', NULL, 'en forme de pomme de terre, blanchâtre à jaune.', 'gléba spongieux,jaunâtre puis olive foncé à maturation. Sporée olivâtre.', NULL, 'à demi enterrré sous les pins en automne.', 'A rejeter. Il existe des nombreuse espèces de rhizopogon, très difficile à différencier les unes des autres.', 'rhizopogon-rose'),
(28, NULL, 4, '2021-11-04 00:00:00', '2021-11-23 20:44:06', 1, 'Vesse-de-loup perlée', 'Lycoperdon perlatum', 'blanc bistre.', 'de 3 à 5 cm pour 4 à 9 cm de hauteur, en forme de globe, d\'ampoule globuleuse ou de poire inversée, à mamelon obtus plus ou moins marqué, blanc à blanc crème brunissant, couverte de petites aspérités coniques dont une partie disparaît en vieillissant.', 'néant', 'non marqué, dans le prolongement du carpophore, également recouvert des mêmes aspérités que celui-ci', 'principalement dans les bois de conifères, en lisières, talus et chemins les bordant, parfois aussi dans les herbus contigus moins fréquemment sous les feuillus', 'considérées comme comestibles quand elles sont jeunes et que la gleba est homogène et blanche.', 'vesse-de-loup-perlee');


--
-- Déchargement des données de la table LOCALNAME
--
INSERT IGNORE INTO localname (id, mushroom_id, created_at, name) VALUES
(2, 9, '2021-12-09 22:54:42', 'Safrané'),
(3, 8, '2021-12-09 22:55:52', 'Sanguin'),
(4, 8, '2021-12-09 22:56:05', 'Rouge'),
(5, 8, '2021-12-09 22:56:33', 'Vineux');


----
---- Déchargement des données de la table MEDIA
----
INSERT IGNORE INTO media (id, mushroom_id, created_at, name, filename) VALUES
(16, 1, '2021-11-23 19:38:46', NULL, '619d434603bb8195867859.jpg'),
(17, 1, '2021-11-23 19:38:46', NULL, '619d434606189839000481.jpg'),
(18, 1, '2021-11-23 19:38:46', NULL, '619d434607188955443823.jpg'),
(19, 1, '2021-11-23 19:38:46', NULL, '619d434607e45955045587.jpg'),
(20, 1, '2021-11-23 19:38:46', NULL, '619d434608b17971041934.jpg'),
(21, 1, '2021-11-23 19:38:46', NULL, '619d43460982b650278964.jpg'),
(22, 1, '2021-11-23 19:38:46', NULL, '619d43460a50e440742534.jpg'),
(23, 2, '2021-11-23 19:38:46', NULL, '619d4d7752a57404259798.jpg'),
(24, 2, '2021-11-23 19:38:46', NULL, '619d4d775474b595885504.jpg'),
(25, 2, '2021-11-23 19:38:46', NULL, '619d4d7755185283227108.jpg'),
(26, 3, '2021-11-23 19:38:46', NULL, '619d4dc37bb40213226695.jpg'),
(27, 3, '2021-11-23 19:38:46', NULL, '619d4dc37d706207435784.jpg'),
(28, 3, '2021-11-23 19:38:46', NULL, '619d4dc37e1cc182187888.jpg'),
(29, 3, '2021-11-23 19:38:46', NULL, '619d4dc37ed69070908092.jpg'),
(30, 3, '2021-11-23 19:38:46', NULL, '619d4dc37f823639576016.jpg'),
(31, 3, '2021-11-23 19:38:46', NULL, '619d4dc380169149252145.jpg'),
(32, 3, '2021-11-23 19:38:46', NULL, '619d4dc380aa7105318088.jpg'),
(33, 3, '2021-11-23 19:38:46', NULL, '619d4dc381455247555696.jpg'),
(34, 4, '2021-11-23 19:38:46', NULL, '619d4ddd85baf949496533.jpg'),
(35, 5, '2021-11-23 19:38:46', NULL, '619d4e02c61ce922161025.jpg'),
(36, 5, '2021-11-23 19:38:46', NULL, '619d4e02c7d0c232258584.jpg'),
(37, 5, '2021-11-23 19:38:46', NULL, '619d4e02c88bb960793417.jpg'),
(38, 6, '2021-11-23 19:38:46', NULL, '619d4e22712c0235780704.jpg'),
(39, 6, '2021-11-23 19:38:46', NULL, '619d4e22731dd246193597.jpg'),
(40, 6, '2021-11-23 19:38:46', NULL, '619d4e2273d6a704307880.jpg'),
(41, 6, '2021-11-23 19:38:46', NULL, '619d4e22747ba321690021.jpg'),
(42, 7, '2021-11-23 19:38:46', NULL, '619d4e373ddb2515785160.jpg'),
(43, 7, '2021-11-23 19:38:46', NULL, '619d4e373fa27041614702.jpg'),
(44, 8, '2021-11-23 19:38:46', NULL, '619d4e8a898f2560464491.jpg'),
(45, 8, '2021-11-23 19:38:46', NULL, '619d4e8a8b4ca163048289.jpg'),
(46, 8, '2021-11-23 19:38:46', NULL, '619d4e8a8c143072836212.jpg'),
(47, 8, '2021-11-23 19:38:46', NULL, '619d4e8a8cac3592464719.jpg'),
(48, 8, '2021-11-23 19:38:46', NULL, '619d4e8a8d462151607044.jpg'),
(49, 8, '2021-11-23 19:38:46', NULL, '619d4e8a8dde6775885416.jpg'),
(50, 8, '2021-11-23 19:38:46', NULL, '619d4e8a8e5ff981349332.jpg'),
(51, 8, '2021-11-23 19:38:46', NULL, '619d4e8a8f2d4523124804.jpg'),
(52, 8, '2021-11-23 19:38:46', NULL, '619d4e8a900fe179131417.jpg'),
(53, 8, '2021-11-23 19:38:46', NULL, '619d4e8a90c64692599182.jpg'),
(54, 8, '2021-11-23 19:38:46', NULL, '619d4e8a9171a740662035.jpg'),
(55, 9, '2021-11-23 19:38:46', NULL, '619d4f4e73349598606479.jpg'),
(56, 9, '2021-11-23 19:38:46', NULL, '619d4f4e751b6389715275.jpg'),
(57, 9, '2021-11-23 19:38:46', NULL, '619d4f4e75bac282432581.jpg'),
(58, 9, '2021-11-23 19:38:46', NULL, '619d4f4e767b5560636267.jpg'),
(59, 10, '2021-11-23 19:38:46', NULL, '619d4f6f33e2a616390201.jpg'),
(60, 10, '2021-11-23 19:38:46', NULL, '619d4f6f35d69790520619.jpg'),
(61, 10, '2021-11-23 19:38:46', NULL, '619d4f6f3699e019147438.jpg'),
(62, 10, '2021-11-23 19:38:46', NULL, '619d4f6f3750a090000124.jpg'),
(63, 11, '2021-11-23 19:38:46', NULL, '619d4f99a6674463768339.jpg'),
(64, 11, '2021-11-23 19:38:46', NULL, '619d4f99a832c097884732.jpg'),
(65, 11, '2021-11-23 19:38:46', NULL, '619d4f99a9201425238936.jpg'),
(66, 12, '2021-11-23 19:38:46', NULL, '619d4fc31ab81271900535.jpg'),
(67, 12, '2021-11-23 19:38:46', NULL, '619d4fc31d0b5954026897.jpg'),
(68, 12, '2021-11-23 19:38:46', NULL, '619d4fc31de79231126909.jpg'),
(69, 12, '2021-11-23 19:38:46', NULL, '619d4fc31ec0a203452227.jpg'),
(70, 12, '2021-11-23 19:38:46', NULL, '619d4fc31f8f9007395448.jpg'),
(71, 12, '2021-11-23 19:38:46', NULL, '619d4fc320532260418207.jpg'),
(72, 13, '2021-11-23 19:38:46', NULL, '619d5037cd66b354565713.jpg'),
(73, 13, '2021-11-23 19:38:46', NULL, '619d5037cf817790021672.jpg'),
(74, 13, '2021-11-23 19:38:46', NULL, '619d5037d043c071629032.jpg'),
(75, 13, '2021-11-23 19:38:46', NULL, '619d5037d103a303095956.jpg'),
(76, 13, '2021-11-23 19:38:46', NULL, '619d5037d1d84240817573.jpg'),
(77, 14, '2021-11-23 19:38:46', NULL, '619d505a767bc414564921.jpg'),
(78, 14, '2021-11-23 19:38:46', NULL, '619d505a7830a018354058.jpg'),
(79, 14, '2021-11-23 19:38:46', NULL, '619d505a78f01205664713.jpg'),
(80, 15, '2021-11-23 19:38:46', NULL, '619d50b1805be574930290.jpg'),
(81, 15, '2021-11-23 19:38:46', NULL, '619d50b18273f903702961.jpg'),
(82, 15, '2021-11-23 19:38:46', NULL, '619d50b18345a845324303.jpg'),
(83, 15, '2021-11-23 19:38:46', NULL, '619d50b184370343501820.jpg'),
(84, 15, '2021-11-23 19:38:46', NULL, '619d50b1853cc745669665.jpg'),
(85, 15, '2021-11-23 19:38:46', NULL, '619d50b18642f556866965.jpg'),
(86, 15, '2021-11-23 19:38:46', NULL, '619d50b187554192798138.jpg'),
(87, 15, '2021-11-23 19:38:46', NULL, '619d50b1885b3636228797.jpg'),
(88, 15, '2021-11-23 19:38:46', NULL, '619d50b189266295018272.jpg'),
(89, 15, '2021-11-23 19:38:46', NULL, '619d50b189fe2044263032.jpg'),
(90, 15, '2021-11-23 19:38:46', NULL, '619d50b18b40a850351198.jpg'),
(91, 15, '2021-11-23 19:38:46', NULL, '619d50b18c441236289723.jpg'),
(92, 15, '2021-11-23 19:38:46', NULL, '619d50b18ceb7669893102.jpg'),
(93, 15, '2021-11-23 19:38:46', NULL, '619d50b18dac6625940075.jpg'),
(94, 16, '2021-11-23 19:38:46', NULL, '619d50deac44a218081052.jpg'),
(95, 16, '2021-11-23 19:38:46', NULL, '619d50deae070572911304.jpg'),
(96, 16, '2021-11-23 19:38:46', NULL, '619d50deaeaac710725885.jpg'),
(97, 16, '2021-11-23 19:38:46', NULL, '619d50deaf6d6872854927.jpg'),
(98, 16, '2021-11-23 19:38:46', NULL, '619d50deb00fc026214980.jpg'),
(99, 16, '2021-11-23 19:38:46', NULL, '619d50deb0c51654058594.jpg'),
(100, 17, '2021-11-23 19:38:46', NULL, '619d5109e8282012784925.jpg'),
(101, 17, '2021-11-23 19:38:46', NULL, '619d5109ea679285690688.jpg'),
(102, 17, '2021-11-23 19:38:46', NULL, '619d5109eb70a908510518.jpg'),
(103, 17, '2021-11-23 19:38:46', NULL, '619d5109ec1c8862013342.jpg'),
(104, 17, '2021-11-23 19:38:46', NULL, '619d5109ed0a7277379473.jpg'),
(105, 18, '2021-11-23 19:38:46', NULL, '619d514c324e2090876749.jpg'),
(106, 18, '2021-11-23 19:38:46', NULL, '619d514c3451e053889309.jpg'),
(107, 18, '2021-11-23 19:38:46', NULL, '619d514c35233462377069.jpg'),
(108, 18, '2021-11-23 19:38:46', NULL, '619d514c3607b712711565.jpg'),
(109, 18, '2021-11-23 19:38:46', NULL, '619d514c36df3091157114.jpg'),
(110, 18, '2021-11-23 19:38:46', NULL, '619d514c37f74365764693.jpg'),
(111, 18, '2021-11-23 19:38:46', NULL, '619d514c38c21269305310.jpg'),
(112, 19, '2021-11-23 19:38:46', NULL, '619d515e99583728042538.jpg'),
(113, 20, '2021-11-23 19:38:46', NULL, '619d51825f5a7893908965.jpg'),
(114, 20, '2021-11-23 19:38:46', NULL, '619d5182611d3612707393.jpg'),
(115, 20, '2021-11-23 19:38:46', NULL, '619d518261e8a028727209.jpg'),
(116, 20, '2021-11-23 19:38:46', NULL, '619d51826305d269066474.jpg'),
(117, 20, '2021-11-23 19:38:46', NULL, '619d518263e10175743939.jpg'),
(118, 20, '2021-11-23 19:38:46', NULL, '619d518264bea800394657.jpg'),
(119, 21, '2021-11-23 19:38:46', NULL, '619d51b4107bd413351131.jpg'),
(120, 21, '2021-11-23 19:38:46', NULL, '619d51b413456832959537.jpg'),
(121, 21, '2021-11-23 19:38:46', NULL, '619d51b4143c2724506866.jpg'),
(122, 22, '2021-11-23 19:38:46', NULL, '619d51cf27270644390513.jpg'),
(123, 22, '2021-11-23 19:38:46', NULL, '619d51cf2922e483140096.jpg'),
(124, 22, '2021-11-23 19:38:46', NULL, '619d51cf29e17753947442.jpg'),
(125, 24, '2021-11-23 19:38:46', NULL, '619d52138c19a109019589.jpg'),
(126, 24, '2021-11-23 19:38:46', NULL, '619d52138e087627993369.jpg'),
(127, 25, '2021-11-23 19:38:46', NULL, '619d523b63e43828436804.jpg'),
(128, 25, '2021-11-23 19:38:46', NULL, '619d523b6597f271192617.jpg'),
(129, 25, '2021-11-23 19:38:46', NULL, '619d523b663fb970666715.jpg'),
(130, 25, '2021-11-23 19:38:46', NULL, '619d523b66f73041773975.jpg'),
(131, 25, '2021-11-23 19:38:46', NULL, '619d523b67f53845054724.jpg'),
(132, 25, '2021-11-23 19:38:46', NULL, '619d523b68c4e541676732.jpg'),
(133, 26, '2021-11-23 19:38:46', NULL, '619d5250d563e931094437.jpg'),
(134, 26, '2021-11-23 19:38:46', NULL, '619d5250d71da397111802.jpg'),
(135, 27, '2021-11-23 19:38:46', NULL, '619d5271e08ab591725984.jpg'),
(136, 28, '2021-11-23 19:38:46', NULL, '619d5296d44a5724365090.jpg'),
(137, 28, '2021-11-23 19:38:46', NULL, '619d5296d65e4908755041.jpg'),
(138, 28, '2021-11-23 19:38:46', NULL, '619d5296d715f398478769.jpg'),
(139, 28, '2021-11-23 19:38:46', NULL, '619ebf981691a506289049.jpg');


----
---- Déchargement des données de la table FORUM CATEGORY
----
INSERT IGNORE INTO forum_category (id,created_at,name,updated_at) VALUES
	 (2,'2023-11-09 22:28:45','La culture de champignons : principe et techniques',NULL),
	 (4,'2023-11-09 22:29:50','Identifier les champignons',NULL),
	 (5,'2023-11-09 22:30:10','Observations',NULL),
	 (6,'2023-11-09 22:30:25','Risque de confusion',NULL),
	 (8,'2023-11-14 20:01:01','Recettes de cuisines',NULL),
	 (9,'2023-11-25 05:01:01','Médecine',NULL),
	 (10,'2023-11-25 04:01:01','Découvertes',NULL),
	 (11,'2023-11-25 03:01:01','Événements et sorties',NULL),
	 (12,'2023-12-01 09:00:00','Sciences et technologies',NULL);


----
---- Déchargement des données de la table FORUM SUBJECT
----
INSERT INTO forum_subject (id,created_at,description,title,updated_at,user_id) VALUES
	 (10,'2023-11-21 22:38:38','<h5>Des bolets ?</h5><p>Nous sommes partis chercher quelques champignons ce matin avec un ami, je suis tomb&eacute; sur ceux-ci&nbsp; mais je ne sais pas de quoi il s&#39;agit ? sont-ils comestibles ?</p><p>J&#39;ai donc pris une photo que je partage avec vous !</p><p><img alt="" src="https://cdn-s-www.leprogre.fr/images/810A5F4D-7DDE-4479-B976-7FE23C4AE4F0/MF_contenu/pourquoi-les-champignons-poussent-en-avance-cette-annee-1601015091.jpg" /></p><p>On dirait des bolets mais je n&#39;en sais pas plus, si quelqu&#39;un a une id&eacute;e, mer&ccedil;i par avance.</p>','Quelqu\'un pourrait me dire de quelle espèce il s\'agit ?','2022-03-27 19:17:55',1),
	 (11,'2023-11-20 22:50:20','<h2>De belles girolles ramass&eacute;es aujourd&#39;hui !</h2><p><img alt="" src="https://depuismonhamac.jardiland.com/wp-content/uploads/2020/11/champignons-forets-photo-douverture.jpg" style="height:261px; width:400px" /></p><p>Apr&egrave;s les pluies de septembre les premi&egrave;res girolles sont la, pas en nombre mais un bon d&eacute;but .</p>','Les premières girolles de l\'année','2022-03-27 19:17:55',1),
	 (14,'2023-11-21 12:50:32','<h2>Un beau panier a d&eacute;guster sans mod&eacute;rations</h2><p><img alt="" src="https://cdn-europe1.lanmedia.fr/var/europe1/storage/images/europe1/societe/comment-cuisiner-les-champignons-autrement-quen-poelee-4002224/56225638-1-fre-FR/Comment-cuisiner-les-champignons-autrement-qu-en-poelee.jpg" /></p><p>&nbsp;</p>','Rando samedi je partage quelques photos !','2022-03-27 19:19:52',2),
	 (19,'2023-11-08 20:57:43','<h1>Kit culture de champignons de Paris</h1><p><img alt="" src="https://static.weezbe.com/cmachambre/Images/products/p_2916G_210323171220.jpg" /></p><p>Plutot satisfait du r&eacute;sultat !</p>','Essai d\'un kit de culture','2022-03-27 19:17:55',1),
	 (22,'2023-11-20 08:14:23','<p><img alt="" src="https://www.cuisineactuelle.fr/imgre/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Fcac.2F2020.2F01.2F28.2F6b74cc03-eb22-4f32-ae2c-4855f68f90d5.2Ejpeg/748x372/quality/90/crop-from/center/filet-de-sandre-a-la-creme-de-morilles.jpeg" /></p><ol><li>Rincez soigneusement les morilles. Pelez et &eacute;mincez l&rsquo;ail. Faites chauffer 15 g de beurre dans une po&ecirc;le, ajoutez les morilles et l&rsquo;ail et faites-les cuire pendant 10 minutes en m&eacute;langeant souvent.</li><li>Versez la cr&egrave;me, salez, poivrez, incorporez la ciboulette cisel&eacute;e et poursuivez la cuisson 5 minutes.</li><li>Pendant ce temps, faites chauffer l&rsquo;huile et le reste de beurre dans une po&ecirc;le ; Farinez l&eacute;g&egrave;rement les filets de sandre puis faites-les cuire 3 &agrave; 4 min de chaque c&ocirc;t&eacute; en les arrosant avec la mati&egrave;re grasse tout au long de la cuisson.</li><li>D&eacute;posez les filets de sandre dans chaque assiette, nappez avec la sauce aux morilles et servez.</li></ol>','Filet de sandre à la crème de morilles','2022-03-27 19:17:55',1),
	 (29,'2023-11-24 19:56:38','<h2>Bonjour</h2><p><strong>j&#39;ai cueilli ce champignon </strong></p><p><strong><img alt="" src="https://cdn-s-www.estrepublicain.fr/images/6FBBB4A0-E1E7-4FDC-BFF7-0B93B0C8369E/NW_raw/pour-tout-savoir-sur-les-champignons-photo-er-dr-1601558920.jpg" width="250" /></strong></p><p>&nbsp;</p><p>Qu&#39;es-ce que c&#39;est ? Merci</p>','Quel est ce champignon ?','2022-03-27 19:19:52',2),
	 (30,'2023-11-24 06:21:35','<p><br /><img alt="" src="https://img.cuisineaz.com/660x660/2015/09/14/i41153-poelee-de-courgettes-et-champignons-aux-herbes-de-provence.webp" /></p><h2>Ingr&eacute;dients : 4 Pers.</h2><ul><li>3 courgettes</li><li>500 g de champignons</li><li>herbes de Provence</li><li>2 gousses d&#39;ail</li><li>1 oignon</li><li>huile d&#39;olive</li><li>persil</li><li>sel, poivre</li></ul><ol><li>Lavez les courgettes et d&eacute;taillez-les en petits d&eacute;s.</li><li>Nettoyez les champignons et &eacute;mincez-les.</li><li>&Eacute;pluchez les gousses d&rsquo;ail et l&rsquo;oignon, rincez-les et hachez-les finement.</li><li>Dans une po&ecirc;le &agrave; feu vif, versez les courgettes dans l&#39;huile avec les champignons, l&rsquo;oignon, l&rsquo;ail, les herbes de Provence et le persil.</li><li>Faites dorer 10 min, en remuant.</li><li>Salez, poivrez, puis baissez le feu. Poursuivez la cuisson 10 min &agrave; feu doux.</li><li>Servez.</li></ol>','Poêlée de courgettes et champignons aux herbes de provence','2022-03-27 19:17:55',1),
	 (55,'2023-11-25 14:26:00.665756','<figure class="image image-style-side"><img style="aspect-ratio:767/653;" src="https://www.hainaut-developpement.be/wp-content/uploads/2016/12/Champignons.jpg" alt="Hainaut Developpement - Agence de Développement de l\'Economie et de  l\'Environnement de la Province de Hainaut" width="767" height="653"></figure><p>&nbsp;</p><p>Les amanites tue-mouches (Amanita muscaria) sont des champignons toxiques qui contiennent plusieurs substances chimiques toxiques, dont l\'acide iboténique et la muscimol. Ces champignons peuvent présenter des risques sérieux en cas de consommation.</p><p>Voici quelques-uns des risques associés à la consommation d\'amanites tue-mouches :</p><p><strong>Toxicité :</strong> Les amanites tue-mouches sont considérées comme toxiques, et la consommation peut entraîner des symptômes tels que des nausées, des vomissements, des hallucinations, des troubles gastro-intestinaux, des étourdissements et des perturbations du système nerveux central.</p><p><strong>Effets hallucinogènes :</strong> Ces champignons ont des propriétés hallucinogènes en raison des substances psychoactives qu\'ils contiennent. Cependant, les effets ne sont pas prévisibles et peuvent varier d\'une personne à l\'autre. La consommation d\'amanites tue-mouches n\'est pas recommandée à des fins récréatives en raison des risques associés à ces effets.</p><p><strong>Confusion avec d\'autres champignons comestibles :</strong> Les amanites tue-mouches peuvent être confondues avec d\'autres champignons comestibles, ce qui augmente le risque d\'empoisonnement accidentel. Il est important d\'être très compétent en mycologie et de ne jamais consommer un champignon sauvage sans une identification positive par un expert.</p><p><strong>Effets à long terme :</strong> En cas d\'empoisonnement sévère, les effets peuvent aller de convulsions à des problèmes rénaux et hépatiques graves, pouvant entraîner la mort dans les cas extrêmes.</p><p>Il est essentiel de souligner que la consommation d\'amanites tue-mouches n\'est pas recommandée en raison de sa toxicité. Si quelqu\'un suspecte une intoxication aux champignons ou présente des symptômes après la consommation de champignons sauvages, il est impératif de consulter immédiatement un professionnel de la santé ou de contacter un centre antipoison.</p><p>Il est fortement recommandé de ne jamais cueillir ou consommer des champignons sauvages à moins d\'avoir une expertise approfondie en mycologie et de pouvoir identifier en toute sécurité les espèces de champignons.</p>','Les amanites tue-mouches',NULL,2),
	 (56,'2023-11-25 15:07:14.044294','<p>Ce sont des champignons comestibles qui peuvent être cultivés facilement à la maison. Les sacs de culture de pleurotes sont une méthode simple et efficace pour cultiver ces champignons.</p><figure class="image image-style-side"><img style="aspect-ratio:1280/960;" src="https://s.locavor.fr/data/fournisseurs/images/3423/3423-champi-bordelais-1.jpg" alt="" width="1280" height="960"></figure><p>Pour cultiver des pleurotes dans un sac de culture, vous aurez besoin des éléments suivants :</p><ul><li>Un sac de culture de pleurotes</li><li>Un lieu frais et sombre</li><li>Un arrosoir</li></ul><p>Les sacs de culture de pleurotes sont disponibles dans la plupart des magasins de jardinage. Ils contiennent du substrat de culture, qui est un mélange de paille, de céréales et de mycélium de pleurotes.</p><p>Une fois que vous avez votre sac de culture, placez-le dans un lieu frais et sombre. La température idéale pour la culture des pleurotes est de 15 à 20 degrés Celsius.</p><p>Arrosez le sac de culture tous les jours, en veillant à ce que le substrat soit humide mais pas détrempé.</p><p>Les premiers champignons devraient apparaître dans environ deux semaines. Les récoltes suivantes se produiront tous les 7 à 10 jours.</p><p>Voici les étapes à suivre pour cultiver des pleurotes dans un sac de culture :</p><ol><li>Placez le sac de culture dans un lieu frais et sombre.</li><li>Arrosez le sac de culture tous les jours.</li><li>Attendez que les premiers champignons apparaissent, ce qui devrait prendre environ deux semaines.</li><li>Récoltez les champignons en coupant le pied à ras du substrat.</li><li>Continuez à arroser le sac de culture pour obtenir des récoltes supplémentaires.</li></ol><p>Voici quelques conseils pour cultiver des pleurotes dans un sac de culture :</p><ul><li>Utilisez un sac de culture de bonne qualité. Les sacs de culture bon marché peuvent ne pas contenir suffisamment de mycélium, ce qui peut réduire le rendement.</li><li>Placez le sac de culture dans un endroit où il ne sera pas exposé à la lumière directe du soleil. La lumière du soleil peut inhiber la croissance des champignons.</li><li>Arrosez le sac de culture régulièrement, mais ne le laissez pas détremper. Un substrat trop humide peut favoriser la croissance de moisissures.</li><li>Récoltez les champignons lorsque leurs chapeaux sont encore fermés. Les champignons ouverts seront moins savoureux.</li></ul><p>Avec un peu de soin, vous pourrez cultiver vos propres pleurotes frais et savoureux en toute simplicité.</p>','Pleurotes sac de culture',NULL,1),
	 (57,'2023-11-25 15:22:41.511631','<p>Première fois que je vois ça , quelqu\'un a une idée !!</p><figure class="image"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII=" alt="Le Phallus indusiatus porte fièrement une jupe en dentelle" srcset="https://cherry.img.pmdstatic.net/scale/https.3A.2F.2Fimg.2Emaxisciences.2Ecom.2Farticle.2Fchampignon.2Fle-phallus-indusiatus-porte-fierement-une-jupe-en-dentelle_eba4f3ff6551e39900fe09a72714b75aae40952e.2Ejpg/autox450/quality/80/le-phallus-indusiatus-porte-fierement-une-jupe-en-dentelle.jpg 1x, https://cherry.img.pmdstatic.net/scale/https.3A.2F.2Fimg.2Emaxisciences.2Ecom.2Farticle.2Fchampignon.2Fle-phallus-indusiatus-porte-fierement-une-jupe-en-dentelle_eba4f3ff6551e39900fe09a72714b75aae40952e.2Ejpg/autox900/quality/80/le-phallus-indusiatus-porte-fierement-une-jupe-en-dentelle.jpg 2x" sizes="100vw"></figure>','HELP !!!!',NULL,24),
	 (58,'2023-11-25 16:37:17.575613','<figure class="image image-style-side"><img style="aspect-ratio:623/466;" src="https://www.sciencesetavenir.fr/assets/img/2015/04/24/cover-r4x3w1200-57df543c939cf-champignons.jpg" alt="Champignons" width="623" height="466"></figure><p>Nichés dans des brindilles au fond des bois, ils ont un tronc, une tête, deux bras... Des&nbsp;schtroumpfs ? Non, il s\'agit d\'une drôle d\'espèce de champignons de forme humanoïde. Découverts en 2000 par Jonathan Revett, un membre de la Société des naturalistes de Norfolk et Norwich au nord-est de Londres (voir carte ci-dessous), les premiers spécimens de cette étrange espèce ont été nommés <i>Geastrum britannicum</i>, en référence au fait qu\'aucun champignon de ce type&nbsp;n\'avait encore jamais été trouvé ailleurs qu\'en Angleterre. 15 ans après, de nouvelles analyses <a href="http://www.ingentaconnect.com/content/nhn/pimj/pre-prints/content-nbc_persoonia_0307">publiées dans la revue <i>Persoonia - Molecular Phylogeny and Evolution of Fungi</i></a><i>&nbsp;</i>confirment qu\'il s\'agit bien d\'une espèce particulière, unique en son genre.</p><p><img src="https://www.sciencesetavenir.fr/assets/referentiel/file/13931772.jpg" alt="" width="357" height="266"></p><p>Ces 15 dernières années, les experts en mycologie&nbsp;- la science des champignons - se sont demandés s\'il s\'agissait bien là d\'une nouvelle espèce, ou s\'il valait mieux les considérer comme une variante des très rares&nbsp;<i>Rayed Earthstar</i> dont l\'apparence ne semble différer que très légèrement (voir ci-contre, ©Dan Molter). &nbsp;Mais un ré-examen récent des spécimens et des analyses de séquence ADN ont permis à des mycologues espagnols de déterminer qu\'il s\'agissait bien d\'une espèce à part entière, exclusive à la Grande-Bretagne.&nbsp;En effet, depuis la découverte fortuite&nbsp;de&nbsp;Jonathan Revett en 2000, d\'autres&nbsp;spécimens ont également été collectés dans le Hampshire (sud-ouest de Londres) et près de la frontière avec le Pays-de-Galles.&nbsp;<i>"Pour nous, c\'est un peu comme pour un&nbsp;ornithologue découvrant pour la première un oiseau rare. Car ce n\'est pas seulement une nouvelle espèce pour Norfolk ou l\'Angleterre, c\'est nouveau pour la science elle-même"</i>, explique Tony Leech, président de <a href="http://www.nnns.org.uk/content/welcome">la&nbsp;Société des naturalistes de Norfolk</a>.</p><p>&nbsp;</p>','Un champignon qui ressemble incroyablement à un humain !',NULL,21),
	 (59,'2023-11-25 16:48:32.715044','<p>La psilocybine, un composé psychoactif présent dans certains champignons, est de plus en plus étudiée pour ses potentialités thérapeutiques dans le traitement de diverses maladies psychiatriques.</p><figure class="image image-style-side"><img style="aspect-ratio:800/400;" src="https://www.zamnesia.fr/img/cms/CMS_Pages/808_everything_about_psilocybe_cubensis/How-Did-Psilocybe-cubensis-Gain-Popularity.jpg" alt="Comment Le Psilocybe Cubensis A-T-Il Gagné En Popularité ?" width="800" height="400"></figure><p><strong>Dépression</strong></p><p>Les études cliniques menées à ce jour suggèrent que la psilocybine pourrait être efficace dans le traitement de la dépression, notamment les formes résistantes aux antidépresseurs. Dans une étude publiée en 2020, des chercheurs ont constaté que la psilocybine, administrée en deux doses espacées de deux semaines, entraînait une amélioration significative des symptômes de la dépression chez 71 % des patients, contre 28 % dans le groupe placebo. Ces effets bénéfiques étaient encore perceptibles six mois après le traitement.</p><p><strong>Trouble de stress post-traumatique (TSPT)</strong></p><p>La psilocybine pourrait également être efficace dans le traitement du TSPT, un trouble qui peut être très invalidant. Dans une étude publiée en 2021, des chercheurs ont constaté que la psilocybine, administrée en deux doses espacées de deux semaines, entraînait une amélioration significative des symptômes du TSPT chez 67 % des patients, contre 32 % dans le groupe placebo. Ces effets bénéfiques étaient encore perceptibles un an après le traitement.</p><p><strong>Addiction</strong></p><p>La psilocybine pourrait également être efficace dans le traitement de l\'addiction, notamment à l\'alcool et au tabac. Dans une étude publiée en 2021, des chercheurs ont constaté que la psilocybine, administrée en une dose unique, entraînait une réduction significative de la consommation d\'alcool chez les patients alcoolodépendants. Ces effets bénéfiques étaient encore perceptibles six mois après le traitement.</p><p><strong>Autres troubles</strong></p><p>La psilocybine pourrait également être efficace dans le traitement d\'autres troubles psychiatriques, tels que la schizophrénie, l\'anxiété sociale et le trouble obsessionnel-compulsif. Cependant, des recherches supplémentaires sont nécessaires pour confirmer ces effets.</p><p><strong>Mécanisme d\'action</strong></p><p>Les mécanismes d\'action de la psilocybine dans le traitement des maladies psychiatriques ne sont pas encore entièrement compris. Cependant, il est probable que la psilocybine exerce ses effets en modulant l\'activité des neurotransmetteurs impliqués dans la régulation de l\'humeur, de l\'anxiété et de la douleur.</p><p><strong>Sécurité</strong></p><p>La psilocybine est généralement considérée comme une substance sûre, avec un faible risque de complications graves. Cependant, comme tout médicament, la psilocybine peut entraîner des effets indésirables, tels que des nausées, des vomissements, des vertiges, des anxiété et des hallucinations. Ces effets indésirables sont généralement transitoires et disparaissent d\'eux-mêmes.</p><p><strong>Conclusion</strong></p><p>Les études cliniques menées à ce jour suggèrent que la psilocybine pourrait être une nouvelle option thérapeutique prometteuse pour le traitement de diverses maladies psychiatriques. Cependant, des recherches supplémentaires sont nécessaires pour confirmer ces effets et pour déterminer la meilleure façon d\'utiliser la psilocybine à des fins thérapeutiques.</p>','Psilocybe étudiée pour ses potentialités thérapeutiques',NULL,2),
	 (87,'2023-11-30 09:11:14.509249','<p>L\'automne est la saison des champignons, et de nombreux amateurs se lancent à la cueillette. Pour les aider à identifier les différentes espèces, de nombreuses applications de reconnaissance sur smartphone sont disponibles. Cependant, il est important de les utiliser avec prudence.</p><p>Ces applications fonctionnent en général en utilisant une base de données de photos de champignons. Lorsque l\'utilisateur prend une photo d\'un champignon, l\'application compare la photo à la base de données pour tenter d\'identifier l\'espèce.</p><p>Cependant, ces applications ne sont pas toujours fiables. En effet, la base de données peut ne pas être à jour, ou les photos peuvent ne pas être de bonne qualité. De plus, certaines espèces de champignons peuvent être très similaires, ce qui peut rendre difficile leur identification.</p><p>En conséquence, il est important de ne pas se fier uniquement aux applications de reconnaissance pour identifier les champignons. Il est toujours préférable de demander l\'avis d\'un expert, comme un mycologue.</p><p>Voici quelques conseils pour utiliser les applications de reconnaissance des champignons de manière sûre :</p><figure class="image image-style-side"><img style="aspect-ratio:623/466;" src="https://www.sciencesetavenir.fr/assets/img/2023/09/04/cover-r4x3w1200-64f5b06036ad9-058-2546468.jpg" alt="Récolte de Cèpes d\'été (Boletus reticulatus) en Lorraine, France" width="623" height="466"></figure><ul><li><strong>Utilisez une application de bonne qualité.</strong> Il existe de nombreuses applications de reconnaissance des champignons sur le marché. Avant de choisir une application, prenez le temps de lire les avis des utilisateurs.</li><li><strong>Prenez des photos de bonne qualité.</strong> Les photos doivent être nettes et bien éclairées. Il est préférable de prendre la photo de face, avec un arrière-plan neutre.</li><li><strong>Comparez les résultats de plusieurs applications.</strong> Si plusieurs applications identifient le même champignon, il est plus probable que l\'identification soit correcte.</li><li><strong>Ne vous fiez pas uniquement aux applications.</strong> Demandez l\'avis d\'un expert si vous avez des doutes.</li></ul><p>En suivant ces conseils, vous pourrez réduire le risque d\'intoxication.</p><p>&nbsp;</p>','Saison des champignons : attention aux applications de reconnaissance sur smartphone',NULL,24),
	 (88,'2023-11-30 09:15:07.244386','<p>L\'amadouvier, un champignon commun dans l\'hémisphère nord, est connu depuis la préhistoire pour ses propriétés allume-feu. Il est également utilisé en médecine, comme pansement ou compresse, et dans la fabrication de certains vêtements ou objets décoratifs.</p><figure class="image image-style-side"><img style="aspect-ratio:623/466;" src="https://www.sciencesetavenir.fr/assets/img/2023/02/22/cover-r4x3w1200-63f5eb9d24bc9-058-2442507.jpg" alt="Fomes Fomentarius" width="623" height="466"></figure><p>Une équipe de chercheurs finlandais, allemands et néerlandais a récemment publié une étude dans la revue Science Advances, dans laquelle ils étudient en détail la structure de l\'amadouvier. Ils ont découvert que ce champignon possède des propriétés uniques qui pourraient le rendre intéressant pour la fabrication de biomatériaux.</p><p>En effet, l\'amadouvier est composé de fibres de cellulose et de lignine, qui sont des matériaux naturels biodégradables. Ces fibres sont disposées de manière à former une structure très résistante et légère. De plus, l\'amadouvier est capable de se régénérer rapidement, ce qui le rend une ressource durable.</p><p>Les chercheurs estiment que l\'amadouvier pourrait être utilisé pour remplacer certains plastiques, notamment dans les secteurs de l\'emballage, de l\'automobile et de la construction. Il pourrait également être utilisé dans des applications médicales, comme les implants ou les pansements.</p><p>Les recherches sur les biomatériaux à base de champignons sont encore en cours, mais elles ont le potentiel de révolutionner la fabrication de matériaux. En effet, les champignons offrent une alternative durable et renouvelable aux matériaux traditionnels, comme le plastique ou le métal.</p><p><strong>Les avantages des biomatériaux à base de champignons</strong></p><p>Les biomatériaux à base de champignons présentent de nombreux avantages par rapport aux matériaux traditionnels :</p><ul><li><strong>Ils sont biodégradables et non toxiques.</strong></li><li><strong>Ils sont renouvelables et durables.</strong></li><li><strong>Ils sont souvent plus légers et plus résistants que les matériaux traditionnels.</strong></li></ul><p><strong>Les applications potentielles des biomatériaux à base de champignons</strong></p><p>Les biomatériaux à base de champignons pourraient être utilisés dans de nombreuses applications, notamment :</p><ul><li><strong>L\'emballage</strong> : les biomatériaux pourraient être utilisés pour remplacer les plastiques dans les emballages alimentaires, les emballages de produits électroniques, etc.</li><li><strong>L\'automobile</strong> : les biomatériaux pourraient être utilisés pour remplacer les plastiques dans les pièces automobiles, telles que les garnitures intérieures, les pièces de carrosserie, etc.</li><li><strong>La construction</strong> : les biomatériaux pourraient être utilisés pour remplacer les bois, les ciments, etc.</li><li><strong>La médecine</strong> : les biomatériaux pourraient être utilisés pour fabriquer des implants, des pansements, etc.</li></ul><p>Les recherches sur les biomatériaux à base de champignons sont encore en cours, mais elles ont le potentiel de révolutionner la fabrication de matériaux.</p>','Les champignons, matériaux du futur pour remplacer les plastiques ?',NULL,21),
	 (96,'2023-11-21 22:38:38','<h5>Des bolets ?</h5><p>Nous sommes partis chercher quelques champignons ce matin avec un ami, je suis tomb&eacute; sur ceux-ci&nbsp; mais je ne sais pas de quoi il s&#39;agit ? sont-ils comestibles ?</p><p>J&#39;ai donc pris une photo que je partage avec vous !</p><p><img alt="" src="https://cdn-s-www.leprogre.fr/images/810A5F4D-7DDE-4479-B976-7FE23C4AE4F0/MF_contenu/pourquoi-les-champignons-poussent-en-avance-cette-annee-1601015091.jpg" /></p><p>On dirait des bolets mais je n&#39;en sais pas plus, si quelqu&#39;un a une id&eacute;e, mer&ccedil;i par avance.</p>','Quelqu\'un pourrait me dire de quelle espèce il s\'agit ?','2022-03-27 19:17:55',1),
	 (97,'2023-11-20 22:50:20','<h2>De belles girolles ramass&eacute;es aujourd&#39;hui !</h2><p><img alt="" src="https://depuismonhamac.jardiland.com/wp-content/uploads/2020/11/champignons-forets-photo-douverture.jpg" style="height:261px; width:400px" /></p><p>Apr&egrave;s les pluies de septembre les premi&egrave;res girolles sont la, pas en nombre mais un bon d&eacute;but .</p>','Les premières girolles de l\'année','2022-03-27 19:17:55',1),
	 (98,'2023-11-21 12:50:32','<h2>Un beau panier a d&eacute;guster sans mod&eacute;rations</h2><p><img alt="" src="https://cdn-europe1.lanmedia.fr/var/europe1/storage/images/europe1/societe/comment-cuisiner-les-champignons-autrement-quen-poelee-4002224/56225638-1-fre-FR/Comment-cuisiner-les-champignons-autrement-qu-en-poelee.jpg" /></p><p>&nbsp;</p>','Rando samedi je partage quelques photos !','2022-03-27 19:19:52',2),
	 (99,'2023-11-08 20:57:43','<h1>Kit culture de champignons de Paris</h1><p><img alt="" src="https://static.weezbe.com/cmachambre/Images/products/p_2916G_210323171220.jpg" /></p><p>Plutot satisfait du r&eacute;sultat !</p>','Essai d\'un kit de culture','2022-03-27 19:17:55',1),
	 (100,'2023-11-20 08:14:23','<p><img alt="" src="https://www.cuisineactuelle.fr/imgre/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Fcac.2F2020.2F01.2F28.2F6b74cc03-eb22-4f32-ae2c-4855f68f90d5.2Ejpeg/748x372/quality/90/crop-from/center/filet-de-sandre-a-la-creme-de-morilles.jpeg" /></p><ol><li>Rincez soigneusement les morilles. Pelez et &eacute;mincez l&rsquo;ail. Faites chauffer 15 g de beurre dans une po&ecirc;le, ajoutez les morilles et l&rsquo;ail et faites-les cuire pendant 10 minutes en m&eacute;langeant souvent.</li><li>Versez la cr&egrave;me, salez, poivrez, incorporez la ciboulette cisel&eacute;e et poursuivez la cuisson 5 minutes.</li><li>Pendant ce temps, faites chauffer l&rsquo;huile et le reste de beurre dans une po&ecirc;le ; Farinez l&eacute;g&egrave;rement les filets de sandre puis faites-les cuire 3 &agrave; 4 min de chaque c&ocirc;t&eacute; en les arrosant avec la mati&egrave;re grasse tout au long de la cuisson.</li><li>D&eacute;posez les filets de sandre dans chaque assiette, nappez avec la sauce aux morilles et servez.</li></ol>','Filet de sandre à la crème de morilles','2022-03-27 19:17:55',1),
	 (101,'2023-11-24 19:56:38','<h2>Bonjour</h2><p><strong>j&#39;ai cueilli ce champignon </strong></p><p><strong><img alt="" src="https://cdn-s-www.estrepublicain.fr/images/6FBBB4A0-E1E7-4FDC-BFF7-0B93B0C8369E/NW_raw/pour-tout-savoir-sur-les-champignons-photo-er-dr-1601558920.jpg" width="250" /></strong></p><p>&nbsp;</p><p>Qu&#39;es-ce que c&#39;est ? Merci</p>','Quel est ce champignon ?','2022-03-27 19:19:52',2),
	 (102,'2023-11-24 06:21:35','<p><br /><img alt="" src="https://img.cuisineaz.com/660x660/2015/09/14/i41153-poelee-de-courgettes-et-champignons-aux-herbes-de-provence.webp" /></p><h2>Ingr&eacute;dients : 4 Pers.</h2><ul><li>3 courgettes</li><li>500 g de champignons</li><li>herbes de Provence</li><li>2 gousses d&#39;ail</li><li>1 oignon</li><li>huile d&#39;olive</li><li>persil</li><li>sel, poivre</li></ul><ol><li>Lavez les courgettes et d&eacute;taillez-les en petits d&eacute;s.</li><li>Nettoyez les champignons et &eacute;mincez-les.</li><li>&Eacute;pluchez les gousses d&rsquo;ail et l&rsquo;oignon, rincez-les et hachez-les finement.</li><li>Dans une po&ecirc;le &agrave; feu vif, versez les courgettes dans l&#39;huile avec les champignons, l&rsquo;oignon, l&rsquo;ail, les herbes de Provence et le persil.</li><li>Faites dorer 10 min, en remuant.</li><li>Salez, poivrez, puis baissez le feu. Poursuivez la cuisson 10 min &agrave; feu doux.</li><li>Servez.</li></ol>','Poêlée de courgettes et champignons aux herbes de provence','2022-03-27 19:17:55',1),
	 (103,'2023-11-25 14:26:00.665756','<figure class="image image-style-side"><img style="aspect-ratio:767/653;" src="https://www.hainaut-developpement.be/wp-content/uploads/2016/12/Champignons.jpg" alt="Hainaut Developpement - Agence de Développement de l\'Economie et de  l\'Environnement de la Province de Hainaut" width="767" height="653"></figure><p>&nbsp;</p><p>Les amanites tue-mouches (Amanita muscaria) sont des champignons toxiques qui contiennent plusieurs substances chimiques toxiques, dont l\'acide iboténique et la muscimol. Ces champignons peuvent présenter des risques sérieux en cas de consommation.</p><p>Voici quelques-uns des risques associés à la consommation d\'amanites tue-mouches :</p><p><strong>Toxicité :</strong> Les amanites tue-mouches sont considérées comme toxiques, et la consommation peut entraîner des symptômes tels que des nausées, des vomissements, des hallucinations, des troubles gastro-intestinaux, des étourdissements et des perturbations du système nerveux central.</p><p><strong>Effets hallucinogènes :</strong> Ces champignons ont des propriétés hallucinogènes en raison des substances psychoactives qu\'ils contiennent. Cependant, les effets ne sont pas prévisibles et peuvent varier d\'une personne à l\'autre. La consommation d\'amanites tue-mouches n\'est pas recommandée à des fins récréatives en raison des risques associés à ces effets.</p><p><strong>Confusion avec d\'autres champignons comestibles :</strong> Les amanites tue-mouches peuvent être confondues avec d\'autres champignons comestibles, ce qui augmente le risque d\'empoisonnement accidentel. Il est important d\'être très compétent en mycologie et de ne jamais consommer un champignon sauvage sans une identification positive par un expert.</p><p><strong>Effets à long terme :</strong> En cas d\'empoisonnement sévère, les effets peuvent aller de convulsions à des problèmes rénaux et hépatiques graves, pouvant entraîner la mort dans les cas extrêmes.</p><p>Il est essentiel de souligner que la consommation d\'amanites tue-mouches n\'est pas recommandée en raison de sa toxicité. Si quelqu\'un suspecte une intoxication aux champignons ou présente des symptômes après la consommation de champignons sauvages, il est impératif de consulter immédiatement un professionnel de la santé ou de contacter un centre antipoison.</p><p>Il est fortement recommandé de ne jamais cueillir ou consommer des champignons sauvages à moins d\'avoir une expertise approfondie en mycologie et de pouvoir identifier en toute sécurité les espèces de champignons.</p>','Les amanites tue-mouches',NULL,2),
	 (104,'2023-11-25 15:07:14.044294','<p>Ce sont des champignons comestibles qui peuvent être cultivés facilement à la maison. Les sacs de culture de pleurotes sont une méthode simple et efficace pour cultiver ces champignons.</p><figure class="image image-style-side"><img style="aspect-ratio:1280/960;" src="https://s.locavor.fr/data/fournisseurs/images/3423/3423-champi-bordelais-1.jpg" alt="" width="1280" height="960"></figure><p>Pour cultiver des pleurotes dans un sac de culture, vous aurez besoin des éléments suivants :</p><ul><li>Un sac de culture de pleurotes</li><li>Un lieu frais et sombre</li><li>Un arrosoir</li></ul><p>Les sacs de culture de pleurotes sont disponibles dans la plupart des magasins de jardinage. Ils contiennent du substrat de culture, qui est un mélange de paille, de céréales et de mycélium de pleurotes.</p><p>Une fois que vous avez votre sac de culture, placez-le dans un lieu frais et sombre. La température idéale pour la culture des pleurotes est de 15 à 20 degrés Celsius.</p><p>Arrosez le sac de culture tous les jours, en veillant à ce que le substrat soit humide mais pas détrempé.</p><p>Les premiers champignons devraient apparaître dans environ deux semaines. Les récoltes suivantes se produiront tous les 7 à 10 jours.</p><p>Voici les étapes à suivre pour cultiver des pleurotes dans un sac de culture :</p><ol><li>Placez le sac de culture dans un lieu frais et sombre.</li><li>Arrosez le sac de culture tous les jours.</li><li>Attendez que les premiers champignons apparaissent, ce qui devrait prendre environ deux semaines.</li><li>Récoltez les champignons en coupant le pied à ras du substrat.</li><li>Continuez à arroser le sac de culture pour obtenir des récoltes supplémentaires.</li></ol><p>Voici quelques conseils pour cultiver des pleurotes dans un sac de culture :</p><ul><li>Utilisez un sac de culture de bonne qualité. Les sacs de culture bon marché peuvent ne pas contenir suffisamment de mycélium, ce qui peut réduire le rendement.</li><li>Placez le sac de culture dans un endroit où il ne sera pas exposé à la lumière directe du soleil. La lumière du soleil peut inhiber la croissance des champignons.</li><li>Arrosez le sac de culture régulièrement, mais ne le laissez pas détremper. Un substrat trop humide peut favoriser la croissance de moisissures.</li><li>Récoltez les champignons lorsque leurs chapeaux sont encore fermés. Les champignons ouverts seront moins savoureux.</li></ul><p>Avec un peu de soin, vous pourrez cultiver vos propres pleurotes frais et savoureux en toute simplicité.</p>','Pleurotes sac de culture',NULL,1),
	 (105,'2023-11-25 15:22:41.511631','<p>Première fois que je vois ça , quelqu\'un a une idée !!</p><figure class="image"><img src="data:image/png;base64iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII=" alt="Le Phallus indusiatus porte fièrement une jupe en dentelle" srcset="https://cherry.img.pmdstatic.net/scale/https.3A.2F.2Fimg.2Emaxisciences.2Ecom.2Farticle.2Fchampignon.2Fle-phallus-indusiatus-porte-fierement-une-jupe-en-dentelle_eba4f3ff6551e39900fe09a72714b75aae40952e.2Ejpg/autox450/quality/80/le-phallus-indusiatus-porte-fierement-une-jupe-en-dentelle.jpg 1x, https://cherry.img.pmdstatic.net/scale/https.3A.2F.2Fimg.2Emaxisciences.2Ecom.2Farticle.2Fchampignon.2Fle-phallus-indusiatus-porte-fierement-une-jupe-en-dentelle_eba4f3ff6551e39900fe09a72714b75aae40952e.2Ejpg/autox900/quality/80/le-phallus-indusiatus-porte-fierement-une-jupe-en-dentelle.jpg 2x" sizes="100vw"></figure>','HELP !!!!',NULL,24);


----
---- Déchargement des données de la table FORUM CATEGORY / FORUM SUBJECT
----
INSERT IGNORE INTO forum_category_forum_subject_entities (forum_category_id,forum_subject_entities_id) VALUES
	 (4,10),
	 (4,14),
	 (4,29),
	 (8,30),
	 (4,55),
	 (9,55),
	 (4,57),
	 (5,57),
	 (10,58),
	 (9,59),
	 (4,87),
	 (6,87),
	 (10,88);


----
---- Déchargement des données de la table FORUM COMMENTARY
----
INSERT IGNORE INTO forum_commentary (
		id,
		commentary,
		created_at,
		updated_at,
		forum_subject_id,
		user_id
	)
VALUES (
		15,
		'<h2>Hello !</h2><p>c''est bien des bolets mais perso j''aimais trouvé dans ma région j''espère que quelqu''un t''en dira plus, en tous cas joli photo.</p>',
		'2023-11-12 20:56:49',
		NULL,
		10,
		2
	),
	(
		16,
		'<p>C''est pas des cèpes de Bordeaux.</p>',
		'2023-11-01 20:56:49',
		NULL,
		10,
		2
	),
	(
		18,
		'<p>On dirait des armilliaires, un champignon saprophite (se nourrit en d&eacute;gradant le bois). Ne pas de les consommer !</p>',
		'2023-11-15 20:56:49',
		NULL,
		29,
		1
	),
	(
		19,
		'<p>On dirait des armilliaires, un champignon saprophyte (se nourrit en dégradant le bois). Ne pas les consommer !</p>
',
		'2023-11-18 20:56:49',
		NULL,
		30,
		2
	),
	(
		23,
		'<p>Super !!!</p>',
		'2023-11-20 20:56:49',
		NULL,
		11,
		1
	),
	(
		24,
		'Je suis très intéressé par les recherches sur l''amadouvier en tant que biomatériau. Ce matériau naturel présente de nombreux avantages par rapport aux plastiques synthétiques, notamment sa résistance mécanique, sa légèreté, sa biodégradabilité et ses propriétés antibactériennes.
',
		'2023-11-25 20:56:49',
		NULL,
		88,
		1
	),
	(
		25,
		'Je pense que l''amadouvier a le potentiel de révolutionner de nombreux secteurs, notamment l''emballage, l''automobile et l''électronique. Je suis impatient de voir comment les progrès de la recherche et du développement permettront de rendre l''amadouvier plus accessible et plus utilisable.
',
		'2023-11-26 20:56:49',
		NULL,
		88,
		2
	),
	(
		26,
		'En plus des applications mentionnées dans les autres commentaires, je pense que l''amadouvier pourrait également être utilisé dans la construction, la médecine et la mode. C''est un matériau polyvalent qui pourrait avoir un impact positif sur notre société.
',
		'2023-11-27 20:56:49',
		NULL,
		88,
		21
	),
	(
		30,
		'<p><strong>L''ombre des ressemblances : La fiabilité des applications de reconnaissance en question !</strong></p>Les applications de reconnaissance des champignons peuvent être trompeuses en raison de ressemblances subtiles entre les espèces. Mieux vaut ne pas se fier uniquement à ces applications et consulter un mycologue pour une identification sûre.
',
		'2023-12-03 10:15:39.697003',
		NULL,
		87,
		21
	),
	(
		31,
		'<p><strong>Chassez le doute : Utilisez plusieurs applications pour plus de fiabilité !</strong></p>Ne laissez pas le doute s''installer. Utilisez plusieurs applications de reconnaissance pour identifier un champignon. Si plusieurs sources concordent, vous avez plus de chances d''obtenir une identification précise.
',
		'2023-12-03 10:18:32.349909',
		NULL,
		87,
		2
	),
	(
		33,
		'<p><strong>Prudence avant tout : Votre sécurité d''abord avec les applications de reconnaissance des champignons !</strong></p><p>Priorisez votre sécurité en suivant des conseils pratiques : choisissez des applications bien notées, prenez des photos de qualité, comparez les résultats et, surtout, consultez un expert si vous avez des doutes. Votre santé est primordiale.</p>
',
		'2023-12-03 15:38:43.693411',
		NULL,
		87,
		1
	),
	(
		34,
		'<p><strong>Cueillette prudente : Les applications de reconnaissance des champignons ne font pas tout !</strong></p><p>Bien que les applications de reconnaissance soient utiles, ne les considérez pas comme une source infaillible. Optez pour une cueillette prudente en combinant l''expertise des applications avec l''avis d''un professionnel en mycologie.</p>
',
		'2023-12-03 15:44:53.701874',
		NULL,
		87,
		21
	),
	(
		35,
		'<h2>Hello !</h2><p>c''est bien des bolets mais perso j''aimais trouvé dans ma région j''espère que quelqu''un t''en dira plus, en tous cas joli photo.</p>
',
		'2023-11-12 20:56:49',
		NULL,
		10,
		2
	),
	(
		36,
		'<p>C''est pas des cèpes de Bordeaux.</p>
',
		'2023-11-01 20:56:49',
		NULL,
		10,
		2
	),
	(
		37,
		'<p>On dirait des armilliaires, un champignon saprophyte (se nourrit en dégradant le bois). Ne pas les consommer !</p>
',
		'2023-11-15 20:56:49',
		NULL,
		29,
		1
	),
	(
		38,
		'<p>Une très bonne idée et facile à réaliser néanmoins, vu la quantité de légumes, je préconiserai de les dorer séparément puis de tous les mélanger dans un second temps.</p>
',
		'2023-11-18 20:56:49',
		NULL,
		30,
		2
	),
	(
		39,
		'<p>Passionnante découverte sur les propriétés étonnantes de l''amadouvier !&nbsp;</p><p>Les champignons ne cessent de nous surprendre par leur polyvalence. Remplacer certains plastiques par ce biomatériau durable pourrait être une avancée majeure dans la lutte contre la pollution. Imaginer des emballages, des pièces automobiles et même des implants médicaux fabriqués à partir de cette ressource renouvelable est tout simplement fascinant. Espérons que ces recherches ouvriront la voie à une utilisation plus large de biomatériaux dans divers secteurs.</p>',
		'2024-01-01 12:03:35.517256',
		NULL,
		88,
		27
	),
	(
		40,
		'<p>Je suis vraiment <strong>fasciné </strong>par les avancées dans la recherche sur les<i> biomatériaux à base de champignons</i>, en particulier l''amadouvier. Cette étude ouvre des perspectives passionnantes pour des solutions durables dans divers secteurs. Imaginez un futur où nos emballages, nos voitures et même nos implants médicaux sont fabriqués à partir de ressources renouvelables comme l''amadouvier. La nature continue de nous offrir des solutions innovantes pour construire un avenir plus respectueux de l''environnement.</p>',
		'2024-01-01 12:04:54.017141',
		NULL,
		88,
		25
	),
	(
		41,
		'<p>La découverte des propriétés uniques de l''amadouvier est tout simplement incroyable !&nbsp;</p><p>Cela souligne à quel point la nature est une source inépuisable d''inspiration et de solutions. J''espère vraiment voir ces biomatériaux à base de champignons jouer un rôle majeur dans la réduction de notre dépendance aux plastiques. C''est un pas de plus vers un mode de vie plus durable et respectueux de notre planète.</p>',
		'2024-01-01 12:07:15.310391',
		NULL,
		88,
		26
	);


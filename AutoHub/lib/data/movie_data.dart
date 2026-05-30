import 'package:autohub/models/movie.dart';

var movieList = [
  Movie(
    title: 'Toy Story',
    genre: 'Animation, Family',
    director: 'John Lasseter',
    description:
        'Toy Story menceritakan kehidupan rahasia mainan yang hidup ketika manusia tidak ada. '
        'Woody, boneka koboi setia, harus menghadapi kecemburuan dan konflik ketika Buzz Lightyear '
        'hadir sebagai mainan baru favorit. Film ini mengajarkan persahabatan, penerimaan, dan arti loyalitas.',
    releaseDate: DateTime(1995, 11, 22),
    duration: '81 menit',
    ageRating: 'Semua Umur',
    posterAsset: 'images/toy_story.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Finding Nemo',
    genre: 'Animation, Adventure',
    director: 'Andrew Stanton',
    description:
        'Finding Nemo mengikuti perjalanan Marlin, seekor ikan badut yang terlalu protektif, '
        'dalam pencarian anaknya Nemo yang tertangkap penyelam. '
        'Petualangan lintas samudra ini sarat pesan tentang keberanian, keluarga, dan kepercayaan.',
    releaseDate: DateTime(2003, 5, 30),
    duration: '100 menit',
    ageRating: 'Semua Umur',
    posterAsset: 'images/finding_nemo.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Up',
    genre: 'Animation, Adventure',
    director: 'Pete Docter',
    description:
        'Up menceritakan Carl Fredricksen, seorang kakek yang mengikat ribuan balon ke rumahnya '
        'untuk mewujudkan mimpi mendiang istrinya. Tanpa disangka, ia ditemani bocah pramuka bernama Russell. '
        'Film ini penuh emosi, humor, dan makna tentang kehilangan serta harapan.',
    releaseDate: DateTime(2009, 5, 29),
    duration: '96 menit',
    ageRating: 'Semua Umur',
    posterAsset: 'images/up.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Frozen',
    genre: 'Animation, Fantasy',
    director: 'Chris Buck',
    description:
        'Frozen mengisahkan Elsa, ratu dengan kekuatan es yang tak terkendali, dan adiknya Anna '
        'yang berusaha menyelamatkan kerajaan Arendelle dari musim dingin abadi. '
        'Cerita ini menekankan arti cinta keluarga dan penerimaan diri.',
    releaseDate: DateTime(2013, 11, 27),
    duration: '102 menit',
    ageRating: 'Semua Umur',
    posterAsset: 'images/frozen.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'The Lion King',
    genre: 'Animation, Drama',
    director: 'Roger Allers',
    description:
        'The Lion King menceritakan perjalanan Simba, seekor singa muda pewaris takhta, '
        'yang harus menghadapi pengkhianatan, kehilangan, dan tanggung jawab sebagai raja. '
        'Film ini dikenal dengan pesan kehidupan dan siklus alam.',
    releaseDate: DateTime(1994, 6, 15),
    duration: '88 menit',
    ageRating: 'Semua Umur',
    posterAsset: 'images/lion_king.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Avengers: Endgame',
    genre: 'Action, Sci-Fi',
    director: 'Anthony & Joe Russo',
    description:
        'Avengers: Endgame adalah puncak perjalanan panjang Marvel Cinematic Universe. '
        'Para Avengers yang tersisa berusaha membalikkan kehancuran akibat Thanos. '
        'Film ini penuh aksi, emosi, dan pengorbanan para pahlawan.',
    releaseDate: DateTime(2019, 4, 26),
    duration: '181 menit',
    ageRating: '13+',
    posterAsset: 'images/avengers_endgame.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Iron Man',
    genre: 'Action, Sci-Fi',
    director: 'Jon Favreau',
    description:
        'Iron Man memperkenalkan Tony Stark, seorang jenius miliarder yang menciptakan '
        'baju besi canggih setelah mengalami penculikan. '
        'Film ini menjadi awal era baru film superhero modern.',
    releaseDate: DateTime(2008, 5, 2),
    duration: '126 menit',
    ageRating: '13+',
    posterAsset: 'images/iron_man.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Captain America: Civil War',
    genre: 'Action',
    director: 'Anthony & Joe Russo',
    description:
        'Civil War menggambarkan konflik ideologi antar Avengers terkait regulasi pemerintah. '
        'Pertarungan antara Captain America dan Iron Man memecah tim pahlawan. '
        'Film ini menyoroti dilema moral dan konsekuensi pilihan.',
    releaseDate: DateTime(2016, 5, 6),
    duration: '147 menit',
    ageRating: '13+',
    posterAsset: 'images/civil_war.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Spider-Man: No Way Home',
    genre: 'Action, Fantasy',
    director: 'Jon Watts',
    description:
        'Spider-Man: No Way Home menghadirkan krisis multiverse setelah identitas Peter Parker terbongkar. '
        'Musuh dari semesta lain muncul, memaksa Peter mengambil keputusan besar. '
        'Film ini sarat nostalgia dan pengorbanan.',
    releaseDate: DateTime(2021, 12, 17),
    duration: '148 menit',
    ageRating: '13+',
    posterAsset: 'images/no_way_home.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Inception',
    genre: 'Sci-Fi, Thriller',
    director: 'Christopher Nolan',
    description:
        'Inception mengisahkan pencuri profesional yang memasuki alam mimpi untuk mencuri rahasia. '
        'Misi terakhirnya adalah menanamkan ide ke dalam pikiran target. '
        'Film ini terkenal dengan alur kompleks dan visual inovatif.',
    releaseDate: DateTime(2010, 7, 16),
    duration: '148 menit',
    ageRating: '13+',
    posterAsset: 'images/inception.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Interstellar',
    genre: 'Sci-Fi, Drama',
    director: 'Christopher Nolan',
    description:
        'Interstellar menceritakan perjalanan manusia menjelajahi luar angkasa '
        'untuk mencari planet baru demi kelangsungan hidup umat manusia. '
        'Film ini menggabungkan sains, emosi, dan hubungan keluarga.',
    releaseDate: DateTime(2014, 11, 7),
    duration: '169 menit',
    ageRating: '13+',
    posterAsset: 'images/interstellar.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'The Dark Knight',
    genre: 'Action, Crime',
    director: 'Christopher Nolan',
    description:
        'The Dark Knight memperlihatkan Batman menghadapi Joker, musuh yang mewakili kekacauan murni. '
        'Pertarungan ini bukan hanya fisik, tetapi juga psikologis dan moral. '
        'Film ini dianggap salah satu film superhero terbaik sepanjang masa.',
    releaseDate: DateTime(2008, 7, 18),
    duration: '152 menit',
    ageRating: '13+',
    posterAsset: 'images/dark_knight.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Joker',
    genre: 'Drama, Crime',
    director: 'Todd Phillips',
    description:
        'Joker mengisahkan transformasi Arthur Fleck menjadi simbol kekacauan Gotham. '
        'Film ini menyoroti isu kesehatan mental dan ketimpangan sosial '
        'dengan pendekatan gelap dan realistis.',
    releaseDate: DateTime(2019, 10, 4),
    duration: '122 menit',
    ageRating: '17+',
    posterAsset: 'images/joker.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Parasite',
    genre: 'Drama, Thriller',
    director: 'Bong Joon-ho',
    description:
        'Parasite menceritakan keluarga miskin yang perlahan menyusup ke kehidupan keluarga kaya. '
        'Film ini menyajikan kritik tajam terhadap kesenjangan sosial '
        'dengan alur yang tak terduga.',
    releaseDate: DateTime(2019, 5, 30),
    duration: '132 menit',
    ageRating: '17+',
    posterAsset: 'images/parasite.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Fight Club',
    genre: 'Drama',
    director: 'David Fincher',
    description:
        'Fight Club mengisahkan pria dengan gangguan identitas yang membentuk klub pertarungan ilegal. '
        'Film ini mengeksplorasi konsumerisme, maskulinitas, dan krisis identitas modern.',
    releaseDate: DateTime(1999, 10, 15),
    duration: '139 menit',
    ageRating: '17+',
    posterAsset: 'images/fight_club.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Forrest Gump',
    genre: 'Drama',
    director: 'Robert Zemeckis',
    description:
        'Forrest Gump mengisahkan perjalanan hidup seorang pria sederhana dengan kecerdasan terbatas '
        'yang secara tidak sengaja terlibat dalam berbagai peristiwa penting sejarah Amerika. '
        'Film ini menyampaikan pesan ketulusan, cinta, dan arti kesuksesan sejati.',
    releaseDate: DateTime(1994, 7, 6),
    duration: '142 menit',
    ageRating: '13+',
    posterAsset: 'images/forrest_gump.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'The Shawshank Redemption',
    genre: 'Drama',
    director: 'Frank Darabont',
    description:
        'The Shawshank Redemption mengikuti persahabatan dua narapidana yang bertahan '
        'dalam kerasnya kehidupan penjara. Melalui harapan dan ketekunan, '
        'film ini menggambarkan makna kebebasan sejati.',
    releaseDate: DateTime(1994, 9, 23),
    duration: '144 menit',
    ageRating: '13+',
    posterAsset: 'images/shawshank_redemption.jpg',
    imageUrls: [],
    isFavorite: false,
  ),

  Movie(
    title: 'The Matrix',
    genre: 'Sci-Fi, Action',
    director: 'The Wachowskis',
    description:
        'The Matrix mengungkap kenyataan pahit bahwa dunia yang dikenal manusia '
        'hanyalah simulasi ciptaan mesin. Neo, seorang peretas, harus memilih '
        'antara hidup dalam kebohongan atau menghadapi kebenaran.',
    releaseDate: DateTime(1999, 3, 31),
    duration: '136 menit',
    ageRating: '13+',
    posterAsset: 'images/matrix.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Saving Private Ryan',
    genre: 'War, Drama',
    director: 'Steven Spielberg',
    description:
        'Saving Private Ryan menggambarkan misi sekelompok tentara Amerika '
        'yang ditugaskan menyelamatkan satu prajurit di tengah Perang Dunia II. '
        'Film ini dikenal dengan penggambaran perang yang realistis dan emosional.',
    releaseDate: DateTime(1998, 7, 24),
    duration: '169 menit',
    ageRating: '17+',
    posterAsset: 'images/saving_private_ryan.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Titanic',
    genre: 'Drama, Romance',
    director: 'James Cameron',
    description:
        'Titanic mengisahkan kisah cinta antara Jack dan Rose yang berasal dari latar belakang berbeda '
        'di atas kapal megah RMS Titanic. Ketika tragedi tak terelakkan terjadi, '
        'cinta mereka diuji oleh pengorbanan dan takdir.',
    releaseDate: DateTime(1997, 12, 19),
    duration: '195 menit',
    ageRating: '13+',
    posterAsset: 'images/titanic.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'The Godfather',
    genre: 'Crime, Drama',
    director: 'Francis Ford Coppola',
    description:
        'The Godfather menggambarkan kehidupan keluarga mafia Corleone yang dipimpin Don Vito. '
        'Film ini menyoroti kekuasaan, kesetiaan, dan konflik keluarga '
        'dalam dunia kriminal yang penuh intrik.',
    releaseDate: DateTime(1972, 3, 24),
    duration: '175 menit',
    ageRating: '17+',
    posterAsset: 'images/godfather.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'The Godfather Part II',
    genre: 'Crime, Drama',
    director: 'Francis Ford Coppola',
    description:
        'The Godfather Part II melanjutkan kisah keluarga Corleone dengan dua alur waktu. '
        'Film ini memperlihatkan masa muda Vito Corleone dan '
        'transformasi Michael sebagai pemimpin mafia yang dingin.',
    releaseDate: DateTime(1974, 12, 20),
    duration: '202 menit',
    ageRating: '17+',
    posterAsset: 'images/godfather_2.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Pulp Fiction',
    genre: 'Crime, Drama',
    director: 'Quentin Tarantino',
    description:
        'Pulp Fiction menyajikan cerita kriminal dengan struktur non-linear '
        'yang menghubungkan beberapa karakter unik. '
        'Dialog tajam dan gaya khas Tarantino menjadikan film ini ikonik.',
    releaseDate: DateTime(1994, 10, 14),
    duration: '154 menit',
    ageRating: '17+',
    posterAsset: 'images/pulp_fiction.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'The Prestige',
    genre: 'Drama, Mystery',
    director: 'Christopher Nolan',
    description:
        'The Prestige mengikuti persaingan dua pesulap ambisius '
        'yang rela mengorbankan segalanya demi menciptakan ilusi sempurna. '
        'Film ini penuh kejutan dan permainan psikologis.',
    releaseDate: DateTime(2006, 10, 20),
    duration: '130 menit',
    ageRating: '13+',
    posterAsset: 'images/prestige.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'La La Land',
    genre: 'Drama, Musical',
    director: 'Damien Chazelle',
    description:
        'La La Land menceritakan kisah cinta antara musisi jazz dan aktris muda '
        'yang berjuang mengejar mimpi di Los Angeles. '
        'Film ini memadukan musik, romansa, dan realitas kehidupan.',
    releaseDate: DateTime(2016, 12, 9),
    duration: '128 menit',
    ageRating: '13+',
    posterAsset: 'images/la_la_land.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'The Social Network',
    genre: 'Drama, Biography',
    director: 'David Fincher',
    description:
        'The Social Network mengisahkan awal mula berdirinya Facebook '
        'dan konflik hukum yang menyertainya. '
        'Film ini menyoroti ambisi, persaingan, dan dampak teknologi.',
    releaseDate: DateTime(2010, 10, 1),
    duration: '120 menit',
    ageRating: '13+',
    posterAsset: 'images/social_network.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Django Unchained',
    genre: 'Western, Drama',
    director: 'Quentin Tarantino',
    description:
        'Django Unchained mengikuti seorang budak yang dibebaskan '
        'dan menjadi pemburu hadiah untuk menyelamatkan istrinya. '
        'Film ini menyajikan aksi brutal dan kritik sosial.',
    releaseDate: DateTime(2012, 12, 25),
    duration: '165 menit',
    ageRating: '17+',
    posterAsset: 'images/django_unchained.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Mad Max: Fury Road',
    genre: 'Action',
    director: 'George Miller',
    description:
        'Mad Max: Fury Road menyajikan kejar-kejaran tanpa henti '
        'di dunia pasca-apokaliptik. '
        'Film ini dikenal dengan aksi praktikal dan visual spektakuler.',
    releaseDate: DateTime(2015, 5, 15),
    duration: '120 menit',
    ageRating: '17+',
    posterAsset: 'images/mad_max_fury_road.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'The Silence of the Lambs',
    genre: 'Thriller, Crime',
    director: 'Jonathan Demme',
    description:
        'The Silence of the Lambs mengikuti agen FBI muda yang bekerja sama '
        'dengan pembunuh berantai cerdas untuk menangkap pelaku lain. '
        'Film ini terkenal dengan ketegangan psikologis yang mendalam.',
    releaseDate: DateTime(1991, 2, 14),
    duration: '118 menit',
    ageRating: '17+',
    posterAsset: 'images/silence_of_the_lambs.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Se7en',
    genre: 'Crime, Thriller',
    director: 'David Fincher',
    description:
        'Se7en menceritakan dua detektif yang memburu pembunuh berantai '
        'yang menggunakan tujuh dosa mematikan sebagai motif kejahatannya. '
        'Film ini dikenal dengan atmosfer gelap dan akhir yang mengejutkan.',
    releaseDate: DateTime(1995, 9, 22),
    duration: '127 menit',
    ageRating: '17+',
    posterAsset: 'images/se7en.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'The Green Mile',
    genre: 'Drama, Fantasy',
    director: 'Frank Darabont',
    description:
        'The Green Mile mengisahkan penjaga penjara yang bertemu narapidana '
        'dengan kemampuan penyembuhan luar biasa. '
        'Film ini menyentuh tema kemanusiaan, keadilan, dan keajaiban.',
    releaseDate: DateTime(1999, 12, 10),
    duration: '189 menit',
    ageRating: '13+',
    posterAsset: 'images/green_mile.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Shutter Island',
    genre: 'Thriller, Mystery',
    director: 'Martin Scorsese',
    description:
        'Shutter Island mengikuti penyelidikan seorang marshal AS '
        'di rumah sakit jiwa terpencil. '
        'Seiring berjalannya waktu, kenyataan dan ilusi mulai bercampur.',
    releaseDate: DateTime(2010, 2, 19),
    duration: '138 menit',
    ageRating: '17+',
    posterAsset: 'images/shutter_island.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Gone Girl',
    genre: 'Thriller, Drama',
    director: 'David Fincher',
    description:
        'Gone Girl mengungkap misteri hilangnya seorang istri '
        'yang menyeret suaminya ke pusaran kecurigaan publik. '
        'Film ini mengeksplorasi manipulasi, media, dan hubungan toxic.',
    releaseDate: DateTime(2014, 10, 3),
    duration: '149 menit',
    ageRating: '17+',
    posterAsset: 'images/gone_girl.jpg',
    imageUrls: [],
    isFavorite: false,
  ),

  Movie(
    title: 'A Beautiful Mind',
    genre: 'Drama, Biography',
    director: 'Ron Howard',
    description:
        'A Beautiful Mind mengisahkan kehidupan matematikawan jenius '
        'yang berjuang melawan skizofrenia. '
        'Film ini menyoroti cinta, ketekunan, dan kekuatan pikiran.',
    releaseDate: DateTime(2001, 12, 21),
    duration: '135 menit',
    ageRating: '13+',
    posterAsset: 'images/beautiful_mind.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Black Swan',
    genre: 'Drama, Thriller',
    director: 'Darren Aronofsky',
    description:
        'Black Swan mengikuti penari balet yang terobsesi '
        'mencapai kesempurnaan dalam perannya. '
        'Film ini menggambarkan tekanan psikologis dan dualitas diri.',
    releaseDate: DateTime(2010, 12, 17),
    duration: '108 menit',
    ageRating: '17+',
    posterAsset: 'images/black_swan.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Her',
    genre: 'Drama, Romance',
    director: 'Spike Jonze',
    description:
        'Her menceritakan hubungan emosional antara pria kesepian '
        'dan sistem operasi berbasis kecerdasan buatan. '
        'Film ini mengeksplorasi cinta, teknologi, dan kesendirian.',
    releaseDate: DateTime(2013, 12, 18),
    duration: '126 menit',
    ageRating: '13+',
    posterAsset: 'images/her.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Gladiator',
    genre: 'Action, Drama',
    director: 'Ridley Scott',
    description:
        'Gladiator mengisahkan Maximus, seorang jenderal Romawi yang dikhianati '
        'dan dijadikan budak gladiator. Dengan keberanian dan tekad, '
        'ia berjuang menuntut keadilan dan kehormatan yang direnggut darinya.',
    releaseDate: DateTime(2000, 5, 5),
    duration: '155 menit',
    ageRating: '17+',
    posterAsset: 'images/gladiator.jpg',
    imageUrls: [],
    isFavorite: false,
  ),

  Movie(
    title: 'Jurassic Park',
    genre: 'Adventure, Sci-Fi',
    director: 'Steven Spielberg',
    description:
        'Jurassic Park menghadirkan taman hiburan berisi dinosaurus '
        'hasil rekayasa genetika. Ketika sistem gagal, '
        'pengunjung harus bertahan hidup dari makhluk purba yang buas.',
    releaseDate: DateTime(1993, 6, 11),
    duration: '127 menit',
    ageRating: '13+',
    posterAsset: 'images/jurassic_park.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'The Pianist',
    genre: 'Drama, War',
    director: 'Roman Polanski',
    description:
        'The Pianist mengisahkan perjuangan seorang pianis Yahudi '
        'untuk bertahan hidup selama pendudukan Nazi di Polandia. '
        'Film ini menyentuh tentang seni, ketahanan, dan kemanusiaan.',
    releaseDate: DateTime(2002, 9, 24),
    duration: '150 menit',
    ageRating: '17+',
    posterAsset: 'images/the_pianist.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Braveheart',
    genre: 'Action, History',
    director: 'Mel Gibson',
    description:
        'Braveheart menceritakan William Wallace '
        'yang memimpin perlawanan rakyat Skotlandia '
        'melawan penindasan Inggris demi kebebasan.',
    releaseDate: DateTime(1995, 5, 24),
    duration: '178 menit',
    ageRating: '17+',
    posterAsset: 'images/braveheart.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Schindler\'s List',
    genre: 'Drama, History',
    director: 'Steven Spielberg',
    description:
        'Schindler\'s List mengisahkan pengusaha Jerman '
        'yang menyelamatkan ribuan orang Yahudi dari Holocaust. '
        'Film ini merupakan potret kemanusiaan di tengah tragedi.',
    releaseDate: DateTime(1993, 12, 15),
    duration: '195 menit',
    ageRating: '17+',
    posterAsset: 'images/schindlers_list.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Whiplash',
    genre: 'Drama, Music',
    director: 'Damien Chazelle',
    description:
        'Whiplash mengikuti hubungan intens antara murid drum ambisius '
        'dan instruktur musik yang keras. '
        'Film ini menggambarkan obsesi terhadap kesempurnaan.',
    releaseDate: DateTime(2014, 10, 10),
    duration: '107 menit',
    ageRating: '13+',
    posterAsset: 'images/whiplash.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'The Grand Budapest Hotel',
    genre: 'Comedy, Drama',
    director: 'Wes Anderson',
    description:
        'The Grand Budapest Hotel mengisahkan petualangan concierge legendaris '
        'dan murid setianya di sebuah hotel mewah Eropa. '
        'Film ini dikenal dengan visual unik, humor khas, dan cerita penuh intrik.',
    releaseDate: DateTime(2014, 3, 28),
    duration: '99 menit',
    ageRating: '13+',
    posterAsset: 'images/grand_budapest.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Life of Pi',
    genre: 'Adventure, Drama',
    director: 'Ang Lee',
    description:
        'Life of Pi menceritakan seorang pemuda yang terdampar di lautan '
        'bersama seekor harimau Bengal. '
        'Perjalanan ini menjadi refleksi iman, harapan, dan ketahanan hidup.',
    releaseDate: DateTime(2012, 11, 21),
    duration: '127 menit',
    ageRating: '13+',
    posterAsset: 'images/life_of_pi.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Slumdog Millionaire',
    genre: 'Drama, Romance',
    director: 'Danny Boyle',
    description:
        'Slumdog Millionaire mengikuti perjalanan pemuda miskin dari Mumbai '
        'yang mengikuti kuis televisi. '
        'Setiap pertanyaan membuka kisah masa lalunya yang penuh perjuangan.',
    releaseDate: DateTime(2008, 11, 12),
    duration: '120 menit',
    ageRating: '13+',
    posterAsset: 'images/slumdog_millionaire.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'The Imitation Game',
    genre: 'Drama, Biography',
    director: 'Morten Tyldum',
    description:
        'The Imitation Game mengisahkan Alan Turing '
        'yang memimpin tim pemecah kode Nazi selama Perang Dunia II. '
        'Film ini menyoroti kecerdasan, pengorbanan, dan diskriminasi.',
    releaseDate: DateTime(2014, 12, 25),
    duration: '114 menit',
    ageRating: '13+',
    posterAsset: 'images/imitation_game.jpg',
    imageUrls: [],
    isFavorite: false,
  ),

  Movie(
    title: 'Cast Away',
    genre: 'Drama, Adventure',
    director: 'Robert Zemeckis',
    description:
        'Cast Away mengikuti kisah pria yang terdampar di pulau terpencil '
        'setelah kecelakaan pesawat. '
        'Film ini menggambarkan kesepian, harapan, dan ketahanan manusia.',
    releaseDate: DateTime(2000, 12, 22),
    duration: '143 menit',
    ageRating: '13+',
    posterAsset: 'images/cast_away.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'The Departed',
    genre: 'Crime, Thriller',
    director: 'Martin Scorsese',
    description:
        'The Departed mengisahkan permainan kucing dan tikus '
        'antara polisi rahasia dan mafia Boston. '
        'Film ini penuh ketegangan dan pengkhianatan.',
    releaseDate: DateTime(2006, 10, 6),
    duration: '151 menit',
    ageRating: '17+',
    posterAsset: 'images/the_departed.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'No Country for Old Men',
    genre: 'Crime, Thriller',
    director: 'Ethan Coen & Joel Coen',
    description:
        'No Country for Old Men menggambarkan kekerasan brutal '
        'yang dipicu oleh transaksi narkoba yang gagal. '
        'Film ini terkenal dengan atmosfer sunyi dan karakter antagonis ikonik.',
    releaseDate: DateTime(2007, 11, 9),
    duration: '122 menit',
    ageRating: '17+',
    posterAsset: 'images/no_country_for_old_men.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'The Curious Case of Benjamin Button',
    genre: 'Drama, Fantasy',
    director: 'David Fincher',
    description:
        'Benjamin Button menceritakan pria yang menua secara terbalik. '
        'Film ini mengeksplorasi waktu, cinta, dan kefanaan hidup manusia.',
    releaseDate: DateTime(2008, 12, 25),
    duration: '166 menit',
    ageRating: '13+',
    posterAsset: 'images/benjamin_button.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Arrival',
    genre: 'Sci-Fi, Drama',
    director: 'Denis Villeneuve',
    description:
        'Arrival mengikuti ahli bahasa yang berusaha berkomunikasi '
        'dengan makhluk luar angkasa. '
        'Film ini menggabungkan sains, emosi, dan konsep waktu yang unik.',
    releaseDate: DateTime(2016, 11, 11),
    duration: '116 menit',
    ageRating: '13+',
    posterAsset: 'images/arrival.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Blade Runner 2049',
    genre: 'Sci-Fi, Drama',
    director: 'Denis Villeneuve',
    description:
        'Blade Runner 2049 melanjutkan kisah dunia distopia '
        'di mana manusia dan replikan hidup berdampingan. '
        'Seorang blade runner baru menemukan rahasia yang dapat mengubah tatanan dunia.',
    releaseDate: DateTime(2017, 10, 6),
    duration: '164 menit',
    ageRating: '17+',
    posterAsset: 'images/blade_runner_2049.jpg',
    imageUrls: [],
    isFavorite: false,
  ),

  Movie(
    title: 'The Hateful Eight',
    genre: 'Western, Crime',
    director: 'Quentin Tarantino',
    description:
        'The Hateful Eight berlatar badai salju yang menjebak '
        'delapan orang asing dengan motif tersembunyi. '
        'Ketegangan perlahan berubah menjadi kekerasan brutal.',
    releaseDate: DateTime(2015, 12, 30),
    duration: '168 menit',
    ageRating: '17+',
    posterAsset: 'images/hateful_eight.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Once Upon a Time in Hollywood',
    genre: 'Drama, Comedy',
    director: 'Quentin Tarantino',
    description:
        'Once Upon a Time in Hollywood menggambarkan industri film Hollywood '
        'era 1960-an melalui kisah aktor dan stuntman. '
        'Film ini merupakan surat cinta untuk dunia perfilman.',
    releaseDate: DateTime(2019, 7, 26),
    duration: '161 menit',
    ageRating: '17+',
    posterAsset: 'images/once_upon_hollywood.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'The Big Short',
    genre: 'Drama, Biography',
    director: 'Adam McKay',
    description:
        'The Big Short menjelaskan krisis keuangan global 2008 '
        'melalui sudut pandang para investor yang memprediksi kejatuhan pasar. '
        'Film ini edukatif sekaligus satir.',
    releaseDate: DateTime(2015, 12, 11),
    duration: '130 menit',
    ageRating: '13+',
    posterAsset: 'images/the_big_short.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Ford v Ferrari',
    genre: 'Drama, Sport',
    director: 'James Mangold',
    description:
        'Ford v Ferrari menceritakan persaingan sengit '
        'dalam ajang balap Le Mans antara dua raksasa otomotif. '
        'Film ini menyoroti ambisi, persahabatan, dan inovasi.',
    releaseDate: DateTime(2019, 11, 15),
    duration: '152 menit',
    ageRating: '13+',
    posterAsset: 'images/ford_v_ferrari.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: '1917',
    genre: 'War, Drama',
    director: 'Sam Mendes',
    description:
        '1917 mengikuti dua tentara Inggris '
        'yang harus menyampaikan pesan penting di medan perang. '
        'Film ini dikenal dengan teknik pengambilan gambar satu adegan panjang.',
    releaseDate: DateTime(2019, 12, 25),
    duration: '119 menit',
    ageRating: '13+',
    posterAsset: 'images/1917.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Jojo Rabbit',
    genre: 'Comedy, Drama',
    director: 'Taika Waititi',
    description:
        'Jojo Rabbit mengisahkan anak Jerman '
        'yang memiliki teman imajiner Adolf Hitler. '
        'Film ini memadukan satire, humor, dan tragedi perang.',
    releaseDate: DateTime(2019, 10, 18),
    duration: '108 menit',
    ageRating: '13+',
    posterAsset: 'images/jojo_rabbit.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Moonlight',
    genre: 'Drama',
    director: 'Barry Jenkins',
    description:
        'Moonlight menggambarkan perjalanan hidup seorang pria '
        'dari masa kecil hingga dewasa dalam pencarian identitas diri. '
        'Film ini menyentuh isu keluarga, cinta, dan penerimaan.',
    releaseDate: DateTime(2016, 10, 21),
    duration: '111 menit',
    ageRating: '17+',
    posterAsset: 'images/moonlight.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Manchester by the Sea',
    genre: 'Drama',
    director: 'Kenneth Lonergan',
    description:
        'Manchester by the Sea mengisahkan pria tertutup '
        'yang harus menghadapi trauma masa lalu setelah tragedi keluarga. '
        'Film ini penuh emosi dan refleksi mendalam.',
    releaseDate: DateTime(2016, 11, 18),
    duration: '137 menit',
    ageRating: '17+',
    posterAsset: 'images/manchester_by_the_sea.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'The Shape of Water',
    genre: 'Fantasy, Drama',
    director: 'Guillermo del Toro',
    description:
        'The Shape of Water mengisahkan hubungan unik antara seorang wanita bisu '
        'dan makhluk amfibi misterius yang ditahan di laboratorium rahasia. '
        'Film ini menyajikan kisah cinta yang tidak biasa dengan visual artistik.',
    releaseDate: DateTime(2017, 12, 1),
    duration: '123 menit',
    ageRating: '17+',
    posterAsset: 'images/the_shape_of_water.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Gravity',
    genre: 'Sci-Fi, Thriller',
    director: 'Alfonso Cuarón',
    description:
        'Gravity mengikuti perjuangan dua astronot '
        'yang terjebak di luar angkasa setelah kecelakaan fatal. '
        'Film ini menawarkan ketegangan tinggi dan visual spektakuler.',
    releaseDate: DateTime(2013, 10, 4),
    duration: '91 menit',
    ageRating: '13+',
    posterAsset: 'images/gravity.jpg',
    imageUrls: [],
    isFavorite: false,
  ),

  Movie(
    title: 'The Revenant',
    genre: 'Adventure, Drama',
    director: 'Alejandro G. Iñárritu',
    description:
        'The Revenant mengisahkan perjuangan bertahan hidup '
        'seorang pemburu di alam liar yang kejam. '
        'Film ini menampilkan visual alam ekstrem dan balas dendam.',
    releaseDate: DateTime(2015, 12, 25),
    duration: '156 menit',
    ageRating: '17+',
    posterAsset: 'images/the_revenant.jpg',
    imageUrls: [],
    isFavorite: false,
  ),

  Movie(
    title: 'Dune',
    genre: 'Sci-Fi, Adventure',
    director: 'Denis Villeneuve',
    description:
        'Dune mengisahkan Paul Atreides yang terlibat konflik politik dan spiritual '
        'di planet gurun Arrakis. Film ini menampilkan dunia futuristik '
        'dengan intrik kekuasaan dan takdir.',
    releaseDate: DateTime(2021, 10, 22),
    duration: '155 menit',
    ageRating: '13+',
    posterAsset: 'images/dune.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Logan',
    genre: 'Action, Drama',
    director: 'James Mangold',
    description:
        'Logan menggambarkan versi tua Wolverine '
        'yang harus melindungi seorang anak mutan misterius. '
        'Film ini emosional dan menutup kisah Logan dengan kuat.',
    releaseDate: DateTime(2017, 3, 3),
    duration: '137 menit',
    ageRating: '17+',
    posterAsset: 'images/logan.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Coco',
    genre: 'Animation, Family',
    director: 'Lee Unkrich',
    description:
        'Coco mengisahkan Miguel yang tersesat di Dunia Arwah '
        'dan menemukan sejarah keluarganya. '
        'Film ini penuh warna, musik, dan pesan tentang keluarga.',
    releaseDate: DateTime(2017, 11, 22),
    duration: '105 menit',
    ageRating: 'Semua Umur',
    posterAsset: 'images/coco.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Soul',
    genre: 'Animation, Fantasy',
    director: 'Pete Docter',
    description:
        'Soul mengikuti perjalanan seorang guru musik '
        'yang menemukan makna hidup di dunia metafisik. '
        'Film ini menyentuh tema tujuan hidup dan passion.',
    releaseDate: DateTime(2020, 12, 25),
    duration: '100 menit',
    ageRating: 'Semua Umur',
    posterAsset: 'images/soul.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'A Quiet Place',
    genre: 'Horror, Thriller',
    director: 'John Krasinski',
    description:
        'A Quiet Place menggambarkan keluarga '
        'yang bertahan hidup dari makhluk mematikan yang peka suara. '
        'Film ini menegangkan dengan dialog minimal.',
    releaseDate: DateTime(2018, 4, 6),
    duration: '90 menit',
    ageRating: '17+',
    posterAsset: 'images/a_quiet_place.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Get Out',
    genre: 'Horror, Thriller',
    director: 'Jordan Peele',
    description:
        'Get Out mengisahkan kunjungan pria kulit hitam '
        'ke rumah keluarga pacarnya yang menyimpan rahasia mengerikan. '
        'Film ini sarat kritik sosial.',
    releaseDate: DateTime(2017, 2, 24),
    duration: '104 menit',
    ageRating: '17+',
    posterAsset: 'images/get_out.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'The Truman Show',
    genre: 'Drama, Sci-Fi',
    director: 'Peter Weir',
    description:
        'The Truman Show menceritakan pria '
        'yang hidupnya ternyata adalah acara televisi tanpa ia sadari. '
        'Film ini mengkritik media dan kebebasan individu.',
    releaseDate: DateTime(1998, 6, 5),
    duration: '103 menit',
    ageRating: '13+',
    posterAsset: 'images/truman_show.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'The Pursuit of Happyness',
    genre: 'Drama, Biography',
    director: 'Gabriele Muccino',
    description:
        'The Pursuit of Happyness mengisahkan perjuangan '
        'seorang ayah tunggal menghadapi kemiskinan demi masa depan anaknya. '
        'Film ini inspiratif dan emosional.',
    releaseDate: DateTime(2006, 12, 15),
    duration: '117 menit',
    ageRating: 'Semua Umur',
    posterAsset: 'images/pursuit_of_happyness.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Inside Out',
    genre: 'Animation, Family',
    director: 'Pete Docter',
    description:
        'Inside Out menggambarkan emosi dalam pikiran seorang anak '
        'yang harus menghadapi perubahan besar dalam hidupnya. '
        'Film ini edukatif, emosional, dan cocok untuk semua umur.',
    releaseDate: DateTime(2015, 6, 19),
    duration: '95 menit',
    ageRating: 'Semua Umur',
    posterAsset: 'images/inside_out.jpg',
    imageUrls: [],
    isFavorite: false,
  ),

  Movie(
    title: 'The Wolf of Wall Street',
    genre: 'Drama, Biography',
    director: 'Martin Scorsese',
    description:
        'The Wolf of Wall Street menggambarkan kehidupan '
        'pialang saham dengan gaya hidup ekstrem dan penuh skandal. '
        'Film ini satir dan kontroversial.',
    releaseDate: DateTime(2013, 12, 25),
    duration: '180 menit',
    ageRating: '17+',
    posterAsset: 'images/wolf_wall_street.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Catch Me If You Can',
    genre: 'Crime, Drama',
    director: 'Steven Spielberg',
    description:
        'Catch Me If You Can mengikuti penipu muda '
        'yang dikejar agen FBI dalam permainan kucing dan tikus. '
        'Film ini ringan namun cerdas.',
    releaseDate: DateTime(2002, 12, 25),
    duration: '141 menit',
    ageRating: '13+',
    posterAsset: 'images/catch_me_if_you_can.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Big Hero 6',
    genre: 'Animation, Action',
    director: 'Don Hall',
    description:
        'Big Hero 6 menceritakan persahabatan '
        'seorang anak jenius dengan robot Baymax. '
        'Film ini penuh aksi dan kehangatan.',
    releaseDate: DateTime(2014, 11, 7),
    duration: '102 menit',
    ageRating: 'Semua Umur',
    posterAsset: 'images/big_hero_6.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Ratatouille',
    genre: 'Animation, Family',
    director: 'Brad Bird',
    description:
        'Ratatouille mengisahkan tikus bernama Remy '
        'yang bermimpi menjadi koki terkenal di Paris. '
        'Film ini kreatif dan menghibur semua umur.',
    releaseDate: DateTime(2007, 6, 29),
    duration: '111 menit',
    ageRating: 'Semua Umur',
    posterAsset: 'images/ratatouille.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'The Theory of Everything',
    genre: 'Drama, Biography',
    director: 'James Marsh',
    description:
        'The Theory of Everything menceritakan kehidupan '
        'fisikawan Stephen Hawking dan perjuangannya melawan penyakit. '
        'Film ini inspiratif dan menyentuh.',
    releaseDate: DateTime(2014, 11, 7),
    duration: '123 menit',
    ageRating: '13+',
    posterAsset: 'images/theory_of_everything.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Wall-E',
    genre: 'Animation, Sci-Fi',
    director: 'Andrew Stanton',
    description:
        'Wall-E mengikuti robot kecil '
        'yang membersihkan bumi kosong dan menemukan cinta. '
        'Film ini menyampaikan pesan lingkungan dan kemanusiaan.',
    releaseDate: DateTime(2008, 6, 27),
    duration: '98 menit',
    ageRating: 'Semua Umur',
    posterAsset: 'images/walle.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Moana',
    genre: 'Animation, Adventure',
    director: 'Ron Clements & John Musker',
    description:
        'Moana mengisahkan gadis pemberani dari Pulau Motunui '
        'yang berlayar melintasi samudra demi menyelamatkan bangsanya. '
        'Dalam perjalanannya, ia bertemu Maui dan belajar tentang jati diri, '
        'keberanian, serta hubungan manusia dengan alam.',
    releaseDate: DateTime(2016, 11, 23),
    duration: '107 menit',
    ageRating: 'Semua Umur',
    posterAsset: 'images/moana.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'How to Make Millions Before Grandma Dies',
    genre: 'Drama, Family',
    director: 'Pat Boonnitipat',
    description:
        'Film ini menceritakan hubungan cucu dan nenek '
        'yang awalnya dipenuhi kepentingan pribadi. '
        'Seiring waktu, ikatan keluarga tumbuh tulus, '
        'menghadirkan kisah emosional tentang cinta, penyesalan, dan waktu.',
    releaseDate: DateTime(2024, 4, 4),
    duration: '126 menit',
    ageRating: '13+',
    posterAsset: 'images/grandma_dies.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Superman: Man of Steel',
    genre: 'Action, Sci-Fi',
    director: 'Zack Snyder',
    description:
        'Man of Steel mengisahkan asal-usul Clark Kent '
        'sebagai Superman yang harus memilih antara kehidupan manusia '
        'dan takdirnya sebagai penyelamat bumi. '
        'Film ini menampilkan konflik identitas dan pengorbanan.',
    releaseDate: DateTime(2013, 6, 14),
    duration: '143 menit',
    ageRating: '13+',
    posterAsset: 'images/man_of_steel.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'The SpongeBob Movie: Sponge Out of Water',
    genre: 'Animation, Comedy',
    director: 'Paul Tibbitt',
    description:
        'SpongeBob dan teman-temannya meninggalkan Bikini Bottom '
        'untuk petualangan di dunia manusia demi menyelamatkan resep Krabby Patty. '
        'Film ini penuh humor khas SpongeBob dan visual unik.',
    releaseDate: DateTime(2015, 2, 6),
    duration: '92 menit',
    ageRating: 'Semua Umur',
    posterAsset: 'images/spongebob_movie.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Spirited Away',
    genre: 'Animation, Fantasy',
    director: 'Hayao Miyazaki',
    description:
        'Spirited Away mengikuti Chihiro '
        'yang terjebak di dunia roh dan harus bekerja '
        'untuk menyelamatkan orang tuanya. '
        'Film ini kaya imajinasi dan simbolisme.',
    releaseDate: DateTime(2001, 7, 20),
    duration: '125 menit',
    ageRating: 'Semua Umur',
    posterAsset: 'images/spirited_away.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Your Name',
    genre: 'Animation, Romance',
    director: 'Makoto Shinkai',
    description:
        'Your Name menceritakan dua remaja '
        'yang saling bertukar tubuh secara misterius. '
        'Kisah cinta lintas ruang dan waktu ini emosional dan indah.',
    releaseDate: DateTime(2016, 8, 26),
    duration: '106 menit',
    ageRating: '13+',
    posterAsset: 'images/your_name.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Weathering With You',
    genre: 'Animation, Drama',
    director: 'Makoto Shinkai',
    description:
        'Weathering With You mengisahkan remaja '
        'yang bertemu gadis dengan kemampuan mengendalikan cuaca. '
        'Film ini membahas cinta, pengorbanan, dan alam.',
    releaseDate: DateTime(2019, 7, 19),
    duration: '114 menit',
    ageRating: '13+',
    posterAsset: 'images/weathering_with_you.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Demon Slayer: Mugen Train',
    genre: 'Animation, Action',
    director: 'Haruo Sotozaki',
    description:
        'Mugen Train melanjutkan perjalanan Tanjiro '
        'bersama Rengoku menghadapi iblis kuat di kereta misterius. '
        'Film ini terkenal dengan aksi intens dan emosi mendalam.',
    releaseDate: DateTime(2020, 10, 16),
    duration: '117 menit',
    ageRating: '17+',
    posterAsset: 'images/mugen_train.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Suzume',
    genre: 'Animation, Fantasy',
    director: 'Makoto Shinkai',
    description:
        'Suzume mengikuti perjalanan gadis muda '
        'yang menutup pintu-pintu bencana di Jepang. '
        'Film ini memadukan petualangan, kehilangan, dan harapan.',
    releaseDate: DateTime(2022, 11, 11),
    duration: '122 menit',
    ageRating: '13+',
    posterAsset: 'images/suzume.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'One Piece Film: Red',
    genre: 'Animation, Adventure',
    director: 'Goro Taniguchi',
    description:
        'One Piece Film: Red berfokus pada Uta, '
        'penyanyi misterius yang memiliki hubungan dengan Shanks. '
        'Film ini memadukan aksi bajak laut dan musik emosional.',
    releaseDate: DateTime(2022, 8, 6),
    duration: '115 menit',
    ageRating: '13+',
    posterAsset: 'images/one_piece_red.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'A Silent Voice',
    genre: 'Animation, Drama',
    director: 'Naoko Yamada',
    description:
        'A Silent Voice mengisahkan Shoya, mantan perundung '
        'yang berusaha menebus kesalahan masa lalunya kepada Shoko, '
        'gadis tuli yang pernah ia sakiti. Film ini menyentuh tema '
        'penyesalan, empati, dan penerimaan diri.',
    releaseDate: DateTime(2016, 9, 17),
    duration: '130 menit',
    ageRating: '13+',
    posterAsset: 'images/a_silent_voice.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'I Want to Eat Your Pancreas',
    genre: 'Animation, Romance',
    director: 'Shinichiro Ushijima',
    description:
        'Film ini menceritakan persahabatan tak terduga '
        'antara siswa pendiam dan gadis ceria yang mengidap penyakit serius. '
        'Kisahnya penuh emosi tentang kehidupan, cinta, dan kehilangan.',
    releaseDate: DateTime(2018, 9, 1),
    duration: '108 menit',
    ageRating: '13+',
    posterAsset: 'images/pancreas.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'The Girl Who Leapt Through Time',
    genre: 'Animation, Sci-Fi',
    director: 'Mamoru Hosoda',
    description:
        'Film ini mengikuti Makoto, siswi SMA '
        'yang memperoleh kemampuan melompati waktu. '
        'Setiap perubahan membawa konsekuensi emosional '
        'tentang pilihan dan kedewasaan.',
    releaseDate: DateTime(2006, 7, 15),
    duration: '98 menit',
    ageRating: '13+',
    posterAsset: 'images/girl_time.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Wolf Children',
    genre: 'Animation, Family',
    director: 'Mamoru Hosoda',
    description:
        'Wolf Children mengisahkan seorang ibu muda '
        'yang membesarkan dua anak setengah manusia setengah serigala. '
        'Film ini menyentuh tema pengorbanan, keluarga, dan identitas.',
    releaseDate: DateTime(2012, 7, 21),
    duration: '117 menit',
    ageRating: 'Semua Umur',
    posterAsset: 'images/wolf_children.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'The Boy and the Beast',
    genre: 'Animation, Fantasy',
    director: 'Mamoru Hosoda',
    description:
        'Film ini menceritakan persahabatan unik '
        'antara bocah manusia dan makhluk dunia lain '
        'yang saling belajar tentang kekuatan dan tanggung jawab.',
    releaseDate: DateTime(2015, 7, 11),
    duration: '119 menit',
    ageRating: '13+',
    posterAsset: 'images/boy_beast.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Perfect Blue',
    genre: 'Animation, Thriller',
    director: 'Satoshi Kon',
    description:
        'Perfect Blue mengisahkan mantan idol '
        'yang mengalami gangguan psikologis '
        'setelah berganti karier menjadi aktris. '
        'Film ini gelap dan penuh ketegangan psikologis.',
    releaseDate: DateTime(1997, 2, 28),
    duration: '81 menit',
    ageRating: '17+',
    posterAsset: 'images/perfect_blue.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Paprika',
    genre: 'Animation, Sci-Fi',
    director: 'Satoshi Kon',
    description:
        'Paprika berfokus pada teknologi '
        'yang memungkinkan masuk ke alam mimpi. '
        'Batas antara mimpi dan kenyataan perlahan menghilang '
        'dalam visual yang surreal.',
    releaseDate: DateTime(2006, 11, 25),
    duration: '90 menit',
    ageRating: '17+',
    posterAsset: 'images/paprika.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Akira',
    genre: 'Animation, Action',
    director: 'Katsuhiro Otomo',
    description:
        'Akira berlatar Neo-Tokyo pasca kehancuran '
        'dan mengisahkan kekuatan psikis yang tak terkendali. '
        'Film ini menjadi tonggak penting anime modern.',
    releaseDate: DateTime(1988, 7, 16),
    duration: '124 menit',
    ageRating: '17+',
    posterAsset: 'images/akira.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Ghost in the Shell',
    genre: 'Animation, Sci-Fi',
    director: 'Mamoru Oshii',
    description:
        'Film ini mengeksplorasi identitas manusia '
        'di era teknologi siber dan kecerdasan buatan. '
        'Major Motoko Kusanagi menghadapi pertanyaan tentang eksistensi.',
    releaseDate: DateTime(1995, 11, 18),
    duration: '83 menit',
    ageRating: '17+',
    posterAsset: 'images/ghost_shell.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Summer Time Rendering: The Movie',
    genre: 'Animation, Mystery',
    director: 'Ayumu Watanabe',
    description:
        'Film ini mengembangkan kisah misteri '
        'tentang kematian dan pengulangan waktu di pulau terpencil. '
        'Ketegangan dan plot twist menjadi kekuatan utamanya.',
    releaseDate: DateTime(2023, 6, 2),
    duration: '120 menit',
    ageRating: '17+',
    posterAsset: 'images/summer_rendering.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'The Boy and the Heron',
    genre: 'Animation, Fantasy',
    director: 'Hayao Miyazaki',
    description:
        'The Boy and the Heron mengikuti perjalanan Mahito, '
        'seorang anak yang memasuki dunia fantasi misterius '
        'setelah kehilangan ibunya. Film ini menyajikan refleksi '
        'tentang kehidupan, kematian, dan pencarian makna diri '
        'dengan gaya khas Studio Ghibli.',
    releaseDate: DateTime(2023, 7, 14),
    duration: '124 menit',
    ageRating: '13+',
    posterAsset: 'images/boy_and_heron.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
  Movie(
    title: 'Blue Giant',
    genre: 'Animation, Music',
    director: 'Yuzuru Tachikawa',
    description:
        'Blue Giant menceritakan perjuangan Dai Miyamoto, '
        'seorang pemuda yang bermimpi menjadi musisi jazz hebat. '
        'Film ini sarat dengan semangat, determinasi, dan kekuatan musik '
        'sebagai ekspresi jiwa.',
    releaseDate: DateTime(2023, 2, 17),
    duration: '120 menit',
    ageRating: '13+',
    posterAsset: 'images/blue_giant.jpg',
    imageUrls: [],
    isFavorite: false,
  ),
];

DROP TABLE IF EXISTS planet;

CREATE TABLE planet (

  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  body TEXT,
  body2 TEXT,
  body3 TEXT,
  image TEXT,
  image2 TEXT

);

insert into planet (title, body, body2, body3, image, image2) values ('Sun','Age: 4.6 billion years','Surface temperature: 5,500 C','Mass: 1.99 x 10^30 (333,060 earths)','https://s.hswstatic.com/gif/sun-update-1.jpg','https://resizing.flixster.com/xB3GgJzIqGdz17fuK37U_Kx9n0I=/300x300/v1.bjsxNTMwODUzO2o7MTc1Njc7MTIwMDszMDAwOzMwMDA');
insert into planet (title, body, body2, body3, image, image2) values ('Mercury','Diameter: 4,879 km','Orbit period: 88 days','Moons: none','https://tallbloke.files.wordpress.com/2012/02/mercury-300x300.jpg','http://astro-interest.com/wp-content/uploads/2014/07/venus-300x300.jpg');
insert into planet (title, body, body2, body3, image, image2) values ('Venus','Orbit period: 225 days','Surface Temperature: 462 C','Mass: 81.5% of earths','http://facts.net/wp-content/uploads/2015/05/Venus-Facts.jpg','https://i.pinimg.com/236x/a7/47/92/a7479214830f79a19b4c5d2aacf7d85c--venus-planet-astrology.jpg');
insert into planet (title, body, body2, body3, image, image2) values ('Earth','Orbit period: 365.25 days','Moons: 1','Surface Temperature: -88 C to 58 C','http://techiefiber.com/wp-content/uploads/2017/08/5679642883_24a2e905e0_b-300x300.jpg','https://lh3.googleusercontent.com/-LbQssmmZOtA/VV-JWdNGZII/AAAAAAAACeI/WR_oGG6M0xg/w506-h750/earth_structure1.jpg');
insert into planet (title, body, body2, body3, image, image2) values ('Mars','Surface temperature: -153 C to 20 C','Moons: 2','Mass: 10.7% of earths','http://www.excellentglobe.com/wp-content/uploads/2017/05/opo0124a-300x300.jpg','http://www.odyssespace.fr/Images/Mars_structure.jpg');
insert into planet (title, body, body2, body3, image, image2) values ('Jupiter','Moons: 67','Orbit period: 4333 days (11.9 years)','Effective Temperature','http://astro.hopkinsschools.org/course_documents/solar_system/outergasplanets/jupiter/structure.jpg','https://media1.britannica.com/eb-media/08/21208-004-D03E38BF.jpg');
insert into planet (title, body, body2, body3, image, image2) values ('Saturn','Moons: 62','Effective Temperature: -178 C','Orbit period: 10,756 days (29.5 years)','http://www.genistra.com/ar/wp-content/uploads/2011/01/Saturn-300x300.jpg','https://render.fineartamerica.com/images/rendered/search/print/images-medium/6-saturn-nasa--science-source.jpg');
insert into planet (title, body, body2, body3, image, image2) values ('Uranus','Effective temperature: -216 C','Orbit period: 30,687 days (84 years)','Moons: 27','https://render.fineartamerica.com/images/rendered/search/print/images/artworkimages/medium/1/abstract-uranus-miroslav-nemecek.jpg','https://www.worldatlas.com/r/w728-h425-c728x425/upload/eb/32/7d/shutterstock-508294324.jpg');
insert into planet (title, body, body2, body3, image, image2) values ('Neptune','Moons: 14','Effective temperature: -214 C','Orbit period: 60,190 days (164.8 years)','https://i.imgur.com/OQ8UxmS.jpg','http://www.armaghplanet.com/blog/wp-content/uploads/2015/09/Image-of-Neptune-from-Voyager-300x300.gif');
insert into planet (title, body, body2, body3, image, image2) values ('Pluto','Orbit period: 248 years','Surface temperature: -229 C','Moons: 5','https://i.guim.co.uk/img/media/1846e0e59cdf75add0dfeb60150305b54306a183/0_0_2000_2000/master/2000.jpg?w=300&q=55&auto=format&usm=12&fit=max&s=6923051f3b6937ea5bd21ff8c954aa6d','https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Nh-pluto-in-true-color_2x_JPEG-edit-frame.jpg/300px-Nh-pluto-in-true-color_2x_JPEG-edit-frame.jpg');

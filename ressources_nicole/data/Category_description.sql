CREATE TABLE category_description(
   id          INTEGER  NOT NULL PRIMARY KEY 
  ,name        VARCHAR(5) NOT NULL
  ,description VARCHAR(153) NOT NULL
);
INSERT INTO category_description(id,name,description) VALUES (1,'watch','Soyez à l''heure avec style, une montre doit correspondre a votre personalitée. C''est un bijoux a part entière qui saura vous mettre en valeur');
INSERT INTO category_description(id,name,description) VALUES (2,'bag','Un sac n''est pas qu''un accessoire c''est le réceptacle de vos objets personnels les plus précieux. Il doit être pratique et s''accorder avec vos vêtements.');
INSERT INTO category_description(id,name,description) VALUES (3,'belt','Sans cet élément primodial de votre garde robe, vous auriez le pantalon sur les chevilles!');

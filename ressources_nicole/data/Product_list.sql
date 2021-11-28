CREATE TABLE product_list(
   id                   SERIAL  NOT NULL PRIMARY KEY
  ,product_id           INTEGER 
  ,category             VARCHAR(5)
  ,name                 VARCHAR(15)
  ,brand                VARCHAR(17)
  ,image                INTEGER 
  ,size                 VARCHAR(7)
  ,color                VARCHAR(9)
  ,price_extax          NUMERIC(6,2)
  ,price_discount_extax NUMERIC(6,2)
  ,stock                INTEGER 
);
INSERT INTO product_list(id,product_id,category,name,brand,image,size,color,price_extax,price_discount_extax,stock) VALUES (1,1,'watch','petite melrose','daniel wellington',1,'Unisize','black',242,70,5);
INSERT INTO product_list(id,product_id,category,name,brand,image,size,color,price_extax,price_discount_extax,stock) VALUES (2,2,'bag','le pliage','longchamp',2,'Unisize','green',105,99,10);
INSERT INTO product_list(id,product_id,category,name,brand,image,size,color,price_extax,price_discount_extax,stock) VALUES (3,3,'watch','petite st mawes','daniel wellington',3,'28mm','white',119,59.50,3);
INSERT INTO product_list(id,product_id,category,name,brand,image,size,color,price_extax,price_discount_extax,stock) VALUES (4,4,'belt','croco chic','kenzo',4,'Unisize','black',337.99,NULL,1);
INSERT INTO product_list(id,product_id,category,name,brand,image,size,color,price_extax,price_discount_extax,stock) VALUES (5,5,'watch','air','claude bernard',5,'27mm','pink gold',138,NULL,2);
INSERT INTO product_list(id,product_id,category,name,brand,image,size,color,price_extax,price_discount_extax,stock) VALUES (6,6,'bag','dry corail','lancel',6,'Unisize','corail',241.99,122,1);
INSERT INTO product_list(id,product_id,category,name,brand,image,size,color,price_extax,price_discount_extax,stock) VALUES (7,7,'watch','croisette','Lord Henry',7,'42mm','gold',160,120,11);
INSERT INTO product_list(id,product_id,category,name,brand,image,size,color,price_extax,price_discount_extax,stock) VALUES (8,8,'bag','viperine','louis vuiton',8,'Unisize','blue',645,NULL,1);
INSERT INTO product_list(id,product_id,category,name,brand,image,size,color,price_extax,price_discount_extax,stock) VALUES (9,9,'watch','sportblack','Lord Henry',9,'45mm','black',130,120,8);
INSERT INTO product_list(id,product_id,category,name,brand,image,size,color,price_extax,price_discount_extax,stock) VALUES (10,10,'bag','mamba noir','longchamp',10,'Unisize','black',240,180,3);
INSERT INTO product_list(id,product_id,category,name,brand,image,size,color,price_extax,price_discount_extax,stock) VALUES (11,11,'watch','heaven','claude bernard',11,'35mm','white',160,110,4);
INSERT INTO product_list(id,product_id,category,name,brand,image,size,color,price_extax,price_discount_extax,stock) VALUES (12,12,'belt','croco class','kenzo',12,'Unisize','fushia',337.99,319.99,1);
INSERT INTO product_list(id,product_id,category,name,brand,image,size,color,price_extax,price_discount_extax,stock) VALUES (13,13,'watch','nightsky','Lord Henry',13,'35mm','blue',280,140,1);
INSERT INTO product_list(id,product_id,category,name,brand,image,size,color,price_extax,price_discount_extax,stock) VALUES (14,14,'bag','rosemary','louis vuiton',14,'Unisize','pink',320,290,4);
INSERT INTO product_list(id,product_id,category,name,brand,image,size,color,price_extax,price_discount_extax,stock) VALUES (15,15,'watch','revolution','Lord Henry',15,'34mm','white',250,220,3);
INSERT INTO product_list(id,product_id,category,name,brand,image,size,color,price_extax,price_discount_extax,stock) VALUES (16,2,'bag','le pliage','longchamp',16,'Unisize','red',105,99,4);
INSERT INTO product_list(id,product_id,category,name,brand,image,size,color,price_extax,price_discount_extax,stock) VALUES (17,2,'bag','le pliage','longchamp',17,'Unisize','blue',105,99,6);
INSERT INTO product_list(id,product_id,category,name,brand,image,size,color,price_extax,price_discount_extax,stock) VALUES (18,3,'watch','petite st mawes','daniel wellington',3,'32mm','white',119,59.50,3);

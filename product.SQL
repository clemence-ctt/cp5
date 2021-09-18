DROP TABLE IF EXISTS category ;
CREATE TABLE category (
	`category_id` INT,
	PRIMARY KEY (`category_id`)
	) ENGINE=INNODB;

DROP TABLE IF EXISTS `product` ;
CREATE TABLE `product` (
    `product_reference` INT NOT NULL,
    `name` VARCHAR(64) NOT NULL,
    `description` TEXT,
    `price` FLOAT(8,2) NOT NULL,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME,
    `category_id` INT NOT NULL,
    PRIMARY KEY (`product_reference`) 
) ENGINE=INNODB;


ALTER TABLE `product` ADD CONSTRAINT
    `FK_product_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`)
;



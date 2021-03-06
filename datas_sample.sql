-- Adminer 4.7.7 MySQL dump
SET
    NAMES utf8;

SET
    time_zone = '+00:00';

SET
    foreign_key_checks = 0;

SET
    sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

INSERT INTO
    `categories` (`id`, `name`)
VALUES
    (1, 'dev'),
    (2, 'design'),
    (3, 'marketing'),
    (4, 'bureautique'),
    (5, 'soft skills'),
    (6, 'pédagogie'),
    (7, 'systèmes & reseau'),
    (8, 'business'),
    (9, 'gestion de projet'),
    (10, 'autre');

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    `description` text,
    `author` varchar(255) DEFAULT NULL,
    `created` date DEFAULT NULL,
    `updated` date DEFAULT NULL,
    `price` float DEFAULT NULL,
    `type` varchar(255) DEFAULT NULL,
    `duration` varchar(255) DEFAULT NULL,
    `rating` float DEFAULT NULL,
    `difficulty` varchar(255) DEFAULT NULL,
    `buying_number` int(11) DEFAULT NULL,
    `is_promotion` tinyint(4) DEFAULT NULL,
    `is_obsolete` tinyint(4) DEFAULT NULL,
    `category_id` int(11) DEFAULT NULL,
    `sub_category_id` int(11) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `category_id` (`category_id`),
    KEY `sub_category_id` (`sub_category_id`),
    CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
    CONSTRAINT `products_ibfk_2` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`),
    CONSTRAINT `products_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
    CONSTRAINT `products_ibfk_4` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

INSERT INTO
    `products` (
        `id`,
        `name`,
        `description`,
        `author`,
        `created`,
        `updated`,
        `price`,
        `type`,
        `duration`,
        `rating`,
        `difficulty`,
        `buying_number`,
        `is_promotion`,
        `is_obsolete`,
        `category_id`,
        `sub_category_id`
    )
VALUES
    (
        1,
        'Framework laravel',
        'Apprendre Laravel avec Michel Lafont',
        'Michel LaFont',
        '2020-03-02',
        '2020-06-03',
        200,
        'vidéo',
        '10',
        8.5,
        'avancée',
        153,
        0,
        1,
        1,
        1
    ),
    (
        2,
        'FrameWork Symfony',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        1
    ),
    (
        3,
        'FrameWork Cakephp',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        1
    ),
    (
        4,
        'FrameWork Lumen',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        1
    ),
    (
        5,
        'PHP : Les bonnes pratiques',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        1
    ),
    (
        6,
        'API REST en PHP',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        1
    ),
    (
        7,
        'Les bases de PHP',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        1
    ),
    (
        8,
        'Aller plus loins avec php',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        1
    ),
    (
        9,
        'Php 8, les nouveautées',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        1
    ),
    (
        10,
        'Set up son environement de dev',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        1
    ),
    (
        11,
        'Débuter avec VueJs',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        2
    ),
    (
        12,
        'Springboot',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        4
    ),
    (
        13,
        'Ruby on rails',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        5
    ),
    (
        14,
        'Les bases de Go',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        6
    ),
    (
        15,
        'Découvrire Rust',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        7
    ),
    (
        16,
        'Le langage R',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        8
    ),
    (
        17,
        'Coder en C',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        9
    ),
    (
        18,
        'Les pointeurs en C++',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        10
    ),
    (
        19,
        'Faire un jeu vidéo avec C#',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        12
    ),
    (
        20,
        'L\'IA Et Python',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        12
    ),
    (
        21,
        'Expérience Utilisateur',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        2,
        13
    ),
    (
        22,
        'Référencer son site internet',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        3,
        14
    ),
    (
        23,
        'Les bases d\'exel',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        4,
        15
    ),
    (
        24,
        'Géré une crise en entreprise',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        5,
        16
    ),
    (
        25,
        'Structuration d\'un cours en ligne',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        6,
        17
    ),
    (
        26,
        'Sécuriser l\'accès à son serveur',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        7,
        18
    ),
    (
        27,
        'Trouver ses premiers clients',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        8,
        19
    ),
    (
        28,
        'Le role du scrum master',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        9,
        20
    ),
    (
        29,
        'Naviguer de façon sécuriser',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        10,
        21
    );

DROP TABLE IF EXISTS `sub_categories`;

CREATE TABLE `sub_categories` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    `category_id` int(11) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `category_id` (`category_id`),
    CONSTRAINT `sub_categories_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

INSERT INTO
    `sub_categories` (`id`, `name`, `category_id`)
VALUES
    (1, 'php', 1),
    (2, 'javascript', 1),
    (4, 'java', 1),
    (5, 'ruby', 1),
    (6, 'go', 1),
    (7, 'rust', 1),
    (8, 'r', 1),
    (9, 'c', 1),
    (10, 'c++', 1),
    (11, 'c#', 1),
    (12, 'python', 1),
    (13, 'ux/ui', 2),
    (14, 'seo', 3),
    (15, 'suite office', 4),
    (16, 'gestion de crise', 5),
    (17, 'structurer un cours', 6),
    (18, 'serveur', 7),
    (19, 'monter son entreprise', 8),
    (20, 'méthodes agiles', 9),
    (21, 'navigation internet', 10);

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `username` varchar(255) NOT NULL,
    `email` varchar(255) NOT NULL,
    `password` varchar(255) NOT NULL,
    `adress` varchar(255) NOT NULL,
    `phone` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

INSERT INTO
    `users` (
        `id`,
        `username`,
        `email`,
        `password`,
        `adress`,
        `phone`
    )
VALUES
    (
        1,
        'Michel',
        'email@email.fr',
        '1234567890',
        'oui',
        '0102030405'
    ),
    (
        2,
        'Michel',
        'email@email.fr',
        '1234567890',
        'oui',
        '0102030405'
    );

-- 2021-05-06 13:23:15
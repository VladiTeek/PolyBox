-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 28 2019 г., 14:46
-- Версия сервера: 10.1.33-MariaDB
-- Версия PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `polybox_shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `brand`
--

CREATE TABLE `brand` (
  `ID_Brand` int(5) NOT NULL,
  `Head` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `brand`
--

INSERT INTO `brand` (`ID_Brand`, `Head`) VALUES
(1, 'KitKat'),
(2, 'Oreo');

-- --------------------------------------------------------

--
-- Структура таблицы `client`
--

CREATE TABLE `client` (
  `ID_Client` int(5) NOT NULL,
  `NameSurname` varchar(100) NOT NULL,
  `Phone_Number` int(20) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Postcode` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `ID_News` int(5) NOT NULL,
  `HeadNews` varchar(50) NOT NULL,
  `TextNews` varchar(255) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`ID_News`, `HeadNews`, `TextNews`, `Date`) VALUES
(1, 'Открытие сайта', 'Здравствуйте, дорогие посетители. Вашему вниманию предоставлен интернет магазин, сладостей из разных стран. Здесь вы найдёте то чего нету в магазинах и сайтах в пределах Эстонии. В честь открытия сайта разыгрывается 5 призов. Вся подробная информация в гр', '2019-02-01'),
(2, 'Хостинг', 'Добрый день, так как мы любим вас и заботимся что бы вы комфортно чувствовали себя на сайте, а главное безопасно сайт перешёл на более мощный хостинг и и сделали SSLзащиту, эту самую защиту вы можете увидеть в адресной строке, там будет нарисован зелёный ', '2019-02-02'),
(3, 'Переговоры', 'Приветствуем тебя, сегодня для всех нас хорошие новости, были переговоры со Swedbank AB, и в ходе переговоров было принятно между клиентом - банком – нами более быстрая система транкзаций и более удобная, безопасная. Теперь мы будем получать ваши платежи ', '2019-02-03'),
(4, 'Открытие', 'Доброе утро, все вы знаете что контора PolyBox OU находится в Нарве и ни всем могли приходить по каким либо вопросам, теперь же мы открыли ещё одну контору в Таллинне по адресу Pae 55. Так что ждём всех у кого вопросы или ещё какие-то предложения.', '2019-02-04'),
(5, 'Сюрприз близко', 'Добрый вечер, с завтрашнего дня ассортимент магазина значительно расширется. Появится много новых вкусняшек. Связи с этим вас ждёт сюрприз. О сюрпризе будет известно буквально через неделю.', '2019-02-05'),
(6, 'Сюрприз уже тут', 'Приветствуем, вот и настал этот долгожданный день, сегодня мы добавили для вас наш сюрприз, а именно добавили игру за которую ты можешь выйграть сладость. Играть в игру могут только зарегистрированные пользователи и купившие хотя бы один продукт на нашем ', '2019-02-06');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `ID_Product` int(6) NOT NULL,
  `HeadProduct` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TextProduct` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Image` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ID_B` int(5) NOT NULL,
  `Price` decimal(6,2) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`ID_Product`, `HeadProduct`, `TextProduct`, `Image`, `ID_B`, `Price`, `Date`) VALUES
(2, 'Kit Kat Cheesecake', 'Шоколадный батончик с чизкейк.', 'kitkat-cheesecake.png', 1, '10.00', '2019-02-03'),
(3, 'Kit Kat Original', 'Шоколадный батончик с классическим вкусом.', 'kitkat-original.png', 1, '11.00', '2019-02-03'),
(4, 'Kit Kat Dark', 'Шоколадный батончик с тёмным шоколадом.', 'kitkat-dark.png', 1, '9.00', '2019-02-11'),
(5, 'Kit Kat Green Tee', 'Шоколадный баточник со вкусом зелённого чая.', 'kitkat-green-tee.png', 1, '6.00', '2019-02-01'),
(6, 'Kit Kat Mango', 'Шоколадный батончик со вкусом манго.', 'kitkat-mango.png', 1, '7.50', '2019-02-10'),
(7, 'Kit Kat Nuts', 'Шоколадный батончик с орехами.', 'kitkat-nuts.png', 1, '6.80', '2019-02-13'),
(8, 'Kit Kat Peanut Butter', 'Шоколадный батончик со вкусом арахисово масла.', 'kitkat-peanut-butter.png', 1, '7.80', '2019-02-08'),
(9, 'Kit Kat Strawberry', 'Шоколадный батончик со вкусом клубники.', 'kitkat-strawberry.png', 1, '12.50', '2019-02-14'),
(10, 'Oreo', 'Классическое печенье Oreo с белой начинкой.', 'oreo-original.png', 2, '3.20', '2019-02-05'),
(11, 'Oreo mini', 'Классическое печенье Oreo, только уменьшено.', 'oreo-mini.png', 2, '5.50', '2019-02-05'),
(12, 'Oreo Bites', 'Конфетки с белой начинкой и печеньем внутри.', 'oreo-tub.png', 2, '4.00', '2019-02-08');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `idUser` int(4) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `pass` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`idUser`, `username`, `email`, `password`, `status`, `pass`) VALUES
(3, 'user', 'steelgane@gmail.com', '$2y$10$01234567890123456789aOM43Ox5kPqFsUQt/oPxwnUd1UWLT8uFS', 0, '58100894');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`ID_Brand`),
  ADD UNIQUE KEY `Head` (`Head`);

--
-- Индексы таблицы `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`ID_Client`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`ID_News`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID_Product`),
  ADD KEY `ID_B` (`ID_B`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `brand`
--
ALTER TABLE `brand`
  MODIFY `ID_Brand` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `client`
--
ALTER TABLE `client`
  MODIFY `ID_Client` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `ID_News` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `ID_Product` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`ID_B`) REFERENCES `brand` (`ID_Brand`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

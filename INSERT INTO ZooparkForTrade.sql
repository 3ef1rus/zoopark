use zoopark


INSERT INTO ZooparkForTrade
    ( -- columns to insert data into
    [Name], [Adress], [Number]
    )
VALUES
    ('Зоопарк Рануа', 'Rovaniementie 29, 97700 Ranua, Финляндия', '+358164692050'),
    ('Лондонский зоопарк', 'Outer Cir, London NW1 4RY, Великобритания', '+443442251826'),
    ('Пражский зоопарк', 'U Trojskeho zamku 120/3, 171 00 Praha 7, Чехия', '+420296112230'),
    ('Иерусалимский зоопарк', 'Derech Aharon Shulov 1, Jerusalem, Израиль', '+97226750111'),
    ('Зоопарк Чианг-Май', '100 Huay Kaew Rd, Tambon Su Thep, Таиланд', '+6653221179'),
    ('Берлинский зоопарк', 'Hardenbergpl. 8, 10787 Berlin, Германия', '+45717852474')


INSERT INTO Suppliers
    ( -- columns to insert data into
    [Name], [Type feed], [Delivery period],[Amount],[Price]
    )
VALUES
    ('Крахмальный завод «СП Дон»', 'Кукурузное зерно', '01.10.** - 01.04.**', 'от 5 тонн', ' 250$'),
    ('ООО “Qingdao Rich Credit”', 'Рыба И Мясо', '01.01.** - 01.12.**', 'от 1 коробки', ' 100$'),
    ('Petville', 'Натуральные лакомства', '01.01.** - 01.12.**', 'от 5 литров', ' 50$'),
    ('«ЧИСТЮЛЯ»', 'Зерновые ', '01.05.** - 01.10.**', 'от 1 тонн', ' 50$'),
    ('OOO DJ SPOT', 'Фрукты', '01.01.** - 01.12.**', 'от 2 тонн', ' 75$'),
    ('Зоопарк Радость', 'Трава', '01.01.** - 01.12.**', 'от 1 тонн', ' free')


INSERT INTO Vaccinations
    ( -- columns to insert data into
    [Name]
    )
VALUES
    ('D – против чумы'),
    ('H – против гепатита'),
    ('P –против парвовирусной инфекции'),
    ('Pi – против парагриппа'),
    ('L — Lepto')


INSERT INTO Disease
    ( -- columns to insert data into
    [Name]
    )
VALUES
    ('Лихорадка Эбола'),
    ('Хитридиомикоз'),
    ('Синдром белого носа'),
    ('Сибирская язва'),
    ('Хламидиоз')


INSERT INTO MedicalCard
    ( -- columns to insert data into
    [Number Medical Card],[Сompatibility]
    )
VALUES
    ('ЧК0257', 'Кошачьи'),
    ('М737АА', 'Птицы'),
    ('ВЫ7234', 'Пингвин'),
    ('ВЫ7234', 'Пингвин'),
    ('Р509ОН', 'Пингвин'),
    ('Т805МУ', 'Пингвин'),
    ('У506ТН', 'Пингвин'),
    ('А396ЕО', 'Пингвин'),
    ('С478УХ', 'Пингвин'),
    ('Т954МУ', 'Пингвин'),
    ('М531УА', 'Пингвин'),
    ('М094ХХ', 'Пингвин'),
    ('С790УО', 'Птицы'),
    ('К447АР', 'Птицы'),
    ('НТ4039', 'Приматы'),
    ('Х928НВ', 'Приматы'),
    ('М117ЕХ', 'Приматы'),
    ('Т033ВС', 'Приматы'),
    ('А008ХС', 'Кошачьи'),
    ('А508СЕ', 'Кошачьи'),
    ('Н597СК', 'Кошачьи'),
    ('Х614ЕР', 'Кошачьи'),
    ('О635ОС', 'Кошачьи'),
    ('К355УА', 'Кошачьи'),
    ('Х974МК', 'Кошачьи'),
    ('Х269КУ', 'Кошачьи'),
    ('В683РА', 'Кошачьи')


INSERT INTO VaccinationsList
    ( -- columns to insert data into
    [Date],[idMedCard],[vaccinationID]
    )
VALUES
    ('11.12.2019', '1', '1'),
    ('01.01.2020', '1', '3'),
    ('15.09.2018', '2', '2'),
    ('19.08.2017', '2', '1'),
    ('25.02.2020', '4', '2'),
    ('30.09.2015', '4', '5'),
    ('28.10.2019', '6', '3'),
    ('04.03.2017', '6', '4'),
    ('09.11.2018', '16', '5')


INSERT INTO DiseaseList
    ( -- columns to insert data into
    [Disease period],[idMedCard],[diseaseID]
    )
VALUES
    ('01.08.2019 - 11.08.2019', '1', '1'),
    ('01.12.2019 - 01.01.2020', '1', '3'),
    ('05.08.2018 - 14.08.2018', '2', '2'),
    ('01.08.2017 - 16.08.2017', '2', '2'),
    ('15.12.2016 - 01.01.2017', '3', '3'),
    ('05.12.2019 - 11.11.2019', '3', '4'),
    ('13.02.2015 - 20.08.2015', '5', '4'),
    ('01.04.2016 - 01.05.2016', '5', '3'),
    ('17.01.2021 - 21.02.2021', '25', '5')


INSERT INTO Jobs
    ( -- columns to insert data into
    [Name]
    )
VALUES
    ('Ветеринар'),
    ('Уборщик'),
    ('Дрессировщик'),
    ('Строитель'),
    ('Администратор')


INSERT INTO Cells
    ( -- columns to insert data into
    [Number cell],[Amount animals],[Warm]
    )
VALUES
    ('1', '4', 'Yes'),
    ('2', '6', 'Yes'),
    ('3', '3', 'No'),
    ('4', '4', 'Yes'),
    ('5', '10', 'No')


INSERT INTO Feeds
    ( -- columns to insert data into
    [Name],[Amount],[Need],[Date receiving],[supplierID]
    )
VALUES
    ('Кукурузное зерно', '10 тонн', 'No', '01.08.2019', '1'),
    ('Рыба И Мясо', '10 тонн', 'No', '12.05.2019', '2'),
    ('Натуральные лакомства', '20 литров', 'No', '21.07.2019', '3'),
    ('Фрукты', '2 тонн', 'Yes', '30.10.2020', '5'),
    ('Зерновые', '6 тонн', 'No', '11.11.2020', '4'),
    ('Сено', '3 тонн', 'No', '13.12.2020', '6')


INSERT INTO FoodTypes
    ( -- columns to insert data into
    [Food type],[feedID]
    )
VALUES
    ('Зерновые', '1'),
    ('Мясо', '2'),
    ('Рыба', '2'),
    ('Фрукты', '4'),
    ('Трава', '6')


INSERT INTO Types
    ( -- columns to insert data into
    [Name type],[Сompatibility],[Special],[Family],[foodTypeID]
    )
VALUES
    ('Азиатский лев', 'Львы', 'Длинный хвост', 'Кошачьи', '2'),
    ('Обыкновенный канюк', 'Птицы', 'Большой', 'Птицы', '1'),
    ('Хохлатый пингвин', 'Пингвин', 'Маленький', 'Птицы', '3'),
    ('Золотоволосый пингвин', 'Пингвин', 'Темный', 'Птицы', '4'),
    ('Королевский пингвин', 'Пингвин', 'Боязливый', 'Птицы', '3'),
    ('Папуанский пингвин', 'Пингвин', 'Маленький', 'Птицы', '3'),
    ('Антарктический пингвин', 'Пингвин', 'Желтый', 'Птицы', '3'),
    ('Пингвин Адели', 'Пингвин', 'Игривый', 'Птицы', '3'),
    ('Магелланов пингвин', 'Пингвин', 'Наглый', 'Птицы', '3'),
    ('Снежный гриф', 'Птицы', 'Белый', 'Птицы', '1'),
    ('Андский кондор', 'Птицы', 'Темный', 'Птицы', '2'),
    ('Макаки резусы', 'Приматы', 'Вор', 'Приматы', '4'),
    ('Макаки японские', 'Приматы', 'Ленивый', 'Приматы', '4'),
    ('Сенегальский лев', 'Львы', 'Маленькие уши', 'Кошачьи', '2'),
    ('Североконголезский лев', 'Львы', 'Лысый', 'Кошачьи', '2'),
    ('Восточноафриканский лев', 'Львы', 'Серый', 'Кошачьи', '2'),
    ('Амурский тигр', 'Тигры', 'Злой', 'Кошачьи', '2'),
    ('Бенгальский тигр', 'Тигры', 'Мягкий', 'Кошачьи', '2'),
    ('Индокитайский тигр', 'Тигры', 'Спокойный', 'Кошачьи', '2'),
    ('Малайский тигр', 'Тигры', 'Обычный', 'Кошачьи', '2')



INSERT INTO ListAnimalTypeInCell
    ( -- columns to insert data into
    [cellID],[typeID]
    )
VALUES
    ('1', '12'),
    ('1', '13'),
    ('2', '1'),
    ('2', '14'),
    ('2', '15'),
    ('2', '16'),
    ('3', '2'),
    ('3', '10'),
    ('3', '11'),
    ('4', '17'),
    ('4', '18'),
    ('4', '19'),
    ('4', '20'),
    ('5', '3'),
    ('5', '4'),
    ('5', '5'),
    ('5', '6'),
    ('5', '7'),
    ('5', '8'),
    ('5', '9')
  


INSERT INTO Exchanges
    ( -- columns to insert data into
    [Number exchange],[Whom give],[Whom take],[Date exchange],[zooparkID]
    )
VALUES
    ('1', 'чк-572', 'В067СТ27', '25.05.2018', '1'),
    ('2', 'фы-354', 'Т060РМ86', '05.11.2018', '2'),
    ('3', 'пр-391', 'С443УУ54', '09.09.2020', '3')


INSERT INTO PassportAnimal
    ( -- columns to insert data into
    [Number passport],[Name],[Sex],[Parents],[Data Birth],[Childs],[MedicalCardID],[typeID]
    )
VALUES
    ('М698АК60', 'Стимми', 'М', 'Гринго, Шакура', '03.12.2018', '-', '1', '1'),
    ('В067СТ27', 'Абрам', 'М', 'Джасмин, Пуаро', '16.11.2015', '-', '2', '2'),
    ('Е277ЕУ23', 'Носишка', 'М', 'Гуслёр, Васаби', '23.08.2015', 'Грация Р260НВ82, Сусанна У613НЕ50', '3', '3'),
    ('К345ХН80', 'Чейз', 'М', 'Златовласка, Нарцисс', '28.02.2015', '-', '4', '4'),
    ('Т727ХЕ37', 'Илла', 'Ж', 'Отелло, Иланка', '05.01.2017', 'Грация Р260НВ82, Сусанна У613НЕ50', '5', '5'),
    ('В567АХ88', 'Фиеста', 'Ж', 'Башка, Марина', '10.09.2017', 'Гоги К682МА25', '6', '6'),
    ('У613НЕ50', 'Сусанна', 'Ж', 'Илла, Носишка', '20.07.2019', '-', '7', '5'),
    ('Р260НВ82', 'Грация', 'Ж', 'Илла, Носишка', '20.07.2019', '-', '8', '7'),
    ('К682МА25', 'Гоги', 'М', 'Фиеста, Хлинк', '16.11.2020', '-', '9', '8'),
    ('С924КН01', 'Хлинк', 'М', 'Эрика, Лорди', '29.09.2018', 'Гоги К682МА25', '10', '8'),
    ('А167УМ49', 'Лепешка', 'Ж', 'Чеба, Принцесса', '13.02.2018', '-', '11', '9'),
    ('Е113ТВ39', 'Мадор', 'М', 'Шахмал, Желана', '20.05.2013', '-', '12', '5'),
    ('В439ОК40', 'Джун', 'М', 'Дальма, Юкрэйн', '07.04.2015', '-', '13', '10'),
    ('Т060РМ86', 'Полночь', 'М', 'Роуз, Япин', '13.02.2019', '-', '14', '11'),
    ('Х978НВ13', 'Гена', 'М', 'Филлис, Зэля', '07.09.2013', '-', '15', '12'),
    ('Х836НН33', 'Еремей', 'М', 'Рио, Вобла', '14.07.2020', '-', '16', '13'),
    ('Р231КН16', 'Принцилла', 'Ж', 'Чероки, Буга', '22.10.2015', '-', '17', '12'),
    ('В607ХЕ89', 'Колетта', 'Ж', 'Мэлвин, Арка', '23.04.2016', '-', '18', '13'),
    ('Р122ОР49', 'Яжела', 'Ж', 'Сатива, Руся', '25.10.2019', '-' , '19', '14'),
    ('В641ТА63', 'Мелания', 'Ж', 'Далси, Готен', '06.11.2016', '-', '20', '15'),
    ('К671УО49', 'Ула', 'Ж', 'Аат, Сальвина', '04.02.2018', '-', '21', '16'),
    ('Т739МВ96', 'Боничита', 'Ж', 'Маркиз, Мельрозе', '27.01.2015', '-', '22', '16'),
    ('О178КУ73', 'Зуза', 'М', 'Инди, Сенг', '05.05.2020', '-', '23', '15'),
    ('К622АО76', 'Аюрчи', 'Ж', 'Нея, Нэп', '21.12.2013', '-', '24', '17'),
    ('С443УУ54', 'Пуллу', 'М', 'Амур, Бенга', '11.05.2020', '-', '25', '18'),
    ('В824СХ43', 'Спитл', 'М', 'Шер, Майна', '18.09.2017', '-', '26', '19'),
    ('Х349УУ58', 'Мерни', 'М', 'Колинс, Милашка', '28.11.2017', '-', '27', '20')



INSERT INTO Responsibility
    ( -- columns to insert data into
    [Date start],[Date end],[passportAnimaID]
    )
VALUES
    ('16.06.2014', '24.11.2015', '13'),--ptaha
    ('05.09.2020', '14.11.2020', '14'),--ptaha
    ('26.07.2013', '28.05.2017', '2'),--ptaha
    ('10.09.2017', '10.09.2021','24'),--tigr
    ('06.09.2019', '30.04.2020','25'),--tigr
    ('24.10.2014', '01.02.2019','26'),--tigr
    ('10.10.2018', '24.04.2020','27'),--tigr
    ('29.05.2017', '26.07.2018','1')--leo


INSERT INTO Employee
    ( -- columns to insert data into
    [Full name],[Salarity],[Sex],[Age],[Experience],[jobID]
    )
VALUES
    ('Полотенцев Ефрем Георгиевич', '324 $', 'М', '34 года', '5 лет', '4'),
    ('Безбородов Филипп Григорьевич', '453 $', 'М', '40 лет', '8 лет', '2'),
    ('Борева Виктория Филипповна', '784 $', 'Ж', '59 лет', '20 лет', '1'),--leo
    ('Самохин Максим Феоктистович', '624 $', 'М', '52 года', '13 лет', '1'),--ptaha
    ('Панарина Зинаида Алексеевна', '454 $', 'Ж', '26 лет', '3 года', '2'),
    ('Буриличева Любовь Константиновна', '564 $', 'Ж', '38 лет', '9 лет', '3'),
    ('Чернышев Федор Федорович', '520 $', 'М', '48 лет', '11 лет', '3'),
    ('Яблонская Анна Семеновна', '770 $', 'Ж', '57 лет', '15 лет', '1'),--makaka
    ('Кунаковская Анфиса Романовна', '631 $', 'Ж', '34 года', '8 лет', '1'),
    ('Шабунина Серафима Ефимовна', '742 $', 'Ж', '37 лет', '13 лет', '1'),
    ('Сурков Игнат Афанасьевич', '1000 $', 'М', '35 года', '10 лет', '5'),
    ('Коротченко Ефим Яковеевичевич', '425 $', 'М', '28 года', '3 года', '4')


INSERT INTO InteractionFamilyList
    ( -- columns to insert data into
    [employeeID],[typeID]
    )
VALUES
    ('3', '10'),
    ('3', '11'),
    ('3', '2'),
    ('4', '17'),
    ('4', '18'),
    ('4', '19'),
    ('4', '20'),
    ('8', '1')



INSERT INTO ResponsibilityList
    ( -- columns to insert data into
    [employeeID],[responsibilityID]
    )
VALUES
    ('3', '3'),
    ('3', '1'),
    ('3', '2'),
    ('4', '4'),
    ('4', '5'),
    ('4', '6'),
    ('4', '7'),
    ('8', '8')


INSERT INTO Animal
    ( -- columns to insert data into
    [Weigth],[Hight],[Date join],[Warm],[Move],[cellID],[passportAnimaID]
    )
VALUES
    ('116 см', '186 кг', '03.12.2019', 'Yes', 'No', '2', '1'),-- leo Стимми /Стимми
    ('47 см', '1 кг', '16.11.2016', 'Yes', 'Yes', '3', '2'),--ptaha Обыкновенный канюк /Абрам
    ('74 см', '16 кг', '28.02.2016', 'No', 'No', '5', '3'),--ping /Носишка
    ('39 см', '13 кг', '23.08.2016', 'No', 'No', '5', '4'),--ping /Чейз
    ('100 см', '30 кг', '05.01.2018', 'No', 'No', '5', '5'),--samka ping /Илла
    ('75 см', '22 кг', '20.07.2019', 'No', 'No', '5', '6'),--samka ping /Грация
    ('60 см', '18 кг', '20.07.2019', 'No', 'No', '5', '7'),--samka ping /Сусанна
    ('48 см', '20 кг', '10.09.2018', 'No', 'No', '5', '8'),--samka ping /Фиеста
    ('81 см', '15 кг', '20.05.2021', 'No', 'No', '5', '9'),--ping  /Зуза
    ('57 см', '19 кг', '16.11.2020', 'No', 'No', '5', '10'),--ping /Гоги
    ('63 см', '24 кг', '28.11.2018', 'No', 'No', '5', '11'),--ping /Мерни
    ('77 см', '21 кг', '20.05.2021', 'No', 'No', '5', '12'),--ping /Пуллу
    ('120 см', '9 кг', '20.05.2014', 'Yes', 'Yes', '3', '13'),--ptaha Снежный гриф /Мадор
    ('115 см', '10 кг', '07.04.2015', 'Yes', 'Yes', '3', '14'),--ptaha Андский кондор /Джуня
    ('68 см', '13 кг', '13.02.20120', 'Yes', 'No', '1', '15'),-- makaki /Полночь
    ('64 см', '15 кг', '14.07.2021', 'Yes', 'No', '1', '16'),-- makaki /Еремей
    ('70 см', '7 кг', '22.10.2016', 'Yes', 'No', '1', '17'),--samka makaki /Принцилла
    ('65 см', '8 кг', '23.04.2017', 'Yes', 'No', '1', '18'),--samka makaki /Колетта
    ('94 см', '134 кг', '20.07.2020', 'Yes', 'No', '2', '19'),--samka leo /Яжела
    ('98 см', '120 кг', '06.11.2017', 'Yes', 'No', '2', '20'),--samka leo /Мелания
    ('102 см', '135 кг', '04.02.2019', 'Yes', 'No', '2', '21'),--samka leo /Ула
    ('92 см', '119 кг', '20.12.2018', 'Yes', 'No', '2', '22'),--samka leo  /Лепешка
    ('123 см', '187 кг', '18.09.2018', 'Yes', 'No', '2', '23'),-- leo Спитл /Спитл
    ('145 см', '285 кг', '07.09.2014', 'Yes', 'No', '4', '24'),--tigr Амурский тигр  /Гена
    ('105 см', '240 кг', '29.09.2019', 'Yes', 'No', '4', '25'),--tigr Бенгальский тигр /Хлинк
    ('95 см', '105 кг', '27.01.2016', 'Yes', 'No', '4', '26'),--tigr samka Индокитайский тигр /Боничита
    ('87 см', '89 кг', '21.12.2014', 'Yes', 'No', '4', '27')--tigr samka Малайский тигр /Аюрчи


INSERT INTO Access
    ( -- columns to insert data into
    [Access],[employeeID],[typeID]
    )
VALUES
    ('Yes', '6', '15'),--leo
    ('Yes', '6', '16'),--leo
    ('Yes', '6', '17'),--leo
    ('Yes', '6', '18'),--leo
    ('Yes', '3', '15'),--leo
    ('Yes', '3', '16'),--leo
    ('Yes', '7', '11'),--leo
    ('Yes', '7', '12'),--leo
    ('Yes', '7', '13'),--leo
    ('Yes', '7', '17'),--leo
    ('Yes', '7', '18'),--leo
    ('Yes', '10', '19'),--leo
    ('Yes', '10', '17')--leo

    
INSERT INTO Mainzoopark
    ( -- columns to insert data into
    [Adress],[Name],[Cells]
    )
VALUES
    ('Улица Пушкина , Дом Колотушкина','Зоопарк Радость','5')



GO

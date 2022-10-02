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
    ('OOO DJ SPOT', 'Фрукты', '01.01.** - 01.12.**', 'от 2 тонн', ' 75$')


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
    ('ЧК0257', 'Птицы'),
    ('НТ4039', 'Кошачьи'),
    ('ВЫ7234', 'Пингвины')


INSERT INTO VaccinationsList
    ( -- columns to insert data into
    [Date],[idMedCard],[vaccinationID]
    )
VALUES
    ('11.10.2019','1','3'),
    ('01.02.2020','1','4'),
    ('11.09.2018','2','5')


INSERT INTO DiseaseList
    ( -- columns to insert data into
    [Disease period],[idMedCard],[diseaseID]
    )
VALUES
    ('01.08.2019 - 11.08.2019','1','1'),
    ('01.12.2019 - 01.01.2020','1','3'),
    ('05.08.2018 - 11.08.2018','2','1')


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
    ('Кукурузное зерно', '10 тонн', 'No', '01.08.2019','1'),
    ('Рыба И Мясо', '10 тонн', 'No', '12.05.2019','2'),
    ('Натуральные лакомства', '20 литров', 'No', '21.07.2019','3'),
    ('Фрукты', '2 тонн', 'Yes', '30.10.2020','5'),
    ('Зерновые', '6 тонн', 'No', '11.11.2020','4')


INSERT INTO FoodTypes
    ( -- columns to insert data into
    [Food type],[feedID]
    )
VALUES
    ('Зерновые','1'),
    ('Мясо','2'),
    ('Рыба','2'),
    ('Фрукты','4')


INSERT INTO Types
    ( -- columns to insert data into
    [Name type],[Сompatibility],[Special],[Family],[foodTypeID]
    )
VALUES
    ('Обыкновенный канюк', 'Птицы', 'Большой', 'Птицы','1'),
    ('Снежный гриф', 'Птицы', 'Белый', 'Птицы','1'),
    ('Андский кондор', 'Птицы', 'Темный', 'Птицы','2'),
    ('Папуанский пингвин', 'Пингвин', 'Маленький', 'Птицы','3'),
    ('Антарктический пингвин', 'Пингвин', 'Желтый', 'Птицы','3'),
    ('Пингвин Адели', 'пингвин', 'Игривый', 'Птицы','3'),
    ('Королевский пингвин', 'Пингвин', 'Боязливый', 'Птицы','3'),
    ('Магелланов пингвин', 'Пингвин', 'Наглый', 'Птицы','3'),
    ('Хохлатый пингвин', 'Пингвин', 'Маленький', 'Птицы','3'),
    ('Золотоволосый пингвин', 'Пингвин', 'Темный', 'Птицы','3'),
    ('Амурский тигр', 'Тигры', 'Злой', 'Кошачьи','2'),
    ('Бенгальский тигр', 'Тигры', 'Мягкий', 'Кошачьи','2'),
    ('Индокитайский тигр', 'Тигры', 'Спокойный', 'Кошачьи','2'),
    ('Малайский тигр', 'Тигры', 'Обычный', 'Кошачьи','2'),
    ('Азиатский лев', 'Львы', 'Длинный хвост', 'Кошачьи','2'),
    ('Сенегальский лев', 'Львы', 'Маленькие уши', 'Кошачьи','2'),
    ('Североконголезский лев', 'Львы', 'Лысый', 'Кошачьи','2'),
    ('Восточноафриканский лев', 'Львы', 'Серый', 'Кошачьи','2'),
    ('Макаки резусы', 'Приматы', 'Вор', 'Приматы','4'),
    ('Макаки японские', 'Приматы', 'Ленивый', 'Кошачьи','4')



INSERT INTO ListAnimalTypeInCell
    ( -- columns to insert data into
    [cellID],[typeID]
    )
VALUES
    ('1', '19'),--leo
    ('1', '20'),--leo
    ('2', '15'),--leo
    ('2', '16'),--leo
    ('2', '17'),--leo
    ('2', '18'),--leo
    ('3', '1'),--leo
    ('3', '2'),--leo
    ('3', '3'),--leo
    ('4', '11'),--leo
    ('4', '12'),--leo
    ('4', '13'),--leo
    ('4', '14'),--leo
    ('5', '4'),--leo
    ('5', '5'),--leo
    ('5', '6'),--leo
    ('5', '7'),--leo
    ('5', '8'),--leo
    ('5', '9'),--leo
    ('5', '10')--leo


INSERT INTO Exchanges
    ( -- columns to insert data into
    [Number exchange],[Whom give],[Whom take],[Date exchange],[zooparkID]
    )
VALUES
    ('1', 'чк-572', 'В067СТ27', '25.05.2018','1'),
    ('2', 'фы-354', 'Т060РМ86', '05.11.2018','2'),
    ('3', 'пр-391', 'С443УУ54', '09.09.2020','3')


INSERT INTO PassportAnimal
    ( -- columns to insert data into
    [Number passport],[Name],[Sex],[Parents],[Data Birth],[Childs],[MedicalCardID],[typeID]
    )
VALUES
    ('М698АК60', 'Стимми', 'М', 'Гринго, Шакура', '03.12.2018', '-','2','15'),
    ('В067СТ27', 'Абрам', 'М', 'Джасмин, Пуаро', '16.11.2015', '-','1','2'),
    ('Е277ЕУ23', 'Носишка', 'М', 'Гуслёр, Васаби', '23.08.2015', 'Грация Р260НВ82, Сусанна У613НЕ50','3','7')
  /*  ('Р260НВ82', 'Грация', 'Ж', 'Илла, Носишка', '20.07.2019', '-','-','-'),
    ('Т727ХЕ37', 'Илла', 'Ж', 'Отелло, Иланка', '05.01.2017', 'Грация Р260НВ82, Сусанна У613НЕ50','-','-'),
    ('У613НЕ50', 'Сусанна', 'Ж', 'Илла, Носишка', '20.07.2019', '-','-','-'),
    ('А167УМ49', 'Лепешка', 'Ж', 'Чеба, Принцесса', '13.02.2018', '-','-','-'),
    ('В567АХ88', 'Фиеста', 'Ж', 'Башка, Марина', '10.09.2017', 'Гоги К682МА25','-','-'),
    ('Р122ОР49', 'Яжела', 'Ж', 'Сатива, Руся', '25.10.2019','-' ,'-','-'),
    ('К682МА25', 'Гоги', 'М', 'Фиеста, Хлинк', '16.11.2020', '-','-','-'),
    ('Е113ТВ39', 'Мадор', 'М', 'Шахмал, Желана', '20.05.2013', '-','-','-'),
    ('В439ОК40', 'Джуня', 'М', 'Дальма, Юкрэйн', '07.04.2015', '-','-','-'),
    ('Х978НВ13', 'Гена', 'М', 'Филлис, Зэля', '07.09.2013', '-','-','-'),
    ('С924КН01', 'Хлинк', 'М', 'Эрика, Лорди', '29.09.2018', 'Гоги К682МА25','-','-'),
    ('В607ХЕ89', 'Колетта', 'Ж', 'Мэлвин, Арка', '23.04.2016', '-','-','-'),
    ('Р231КН16', 'Принцилла', 'Ж', 'Чероки, Буга', '22.10.2015', '-','-','-'),
    ('В641ТА63', 'Мелания', 'Ж', 'Далси, Готен', '06.11.2016', '-','-','-'),
    ('К671УО49', 'Ула', 'Ж', 'Аат, Сальвина', '04.02.2018', '-','-','-'),
    ('Т739МВ96', 'Боничита', 'Ж', 'Маркиз, Мельрозе', '27.01.2015', '-','-','-'),
    ('К622АО76', 'Аюрчи', 'Ж', 'Нея, Нэп', '21.12.2013', '-','-','-'),
    ('Т060РМ86', 'Полночь', 'М', 'Роуз, Япин', '13.02.2019', '-','-','-'),
    ('Х836НН33', 'Еремей', 'М', 'Рио, Вобла', '14.07.2020', '-','-','-'),
    ('К345ХН80', 'Чейз', 'М', 'Златовласка, Нарцисс', '28.02.2015', '-','-','-'),
    ('О178КУ73', 'Зуза', 'М', 'Инди, Сенг', '05.05.2020', '-','-','-'),
    ('С443УУ54', 'Пуллу', 'М', 'Амур, Бенга', '11.05.2020', '-','-','-'),
    ('В824СХ43', 'Спитл', 'М', 'Шер, Майна', '18.09.2017', '-','-','-'),
    ('Х349УУ58', 'Мерни', 'М', 'Колинс, Милашка', '28.11.2017', '-','-','-')*/


INSERT INTO Responsibility
    ( -- columns to insert data into
    [Date start],[Date end],[passportAnimaID]
    )
VALUES
    ('16.06.2014', '24.11.2015','1'),--leo
    ('05.09.2020', '14.11.2020','2'),--ptaha
    ('26.07.2013', '28.05.2017','3')--makaka
   /* ('10.09.2017', '10.09.2021','-'),
    ('06.09.2019', '30.04.2020','-'),
    ('24.10.2014', '01.02.2019','-'),
    ('10.10.2018', '24.04.2020','-'),
    ('29.05.2017', '26.07.2018','-')*/


INSERT INTO Employee
    ( -- columns to insert data into
    [Full name],[Salarity],[Sex],[Age],[Experience],[jobID]
    )
VALUES
    ('Полотенцев Ефрем Георгиевич', '324 $', 'М', '34 года', '5 лет','4'),
    ('Безбородов Филипп Григорьевич', '453 $', 'М', '40 лет', '8 лет','2'),
    ('Борева Виктория Филипповна', '784 $', 'Ж', '59 лет', '20 лет','1'),--leo
    ('Самохин Максим Феоктистович', '624 $', 'М', '52 года', '13 лет','1'),--ptaha
    ('Панарина Зинаида Алексеевна', '454 $', 'Ж', '26 лет', '3 года','2'),
    ('Буриличева Любовь Константиновна', '564 $', 'Ж', '38 лет', '9 лет','3'),
    ('Чернышев Федор Федорович', '520 $', 'М', '48 лет', '11 лет','3'),
    ('Яблонская Анна Семеновна', '770 $', 'Ж', '57 лет', '15 лет','1'),--makaka
    ('Кунаковская Анфиса Романовна', '631 $', 'Ж', '34 года', '8 лет','1'),
    ('Шабунина Серафима Ефимовна', '742 $', 'Ж', '37 лет', '13 лет','1'),
    ('Сурков Игнат Афанасьевич', '1000 $', 'М', '35 года', '10 лет','5'),
    ('Коротченко Ефим Яковеевичевич', '425 $', 'М', '28 года', '3 года','4')


    INSERT INTO InteractionFamilyList
    ( -- columns to insert data into
    [employeeID],[typeID]
    )
VALUES
    ('3','15'),
    ('3','16'),
    ('3','17'),
    ('3','18'),
    ('4','1'),
    ('4','2'),
    ('4','3'),
    ('8','19'),
    ('8','20')


INSERT INTO ResponsibilityList
    ( -- columns to insert data into
    [employeeID],[responsibilityID]
    )
VALUES
    ('3', '1'),--leo
    ('4', '2'),--ptaha
    ('8', '3')--makaka


INSERT INTO Animal
    ( -- columns to insert data into
    [Weigth],[Hight],[Date join],[Warm],[Move],[cellID],[passportAnimaID]
    )
VALUES
    ('116 см', '186 кг', '03.12.2019', 'Yes', 'No','2','1'),-- leo Стимми /Стимми
    ('47 см', '1 кг', '16.11.2016', 'Yes', 'No','3','2'),--ptaha Обыкновенный канюк /Абрам
    ('39 см', '13 кг', '23.08.2016', 'Yes', 'No','5','3')--ping /Носишка
/*    ('94 см', '134 кг', '20.07.2020', 'Yes', 'No','2','9'),--samka leo /Яжела
    ('98 см', '120 кг', '06.11.2017', 'Yes', 'No','2','18'),--samka leo /Мелания
    ('102 см', '135 кг', '04.02.2019', 'Yes', 'No','2','19')--samka leo /Ула
    ('92 см', '119 кг', '20.12.2018', 'Yes', 'No','2','7'),--samka leo  /Лепешка
    ('123 см', '187 кг', '18.09.2018', 'Yes', 'No','-','-'),-- leo Спитл /Спитл
    ('120 см', '9 кг', '20.05.2014', 'Yes', 'No','-','-'),--ptaha Снежный гриф /Мадор
    ('115 см', '10 кг', '07.04.2015', 'Yes', 'No','-','-'),--ptaha Андский кондор /Джуня
    ('145 см', '285 кг', '07.09.2014', 'Yes', 'No','-','-'),--tigr Амурский тигр  /Гена
    ('105 см', '240 кг', '29.09.2019', 'Yes', 'No','-','-'),--tigr Бенгальский тигр /Хлинк
    ('95 см', '105 кг', '27.01.2016', 'Yes', 'No','-','-'),--tigr samka Индокитайский тигр /Боничита
    ('87 см', '89 кг', '21.12.2014', 'Yes', 'No','-','-'),--tigr samka Малайский тигр /Аюрчи
    ('65 см', '8 кг', '23.04.2017', 'Yes', 'No','-','-'),--samka makaki /Колетта
    ('70 см', '7 кг', '22.10.2016', 'Yes', 'No','-','-'),--samka makaki /Принцилла
    ('68 см', '13 кг', '13.02.20120', 'Yes', 'No','-','-'),-- makaki /Полночь
    ('64 см', '15 кг', '14.07.2021', 'Yes', 'No','-','-'),-- makaki /Еремей
    ('100 см', '30 кг', '05.01.2018', 'Yes', 'No','-','-'),--samka ping /Илла
    ('75 см', '22 кг', '20.07.2019', 'Yes', 'No','-','-'),--samka ping /Грация
    ('60 см', '18 кг', '20.07.2019', 'Yes', 'No','-','-'),--samka ping /Сусанна
    ('48 см', '20 кг', '10.09.2018', 'Yes', 'No','-','-'),--samka ping /Фиеста
    ('74 см', '16 кг', '28.02.2016', 'Yes', 'No','-','-'),--ping /Чейз
    ('81 см', '15 кг', '20.05.2021', 'Yes', 'No','-','-'),--ping  /Зуза
    ('57 см', '19 кг', '16.11.2020', 'Yes', 'No','-','-'),--ping /Гоги
    ('63 см', '24 кг', '28.11.2018', 'Yes', 'No','-','-'),--ping /Мерни
    ('77 см', '21 кг', '20.05.2021', 'Yes', 'No','-','-')--ping /Пуллу*/


    
GO

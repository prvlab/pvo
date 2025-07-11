///////////////////////////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2023, ООО 1С-Софт
// Все права защищены. Эта программа и сопроводительные материалы предоставляются 
// в соответствии с условиями лицензии Attribution 4.0 International (CC BY 4.0)
// Текст лицензии доступен по ссылке:
// https://creativecommons.org/licenses/by/4.0/legalcode
///////////////////////////////////////////////////////////////////////////////////////////////////////

#Область ОбработчикиСобытийФормы

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	Таблица = МашиночитаемыеДоверенностиФНСПовтИсп.КлассификаторОграничений();
	ТаблицаОграничений.Загрузить(Таблица);
	
КонецПроцедуры

#КонецОбласти

#Область ОбработчикиСобытийЭлементовТаблицыФормы

&НаКлиенте
Процедура ТаблицаВыбор(Элемент, ВыбраннаяСтрока, Поле, СтандартнаяОбработка)
	
	Выбрать(Неопределено);
	
КонецПроцедуры

#КонецОбласти

#Область ОбработчикиКомандФормы

&НаКлиенте
Процедура Выбрать(Команда)
	
	Если Элементы.ТаблицаОграничений.ТекущиеДанные = Неопределено Тогда
		Возврат;
	КонецЕсли;
	
	Результат = Новый Структура("Код, Наименование, ОписаниеТипа, ЭтоТекстовоеЗначение, Описание");
	ЗаполнитьЗначенияСвойств(Результат, Элементы.ТаблицаОграничений.ТекущиеДанные);
	
	Закрыть(Результат);
	
КонецПроцедуры

#КонецОбласти
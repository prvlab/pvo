
&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка) 
	
	Список.Отбор.Элементы.Очистить();
	ЭлементОтбора = Список.Отбор.Элементы.Добавить(Тип("ЭлементОтбораКомпоновкиДанных"));
	ЭлементОтбора.ЛевоеЗначение = новый ПолеКомпоновкиДанных("Контрагент");
	ЭлементОтбора.Использование = Истина;
	ЭлементОтбора.ПравоеЗначение = Параметры.Наименование; 

КонецПроцедуры

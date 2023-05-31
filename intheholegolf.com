**ID golf_bug1**
Name: Карточка товара. Отсутствует изображение товара.

Критичность: Незначительный

Окружение: Chrome 113.0.5672.127 x64
Шаги:

1. Перейти на страницу товара https://www.intheholegolf.com/MIZ16-260268-8989/Mizuno-Sonic-Golf-Hat---Claret.html

ОР: Отображается изображение и информация о товаре.
ФР: Изображение товара отсутсвует. https://www.intheholegolf.com/img/mizuno/2016-mizuno-sonic-golf-hat-claret-2.jpg


**ID golf_bug2**
Name: Карточка товара. Добавление в корзину товара с количеством 0

Окружение: Chrome 113.0.5672.127 x64

Шаги:

  1. Перейти на страницу любого товара.

1. В поле Quantity поставить 0.
2. Нажать кнопку ADD TO CART.

ОР: Появление сообщения с ошибкой о невалидном значении в поле Quantity 
ФР: Открывается страница корзины с сообщением “Your shopping basket is currently empty.”


**ID golf_bug3**
Name: Карточка товара. Добавление в корзину товара с количеством 99999

Окружение: Chrome 113.0.5672.127 x64

Шаги:

  1. Зайти на страницу любого товара

1. В поле Quantity поставить 99999
2. Нажать кнопку ADD TO CART

ОР: Появление сообщения с ошибкой о невалидном значении в поле Quantity 
ФР: 99999 единиц товара добавлены в корзину.


**ID golf_bug4**
Name: Проверка статуса заказа. Проверка статуса заказа с незаполненными полями

Окружение: Chrome 113.0.5672.127 x64
Шаги:

1.Зайти на страницу ORDER STATUS (https://www.intheholegolf.com/Merchant2/merchant.mvc?&Screen=order-status&Store_Code=ITHG)
2. Нажать кнопку Submit.

ОР: Появление сообщения с ошибкой “Cannot find order.”
ФР: Происходит переадресация на страницу https://www.stoneedge.net/setistatus/checkstatus.asp с сообщением “Cannot find order.”


**ID golf_bug5**
Name: Проверка статуса заказа. Проверка статуса заказа c невалидными номером заказа и email

Окружение: Chrome 113.0.5672.127 x64
Шаги:

1.Зайти на страницу ORDER STATUS (https://www.intheholegolf.com/Merchant2/merchant.mvc?&Screen=order-status&Store_Code=ITHG)

1. В поле Order Number ввести невалидное значение(например, dsuhfusdhf)
2. В поле Email ввести невалидный email(например, test@test)
3. Нажать кнопку Submit.

ОР: Появление сообщения с ошибкой “The order information you requested was not found, please try again later.”
ФР: Происходит переадресация на страницу https://www.stoneedge.net/setistatus/checkstatus.asp с сообщением “The order information you requested was not found, please try again later.”


**ID golf_bug6**
Name: Проверка статуса заказа. Проверка статуса заказа c пустым полем email

Окружение: Chrome 113.0.5672.127 x64
Шаги:

1. Зайти на страницу ORDER STATUS. (https://www.intheholegolf.com/Merchant2/merchant.mvc?&Screen=order-status&Store_Code=ITHG)
2. В поле Order Number ввести любое значение.
3.  Нажать кнопку Submit.

ОР: Появление сообщения с ошибкой “Missing order information.”
ФР: Происходит переадресация на страницу https://www.stoneedge.net/setistatus/checkstatus.asp с сообщением “Missing order information.”

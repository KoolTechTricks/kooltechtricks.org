# [Расширения для браузера](#browser-extensions)

Расширения и дополнения для браузера, которые улучшат опыт провождения в сети и
повысят уровень конфиденциальности.

## [Виды браузеров](#browser-types)

### [Chromium](#chromium)

Относится большинство браузеров на ПК: Google Chrome, Microsoft Edge, Brave,
Opera, Vivaldi, Яндекс. На Android устанавливать расширения позволяет
[Kiwi Browser](https://play.google.com/store/apps/details?id=com.kiwibrowser.browser).

Основным каталогом расширений является
[Интернет-магазин Chrome](https://chromewebstore.google.com). Для отдельных
браузеров могут быть свои каталоги, например, для
[Edge](https://microsoftedge.microsoft.com/addons/Microsoft-Edge-Extensions-Home).

Чтобы устанавливать расширения вне каталога, нужно включить режим разработчика
на странице `chrome://extensions` (ссылка может отличаться в зависимости от
браузера), после чего появится возможность загрузить расширение из папки.

> **Внимание:** В июне 2024 года
[в Google Chrome планируется отключить расширения на Manifest V2.](https://developer.chrome.com/blog/resuming-the-transition-to-mv3)
Многие блокировщики контента (например, [uBlock Origin](/wiki/ublock_origin))
утратят свою эффективность. Если вы хотите продолжать пользоваться такими
расширениями, рекомендуется перейти на другой браузер, например, Firefox (не
Chromium) или Brave (форк Chromium).
[Подробнее](https://t.me/KoolTechTricks/116)

### [Firefox](#firefox)

Основаны на Firefox для ПК: LibreWolf, Waterfox, Floorp; и для Android: Fennec,
Iceraven.

Расширения для Firefox можно найти в [каталоге](https://addons.mozilla.org).
Здесь также есть расширения для Android, они есть и
[в отдельном списке](https://addons.mozilla.org/android).

В ПК-версии для установки расширения из файла нужно перейти на страницу
управления расширениями (`about:addons`) и найти в шестерёнке соответствующий
пункт меню.

Для Android-версии такая возможность доступна в
[Firefox Nightly](https://play.google.com/store/apps/details?id=org.mozilla.fenix).
Для этого нужно нажать несколько раз на логотип Firefox в меню "О Firefox",
после чего в настройках появится пункт "Установить дополнение из файла" после
пункта "Дополнения".

### [WebKit (Safari)](#webkit-safari)

> **Внимание:** Этот раздел необходимо дополнить информацией.
[Узнайте как помочь](https://github.com/KoolTechTricks/pages/blob/main/CONTRIBUTING.md)

Относятся Safari и GNOME Web (Epiphany).

За пределами Европейского Союза все браузеры на iOS, независимо от их
изначальной версии (Chromium, Firefox) основаны на WebKit. Из-за этого
расширения могут отсутствовать. Тем не менее, у некоторых расширений есть версия
для Safari в AppStore, но она может быть платная.

## [Пользовательские скрипты](#user-scripts)

Пользовательские скрипты позволяют делать почти то же самое, что и расширения.
Код скриптов можно посмотреть, но он всё равно может быть вредоносный.

Для пользовательских скриптов требуется установить специальное расширение
[Tampermonkey](https://www.tampermonkey.net) или
[Violentmonkey](https://violentmonkey.github.io) (с открытым исходным кодом).
Чтобы установить скрипт, нужно открыть страницу с исходным текстом, и расширение
должно его определить и предложить установку.

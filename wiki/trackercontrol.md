# [TrackerControl](#trackercontrol)
> Categories: Android, Privacy

[TrackerControl](https://trackercontrol.org) — приложение для Android, которое
позволяет пользователям отслеживать и блокировать скрытый сбор данных в других
приложениях.

![TrackerControl показывает сколько компаний пыталось собрать данные и на какие
серверы](/media/trackercontrol.jpg)

## [Применение](#utilization)

Многие мобильные приложения содержат скрытые трекеры, которые собирают данные о
пользователях с целью технической аналитики и продажи третьим лицам ради
персонализированной рекламы.

TrackerControl блокирует попытки трекинга по аналогии с расширениями типа
[uBlock Origin](/wiki/ublock_origin), но действует в рамках всего устройства, а
не браузера.

## [Установка](#installation)

Приложение доступно только для Android. Для iOS есть лишь
[сайт](https://ios.trackercontrol.org), который содержит информацию о трекерах в
приложениях.

- [GitHub](https://github.com/TrackerControl/tracker-control-android/releases) и
[F-Droid](https://f-droid.org/packages/net.kollnig.missioncontrol.fdroid)
— полная версия
- [Google Play](https://play.google.com/store/apps/details?id=net.kollnig.missioncontrol.play)
— урезанная версия, не блокирует трекеры
- [Прямая ссылка на установочный файл](https://github.com/TrackerControl/tracker-control-android/releases/latest/download/TrackerControl-githubRelease-latest.apk)

## [Использование](#usage)

TrackerControl локально анализирует весь интернет-трафик в фоновом режиме. Это
может расходовать энергию. В итоге, блокируются запросы на серверы, замеченные в
сборе данных. Можно разрешать или блокировать определённые домены и категории
для каждого приложения. Также можно включить сохранение всего трафика в журнал.

Это приложение с
[открытым исходным кодом](https://github.com/TrackerControl/tracker-control-android).
Разработка ведется при поддержке отделения компьютерных наук Оксфорда. В любом
случае, 100% защита от трекеров не гарантирована.

> **Осторожно:** Бывают ложные срабатывания, которые приводят к сбоям в
некоторых приложениях. По умолчанию блокируется большинство запросов, поэтому
влияние TrackerControl не всегда очевидно.
>
> Если вы столкнётесь с бесконечной загрузкой в каком-либо приложении (например,
браузере или почтовом клиенте), то потребуется вручную отключить мониторинг
TrackerControl для этого приложения.

## [Смотрите также](#see-also)

- [uBlock Origin](/wiki/ublock_origin)

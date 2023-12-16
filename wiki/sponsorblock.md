# SponsorBlock
> Categories: Browser_Extensions, YouTube

[SponsorBlock](https://sponsor.ajay.app) — расширение и API для пропуска
спонсированных сегментов в видео на YouTube. Оно основано на краудсорсинге:
пользователи могут предложить новые сегменты или исправить уже существующие,
чтобы затем расширение их автоматически пропускало для других. Также
поддерживается пропуск других категорий, таких как интро, напоминания о
подписке, переход к важной части.

![Скриншот плеера YouTube с установленным расширением SponsorBlock.
Рекламные сегменты помечены цветом и автоматически пропускаются при их
достижении.](/media/sponsorblock.jpg)

## Применение

SponsorBlock предназначен для автоматического пропуска и заглушения рекламных
интеграций в видео. Такого рода блокировщик рекламы в теории может вредить
авторам, так как отсутствие времени просмотра сегмента снижает статистику для
рекламодателя, из-за чего автор получает меньшую прибыль. Но,
*предположительно*, рекламодатели платят за количество просмотров и переходы
по реферальным ссылкам, ведь большинство пропускает рекламу вручную. Тем не
менее, возможно добавить каналы в белый список, чтобы расширение не
активировалось при просмотре видео с этих каналов.

Также расширение добавляет метки о полностью проспонсированных видео, что может
помочь при просмотре обзоров. Эти метки устанавливают пользователи, поэтому
информация должна быть подтверждена.

Кроме рекламы, можно фильтровать следующие сегменты:

- Напоминания о подписке
- Интро / Аутро
- Окончание видео
- Показ отрывков из видео в начале
- Шутки
- Тишина в музыкальных видео

Это можно использовать для экономии времени на пропуске надоедливых сегментов.

## Установка

### ПК

Официальное расширение:

- [Firefox](https://addons.mozilla.org/addon/sponsorblock) и все производные
(LibreWolf, Waterfox, Floorp)
- [Chromium](https://chrome.google.com/webstore/detail/mnjggcdmjocbbbhaepdhchncahnbgone)
и все производные (Google Chrome, Microsoft Edge, Brave, Opera, Vivaldi, Яндекс)
- [Microsoft Edge](https://github.com/ajayyy/SponsorBlock/wiki/Edge)
- [Safari](https://github.com/ajayyy/SponsorBlock/wiki/Safari)

Это расширение работает для официального сайта YouTube. В настройках
можно включить сторонние сайты Invidious, CloudTube, Piped, YouTube Kids.

### Android

Есть несколько способов установки, [см. все](https://github.com/ajayyy/SponsorBlock/wiki/Android)
(англ).

- Расширение в
[Firefox](https://addons.mozilla.org/android/addon/sponsorblock) для мобильной
версии YouTube.
- Сторонние приложения:
[форк NewPipe](https://github.com/polymorphicshade/NewPipe#newpipe-x-sponsorblock),
[LibreTube](https://github.com/libre-tube/LibreTube),
[SkyTube](https://github.com/SkyTubeTeam/SkyTube),
[Clipous](https://github.com/lamarios/clipious).

### iOS

Есть несколько способов установки, [см. все](https://github.com/ajayyy/SponsorBlock/wiki/iOS)
(англ).

- Расширение в [Safari](https://github.com/ajayyy/SponsorBlock/wiki/Safari)
- Стороннее приложение [Yatee](https://apps.apple.com/app/yattee/id1595136629)
- Jailbreak [iSponsorBlock](https://github.com/Galactic-Dev/iSponsorBlock) в
официальном приложении.

### Телевизор

- [SmartTubeNext](https://github.com/yuliskov/SmartTubeNext) для Android TV
- Для [Chromecast](https://github.com/yuliskov/SmartTubeNext)
- Для [Apple TV](https://github.com/dmunozv04/iSponsorBlockTV)

### Прочее

Ознакомиться со всеми [портами](https://github.com/ajayyy/SponsorBlock/wiki/3rd-Party-Ports)

## Конфигурация

Официальное расширение предоставляет множество настроек.

Сегменты:

- Пропускать автоматически
- Пропускать вручную
- Показывать на шкале просмотра
- Показывать как эпизоды
- Минимальное время для отображения сегмента

Интерфейс:

- Настройка поведения и отображения уведомления
- Настройка кнопки меню
- Показывать время видео без включённых сегментов

Горячие клавиши:

- Пропустить сегмент (`Enter`)
- Начать/остановить запись сегмента (`;`)
- Отправить сегменты (`'`)
- Следующий эпизод (`Ctrl`+`СтрелкаВправо`)
- Предыдущий эпизод (`Ctrl`+`СтрелкаВлево`)

Возможен экспорт, импорт и сброс настроек и своих данных.

## Краудсорсинг

Чтобы расширение знало, где находятся реклама и другие сегменты, необходимо,
чтобы кто-то отправил таймкоды. На большинстве англоязычных и русскоязычных
видео уже проставлены необходимые сегменты в правильном порядке. Согласно
статистике сервера, более 13 миллионов пользователей отправили более 14
миллионов сегментов.

### Внести вклад

Для того, чтобы отправить свой сегмент или исправить уже существующий,
необходимо воспользоваться официальным расширением. Иконка с щитом и
треугольником в плеере начинает запись сегмента, после чего можно выбрать
категорию и отправить. Здесь же можно посмотреть результат и
ознакомиться с краткими инструкциями.

![Скриншот, показывающий основной интерфейс отправки сегментов.](/media/sponsorblock_creating_segments.jpg)

> [info]
> **См. также**
>
> [Создание сегментов](https://wiki.sponsor.ajay.app/w/Creating_Segments) (англ.)
>
> [Принципы и методика](https://wiki.sponsor.ajay.app/w/Guidelines) (англ.)
>
> [Советы и рекомендации](https://wiki.sponsor.ajay.app/w/Advice_for_submitting) (англ.)

Помощь является анонимной и не требует регистрации. Тем не менее, есть список
лидеров, кто больше внёс вклад. Своё отображаемое имя можно сменить в меню
расширения.

## Открытость

Расширение и [API](https://wiki.sponsor.ajay.app/w/API_Docs) с
[открытым исходным кодом](https://github.com/ajayyy/SponsorBlock). Это
позволяет интегрировать возможности SponsorBlock в
[другие приложения](https://github.com/ajayyy/SponsorBlock/wiki/3rd-Party-Ports).

[База данных](https://sponsor.ajay.app/database) открыта и доступна всем для
скачивания.

Можно запустить [собственный сервер](https://github.com/mchangrh/sb-mirror)
в случае отказа работы официального.

## Исправление проблем

- [Статус сервера](https://status.sponsor.ajay.app/)
- Проблемы на [GitHub](https://github.com/ajayyy/SponsorBlock/issues)
- Поддержка в
[Matrix](https://matrix.to/#/#sponsor:ajay.app)
и [Discord](https://discord.gg/SponsorBlock) (англ.)
- Обновления и новости в [Mastodon](https://fosstodon.org/@sponsorblock) и
[X (Twitter)](https://twitter.com/SponsorBlock) (англ.)

## См. также

- [DeArrow](/wiki/dearrow.html)
- [YouTube](/wiki/youtube.html)

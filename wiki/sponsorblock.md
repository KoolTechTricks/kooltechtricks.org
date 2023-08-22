# SponsorBlock
> browser_extensions, youtube

![screenshot](/media/sponsorblock.jpg)

[SponsorBlock](https://sponsor.ajay.app) — расширение и API для пропуска
спонсированных сегментов в видео на YouTube. Оно основано на краудсорсинге:
пользователи могут предложить новые сегменты или исправить уже существующие,
чтобы затем расширение автоматически пропускало их для других. Также
поддерживается пропуск других категорий, таких как интро, напоминания о
подписке, переход к важной части.

## Применение
SponsorBlock предназначен для автоматического пропуска рекламных интеграций в
видео. Такого рода блокировщик рекламы в теории может вредить авторам, так как
отсутствие времени просмотра сегмента снижает статистику для рекламодателя,
из-за чего автор получает меньшую прибыль. Но, *предположительно*,
рекламодатели платят за количество просмотров и переходы по реферальным
ссылкам, ведь большинство пропускает рекламу вручную. Тем не менее,
возможно добавить каналы в белый список, чтобы расширение не активировалось
при просмотре видео с этих каналов.

Расширение также может сообщать пользователю о полностью проспонсированных
видео, что может помочь при просмотре обзоров. Однако, не стоит забывать, что
эти метки устанавливают такие же зрители как вы, так что информация должна быть
подтверждена.

Кроме пропуска рекламы расширение предлагает возможность пропускать и другие
надоедливые сегменты, такие как напоминание о подписке, интро,
преход к важной части. Таким образом, можно сэкономить время. Возле общего
времени длительности видео будет написана длительность без указанных сегментов.

## Установка
### ПК
Официальное расширение можно установить для следующих браузеров:

- [Firefox](https://addons.mozilla.org/addon/sponsorblock) и все производные
(LibreWolf, Waterfox, Floorp)
- [Chromium](https://chrome.google.com/webstore/detail/mnjggcdmjocbbbhaepdhchncahnbgone)
и все производные (Google Chrome, Microsoft Edge, Brave, Opera, Vivaldi, Яндекс)
- [Microsoft Edge](https://github.com/ajayyy/SponsorBlock/wiki/Edge)
- [Safari](https://github.com/ajayyy/SponsorBlock/wiki/Safari) + iOS

### Android
Есть несколько способов по установке, [см. все](https://github.com/ajayyy/SponsorBlock/wiki/Android)
(англ).

- Расширение в
[Firefox Beta](https://play.google.com/store/apps/details?id=org.mozilla.firefox_beta)
для мобильной версии YouTube.
- Сторонние приложения:
[форк NewPipe](https://github.com/polymorphicshade/NewPipe#newpipe-x-sponsorblock),
[LibreTube](https://github.com/libre-tube/LibreTube),
[SkyTube](https://github.com/SkyTubeTeam/SkyTube),
[Clipous](https://github.com/lamarios/clipious).

### iOS
Есть несколько способов по установке, [см. все](https://github.com/ajayyy/SponsorBlock/wiki/iOS)
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

## Краудсорсинг
Чтобы расширение знало, где находятся реклама и другие сегменты, необходимо,
чтобы кто-то отправил таймкоды. На большинстве англоязычных и русскоязычных
видео уже проставлены необходимые сегменты в правильном порядке. Согласно
статистике сервера, более 13 миллионов пользователей отправили более 14
миллионов сегментов.

### Внести вклад
Для того, чтобы отправить свой сегмент или исправить уже существующий,
необходимо воспользоваться интерфейсом в плеере. Иконка с щитом и треугольником
начинает запись сегмента, после чего можно выбрать категорию и отправить. Здесь
же можно посмотреть результат и ознакомиться с краткими инструкциями. Подробнее
про интерфейс на [официальной вики SponsorBlock](https://wiki.sponsor.ajay.app/w/Creating_Segments)
(англ.)

> [info]
> **См. также**
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

Можно поднять [собственный сервер](https://github.com/mchangrh/sb-mirror)
в случае отказа работы официального.

## Исправление проблем

- [Статус сервера](https://status.sponsor.ajay.app/)
- Поддержка в
[Matrix](https://matrix.to/#/#sponsor:ajay.app?via=ajay.app&via=matrix.org&via=mozilla.org)
и [Discord](https://discord.gg/SponsorBlock) (англ.)
- Обновления и новости в [Mastodon](https://fosstodon.org/@sponsorblock) и
[Twitter](https://twitter.com/SponsorBlock) (англ.)

## См. также

- DeArrow
- YouTube

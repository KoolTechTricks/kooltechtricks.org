+++
title = 'Return YouTube Dislike'
categories = ['browser-extensions']
aliases = ['/wiki/return_youtube_dislike', '/wiki/return-youtube-dislike']
publishDate = 2023-08-26T13:28:00Z
lastmod = 2024-08-27T17:25:00Z
description = """Расширение и API для возвращения счётчика дизлайков под видео \
на YouTube."""
cover = 'image.webp'
+++

# Return YouTube Dislike
{{< categories >}}

[Return YouTube Dislike](https://returnyoutubedislike.com) — расширение и API
для возвращения счётчика дизлайков под видео на YouTube.

![Расширение Return YouTube Dislike показывает, что на видеообзоре много
дизлайков](image.webp)

## Применение

Счётчик отметок «Не нравится» на YouTube [был отключён] в декабре 2021 года.
Официально это было сделано, так как пользователи ставят дизлайки, потому что
просто хотят увеличить их число. Данное изменение является попыткой защитить
авторов и компании от негатива.

[был отключён]: https://web.archive.org/web/20231016020625/https://www.youtube.com/watch?v=kxOuG8jMIgI

Отключение счётчика дизлайков приводит к появлению проблем. Чтение комментариев
занимает дольше времени и не всегда позволяет сразу понять суть видео, а
неугодные комментарии могут удаляться авторами.

Счётчик дизлайков помогает:

- Найти качественное и эффективное руководство;
- Определить плохой и купленный обзор;
- Предотвратить распространение вредоносного ПО, если автор просит скачать
сомнительные файлы;
- Создать предварительное впечатление от просмотра (много дизлайков =
противоречивое мнение);
- Понять, стоит ли тратить время на просмотр видео.

## Установка

### Официальное расширение

- [Chromium](https://chromewebstore.google.com/detail/gebbhagfogifgggkldgodflihgfeippi)
- [Firefox](https://addons.mozilla.org/firefox/addon/return-youtube-dislikes)
(Только ПК)
- [Пользовательский скрипт](https://raw.githubusercontent.com/Anarios/return-youtube-dislike/main/Extensions/UserScript/Return%20Youtube%20Dislike.user.js)
(Tampermonkey)

### Сторонние реализации

- [Piped](https://piped.video)
    - Android: [LibreTube](https://github.com/libre-tube/LibreTube)
- Android: [Tubular](https://github.com/polymorphicshade/Tubular)
- iOS: [Jailbreak](https://chariz.com/get/return-youtube-dislike)

У Return YouTube Dislike есть поводы для беспокойства, из-за которых не все
разработчики желают добавлять функциональность в свои приложения:

- [NewPipe](https://github.com/TeamNewPipe/NewPipe/issues/7469#issuecomment-1003392155)
- [Invidious](https://github.com/iv-org/invidious/pull/2781#issuecomment-1025263083)

## Устройство

Счётчик основан на архивных данных до отключения и экстраполированном поведении
пользователей расширения. Если вы оцениваете видео, то это записывается и
отправляется в базу данных, так что число дизлайков может быть аккуратно
вычислено. Значение дизлайков выглядит очень реалистичным, реализована система
противостояния бот-атакам.

Расширение собирает только те данные, которые строго необходимы для его работы,
такие как ID просматриваемого видео, IP-адрес (хранится в оперативной памяти
сервера) и уникальный идентификатор, не привязанный к аккаунту (необходим для
борьбы с ботами).

У расширения [открытый исходный код], но у сервера закрытый.

[открытый исходный код]: https://github.com/Anarios/return-youtube-dislike

> **Смотрите также:** [Ответы на вопросы](https://returnyoutubedislike.com/faq),
[Безопасность](https://github.com/Anarios/return-youtube-dislike/blob/main/Docs/SECURITY-FAQru.md)

## Исправление проблем

Если у вас возникают проблемы с отображением элементов, то, вероятно, произошли
изменения в интерфейсе YouTube. Разработчики расширения, скорее всего, уже знают
об этом и работают над исправлением. Вы можете проверить следующие ресурсы,
чтобы узнать о статусе исправления ошибок:

- [Исправление проблем](https://returnyoutubedislike.com/help)
- [Отчёты об ошибках](https://github.com/Anarios/return-youtube-dislike/issues)
- Чат в [Discord](https://discord.com/invite/mYnESY4Md5)

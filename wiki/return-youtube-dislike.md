+++
title = 'Return YouTube Dislike'
categories = ['browser-extensions', 'youtube']
aliases = ['return_youtube_dislike']
publishDate = '2023-08-26T13:28:00Z'
lastmod = '2023-12-24T11:58:54Z'
summary = """Расширение, которое возвращает счётчик дизлайков под видео на \
YouTube."""
cover = '/media/return_youtube_dislike.png'
+++

# Return YouTube Dislike
{{< categories >}}

[Return YouTube Dislike](https://returnyoutubedislike.com) — расширение,
которое возвращает счётчик дизлайков под видео на YouTube.

![Видео, которое имеет большую часть дизлайков](/media/return_youtube_dislike.png)

## Применение

Счётчик отметок «Не нравится» был отключён в декабре 2021 года. Официально это
было сделано, так как пользователи ставят дизлайки, потому что просто хотят
увеличить их число. Данное изменение является попыткой защитить авторов и
компании от негатива.

Однако с этим появляются новые проблемы:

- При поиске руководства трудно понять его качество
- Стоит ли тратить время на просмотр видео. Если на видео много дизлайков, то
это создаёт определённый настрой, что в этом видео будет противоречивое мнение

## Установка

### Официальное расширение

- [Chromium](https://chrome.google.com/webstore/detail/return-youtube-dislike/gebbhagfogifgggkldgodflihgfeippi)
и все производные (Google Chrome, Microsoft Edge, Brave, Opera, Vivaldi, Яндекс)
- [Firefox](https://addons.mozilla.org/firefox/addon/return-youtube-dislikes)
- [Пользовательский скрипт (Tampermonkey)](https://github.com/Anarios/return-youtube-dislike/raw/main/Extensions/UserScript/Return%20Youtube%20Dislike.user.js)

### Сторонние порты

- Android: [Форк NewPipe](https://github.com/polymorphicshade/NewPipe)
- Android, iOS: [VueTube](https://vuetube.app)
- [iOS Jailbreak](https://chariz.com/get/return-youtube-dislike)

## Как устроено

Счётчик основан на архивных данных до отключения и экстраполированном поведении
пользователей расширения. Если вы оцениваете видео, то это записывается и
отправляется в базу данных, так что число дизлайков может быть аккуратно
вычислено. Значение дизлайков выглядит очень реалистичным, реализована система
противостояния бот-атакам.

Расширение собирает только те данные, которые строго необходимы для его работы,
такие как ID просматриваемого видео, IP-адрес (хранится в оперативной памяти) и
уникальный идентификатор, не привязанный к аккаунту (необходим для борьбы с
ботами).

У расширения
[открытый исходный код](https://github.com/Anarios/return-youtube-dislike), но
у сервера закрытый.

> **Смотрите также:**
> - [Ответы на вопросы](https://returnyoutubedislike.com/faq)
> - [Безопасность](https://github.com/Anarios/return-youtube-dislike/blob/main/Docs/SECURITY-FAQru.md)
{.related}

## Исправление проблем

Если у вас возникают проблемы с отображением элементов, то, вероятно, произошли
изменения в интерфейсе YouTube. Разработчики расширения, скорее всего, уже знают
об этом и работают над исправлением. Вы можете проверить следующие ресурсы,
чтобы узнать о статусе исправления ошибок:

- [Исправление проблем](https://returnyoutubedislike.com/help)
- Баг-трекер на
[GitHub](https://github.com/Anarios/return-youtube-dislike/issues)
- Чат в [Discord](https://discord.com/invite/mYnESY4Md5)

## Смотрите также

- [YouTube](/wiki/youtube)

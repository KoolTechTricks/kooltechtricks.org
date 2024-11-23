+++
title = 'Исправление проблем с YouTube'
categories = ['guides']
publishDate = 2024-08-02T14:00:00Z
lastmod = 2024-10-25T15:28:00Z
description = """Используйте эти методы исключительно для восстановления \
доступа к образовательному контенту."""
cover = 'image.webp'
noindex = true
+++

# Исправление проблем с YouTube
{{< categories >}}

> [!caution]
> Эта страница больше не обновляется и в будущем будет удалена.

## Загрузка видео

Используйте эти методы исключительно для восстановления доступа к
образовательному контенту.

Мы не призываем и не рекомендуем использовать подобное программное обеспечение
для иных целей, кроме как исправления загрузки видео, которая по официальной
версии была вызвана по вине Google и не ограничивается намеренно.

Все программы, которые вам нужно установить, с открытым исходным кодом и
работают локально на вашем устройстве. В целом, они безопасны, но используйте
на свой страх и риск. Мы не анализировали исходный код программ и не собирали
их.

> [!warning]
> Из-за большого спроса в интернете начинают появляться фейковые версии
программ, содержащие вирусы. Будьте осторожны, не запускайте ничего из
неизвестных источников. [Проверяйте подлинность ссылок](/wiki/urlcheck).
Сообщайте сайтам о случаях мошенничества.

### Windows

1. Скачайте [GoodbyeDPI v0.2.3rc1](https://github.com/ValdikSS/GoodbyeDPI/releases/tag/0.2.3rc1);
2. Распакуйте архив и запустите от имени администратора файл `1_russia_blacklist.cmd`;
3. В открытой командной строке вы увидите надпись "GoodbyeDPI is now running!".
Держите окно открытым и проверьте работоспособность загрузки видео.

В Chromium-подобных браузерах нужно отключить Kyber:
1. Откройте страницу `chrome://flags`;
2. Найдите настройку по запросу Kyber (TLS 1.3 hybridized Kyber support) и
переведите её в состояние Disabled.

В Firefox и его производных Kyber отключён по умолчанию:
1. Откройте страницу `about:config`;
2. Установите параметры `network.http.http3.enable_kyber` и
`security.tls.enable_kyber` на значение `false`.

Ответы на вопросы (как удалить программу) можно найти
[здесь](https://github.com/ValdikSS/GoodbyeDPI/issues/378#issuecomment-2267201431).

Источник: [Код Дурова](https://kod.ru/youtube-restore)

### Piped

> **Основная статья:**
[Инструменты для YouTube — Piped](/wiki/youtube/tools#piped)

Piped — альтернативный приватный фронтенд для YouTube, который позволяет
смотреть видео, не подключаясь к серверам Google напрямую.

У Piped есть [множество серверов](https://github.com/TeamPiped/Piped/wiki/Instances),
можно [поднять свой](https://docs.piped.video/docs/self-hosting). Возможно, для
нормальной работы придётся переключаться между серверами, потому что Google
пытается бороться с этими сервисами. Сделать это можно в настройках клиента.

Для просмотра видео через Piped, замените `www.youtube.com` в адресной строке на
какой-нибудь сервер Piped, например `piped.video`. Для автоматической пересылки
можно скачать расширения LibRedirect
([Firefox](https://addons.mozilla.org/firefox/addon/libredirect) /
[Chromium](https://libredirect.github.io/download_chromium.html))
или Predirect ([Firefox](https://addons.mozilla.org/firefox/addon/predirector) /
[Chromium](https://chromewebstore.google.com/detail/aiillidfcgfckfhkpiakhkkpbkknagnp)).

Для Android можно скачать приложение
[LibreTube](https://github.com/libre-tube/LibreTube/releases/latest).

### cobalt

> **Основная статья:**
[Инструменты для YouTube — cobalt](/wiki/youtube/tools#cobalt)

[cobalt](https://cobalt.tools) — онлайн-загрузчик видео с YouTube и других
сайтов. При скачивании видео с YouTube вы не подключаетесь к серверам Google
напрямую.

Поддерживается качество до 8K, различные форматы кодеков, язык дубляжа в
зависимости от локали браузера, настройка названия файла.

cobalt полностью конфиденциальный, без рекламы, мусора и ограничений. Он с
[открытым исходным кодом](https://github.com/imputnet/cobalt), вы можете
запустить свой экземпляр. Поддержать разработчиков можно на
[Boosty](https://boosty.to/wukko/donate) или
[LiberaPay](https://liberapay.com/imput).

У главного сервера (cobalt.tools) есть бесплатный API, который вы можете
использовать в своих личных проектах. Однако вы не можете использовать
бесплатный API в коммерческих целях (платный доступ или показ рекламы), для
этого вы должны запустить свой экземпляр.

В случае возникновения проблем, смотрите
[состояние серверов](https://status.cobalt.tools).

## Аватарки

Чтобы вернуть аватарки и картинки из постов сообщества, необходимо
перенаправлять запросы с одного CDN-сервера YouTube на другой.

1. Скачайте расширение Resource Override
([Firefox](https://addons.mozilla.org/firefox/addon/resourceoverride) /
[Chromium](https://chromewebstore.google.com/detail/pkoacgokdfckfpndoffpifphamojphii))
2. Нажмите на иконку расширения.
3. Добавьте переадресацию с `https://yt3.ggpht.com/*` на `https://yt4.ggpht.com/*`

![Resource Override](resource-override.webp)

Для Android вы можете модифицировать официальное приложение YouTube при помощи
[ReVanced](https://revanced.app) ([подробнее](/wiki/youtube/apps#revanced)).
В нём есть патч «Bypass image region restrictions», который заменяет сервер
аналогично способу выше. Для его активации необходимо перейти в настройки
ReVanced, вкладку «Прочие» и включить «Обход ограничений региона».

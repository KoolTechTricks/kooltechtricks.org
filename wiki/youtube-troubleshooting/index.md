+++
title = 'Исправление проблем с YouTube'
categories = ['guides', 'youtube']
publishDate = 2024-08-02T14:00:00Z
lastmod = 2024-08-02T10:50:00Z
summary = """Используйте эти методы исключительно для восстановления доступа к \
образовательному контенту."""
cover = '/wiki/youtube-troubleshooting/index.png'
featured = false
+++

# Исправление проблем с YouTube
{{< categories >}}

## Загрузка видео

Используйте эти методы исключительно для восстановления доступа к
образовательному контенту.

Все программы, которые вам нужно установить, с открытым исходным кодом и
работают локально на вашем устройстве. В целом, они безопасны, но используйте
на свой страх и риск.

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

Источник: [Код Дурова](https://kod.ru/youtube-restore)

### Android

1. Скачайте [APK-файл](https://github.com/dovecoteescapee/ByeDPIAndroid/releases/latest)
и установите приложение ByeDPIAndroid;
2. Нажмите на кнопку Connect и подтвердите подключение.

{{< blockquote >}}
> [!warning]
VirusTotal [показывает](https://www.virustotal.com/gui/file/f540f3ff4ff1c89ae9579b7773bf19411f9d9a6c1e60ad231020dfe13df14b03)
наличие вирусов в этом приложении. Разработчик
[ответил почему](https://github.com/dovecoteescapee/ByeDPIAndroid/issues/5#issuecomment-2187601061)
и пообещал исправить это.
>
> Мы не анализировали код и не собирали это приложение, поэтому не можем
гарантировать его безопасность.
{{< /blockquote >}}

### Piped

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

Для Android можно скачать приложения
[NewPipe](https://github.com/TeamNewPipe/NewPipe/releases/latest) или
[LibreTube](https://github.com/libre-tube/LibreTube/releases/latest).

## Аватарки

Чтобы вернуть аватарки и картинки из постов сообщества, необходимо
перенаправлять запросы с одного CDN-сервера YouTube на другой.

1. Скачайте расширение Resource Override
([Firefox](https://addons.mozilla.org/ru/firefox/addon/resourceoverride) /
[Chromium](https://chrome.google.com/webstore/detail/resource-override/pkoacgokdfckfpndoffpifphamojphii))
2. Нажмите на иконку расширения.
3. Добавьте переадресацию с `https://yt3.ggpht.com/*` на `https://yt4.ggpht.com/*`

![Resource Override](resource-override.webp)

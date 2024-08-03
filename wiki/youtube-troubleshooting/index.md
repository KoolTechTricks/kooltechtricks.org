+++
title = 'Исправление проблем с YouTube'
categories = ['guides', 'youtube']
publishDate = 2024-08-02T14:00:00Z
lastmod = 2024-08-03T13:39:00Z
summary = """Используйте эти методы исключительно для восстановления доступа к \
образовательному контенту."""
cover = '/wiki/youtube-troubleshooting/index.webp'
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

### Браузеры

Попробуйте включить использование протокола QUIC в браузере. Он может как
помочь, так и вызвать больше проблем.

**Chromium:**
1. Откройте страницу `chrome://flags/#enable​-quic`;
2. `Experimental QUIC protocol` = `ENABLED`.

**Firefox:**
1. Откройте страницу `about:config`;
2. `network.http.http3.enabled` переключаем на плюсик (`true`);
3. Также есть параметр `network.http.http3.enable`. Неизвестно, чем он
отличается от `enabled`, но на всякий случай переключите его тоже на значение
`true`.

**iOS:**
1. Откройте Настройки, раздел «Safari»;
2. Пункт «Дополнения»;
3. Внизу нажмите на «Experimental Features»;
4. Включите пункт HTTP3.

Источник: [PRO Hi-Tech](https://t.me/prohitec/3962)

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

### macOS и Linux

1. Скачайте [SpoofDPI](https://github.com/xvzc/SpoofDPI/releases/latest) для
вашей платформы (Darwin = macOS, amd64 = x86_64);
2. Запустите программу в терминале: `spoof-dpi`
([подробнее](/wiki/cli#использование));
3. Программа запустит локальный прокси-сервер по адресу `127.0.0.1:8080`.
Система может начать автоматически его использовать, но возможно придётся
сделать это вручную в настройках браузера или системы.
4. Если не помогло, попробуйте запустить программу с параметрами
`--enable-doh --window-size 0`. Для отображения логов используйте параметр
`-debug`.

Источник: [Бэкдор](https://t.me/whackdoor/12105)

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

### yt-dlp

При скачивании видео через [yt-dlp](/wiki/yt-dlp) могут появляться ошибки
подключения к серверам `googlevideo.com`.
[Здесь](https://github.com/yt-dlp/yt-dlp/issues/10443#issuecomment-2248940967)
описано как это можно исправить.

{{< blockquote >}}
> [!note]
Возможно, этот способ не работает или требуется дополнительная настройка.
{{< /blockquote >}}

1. Скачайте [ByeDPI](https://github.com/hufrea/byedpi/releases/latest) для
Windows (`x86_64-w64.zip`) или Linux (`x86_64.tar.gz`);
2. Распакуйте архив и
[запустите программу в терминале](/wiki/cli#использование). Команда для Linux:
`./ciadpi-x86_64 -i 127.0.0.1 -p 10801 -d 1`;
3. Используйте параметр `--proxy 'socks5://127.0.0.1:10801'` в yt-dlp.

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

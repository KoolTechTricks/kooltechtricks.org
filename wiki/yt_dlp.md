# [yt-dlp](#yt-dlp)
> Categories: Audio Video, Youtube

[yt-dlp](https://github.com/yt-dlp/yt-dlp) — универсальная программа для
скачивания видео со многих популярных сайтов: YouTube, TikTok, Twitter (X),
Reddit, VK и др. Она содержит множество полезных функций в одном месте, в том
числе скачивание плейлистов и прямых эфиров.

Является улучшенным форком youtube-dl. youtube-dl больше не рекомендуется
использовать из-за малой активности в разработке.

> **Осторожно:** Скачивание аудио и видео с сайтов может являться нарушением авторских
> прав. Используйте на свой страх и риск.

![Демонстрация скачивания видео, используя консольный интерфейс yt-dlp.](/media/yt_dlp.jpg)

## [Применение](#utilization)

На большинстве сайтов с видео функция скачивания отключена. Обычно, это сделано
для того, чтобы пользователи не пиратили контент и смотрели его с рекламой и
статистикой. В таком случае, иногда платная подписка позволяет скачивать видео.

Однако, иногда, действительно, требуется скачать видео в исследовательских или
иных целях. Тогда приходится пользоваться разными для каждого сайта утилитами.

yt-dlp — это универсальная программа для [более чем тысячи
сайтов](https://github.com/yt-dlp/yt-dlp/blob/master/supportedsites.md),
содержащая множество полезных функций. Она избавит от установки сомнительных
утилит и позволит интегрировать себя в сторонние программы, так как является
[библиотекой Python](https://pypi.org/project/yt-dlp).

## [Установка](#installation)

Скачать официальные исполняемые файлы для всех операционных систем можно с
[GitHub](https://github.com/yt-dlp/yt-dlp/releases). При скачивании с GitHub,
обновления производятся вручную при помощи команды `yt-dlp -U`.

> **См. также:**
[Официальное руководство по установке](https://github.com/yt-dlp/yt-dlp/wiki/Installation)
(англ.)

### [Windows](#windows)

Вы можете скачать yt-dlp через [winget](/wiki/winget.html), чтобы сразу же
(после выхода из учётной записи), использовать его в командной строке:

`winget install yt-dlp`

Также, программа доступна в сторонних пакетных менеджерах Scoop и Chocolatey.

Иначе, можно скачать [исполняемый
файл](https://github.com/yt-dlp/yt-dlp/releases) (yt-dlp.exe), но для
использования его в командной строке из любого места необходимо добавить его в
переменную среды Path:

1. Найдите в поиске "Изменение системных переменных среды" (или можно сразу
"Изменение переменных среды текущего пользователя" для пропуска 2-го пункта и
прав администратора). Также можно нажать `Win`+`R` и ввести
`SystemPropertiesAdvanced.exe`.
2. В открывшемся окне нажмите "Переменные среды".
3. Сверху появятся переменные для пользователя, а снизу — для системы. Можно
проделать операцию для текущего пользователя.
4. Нажмите два раза по переменной Path и добавьте путь к папке, где находится
файл `yt-dlp.exe`.
5. Сохраните изменения и перезапустите окна командной строки. Также может
понадобиться перезайти в сессию.

### [Linux](#linux)

Вы можете использовать пакетные менеджеры. Вам понадобятся права
суперпользователя (sudo).

- Arch и все производные: (`pacman -S yt-dlp`)
- Debian и все производные (Ubuntu, Mint и др.):
    1. Добавьте сторонний репозиторий: `add-apt-repository ppa:tomtomtom/yt-dlp`
    2. Обновите список пакетов: `apt update`
    3. Установите yt-dlp: `apt install yt-dlp`

### [macOS](#macos)

- Homebrew: `brew install yt-dlp`
- MacPorts: `sudo port install yt-dlp`

### [Android](#android)

Для использования консольных программ на Android, вам понадобится
[Termux](https://github.com/termux/termux-app/releases).

1. Разрешить использование хранилища телефона: `termux-setup-storage`
2. Обновить все пакеты: `pkg update && pkg upgrade`
3. Установить Python: `pkg install libexpat openssl python`
4. Установить yt-dlp: `pip install -U yt-dlp`

### [Python](#python)

[Пакет PyPI](https://pypi.org/project/yt-dlp) можно установить командой:

`python3 -m pip install -U yt-dlp`

Или

`pip install yt-dlp`

## [Использование](#usage)

yt-dlp предоставляет консольный интерфейс и библиотеку Python. Вы можете
написать свою программу, которая будет использовать yt-dlp, в таком случае
воспользуйтесь
[официальной документацией](https://github.com/yt-dlp/yt-dlp#embedding-yt-dlp)
(англ.). Ниже будет представлено руководство по использованию консольного
интерфейса.

Для того, чтобы скачать видео, плейлист или стрим, нужно написать в консоли
`yt-dlp [параметры] <ссылка(и...)>`. По умолчанию будет выбрано наилучшее
качество. Поддерживается [более 1000
сайтов](https://github.com/yt-dlp/yt-dlp/blob/master/supportedsites.md).

> **Совет:** Используйте [FFmpeg](/wiki/ffmpeg.html) для конвертации
> полученного видео.

### [Параметры](#parameters)

> **См. также:** [Список
параметров](https://github.com/yt-dlp/yt-dlp#usage-and-options) (англ.)

- `--write-thumbnail` — скачать обложку видео.
- `-S "res:480"` — указать качество (144, 480, 2160 и т.д.).
- `--write-subs` — скачать субтитры.
- `-x` — скачать только аудио.
- `-I [НАЧАЛО]:[КОНЕЦ][:ШАГ]` — указать номера видео из плейлиста.
- `-P "ПУТЬ"` — указать путь скачивания.
- `--cookies-from-browser БРАУЗЕР` — использовать куки браузера. Поддерживаются
`brave`, `chrome`, `chromium`, `edge`, `firefox`, `opera`, `safari`, `vivaldi`.
- `--sponsorblock-mark КАТЕГОРИИ` — пометить сегменты
[SponsorBlock](/wiki/sponsorblock.html): `sponsor`, `intro`, `outro`,
`selfpromo`, `preview`, `interaction`, `all`, `default`.
- `--sponsorblock-remove КАТЕГОРИИ` — удалить сегменты
[SponsorBlock](/wiki/sponsorblock.html): `sponsor`, `intro`, `outro`,
`selfpromo`, `preview`, `interaction`, `all`, `default`.
- `--live-from-start` — скачивать стрим на YouTube с начала.
- `--no-live-from-start` — скачивать стрим на YouTube с текущего момента.

## [Сторонние приложения](#third-party-apps)

### [Parabolic](#parabolic)

[Parabolic](https://github.com/NickvisionApps/Parabolic) — графический
интерфейс yt-dlp на основе GTK.

- Windows: скачайте установщик (`NickvisionTubeConverterSetup.exe`) с
[GitHub](https://github.com/NickvisionApps/Parabolic/releases)
- Linux: скачайте приложение из
[Flathub](https://flathub.org/apps/details/org.nickvision.tubeconverter),
[Snap Store](https://snapcraft.io/tube-converter) или
[AUR](https://aur.archlinux.org/packages/parabolic)

![Скриншот программы Parabolic](/media/yt_dlp_parabolic.jpg)

### [mpv](#mpv)

[mpv](https://mpv.io) — свободный кроссплатформенный медиаплеер. В него
интегрирован yt-dlp, а значит можно проигрывать не только локальные файлы, но и
видео из интернета.

mpv также используется в качестве бек-энда для многих других медиаплееров:

- [SMPlayer](https://www.smplayer.info) (Qt)
- [Haruna Media Player](https://haruna.kde.org) (Qt)
- [Celluloid](https://celluloid-player.github.io) (GTK)
- [Baka MPlayer](https://github.com/u8sand/Baka-MPlayer) (Qt)

![Скриншот программы Haruna](/media/yt_dlp_haruna.jpg)

## [Исправление проблем](#troubleshooting)

Если программа перестала работать, то убедитесь, что установлена последняя
версия: `yt-dlp -U`. Также можете проверить
[баг-трекер](https://github.com/yt-dlp/yt-dlp/issues).
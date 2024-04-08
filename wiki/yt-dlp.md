# [yt-dlp](#yt-dlp)
> Categories: Audio Video, YouTube

[yt-dlp](https://github.com/yt-dlp/yt-dlp#readme) — универсальная программа для
скачивания видео и аудио из интернета: YouTube, TikTok, X (Twitter), Reddit и
[другие](https://github.com/yt-dlp/yt-dlp/blob/master/supportedsites.md). Имеет
гибкий консольный интерфейс, возможно скачивать плейлисты и прямые эфиры.

С [открытым исходным кодом](https://github.com/yt-dlp/yt-dlp), активно
поддерживается сообществом. Она заменяет любые сомнительные программы и
расширения для скачивания видео. Кроме того, является
[библиотекой Python](https://pypi.org/project/yt-dlp), что позволяет
интегрировать себя в [сторонние приложения](#third-party-apps).

yt-dlp является продолжением (форком) youtube-dl. youtube-dl больше не
рекомендуется использовать из-за малой активности в разработке.

> [!caution]
> Подобный способ скачивания аудио и видео из интернета может нарушать
авторские права. Используйте на свой страх и риск.

![Скачивание видео при помощи консольного интерфейса yt-dlp](/media/yt_dlp.jpg)

## [Установка](#installation)

Найти официальные исполняемые файлы для всех операционных систем можно на
[GitHub](https://github.com/yt-dlp/yt-dlp/releases/latest). Одиночный
исполняемый файл можно обновить командой `yt-dlp -U`.

> **Смотрите также:**
[Официальное руководство по установке](https://github.com/yt-dlp/yt-dlp/wiki/Installation)
(англ.)

### [Windows](#windows)

Вы можете скачать yt-dlp через [winget](/wiki/winget), чтобы сразу же
(после выхода из учётной записи), использовать его в командной строке.

```powershell
winget install yt-dlp
winget upgrade yt-dlp  # Обновление
```

Также доступно в сторонних пакетных менеджерах Scoop и Chocolatey.

Иначе можно скачать
[исполняемый файл](https://github.com/yt-dlp/yt-dlp/releases/latest)
(yt-dlp.exe), но для использования его в командной строке из любого места
необходимо [добавить его в переменную среды Path](/wiki/cli#path).

### [Linux](#linux)

Вы можете как скачать исполняемый файл, так и воспользоваться пакетными
менеджерами:

- Arch и все производные: `sudo pacman -S yt-dlp`
- Debian и все производные (Ubuntu, Mint и другие):
    1. Добавьте сторонний репозиторий:
    `sudo add-apt-repository ppa:tomtomtom/yt-dlp`
    2. Обновите список пакетов: `sudo apt update`
    3. Установите yt-dlp: `sudo apt install yt-dlp`

### [macOS](#macos)

- Homebrew: `brew install yt-dlp`
- MacPorts: `sudo port install yt-dlp`

### [Android](#android)

Для использования консольных программ на Android, вам понадобится
[Termux](https://github.com/termux/termux-app/releases/latest).

1. Разрешить использование хранилища телефона: `termux-setup-storage`. Видео
можно скачивать в директорию `~/storage`.
2. Обновить все пакеты: `pkg update && pkg upgrade`
3. Установить Python: `pkg install libexpat openssl python`
4. Установить yt-dlp: `pip install -U yt-dlp`

### [Python](#python)

[Пакет PyPI](https://pypi.org/project/yt-dlp) можно установить одной из этих
команд:

```sh
python3 -m pip install -U yt-dlp
pip install yt-dlp
```

## [Использование](#usage)

yt-dlp предоставляет консольный интерфейс и библиотеку Python. Вы можете
написать свою программу, которая будет использовать yt-dlp, в таком случае
воспользуйтесь
[официальной документацией](https://github.com/yt-dlp/yt-dlp#embedding-yt-dlp)
(англ.). Ниже будет представлено руководство по использованию консольного
интерфейса. Если вы хотите использовать графический интерфейс, вам нужно
использовать какое-нибудь [стороннее приложение](#third-party-apps).

Для того, чтобы скачать видео, плейлист или стрим, нужно написать в консоли
`yt-dlp [параметры] <ссылка(и...)>`. По умолчанию будет выбрано наилучшее
качество. Поддерживается
[более 1000 сайтов](https://github.com/yt-dlp/yt-dlp/blob/master/supportedsites.md).

> [!tip]
Используйте [FFmpeg](/wiki/ffmpeg) для конвертации полученного видео.

### [Параметры](#parameters)

> **Смотрите также:**
[Список параметров](https://github.com/yt-dlp/yt-dlp#usage-and-options) (англ.)

- `--write-thumbnail` — скачать обложку видео.
- `-S "res:480"` — указать качество (144, 480, 2160 и т.д.).
- `-f mp4` — указать расширение (mp4, webm и др.).
- `-S ext` — выбрать наилучшее расширение
(mp4 > mov > webm > flv, m4a > aac > mp3).
- `--write-subs` — скачать субтитры.
- `-x` — скачать только аудио.
- `-I [НАЧАЛО]:[КОНЕЦ][:ШАГ]` — указать номера видео из плейлиста.
- `-P "ПУТЬ"` — указать путь скачивания.
- `--cookies-from-browser БРАУЗЕР` — использовать куки браузера. Поддерживаются
`brave`, `chrome`, `chromium`, `edge`, `firefox`, `opera`, `safari`, `vivaldi`.
- `--sponsorblock-mark КАТЕГОРИИ` — пометить сегменты
[SponsorBlock](/wiki/sponsorblock): `sponsor`, `intro`, `outro`,
`selfpromo`, `preview`, `interaction`, `all`, `default`.
- `--sponsorblock-remove КАТЕГОРИИ` — удалить сегменты
[SponsorBlock](/wiki/sponsorblock): `sponsor`, `intro`, `outro`,
`selfpromo`, `preview`, `interaction`, `all`, `default`.
- `--live-from-start` — скачивать стрим на YouTube с начала.
- `--no-live-from-start` — скачивать стрим на YouTube с текущего момента.

## [Сторонние приложения](#third-party-apps)

### [Parabolic](#parabolic)

[Parabolic](https://github.com/NickvisionApps/Parabolic) — простое и
функциональное приложение для скачивания видео. Является нативным графическим
интерфейсом yt-dlp.

- Windows: Скачайте установщик (`NickvisionTubeConverterSetup.exe`) с
[GitHub](https://github.com/NickvisionApps/Parabolic/releases/latest)
- Linux:
    - [Flathub](https://flathub.org/apps/details/org.nickvision.tubeconverter)
    - [Snap Store](https://snapcraft.io/tube-converter)
    - [AUR](https://aur.archlinux.org/packages/parabolic)

![Скриншот программы Parabolic](/media/yt_dlp_parabolic.png)

### [ytDownloader](#ytdownloader)

[ytDownloader](https://ytdn.netlify.app) — минималистичное приложение для
скачивания видео из интернета. Является графическим интерфейсом yt-dlp на основе
[Electron](/wiki/browsers#electron).

- Windows:
    - [Exe-установщик](https://github.com/aandrew-me/ytDownloader/releases/latest/download/YTDownloader_Win.exe)
    - [Msi-установщик](https://github.com/aandrew-me/ytDownloader/releases/latest/download/YTDownloader_Win.msi)
    (нет авто-обновлений и выбора папки установки)
    - [Chocolatey](https://community.chocolatey.org/packages/ytdownloader)
    - [winget](/wiki/winget): `aandrew-me.ytDownloader`
- Linux:
    - [Flathub](https://flathub.org/apps/details/me.aandrew.ytdownloader):
    `me.aandrew.ytdownloader`
    - [Snap](https://snapcraft.io/ytdownloader)
    - [AppImage](https://github.com/aandrew-me/ytDownloader/releases/latest/download/YTDownloader_Linux.AppImage)
    - [AUR](https://aur.archlinux.org/packages/ytdownloader-gui)
- macOS: [Скачать](https://github.com/aandrew-me/ytDownloader/releases/latest/download/YTDownloader_Mac.dmg)

![Скриншот программы ytDownloader](/media/yt_dlp_ytdownloader.png)

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

---
title: yt-dlp
publishDate: 2023-09-24T17:43:27Z
lastmod: 2024-08-03T13:00:00Z
categories: ['audio-video']
contributors: [kttrickster]
image: /media/yt-dlp.webp
---

[yt-dlp](https://github.com/yt-dlp/yt-dlp#readme) — универсальная программа для
скачивания видео и аудио из интернета: YouTube, TikTok, X (Twitter), Reddit и
[другие](https://github.com/yt-dlp/yt-dlp/blob/master/supportedsites.md). Имеет
гибкий консольный интерфейс, возможно скачивать плейлисты и прямые эфиры.

<!--more-->

С открытым исходным кодом, активно поддерживается сообществом. Заменяет любые
сомнительные программы и расширения для скачивания видео. Кроме того, является
[библиотекой Python](https://pypi.org/project/yt-dlp), что позволяет
интегрировать себя в [сторонние приложения](#сторонние-приложения).

yt-dlp является продолжением (форком) youtube-dl. youtube-dl больше не
рекомендуется использовать из-за малой активности в разработке.

> [!caution]
> Подобный способ скачивания аудио и видео из интернета может нарушать
авторские права и условия пользования сайтов. Используйте на свой страх и риск.

![Скачивание видео при помощи консольного интерфейса yt-dlp](/media/yt-dlp.webp)

## Установка

Найти официальные исполняемые файлы для всех операционных систем можно на
[GitHub](https://github.com/yt-dlp/yt-dlp/releases/latest). Одиночный
исполняемый файл можно обновить командой `yt-dlp -U`.

> **Смотрите также:**
[Официальное руководство по установке](https://github.com/yt-dlp/yt-dlp/wiki/Installation)
(англ.)

> [!note]
> Если вам не удобно пользоваться консолью, установите вместо этого
какое-нибудь [стороннее приложение](#сторонние-приложения).

### Windows

Вы можете скачать yt-dlp через [winget](/wiki/winget), чтобы сразу же
(после выхода из сеанса), использовать его в командной строке.

```powershell
winget install yt-dlp
winget upgrade yt-dlp  # Обновление
```

Также доступно в сторонних пакетных менеджерах Scoop и Chocolatey.

Иначе можно скачать
[исполняемый файл](https://github.com/yt-dlp/yt-dlp/releases/latest)
(yt-dlp.exe). Для использования в командной строке из любого места необходимо
[добавить его в переменную среды Path](/wiki/cli#path).

### Linux

Вы можете как скачать исполняемый файл, так и воспользоваться пакетными
менеджерами:

- Arch и все производные (EndeavourOS, Manjaro): `sudo pacman -S yt-dlp`
- Debian и все производные (Ubuntu, Mint и другие):
    1. Добавьте сторонний репозиторий:
    `sudo add-apt-repository ppa:tomtomtom/yt-dlp`
    2. Обновите список пакетов: `sudo apt update`
    3. Установите yt-dlp: `sudo apt install yt-dlp`

### macOS

- Homebrew: `brew install yt-dlp`
- MacPorts: `sudo port install yt-dlp`

### Android

Для использования консольных программ на Android, вам понадобится
[Termux](https://github.com/termux/termux-app/releases/latest).

1. Разрешить использование хранилища телефона: `termux-setup-storage`. Видео
можно скачивать в директорию `~/storage`.
2. Обновить все пакеты: `pkg update && pkg upgrade`
3. Установить Python: `pkg install libexpat openssl python`
4. Установить yt-dlp: `pip install -U yt-dlp`

### Python

[Пакет PyPI](https://pypi.org/project/yt-dlp) можно установить одной из этих
команд:

```sh
python3 -m pip install -U yt-dlp
pip install yt-dlp
```

## Использование

yt-dlp имеет только [консольный интерфейс](/wiki/cli):

```sh
yt-dlp [параметры] <ссылка(и...)>
```

Если вам неудобно пользоваться терминалом, попробуйте
[сторонние приложения](#third-party-apps), которые предоставляют графический
интерфейс.

Если вы хотите использовать yt-dlp как библиотеку Python для своей программы,
изучите
[официальную документацию](https://github.com/yt-dlp/yt-dlp#embedding-yt-dlp)
(англ.).

> [!tip]
> Используйте [FFmpeg](/wiki/ffmpeg) для конвертации полученного видео.

### Параметры

> **Смотрите также:**
[Список параметров](https://github.com/yt-dlp/yt-dlp#usage-and-options) (англ.)

#### Скачивание

- `-S "res:480"` — Указать разрешение (144, 480, 2160 и т.д.).
- `-f mp4` — Указать расширение (mp4, webm и др.).
- `-S ext` — Выбрать наилучшее расширение
(mp4 > mov > webm > flv, m4a > aac > mp3).
- `-x` — Скачать только аудио.
- `--cookies-from-browser БРАУЗЕР` — Использовать куки браузера (`brave`,
`chrome`, `chromium`, `edge`, `firefox`, `opera`, `safari`, `vivaldi`).

#### Дополнительные файлы

- `--write-thumbnail` — Скачать обложку видео.
- `--write-subs` — Скачать субтитры.
- `--write-info-json` — Сохранить метаданные в JSON (может содержать личную
информацию).

#### Формат вывода

- `-P, --paths ПУТЬ` — Указать путь скачивания.
- `-o, --output ШАБЛОН` — Указать имя выходного файла по
[шаблону](https://github.com/yt-dlp/yt-dlp#output-template).
- `--restrict-filenames` — Использовать только ASCII.
- `--windows-filenames` — Имя файла, совместимое с Windows.
- `--trim-filenames ДЛИНА` — Ограничить длину имени файла
(не включая расширение).
- `-w, --no-overwrites` — Не перезаписывать никакие файлы.
- `--force-overwrites` — Перезаписывать все файлы.

#### Несколько видео

Если ссылка указывает на плейлист, то yt-dlp попробует скачать все видео.

- `-I [НАЧАЛО]:[КОНЕЦ][:ШАГ]` — Указать номера видео из плейлиста.
- `--no-playlist` — Скачать только видео, если ссылка указывает на видео и
плейлист.
- `--yes-playlist` — Скачать плейлист, если ссылка указывает на видео и
плейлист.

#### Прямые трансляции

- `--live-from-start` — Скачивать прямую трансляцию с начала.
- `--no-live-from-start` — Скачивать прямую трансляцию с текущего момента.

#### SponsorBlock

Интеграция со [SponsorBlock](/wiki/sponsorblock) позволяет удалять ненужные
сегменты: напоминание о подписке, анимация перехода, титры, самореклама,
спонсоры (`sponsor`, `intro`, `outro`, `selfpromo`, `preview`, `interaction`,
`all`, `default`).

- `--sponsorblock-mark КАТЕГОРИИ` — Пометить сегменты.
- `--sponsorblock-remove КАТЕГОРИИ` — Удалить сегменты.

## Плагины

> **Основная статья:**
[yt-dlp — Плагины](https://github.com/yt-dlp/yt-dlp#plugins) (англ.)

Плагины позволяют дополнить функциональность yt-dlp.

- **Экстракторы (extractor)** активируются всегда при обнаружении совместимой
ссылки.
- **Постпроцессоры (postprocessor)** вызываются параметром
`--use-postprocessor НАЗВАНИЕ`.

> [!caution]
Все плагины импортируются даже если их не использовать. Не производится никаких
проверок кода плагинов. Используйте их на свой страх и риск и только тогда,
когда вы доверяете источнику.

Папку с плагином нужно поместить в специальную директорию. Смотрите
[руководство по установке плагинов](https://github.com/yt-dlp/yt-dlp#installing-plugins)
(англ.).

> **Смотрите также:**
[Список плагинов](https://github.com/yt-dlp/yt-dlp/wiki/Plugins) (англ.)

### DeArrow

[DeArrow](/wiki/dearrow) — расширение для браузера и API для замены названий и
обложек видео на менее вызывающие, используя краудсорсинг.

[Ссылка на плагин](https://github.com/QuantumWarpCode/yt-dlp-dearrow)

- `--use-postprocessor DeArrow:when=pre_process` — Активировать плагин.
- `--use-postprocessor "DeArrow:when=pre_process;SelectTitle=True"` — Выбрать
название среди доступных.

## Сторонние приложения

> **Смотрите также:**
[Список графических интерфейсов для yt-dlp](https://old.reddit.com/r/youtubedl/wiki/info-guis)
(англ.)

### Parabolic

![Parabolic](/media/yt-dlp_parabolic.webp)

- **Платформа:** Windows, Linux
- **Технологии:** WinUI (Windows), GTK (Linux),
[Открытый исходный код](https://github.com/NickvisionApps/Parabolic)
- **Скачать:**
    - Windows:
        - [GitHub](https://github.com/NickvisionApps/Parabolic/releases/latest)
        (`NickvisionTubeConverterSetup.exe`)
    - Linux:
        - [Flathub](https://flathub.org/apps/org.nickvision.tubeconverter)
        - [Snap Store](https://snapcraft.io/tube-converter)
        - [AUR](https://aur.archlinux.org/packages/parabolic)

Простое и функциональное приложение для скачивания видео. Является нативным
графическим интерфейсом yt-dlp.

### yt-dlg

![yt-dlg](/media/yt-dlp_yt-dlg.webp)

- **Платформа:** Windows, Linux, macOS
- **Технологии:** Python (wxPython), Форк youtube-dl-gui,
[Открытый исходный код](https://github.com/oleksis/youtube-dl-gui)
- **Скачать:**
    - [GitHub](https://github.com/oleksis/youtube-dl-gui/releases/latest)
    - Windows:
        - [winget](/wiki/winget) `winget install -e --id yt-dlg.yt-dlg`
        - [Microsoft Store](https://apps.microsoft.com/store/detail/ytdlg/XP9CCFSWS911F5)
    - Linux [Snap Store](https://snapcraft.io/yt-dlg)
    - [Инструкция](https://github.com/oleksis/youtube-dl-gui#installation)
    (англ.)

Кросс-платформенный графический интерфейс yt-dlp. Является продолжением
youtube-dl-gui, который перестал разрабатываться.

### Tartube

![Tartube](/media/yt-dlp_tartube.webp)

- **Платформа:** Windows, Linux
- **Технологии:** Python, GTK 3, основан на youtube-dl-gui,
[Открытый исходный код](https://github.com/axcore/tartube)
- **Скачать:**
    - [GitHub](https://github.com/axcore/tartube/releases/latest)
    - [SourceForge](https://sourceforge.net/projects/tartube)
    - [Инструкция](https://github.com/axcore/tartube#3-downloads)
    (англ.)

Графический интерфейс для youtube-dl, частично основанный на youtube-dl-gui.

Это самое функциональное приложение. Можно добавлять каналы в базу данных, а
затем скачивать новые видео в пару нажатий. Есть пошаговое руководство
использования. Классический режим эмулирует интерфейс оригинального
youtube-dl-gui.

### Open Video Downloader

![Open Video Downloader](/media/yt-dlp_open_video_downloader.webp)

- **Платформа:** Windows, Linux, macOS
- **Технологии:** [Electron](/wiki/browsers#electron),
[Открытый исходный код](https://github.com/StefanLobbenmeier/youtube-dl-gui)
- **Скачать:**
    - [GitHub](https://github.com/StefanLobbenmeier/youtube-dl-gui/releases/latest)

Кросс-платформенный графический интерфейс для yt-dlp, построенный на
веб-технологиях Electron (Chromium).

### ytDownloader

![ytDownloader](/media/yt-dlp_ytdownloader.webp)

- **Платформа:** Windows, Linux, macOS
- **Технологии:** [Electron](/wiki/browsers#electron),
[Открытый исходный код](https://github.com/aandrew-me/ytdownloader)
- **Скачать:**
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
    - [macOS](https://github.com/aandrew-me/ytDownloader/releases/latest/download/YTDownloader_Mac.dmg)

[ytDownloader](https://ytdn.netlify.app) — минималистичное приложение для
скачивания видео из интернета. Является графическим интерфейсом yt-dlp,
построенный на веб-технологиях [Electron](/wiki/browsers#electron). Доступно
множество вариантов скачивания.

### Seal

![Seal](/media/yt-dlp_seal.webp)

- **Платформа:** Android
- **Технологии:** Kotlin,
[Открытый исходный код](https://github.com/JunkFood02/Seal)
- **Скачать:**
    - [GitHub](https://github.com/JunkFood02/Seal/releases/latest)
    - [F-Droid](https://f-droid.org/packages/com.junkfood.seal)

Загрузчик видео и аудио файлов на Android. Использует yt-dlp для скачивания.

### mpv

![mpv](/media/yt-dlp_mpv.webp)

![Haruna](/media/yt-dlp_haruna.webp)

- **Платформа:** Windows, Linux, macOS
- **Технологии:** C, [Открытый исходный код](https://github.com/mpv-player/mpv)
- **Скачать:**
    - [Инструкция](https://mpv.io/installation) (англ.)
- **Медиаплееры на основе mpv:**
    - [SMPlayer](https://www.smplayer.info) (Qt)
    - [Haruna Media Player](https://haruna.kde.org) (Qt)
    - [Celluloid](https://celluloid-player.github.io) (GTK)
    - [Baka MPlayer](https://github.com/u8sand/Baka-MPlayer) (Qt)
    - [mpv-android](https://github.com/mpv-android/mpv-android)
    - [Outplayer](https://apps.apple.com/app/outplayer/id1449923287) (iOS)

[mpv](https://mpv.io) — свободный кроссплатформенный медиаплеер. В него
интегрирован yt-dlp, а значит можно проигрывать не только локальные файлы, но и
видео из интернета.

Существует множество медиаплееров, использующих библиотеку mpv в их основе.

## Исправление проблем

Если программа перестала работать, то убедитесь, что установлена последняя
версия: `yt-dlp -U`. Также можете проверить
[баг-трекер](https://github.com/yt-dlp/yt-dlp/issues).

Если при скачивании видео через yt-dlp появляются ошибки подключения к серверам
`googlevideo.com`, смотрите страницу
[Исправление проблем с YouTube # yt-dlp](/wiki/youtube-troubleshooting#yt-dlp).

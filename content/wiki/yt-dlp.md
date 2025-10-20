---
title: yt-dlp
publishDate: 2023-09-24T17:43:27Z
lastmod: 2024-08-03T13:00:00Z
#categories: ['audio-video']
contributors: [kttrickster]
---

[yt-dlp](https://github.com/yt-dlp/yt-dlp#readme) — универсальная программа для
скачивания видео и аудио из интернета: YouTube, TikTok, X (Twitter), Reddit и
[другие](https://github.com/yt-dlp/yt-dlp/blob/master/supportedsites.md). Имеет
гибкий консольный интерфейс, возможно скачивать плейлисты и прямые эфиры.

<!--more-->

> [!note]
> Эта страница будет перемещена. Прошлое и обновлённое содержимое находится
[здесь](/software/yt-dlp) и [здесь](/collections/media-downloaders).

## yt-dlg

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

## Tartube

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

## Open Video Downloader

![Open Video Downloader](/media/yt-dlp_open_video_downloader.webp)

- **Платформа:** Windows, Linux, macOS
- **Технологии:** [Electron](/wiki/browsers#electron),
[Открытый исходный код](https://github.com/StefanLobbenmeier/youtube-dl-gui)
- **Скачать:**
    - [GitHub](https://github.com/StefanLobbenmeier/youtube-dl-gui/releases/latest)

Кросс-платформенный графический интерфейс для yt-dlp, построенный на
веб-технологиях Electron (Chromium).

## ytDownloader

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

## mpv

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

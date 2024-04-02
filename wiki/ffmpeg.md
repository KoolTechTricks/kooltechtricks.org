# [FFmpeg](#ffmpeg)
> Categories: Audio_Video

[FFmpeg](https://ffmpeg.org) — программа и библиотека с открытым исходным кодом
для записи, конвертации и передачи аудио- и видеозаписей в различных форматах.
Предоставляется консольный интерфейс, через который можно легко и эффективно
редактировать аудио и видео.

> flags: no_image

## [Применение](#utilization)

Консольный интерфейс FFmpeg позволяет записывать, конвертировать и редактировать
аудио и видео. В отличие от сторонних инструментов (зачастую онлайн), возможно
быстрее, эффективнее и безопаснее проводить простые операции: обрезать или
сжимать видео, убирать звук, изменять скорость и многое другое.

Использование консольного интерфейса может показаться слишком трудным для
большинства пользователей. Необходимо писать команды, которые нужно помнить.
Приходится постоянно обращаться в интернет за помощью. В таком случае,
рекомендуется вести шпаргалку в виде списка наиболее необходимых
[команд](#commands). Для большинства, таких стандартных шаблонных команд будет
достаточно. При овладении консольным интерфейсом, становится возможным выполнять
практически любые действия над файлами, однако, на это придётся потратить немало
времени и усилий.

> **Смотрите также:**
[Руководство по использованию консольного интерфейса](/wiki/cli)

FFmpeg также может использоваться как библиотека для использования другими
программами (в том числе, предоставляющие графический интерфейс).

## [Установка](#installation)

Официально FFmpeg предоставляет только
[исходный код](https://ffmpeg.org/download.html). Вы можете собрать программу
самостоятельно или воспользоваться сторонними сборками.

### [Windows](#windows)

#### [winget](#winget)

[winget](/wiki/winget) — встроенный пакетный менеджер, который позволяет
легко устанавливать и обновлять программы. Необходима Windows 11 или 10 со
всеми обновлениями.

Установка FFmpeg через winget не требует выполнения дополнительных действий и
настроек.

1. Откройте командную строку `cmd`.
2. Введите `winget install Gyan.FFmpeg`.
3. После установки необходимо перезайти в сессию пользователя.
4. Обновления осуществляются при помощи команды `winget update`.

После этого, программу `ffmpeg` можно использовать через командную строку из
любого места.

#### [Вручную](#manually)

Вы можете скачать
[готовые сборки](https://ffmpeg.org/download.html#build-windows). По умолчанию,
это сборки от [gyan.dev](https://www.gyan.dev/ffmpeg/builds).

- [release builds](https://www.gyan.dev/ffmpeg/builds/ffmpeg-release-essentials.7z):
основано на наиболее последнем стабильном коде (рекомендуется для большинства).
- [git master builds](https://www.gyan.dev/ffmpeg/builds/ffmpeg-git-essentials.7z):
основано на самом последнем и нестабильном коде.

Выше указаны прямые ссылки на скачивание минимального архива, содержащий только
самое необходимое. Архив нужно распаковать в какую-нибудь папку, например в
`C:\ffmpeg\`.

Чтобы использовать FFmpeg, необходимо его вызывать через командную строку,
указав полный или относительный путь к исполняемому файлу (`bin\ffmpeg.exe`).
Чтобы не указывать полный путь и иметь возможность вызывать программу из любого
места, необходимо добавить папку в переменную среды Path.
[Подробнее](/wiki/cli#windows)

Теперь можно запускать `ffmpeg` через командую строку из любого места.

### [Linux](#linux)

Установите программу `ffmpeg` из вашего пакетного менеджера. Вам потребуются
права суперпользователя (`sudo`).

- Debian и все производные (Ubuntu, Mint, Pop!_OS): `apt install ffmpeg`
- Fedora: `dnf install ffmpeg`
- Arch и все производные: (EndeavourOS, Manjaro): `pacman -S ffmpeg`

После установки, вы сможете использовать программу `ffmpeg` в терминале.

### [macOS](#macos)

Вы можете скачать
[готовые сборки](https://ffmpeg.org/download.html#build-mac), которые находятся
на [этом сайте](https://evermeet.cx/ffmpeg).

### [Android](#android)

Для использования консольных программ на Android, вам понадобится
[Termux](https://github.com/termux/termux-app/releases). После его установки,
необходимо обновить все пакеты командой `pkg upgrade`.

Чтобы установить FFmpeg, введите `pkg install ffmpeg`. После чего можно
использовать так же, как и на ПК командой `ffmpeg`.

## [Команды](#commands)

В этом разделе будут указаны шаблонные команды для выполнения определённых
простых действий. Для совершения действия, необходимо скопировать команду и
подставить свои пути к файлам и параметры.

Вы можете комбинировать сразу несколько действий в одной команде, но для этого
нужно понимать что делает каждая команда и не будут ли конфликтовать параметры.

Для удобства, будут введены следующие обозначения:

- `input.mp4` — имя входного файла (формат может быть другим).
- `output.mp4` — имя выходного файла (формат может быть другим).
- `.mp4` — формат видео по умолчанию.
- `.mp3` — формат аудио по умолчанию.
- `audio.mp3` — любое аудио.

### [Конвертация](#converting)

`ffmpeg -i input.mp4 output.avi`

Поддерживаются все популярные форматы: mp4, avi, mov, mkv, mp3, wav, ogg, webm,
webp, png, jpeg, gif. Полный список можно получить через `ffmpeg -formats` и
`ffmpeg -codecs`.

### [Стерео в моно](#stereo-to-mono)

`ffmpeg -i input.mp3 -ac 1 output.mp3`

[Источник](https://stackoverflow.com/questions/39487643/how-to-convert-stereo-sound-to-mono-with-ffmpeg#51494497)

### [Обрезать видео по времени](#cut-video)

Указать время начала и длительность выходного фрагмента соответственно.

`ffmpeg -i input.mp4 -ss 00:00:01.123 -t 00:01:02.321 -async 1 output.mp4`

[Источник](https://stackoverflow.com/questions/18444194/cutting-the-videos-based-on-start-and-end-time-using-ffmpeg#18449609)

### [Вставить аудио](#insert-audio)

`ffmpeg -i input.mp4 -i audio.mp3 -c copy -map 0:v:0 -map 1:a:0 output.mp4`

[Источник](https://superuser.com/questions/590201/add-audio-to-video-using-ffmpeg#590210)

### [Обрезать видео по сторонам](#crop-video)

Здесь необходимо знать точки начала и конца с точностью до пикселя.

`ffmpeg -i input.mp4 -filter:v "crop=80:60:200:100" -c:a copy output.mp4`

![Демонстрация значения чисел при
кадрировании, источник:
https://video.stackexchange.com/a/4571](https://i.stack.imgur.com/oZXFK.jpg)

[Источник](https://video.stackexchange.com/questions/4563/how-can-i-crop-a-video-with-ffmpeg#4571)

### [Изменить громкость](#change-volume)

Значение громкости можно указывать в процентах (0.5 — в два раза тише) или в
децибелах (-5dB — уменьшить на 5 децибел).

`ffmpeg -i input.mp3 -filter:a "volume=0.5" output.mp3`

[Источник](https://trac.ffmpeg.org/wiki/AudioVolume#Changingvolume)

### [Убрать аудио](#remove-audio)

Если вам нужно убрать звук, то можно удалить аудио-поток.

`ffmpeg -i input.mp3 -c copy -an output.mp3`

[Источник](https://superuser.com/questions/268985/remove-audio-from-video-file-with-ffmpeg#268986)

### [Ограничение битрейта](#limit-bitrate)

Это поможет сократить размер файла.

`ffmpeg -i input.mp4 -b:v 64k -bufsize 64k output.mp4`

[Источник](https://www.ffmpeg.org/ffmpeg-all.html#Description)

### [Ограничение кадров в секунду](#limit-frames-per-second)

`ffmpeg -i input.mp4 -r 24 output.mp4`

[Источник](https://www.ffmpeg.org/ffmpeg-all.html#Description)

### [Изменить разрешение](#change-resolution)

`ffmpeg -i input.mp4 -vf scale=480:320,setdar=4:3 output.mp4`

- `scale` — разрешение (640x360, 1280x720, 3840x2160)
- `setdar` — соотношение сторон (16:9, 1:1)

[Источник](https://stackoverflow.com/questions/34391499/change-video-resolution-ffmpeg#45007383)

### [Уменьшить размер видео](#reduce-video-size)

```sh
ffmpeg -i input.mp4 -crf 35 output.mp4
```

[Источник](https://unix.stackexchange.com/questions/28803/how-can-i-reduce-a-videos-size-with-ffmpeg#38380)

## [Сторонние инструменты](#third-party-applications)

### [ffmpeg.app](#ffmpegapp)

[ffmpeg.app](https://ffmpeg.app) — веб-приложение с текстовыми описаниями
действий на английском, по которым можно узнать консольную команду.

Также здесь можно сразу же обработать файл, но это далеко не всегда может
сработать. Можно попробовать [dev-версию](https://dev.ffmpeg.app), которая
является более свежей. Приложение с
[открытым исходным кодом](https://github.com/zeh/ffmpeg.app), основано на
[ffmpeg.wasm](https://ffmpegwasm.netlify.app/playground), который является
портом FFmpeg для JavaScript. Обработка производится локально в браузере, данные
не отслеживаются и никуда не передаются.

![Интерфейс ffmpeg.app](/media/ffmpeg_app.jpg)

## [Смотрите также](#see-also)

- [Документация](https://ffmpeg.org/documentation.html) (англ.)
- [ArchWiki](https://wiki.archlinux.org/title/FFmpeg) (англ.)

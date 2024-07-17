+++
title = 'scrcpy'
categories = ['android']
publishDate = '2023-11-17T17:37:47Z'
lastmod = '2023-12-24T13:10:53Z'
summary = """Консольная программа для отражения экрана и аудио с \
Android-устройства на компьютер под управлением Windows, Linux и macOS."""
cover = '/media/scrcpy.jpg'
featured = true
+++

# scrcpy
{{< categories >}}

[scrcpy](https://github.com/Genymobile/scrcpy) — консольная программа для
отражения экрана и аудио с Android-устройства на компьютер под управлением
Windows, Linux и macOS.

![Демонстрация отражённого экрана Android](/media/scrcpy.jpg)

## Применение

- Демонстрация экрана
- Запись видео
- Использование телефона [в качестве веб-камеры](#камера)
- Использование клавиатуры и мыши для ввода
- Drag & Drop для отправки файлов и установки приложений (APK)
- Копирование и вставка текста с компьютера в телефон и наоборот

## Установка

> **Смотрите также:**
[Руководство по использованию интерфейса командной строки](/wiki/cli)
{.related}

Android-устройство должно соответствовать
[требованиям](https://github.com/Genymobile/scrcpy/#prerequisites).

### Windows

> **См. также:**
[Полная инструкция](https://github.com/Genymobile/scrcpy/blob/master/doc/windows.md)
(англ.)
{.related}

Скачайте [последнюю версию](https://github.com/Genymobile/scrcpy/releases) и
распакуйте её.

Альтернативно, вы можете установить через менеджеры пакетов, например
[winget](/wiki/winget): `winget install scrcpy`

Откройте терминал в месте, где расположен исполняемый файл (если вы скачивали
архив вручную) (вы также можете открыть файл `open_a_terminal_here.bat`),
после чего запустите `scrcpy`.

### Linux

> **Смотрите также:**
[Полная инструкция](https://github.com/Genymobile/scrcpy/blob/master/doc/linux.md)
(англ.)
{.related}

Установите программу из вашего менеджера пакетов:

- Debian/Ubuntu: `apt install scrcpy`
- Arch Linux: `pacman -S scrcpy`
- Fedora: `dnf copr enable zeno/scrcpy && dnf install scrcpy`
- Gentoo: `emerge scrcpy`
- Snap: `snap install scrcpy`

Эта версия, скорее всего, не будет последней.

После установки, запустите программу из терминала: `scrcpy`

### macOS

> **Смотрите также:**
[Полная инструкция](https://github.com/Genymobile/scrcpy/blob/master/doc/macos.md)
(англ.)
{.related}

Программа доступна в [Homebrew](https://brew.sh): `brew install scrcpy`. Вам
также потребуется установить `adb`: `brew install android-platform-tools`.

Альтернативно, Scrcpy доступен в [MacPorts](https://www.macports.org), который
установит `adb` за вас: `sudo port install scrcpy`

После установки, запустите программу из терминала: `scrcpy`.

## Использование

1. Подключите Android-устройство по проводу или
[Wi-Fi](https://www.genymotion.com/blog/open-source-project-scrcpy-now-works-wirelessly)
2. Включите [отладку по USB](https://developer.android.com/studio/debug/dev-options#enable)
на Android-устройстве.
3. Запустите `scrcpy` в терминале. Должно появиться окно с экраном вашего
телефона.

### Параметры

Укажите дополнительные параметры после `scrcpy` в консоли.

- Показывать касания: `-t`
- Не тушить экран: `-w`
- Запись видео: `-r file.mp4` или `-r file.mkv`
- Не показывать окно устройства, но при этом вести запись: `-Nr file.mp4`
- Отключить аудио: `--no-audio`
- Отключить управление с компьютера: `-n`

> **Смотрите также:**
[Документация](https://github.com/Genymobile/scrcpy#user-documentation) (англ.)
{.related}

### Камера

> **Смотрите также:**
[Полная инструкция](https://github.com/Genymobile/scrcpy/blob/master/doc/camera.md)
(англ.)
{.related}

Отражение камеры появилось в scrcpy 2.2 и доступно для Android 12 и
выше.

```shell
$ scrcpy --video-source=camera
```

При этом, по умолчанию звук будет идти с микрофона устройства.

```shell
$ scrcpy --video-source=display  # по умолчанию --audio-source=output
$ scrcpy --video-source=camera   # по умолчанию --audio-source=mic
$ scrcpy --video-source=display --audio-source=mic    # дисплей И микрофон
$ scrcpy --video-source=camera --audio-source=output  # камера И аудио устройства
```

У вашего устройства может быть несколько камер и разрешений:

```shell
$ scrcpy --list-cameras
$ scrcpy --video-source=camera                           # первая камера
$ scrcpy --video-source=camera --camera-facing=front     # первая фронтальная
$ scrcpy --video-source=camera --camera-facing=back      # первая задняя
$ scrcpy --video-source=camera --camera-facing=external  # первая внешняя
$ scrcpy --video-source=camera --camera-id=0             # ID камеры
```

По умолчанию захватывается 30 FPS:

```shell
$ scrcpy --video-source=camera --camera-fps=60
```

На Linux можно
[перенаправить вывод в виртуальную камеру](https://github.com/Genymobile/scrcpy/blob/master/doc/v4l2.md). На других системах можно использовать
[виртуальную камеру OBS](https://obsproject.com/forum/resources/obs-virtualcam.949).

### Исправление проблем

- [FAQ](https://github.com/Genymobile/scrcpy/blob/master/FAQ.md)
- [Баг-трекер](https://github.com/Genymobile/scrcpy/issues)

### Смотрите также

- [Использование телефона в качестве веб-камеры на Linux](https://3iinc.xyz/blog/how-to-use-your-phone-as-a-webcam-with-scrcpy)

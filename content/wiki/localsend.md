---
title: LocalSend
publishDate: 2023-12-25T14:00:51Z
lastmod: 2023-12-25T14:03:33Z
categories: ['files']
contributors: [kttrickster]
image: /media/localsend.jpg
---

[LocalSend](https://localsend.org) — приложение для передачи файлов между
устройствами в пределах локальной сети. Бесплатное, кроссплатформенное,
[с открытым исходным кодом](https://github.com/localsend/localsend). Является
альтернативой AirDrop.

<!--more-->

![Отправка файлов с компьютера на телефон при помощи LocalSend](/media/localsend.jpg)

## Установка

Все способы установки на Windows, macOS, Linux, Android и iOS описаны на
[официальном сайте](https://localsend.org/#/download)

## Использование

При первом запуске, вашему устройству будет присвоено какое-то случайное имя.
Его можно сменить в настройках. Оно используется для простой идентификации при
отправке файлов.

Чтобы отправить файлы на другое устройство, оно должно быть подключено к той же
сети Wi-Fi, и на нём запущено приложение LocalSend. Выберите файлы, папку или
текст, а затем устройство в списке, куда хотите отправить данные. Подтвердите
отправку на другом устройстве.

В настройках можно указать папку сохранения, автозапуск, а также разрешить
принятие отправки без подтверждения.

## Исправление проблем

### Не удаётся найти устройство

Убедитесь, что устройства подключены к одной и той же сети Wi-Fi.

Файервол может блокировать соединение. Для Windows есть автоматическая
настройка, нажмите на пункт "Устранение неполадок" во вкладке "Отправить". В
остальных случаях попробуйте отключить файервол.

### Не удаётся продолжить выполнение кода MSVCP140.dll

Установите или обновите
[Microsoft Visual C++ Redistributable 2015-2022](https://www.techpowerup.com/download/visual-c-redistributable-runtime-package-all-in-one).
Рекомендуется установить пакеты всех годов и разрядности, так как они
необходимы для многих других программ. Также будет полезным проверить наличие
обновлений системы и перезагрузить компьютер.

[Источник](https://github.com/localsend/localsend/issues/682)

### Помощь и поддержка

- Баг-трекер на [GitHub](https://github.com/localsend/localsend/issues)
- Обсуждения на [GitHub](https://github.com/localsend/localsend/discussions)
- Чат в [Discord](https://discord.gg/GSRWmQNP87)

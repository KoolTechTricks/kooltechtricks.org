---
title: Obtainium
publishDate: 2024-02-15T18:09:55Z
lastmod: 2025-06-28T10:15:00Z
# categories: [android]
contributors: [kttrickster]
image: obtainium.webp
imageAlt: >
  Скриншоты Obtainium на экране списка приложений и информации о приложении
---

[Obtainium] — приложение с [открытым исходным кодом] для Android, которое
позволяет получать обновления напрямую из их источников: GitHub, [F-Droid],
RuStore, Huawei AppGallery, APKPure и другие сайты.

<!--more-->

![Obtainium](obtainium.webp)

[Obtainium]: https://obtainium.imranr.dev
[открытым исходным кодом]: https://github.com/ImranR98/Obtainium
[F-Droid]: /wiki/f-droid

## Применение

Разработчики приложений, как правило, публикуют обновления в разных источниках,
чтобы каждому пользователю было удобно их получать. Однако существует множество
различных источников, и нет такого, в котором будут все приложения. Приходится
устанавливать несколько приложений для получения обновлений. В каждом есть свои
недостатки:

- Google Play есть не на всех прошивках Android, и разработчики приложений
вынуждены ждать проверки перед публикацией обновлений.

- Официальный каталог [F-Droid] содержит только приложения с открытым исходным
кодом, и их собирают другие люди, из-за чего обновления задерживаются, и версии
приложений отличаются.

- Проприетарные магазины приложений RuStore и Huawei AppGallery вызывают
сомнения приватности и безопасности. Они могут делать лишние запросы в интернет
и отправлять данные куда не надо.

- Приложения, скачанные из APK с GitHub, GitLab, Forgejo (Codeberg) и других
сайтов обычно не имеют автоматической проверки наличия обновлений.

Obtainium решает эти проблемы. Он позволяет получать обновления приложений из
многих источников в одном месте. Добавьте ссылку на любой поддерживаемый
источник в Obtainium — и он будет периодически проверять наличие обновлений и
устанавливать их.

Obtainium делает запросы в интернет только для получения обновлений приложений.
Так как он с [открытым исходным кодом], возможно полностью убедиться в его
безопасности.

Изначально Obtainium задумывался для получения обновлений из репозиториев
GitHub, GitLab, Forgejo (Codeberg), так как именно туда они чаще всего
публикуются в первую очередь от самих разработчиков, а не посредников.

## Установка

Скачайте Obtainium с [GitHub](https://github.com/ImranR98/Obtainium/releases/latest/download/app-release.apk)

## Использование

Чтобы научиться добавлять приложения в Obtainium, читайте [руководство].

[руководство]: /guides/how-to-use-obtainium

### Фильтр релизов и APK

Разработчики браузера Brave выкладывают обновления на
[GitHub](https://github.com/brave/brave-browser/releases). Если добавить эту
ссылку в Obtainium, то вам будет постоянно предлагать выбрать файл.

Перейдём по ссылке и увидим, что разработчики выкладывают релизы с разными
названиями: Nightly, Beta, Release — они означают ветки. Нас интересует
стабильная ветка "Release". А среди APK доступно множество архитектур, но мы
хотим скачивать универсальный пакет, подходящий под все архитектуры. Он
называется "Universal".

Запомнили: нам нужны релизы с заголовком "Release" и APK-файлы с названием
"Universal". Настроим Obtainium таким образом, чтобы он выбирал только нужные
нам обновления и файлы.

При добавлении приложения или в его настройках в Obtainium (иконка карандаша в
левом нижнем углу) можно указать фильтр по регулярным выражениям. Регулярные
выражения нужны в случаях, когда сложно настроить фильтр по названиям. Но в
нашем случае всё просто.

В поле «Фильтровать заголовки релизов» пишем "Release" (важно сохранять регистр)
— так будут выбираться нужные нам обновления стабильной ветки приложения.
Пролистайте ниже, найдите поле «Отфильтровать APK-файлы» и введите "Universal" —
так будут скачиваться сразу нужные APK-файлы.

После этих действий при обновлении Brave через Obtainium будут скачиваться
нужные нам обновления сразу нужных файлов.

Если вы хотите сделать то же самое для другого приложения, то внимательно
изучите то, как выкладываются релизы, и найдите нужные строки для фильтров.

### Экспорт и импорт списка приложений

Настройте экспорт списка приложений (и по желанию настроек Obtainium), чтобы
восстанавливать их на других устройствах без необходимости добавлять всё заново.

Для этого перейдите во вкладку «Данные» и выберите каталог для экспорта. Это
папка, в которую будут сохраняться текстовые файлы со списком приложений.
Найдите способ делать её резервное копирование.

Далее вы сможете экспортировать список приложений вручную или включить
автоэкспорт при изменениях. По желанию можно включить настройки Obtainium в
экспорт.

Здесь можно импортировать список приложений.

### Добавление уже установленных приложений в Obtainium

Найдите ссылку на источник приложения и добавьте его в Obtainium. Он начнёт
проверять наличие обновлений и устанавливать их. Это нужно сделать вручную для
каждого приложения, автоматическая возможность
[пока не реализована](https://github.com/ImranR98/Obtainium/issues/163).

> [!important]
> Подпись установленного приложения и скачанного по ссылке может отличаться
(например, на GitHub и F-Droid). Если это так, то обновить приложение из
источника не получится — придётся переустанавливать приложение. В таком случае
сохраните его данные.

### Сменить источник

Редко может произойти ситуация, когда ссылка на приложение изменяется. Например,
когда репозиторий мигрирует на другую платформу. Obtainium не сможет отследить
такие миграции, поэтому вам нужно самостоятельно узнать об этом и сменить ссылку
на источник в Obtainium.

1. Откройте приложение в Obtainium.
2. В правом нижнем углу нажмите на иконку «Удалить».
3. Внимательно проверьте, что включено «Удалить из Obtainium» и выключено
«Удалить с устройства».
4. Добавьте новую ссылку на это приложение.

После этого Obtainium должен проверять наличие обновлений приложения из нового
источника.

> [!important]
> Приложение по новой ссылке может иметь другую подпись. Если это так, то
обновить приложение из нового источника не получится — придётся
переустанавливать приложение. В таком случае сохраните его данные.

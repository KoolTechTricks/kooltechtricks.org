# [Почтовые клиенты](#email-clients)
> Categories: Compilations, Internet

Многие привыкли использовать веб-интерфейс своего почтового сервиса. Однако
можно использовать сторонние клиенты, которые предоставляют более удобный и
конфиденциальный опыт.

- В интерфейсе некоторых сервисов есть реклама, а также скрытые скрипты,
отслеживающие действия пользователя для показа более релевантных объявлений.
- По умолчанию в письмах загружаются сторонние ресурсы. Это позволяет
отправителю узнать кто и когда прочитал это письмо. Веб-интерфейсы по умолчанию
не блокируют их загрузку в отличие от сторонних почтовых клиентов.
- Почтовые клиенты предоставляют больше возможностей для управления письмами
и аккаунтами.

Почтовые сервисы могут ограничивать авторизацию в сторонних клиентах:

- Яндекс и Mail.ru: Нужно разрешить доступ к почтовому ящику с помощью почтовых
клиентов в настройках аккаунта
- Proton: Нужно оплатить платную подписку. Из-за особенностей почтового сервиса
нужно использовать Proton Mail Bridge.

Если у вас не получается войти в свой аккаунт, попробуйте не вводить пароль,
чтобы вызвать отдельное окно аутентификации.

## [Thunderbird](#thunderbird)

- **Платформа:** ПК (Windows, Linux, macOS)
- **Технологии:** Открытый исходный код, на основе Firefox
- **Скачать:**
    - [Официальный сайт](https://www.thunderbird.net)
    - Windows [winget](/wiki/winget): `Mozilla.Thunderbird`
    - Linux: [Flathub](https://flathub.org/apps/org.mozilla.Thunderbird)

Почтовый клиент, управляемый Mozilla Foundation и поддерживаемый сообществом.
Полностью свободный, ставит безопасность и конфиденциальность на первое место.
Существует с 2003 года и обладает широким набором возможностей.

В возможности Thunderbird входят календарь, контакты, список дел, чат и
[агрегатор RSS](/wiki/rss#thunderbird). Поддерживаются
[расширения](https://addons.thunderbird.net).

Сейчас разрабатывается Thunderbird [для Android](#thunderbird-android) (бывший
K-9 Mail) и для iOS (пока недоступно).

![Скриншот Thunderbird для ПК](/media/email_thunderbird.png)

### [Betterbird](#betterbird)

Форк Thunderbird с исправлением некоторых ошибок и добавлением дополнительных
функций.
[Полностью совместим с Thunderbird](https://betterbird.eu/support/index.html#switch-tb-bb),
можно использовать тот же профиль, не перенося аккаунты и настройки.

- [Скачать с официального сайта](https://betterbird.eu/downloads/index.php)
- Windows [winget](/wiki/winget): `Betterbird.Betterbird`

## [FairEmail](#fairemail)

- **Платформа:** Android
- **Технологии:** Java, C++,
[Открытый исходный код](https://github.com/M66B/FairEmail)
- **Скачать:**
[Google Play](https://play.google.com/store/apps/details?id=eu.faircode.email),
[GitHub](https://github.com/M66B/FairEmail/releases),
[F-Droid](https://f-droid.org/en/packages/eu.faircode.email)

Почтовый клиент, разработанный специально для обеспечения конфиденциальности
пользователя. По умолчанию не загружает сторонние элементы в письмах и
анализирует внешние ссылки перед переходом.

Некоторые функции требуют приобретения Pro-версии. Это необходимо для
поддержания разработки проекта.

![Скриншот FairEmail](/media/email_fairemail.jpg)

## [K-9 Mail (Thunderbird для Android)](#thunderbird-android)

- **Платформа:** Android
- **Технологии:** Kotlin, Java,
[Открытый исходный код](https://github.com/thunderbird/thunderbird-android)
- **Скачать:**
[Google Play](https://play.google.com/store/apps/details?id=com.fsck.k9),
[GitHub](https://github.com/thunderbird/thunderbird-android/releases),
[F-Droid](https://f-droid.org/repository/browse/?fdid=com.fsck.k9)

Простой почтовый клиент с открытым исходным кодом для Android.

Этот проект перешёл под крыло Thunderbird, и на данный момент ведётся разработка
обновлённой версии, которая будет являться Thunderbird для Android. Тем не
менее, текущая версия приложения поддерживается и доступна для использования.

![Скриншот K-9 Mail](/media/email_k9mail.jpg)

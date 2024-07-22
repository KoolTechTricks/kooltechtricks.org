+++
title = 'Клиенты F-Droid'
categories = ['android', 'software-collections']
publishDate = '2024-06-25T18:34:37Z'
lastmod = '2024-06-25T18:48:42Z'
summary = """Подборка приложений для F-Droid — свободного каталога приложений \
Android."""
cover = '/media/f-droid-clients-droid-ify.webp'
+++

# Клиенты F-Droid
{{< categories >}}

Подборка приложений для [F-Droid](/wiki/f-droid) — свободного каталога
приложений Android.

Вы можете использовать [официальный клиент F-Droid](#официальный-клиент), но он
выглядит устаревшим. Рекомендуется попробовать сторонние клиенты, перечисленные
на этой странице. Они обычно выглядят красивее и предоставляют более удобный
пользовательский опыт.

> **Смотрите также:** [F-Droid](/wiki/f-droid)
{.related}

{{< blockquote >}}
> [!note]
> Для обеспечения надёжной проверки и установки обновлений рекомендуется
отключить оптимизацию расхода. Приложение может само порекомендовать выполнить
соответствующие действия при необходимости.
>
> Скорее всего, система Android не будет давать сторонним приложениям
устанавливать другие автоматически в фоне, поэтому придётся выполнять этот
процесс вручную. Поведение может отличаться в зависимости от клиента.
{{< /blockquote >}}

## Официальный клиент

![Официальный клиент F-Droid](/media/f-droid-clients-official.webp)

- **Тип:** Независимое официальное приложение.
- **Технологии:** Java, Kotlin, Открытый исходный код.
- **Ссылки:**
    - [Помочь перевести](https://hosted.weblate.org/projects/f-droid/f-droid);
    - [Отчёты об ошибках](https://gitlab.com/fdroid/fdroidclient/-/issues);
    - [Список изменений](https://gitlab.com/fdroid/fdroidclient/-/blob/HEAD/CHANGELOG.md);
    - [Поддержать разработчиков](https://f-droid.org/donate);
    - [Исходный код](https://gitlab.com/fdroid/fdroidclient).
- **Скачать:**
    - [Прямая ссылка](https://f-droid.org/F-Droid.apk);
    - [F-Droid](https://f-droid.org/packages/org.fdroid.fdroid).

Стандартный клиент с устаревшим интерфейсом. Однако активно разрабатывается и
поддерживается.

По умолчанию включён только официальный репозиторий f-droid.org. Другие
репозитории нужно добавлять вручную. После добавления репозиториев можно
посмотреть подробную информацию и список приложений. На экране приложения можно
выбрать репозиторий установки и выбрать предпочтительный.

Обновления загружаются автоматически в фоне, но устанавливать их нужно вручную
из-за ограничений Android.

**Прочие функции:**
- Предупреждение о несовместимых версиях с отличающейся подписью;
- Фильтр [анти-функций](https://f-droid.org/ru/docs/Anti-Features);
- Получение приложений от людей рядом без интернета (Nearby Share);
- Локальный репозиторий;
- Сканирование репозиториев на съёмных хранилищах;
- Тревожная кнопка.

### F-Droid Basic

- Скачать из [F-Droid](https://f-droid.org/packages/org.fdroid.basic).

Урезанный официальный клиент, в котором только самые необходимые функции.

**Отличия:**
- Приложения на главном экране отображаются в виде списка, а не плиток;
- Нет функции получения приложений от людей рядом без интернета (Nearby Share);
- Нет тревожной кнопки.

## Droid-ify

![Droid-ify](/media/f-droid-clients-droid-ify.webp)

- **Тип:** Прямая адаптация/модификация заброшенного
[Foxy Droid](https://github.com/kitsunyan/foxy-droid).
- **Технологии:** Kotlin, Открытый исходный код.
- **Ссылки:**
    - [Помочь перевести](https://hosted.weblate.org/engage/droidify);
    - [Отчёты об ошибках](https://github.com/Droid-ify/client/issues);
    - [Список изменений](https://github.com/Droid-ify/client/releases);
    - [Исходный код](https://github.com/Droid-ify/client).
- **Скачать:**
    - [F-Droid](https://f-droid.org/packages/com.looker.droidify);
    - [IzzyOnDroid](https://apt.izzysoft.de/fdroid/index/apk/com.looker.droidify);
    - [GitHub](https://github.com/Droid-ify/client/releases/latest).

Простой, быстрый и лёгкий клиент с дизайном Material. Наиболее часто
рекомендуется пользователями.

Предустановлены некоторые сторонние репозитории, но активны только официальный
(f-droid.org) и [IzzyOnDroid](https://apt.izzysoft.de/fdroid). Для просмотра
информации о репозитории, нужно долго удерживать его в списке.

**Прочие функции:**
- Предупреждение о несовместимых версиях с отличающейся подписью;
- Добавление приложений в избранное;
- Экспорт/импорт настроек и списка репозиториев.

## Neo Store

![Neo Store](/media/f-droid-clients-neo-store.webp)

- **Тип:** Прямая адаптация/модификация заброшенного
[Foxy Droid](https://github.com/kitsunyan/foxy-droid).
- **Технологии:** Kotlin, Открытый исходный код.
- **Ссылки:**
    - [Помочь перевести](https://hosted.weblate.org/engage/neo-store);
    - [Отчёты об ошибках](https://github.com/NeoApplications/Neo-Store/issues);
    - [Список изменений](https://github.com/NeoApplications/Neo-Store/releases);
    - Обсуждение в [Telegram](https://t.me/neo_android_store) и
    [Matrix](https://go.kde.org/matrix/#/#neo-store:matrix.org);
    - [Исходный код](https://github.com/NeoApplications/Neo-Store).
- **Скачать:**
    - [F-Droid](https://f-droid.org/packages/com.machiav3lli.fdroid);
    - [IzzyOnDroid](https://android.izzysoft.de/repo/apk/com.machiav3lli.fdroid);
    - [GitHub](https://github.com/NeoApplications/Neo-Store/releases/latest).

Современный функциональный клиент F-Droid.

Предустановлено множество репозиториев, но активны только официальный
(f-droid.org), [IzzyOnDroid](https://apt.izzysoft.de/fdroid) и Guardian Project.
Для просмотра информации о репозитории, нужно долго удерживать его в списке.

Интерфейс приложения местами перегружен, зато есть различные вкладки: новые
приложения, категории, расширенный поиск. Присутствует множество настроек, их
можно экспортировать.

На экране приложения отображается много информации: версия, размер, дата
последнего обновления, минимальная версия Android, категория, анти-функции,
лицензия. Есть подробные сведения о безопасности и конфиденциальности: наличие
трекеров, запрашиваемые разрешения.

**Прочие функции:**
- Предупреждение о несовместимых версиях с отличающейся подписью;
- Добавление приложений в избранное;
- Экспорт/импорт настроек и списка репозиториев;
- Детский режим (отключение установки новых приложений).

## Obtainium

> **Основная статья:** [Obtainium](/wiki/obtainium)
{.related}

![Obtainium](/media/obtainium.png)

- **Тип:** Независимое приложение.
- **Технологии:** Dart (Flutter), Открытый исходный код.
- **Ссылки:**
    - [Сайт](https://obtainium.imranr.dev);
    - [Отчёты об ошибках](https://github.com/ImranR98/Obtainium/issues);
    - [Список изменений](https://github.com/ImranR98/Obtainium/releases);
    - [Исходный код](https://github.com/ImranR98/Obtainium).
- **Скачать:**
    - [GitHub](https://github.com/ImranR98/Obtainium/releases/latest);
    - [IzzyOnDroid](https://apt.izzysoft.de/fdroid/index/apk/dev.imranr.obtainium);
    - [F-Droid](https://f-droid.org/packages/dev.imranr.obtainium.fdroid).

Это не совсем клиент для F-Droid, но позволяет устанавливать и обновлять
приложения оттуда, а также из других источников: GitHub, GitLab, Codeberg,
APKMirror и многих других.

Поиск присутствует, но он не предназначен для нахождения новых приложений, для
этого рекомендуется использовать другие клиенты или
[веб-интерфейс F-Droid](https://f-droid.org/packages).

Obtainium будет полезен для того, чтобы объединить все клиенты каталогов
приложений в один, а также иметь возможность получать обновления напрямую от
разработчика.

Obtainium рациональнее использовать для установки приложений из оригинального
источника (GitHub), так как там обновления появляются намного быстрее, чем на
F-Droid.

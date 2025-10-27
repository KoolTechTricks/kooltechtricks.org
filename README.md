# Сайт Kool Tech Tricks

[Kool Tech Tricks](https://kooltechtricks.org) — свободный ресурс с полезной и
интересной информацией о различном программном обеспечении.

Этот репозиторий содержит исходные файлы содержимого сайта. Темы (шаблоны) для
сборки находятся в отдельном приватном репозитории.

Сайт сделан на [Hugo](https://gohugo.io).

## Внести свой вклад

Вы можете [создать отчёт], если вы хотите сообщить о проблеме или предложить
улучшения. Рекомендуется сначала ознакомиться с [руководством].

[создать отчёт]: https://github.com/KoolTechTricks/kooltechtricks.org/issues/new
[руководством]: https://docs.kooltechtricks.org

## Сборка

> [!note]
> Чтобы собрать сайт локально, вам нужен доступ к приватным репозиториям тем.
Если у вас нет доступа, вы можете просматривать файлы через другие программы для
рендера Markdown, например, [Obsidian](https://obsidian.md). Также вы можете
написать [свои шаблоны Hugo](https://gohugo.io/documentation) или взять
[готовые](https://themes.gohugo.io).

**Зависимости:**
- [Git](https://git-scm.com/downloads)
- [Hugo](https://gohugo.io/installation) v0.146.0 или выше
- [NPM](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm),
чтобы собрать индекс страниц [Pagefind](https://pagefind.app)

```sh
git clone --recursive https://github.com/KoolTechTricks/kooltechtricks.org # --recursive чтобы клонировать темы
cd kooltechtricks.org
hugo server -D -O  # -O чтобы открыть в браузере
npx -y pagefind --site public  # собрать индекс страниц Pagefind (необязательно)
```

В репозитории хранится скрипт сборки: [build.sh](/build.sh). При запуске он
собирает сайт Hugo и индекс Pagefind, делает коммит и публикует сайт.

## Лицензия

### Оригинальное содержимое

Всё оригинальное содержимое сайта и его публичные исходные файлы доступны по
лицензии [Creative Commons Attribution Share Alike 4.0 International]
([Creative Commons «С указанием авторства — С сохранением условий»]),
если не указано иное.

[Брендинг Kool Tech Tricks] доступен по лицензии [CC BY-NC-SA 4.0].

### Сторонние ресурсы

Все сторонние ресурсы используются в демонстрационных целях, их права
принадлежат соответствующим владельцам. Некоторые ресурсы могли быть слегка
модифицированы, чтобы соответствовать формату публикации на сайте.

Директория `/content/assets/logos` содержит значки и логотипы.

Снимки экрана содержатся в директории `/content/assets/screenshots`, а также в
папках страниц. Они приводятся в демонстрационных целях.

Изображения из директории `/content/assets/hero` могут собраны из снимков
экрана.

Директория `/content/assets/avatars` содержит аватары людей, внёсших вклад в
сайт.

### Технологии

Поиск по сайту основан на [Pagefind]. Лицензия: MIT.

[Material Icons] от Google, лицензия [Apache v2.0].

[Creative Commons Attribution Share Alike 4.0 International]: https://creativecommons.org/licenses/by-sa/4.0
[Creative Commons «С указанием авторства — С сохранением условий»]: https://creativecommons.org/licenses/by-sa/4.0/deed.ru
[Pagefind]: https://github.com/Pagefind/pagefind
[Брендинг Kool Tech Tricks]: https://docs.kooltechtricks.org/about/branding
[CC BY-NC-SA 4.0]: https://creativecommons.org/licenses/by-nc-sa/4.0/deed.ru
[Material Icons]: https://fonts.google.com/icons
[Apache v2.0]: https://www.apache.org/licenses/LICENSE-2.0.html

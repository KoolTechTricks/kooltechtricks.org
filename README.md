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
[руководством]: /CONTRIBUTING.md

> [!warning]
> Руководство по внесению своего вклада устарело и нуждается в переработке.

## Сборка

> [!warning]
> Чтобы собрать сайт локально, вам нужен доступ к приватным репозиториям тем.

**Зависимости:**
- [Git](https://git-scm.com/downloads)
- [Hugo](https://gohugo.io/installation) v0.134.0 или выше
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

Всё содержимое сайта и его публичные исходные файлы доступны по лицензии
[Creative Commons Attribution Share Alike 4.0 International](https://creativecommons.org/licenses/by-sa/4.0)
([Creative Commons «С указанием авторства — С сохранением условий»](https://creativecommons.org/licenses/by-sa/4.0/deed.ru)).

Все права на логотипы в директории `/content/assets/logos` принадлежат их
владельцам. Они используются в образовательных целях при упоминании
соответствующих сервисов или приложений.

Некоторые изображения в этом репозитории были взяты из сторонних источников. К
ним не применяется лицензия этого репозитория:

- [rss_nextcloud.jpg](/media/rss_nextcloud.jpg) — взято из
[источника](https://github.com/nextcloud/news/blob/master/screenshots/1.png)
- [scrcpy.jpg](/media/scrcpy.jpg) — взято из
[источника](https://github.com/Genymobile/scrcpy)
- [syncthing.jpg](/media/syncthing.jpg) — взято из
[источника](https://syncthing.net)

Этот список может не содержать все файлы, взятые из сторонних источников. Не
гарантировано, что ссылки рабочие и актуальные.

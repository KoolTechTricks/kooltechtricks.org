---
title: Расширения для браузера
publishDate: 2025-08-11T20:52:00Z
lastmod: 2025-08-11T20:52:00Z
contributors: [kttrickster]
---

Какие расширения для браузера нужно устанавливать? Как это сделать в разных
браузерах? Что такое Manifest V3?

<!--more-->

## Какие расширения для браузера стоит установить?

Расширения для браузера позволяют модифицировать содержимое страниц и добавлять
полезную функциональность. Иногда они называются дополнениями.

Мы рекомендуем устанавливать минимальное количество необходимых вам расширений.
Есть риск получения вирусов (особенно при установке малоизвестных расширений),
поломки сайтов, снижения производительности.

Рекомендуемые расширения с полезной функциональностью, наименее подверженные
проблемам, вы найдёте на этом сайте.

## Chromium

К браузерам на основе Chromium относятся **Google Chrome**, **Microsoft Edge**,
**Opera**, **Яндекс Браузер**, **Vivaldi**, **Brave**.

Установка расширений осуществляется через каталоги [Интернет-магазин Chrome]
или [Microsoft Edge Add-ons].

Для Android расширения можно устанавливать только в [Microsoft Edge], но мы не
рекомендуем пользоваться этим браузером.

Многие расширения, включая эффективные блокировщики трекеров и рекламы, могут
быть недоступны. Google отказывается от поддержки Manifest V2 и переходит на
Manifest V3 в Chromium. Браузеры на основе Chromium, сохраняющие поддержку
Manifest V2: [Vivaldi], [Brave], [Ungoogled Chromium], [Cromite]. Узнайте больше
про Manifest V3 и другие теневые стратегии Google на странице
[Браузерные движки].

[Интернет-магазин Chrome]: https://chromewebstore.google.com
[Microsoft Edge Add-ons]: https://microsoftedge.microsoft.com
[Microsoft Edge]: https://play.google.com/store/apps/details?id=com.microsoft.emmx
[Vivaldi]: /collections/browsers-desktop#vivaldi
[Brave]: /collections/browsers-desktop#brave
[Ungoogled Chromium]: /collections/browsers-desktop#ungoogled-chromium
[Cromite]: /collections/browsers-mobile#cromite
[Браузерные движки]: /wiki/browser-engines#chromium--blink

## Firefox

К браузерам на основе Firefox, кроме самого **Firefox**, относятся **Waterfox**,
**Zen**, **LibreWolf**, **Floorp**, **Midori**, **Mullvad Browser**,
**Tor Browser**, **IronFox**, **Fennec**, **Iceraven**.

Установка расширений осуществляется через каталог [Firefox Add-ons] (иногда
название сокращается как **AMO**).

Вы можете устанавливать расширения для Android-версий браузеров. Доступен и
Manifest V2, и Manifest V3 — никакие эффективные блокировщики трекеров и
рекламы не будут удалены из Firefox.

[Firefox Add-ons]: https://addons.mozilla.org

## WebKit

К браузерам на основе WebKit относятся **Safari**, **GNOME Web (Epiphany)**,
**Orion** и **все браузеры для iOS**.

WebKit не поддерживает WebExtensions API в полной мере как в Chromium и Firefox.
Поэтому доступность расширений ограничена:

- **Safari:** Расширения могут быть доступны в AppStore.
- **Orion:** В [этом браузере](/collections/browsers-desktop#orion) портирован
WebExtensions API, поэтому можно устанавливать расширения для
[Chromium](#chromium) или [Firefox](#firefox).
- **Остальные браузеры:** Расширения могут быть недоступны.

## Пользовательские скрипты

Иногда вместо расширений (дополнений) предлагается установить
**пользовательские скрипты**. Они модифицируют функциональность сайтов, а не
браузера. Не размещаются в каталогах, следовательно, не проверяются на
вредоносную активность.

Для их работы необходимо специальное расширение — менеджер пользовательских
скриптов [Tampermonkey] или [Violentmonkey]. Для Safari: [Userscripts].

[Tampermonkey]: https://www.tampermonkey.net
[Violentmonkey]: https://violentmonkey.github.io/get-it
[Userscripts]: https://apps.apple.com/app/id1463298887

Чтобы установить скрипт, нужно открыть страницу с исходным текстом. Она должна
определиться как пользовательский скрипт.

> [!important]
> Пользовательские скрипты — это менее безопасный способ изменения
функциональности сайтов. Они не проходят проверку на вредоносную активность,
в отличие от каталогов расширений. Если есть возможность, старайтесь изучать
исходный код скрипта перед установкой.

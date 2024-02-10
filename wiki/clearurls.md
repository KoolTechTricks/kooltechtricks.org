# [ClearURLs](#clearurls)
> Categories: Browser Extensions, Internet, Privacy

[ClearURLs](https://clearurls.xyz) — расширение, которое автоматически убирает
отслеживающие параметры из ссылок.

![Скриншот главной страницы расширения ClearURLs](/media/clearurls.jpg)

## [Применение](#utilization)

Многие сайты используют отслеживающие элементы такие как utm_source, utm_medium,
чтобы помечать вашу активность. Однако они не обязательны для корректной работы
сайта и могут быть убраны, что и делает ClearURLs. Чаще всего такая практика
используется в соц.сетях и интернет-магазинах. Также это расширение блокирует
многие другие способы отслеживания:
[аудит ссылок](https://html.spec.whatwg.org/multipage/links.html#hyperlink-auditing),
[History API](https://developer.mozilla.org/en-US/docs/Web/API/History_API#The_replaceState()_method),
[ETag](https://en.wikipedia.org/wiki/HTTP_ETag#Tracking_using_ETags),
перезапись результатов в Google и Яндекс.

Например, вот так выглядит ссылка на товар в Amazon:

`https://www.amazon.com/dp/exampleProduct/ref=sxin_0_pb?__mk_de_DE=ÅMÅŽÕÑ&keywords=tea&pd_rd_i=exampleProduct&pd_rd_r=8d39e4cd-1e4f-43db-b6e7-72e969a84aa5&pd_rd_w=1pcKM&pd_rd_wg=hYrNl&pf_rd_p=50bbfd25-5ef7-41a2-68d6-74d854b30e30&pf_rd_r=0GMWD0YYKA7XFGX55ADP&qid=1517757263&rnid=2914120011`

Большая часть ссылки является отслеживающим кодом. После очистки ссылки через
ClearURLs, она будет выглядеть так:

`https://www.amazon.com/dp/exampleProduct`

## [Установка](#installation)

Установите расширение для:

- [Firefox](https://addons.mozilla.org/firefox/addon/clearurls) (ПК и Android)
- [Chromium](https://chrome.google.com/webstore/detail/clearurls/lckanjgmijmafbedllaakclkaicjfmnk)
- [Edge](https://microsoftedge.microsoft.com/addons/detail/mdkdmaickkfdekbjdoojfalpbkgaddei)

У расширения [открытый исходный код](https://github.com/ClearURLs/Addon). Вы
можете изучать его работу, свободно модифицировать и распространять сборки.

## [Использование](#usage)

После установки ClearURLs автоматически начнёт очищать ссылки от отслеживающих
параметров, пока вы посещаете различные сайты. Вы можете разрешить реферальные
ссылки, так как переходы и покупки товаров по таким ссылкам позволяют поддержать
автора/блогера. Также по умолчанию блокируются различные рекламные домены, из-за
этого некоторые сайты могут обнаруживать блокировщик рекламы.

Можно включить логирование, чтобы иметь возможность просматривать
заблокированные домены и очищенные ссылки. В меню также есть статистика по
количеству заблокированных элементов.

Присутствует встроенный инструмент очистки ссылок.

![Инструмент очистки ссылок ClearURLs](/media/clearurls_tool.jpg)

> [!tip]
В Firefox есть встроенная возможность скопировать ссылку без отслеживающих
параметров. Для этого нужно нажать правой кнопкой мыши по ссылке и нажать на
соответствующий пункт в меню.

Очищенную ссылку можно отправить другим людям, и им не придётся убирать эти
параметры вручную.

## [Исправление проблем](#troubleshooting)

Вы можете проверить корректность работы расширения на
[тестовой странице](https://test.clearurls.xyz).

Если что-то работает не так, то убедитесь, что расширение и фильтры последней
версии. Проверьте баг-трекер на
[GitLab](https://gitlab.com/ClearURLs/ClearUrls/-/issues) и
[GitHub](https://github.com/ClearURLs/Addon/issues) (англ.) и при необходимости
создайте отчёт о проблеме.

## [См. также](#see-also)

- [Документация](https://docs.clearurls.xyz) (англ.)

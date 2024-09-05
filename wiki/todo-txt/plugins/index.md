+++
title = 'Плагины Todo.txt'
categories = ['software-collections']
publishDate = 2024-09-05T18:57:00Z
lastmod = 2024-09-05T18:57:00Z
description = """Так как Todo.txt является обычным текстовым файлом, то его \
могут читать и другие приложения. Однако для некоторых требуется установка \
специальных плагинов и настройка."""
cover = ''
featured = false
+++

# Плагины Todo.txt
{{< categories >}}

Так как [Todo.txt](/wiki/todo-txt) является обычным текстовым файлом, то его
могут читать и другие приложения. Однако для некоторых требуется установка
специальных плагинов и настройка.

## Obsidian

### TodoTxt

Плагин [TodoTxt](https://github.com/mvgrimes/obsidian-todotxt-plugin#readme) для
[Obsidian](https://obsidian.md) дополнит текущую базу знаний списками задач в
открытом текстовом формате Todo.txt.

На данный момент (версия 2.1.7) формат файла по умолчанию записывается как
`*.todotxt`, что может быть не очень удобно для синхронизации и миграции. В
настройках плагина можно указать дополнительные расширения в качестве
экспериментальной настройки.

Плагин позволяет искать и фильтровать задачи, но нельзя сортировать и смотреть
время создания.

![Плагин Todo.txt для Obsidian](obsidian-todotxt.webp)

### TodoTxt Codeblocks

Этот
[плагин](https://github.com/benjamonnguyen/obsidian-todotxt-codeblocks#readme)
позволяет встраивать списки задач Todo.txt в текстовые файлы Markdown.

Функциональность сильно ограничена в рамках встроенного элемента. Тем не менее
присутствует сортировка, предпросмотр в реальном времени, группировка по
проектам с возможностью сворачивания, архивация.

![Плагин Todo.txt для Obsidian](obsidian-todotxt-codeblocks.webp)

## Visual Studio Code

### todotxt-mode

Этот плагин добавляет подсветку синтаксиса Todo.txt, а также команды для
выполнения действий (сортировка, перемещение, изменение). Команды можно найти
в палитре (`F1`) по запросу `todotxt-mode`, а также назначить им сочетания
клавиш.

Найти плагин todotxt-mode можно в каталогах расширений:
- [Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=davraamides.todotxt-mode)
(для [VSCode] от Microsoft)
- [Open VSX](https://open-vsx.org/extension/davraamides/todotxt-mode)
(для [VSCodium] и [Code - OSS])

[VSCode]: https://code.visualstudio.com
[VSCodium]: https://vscodium.com
[Code - OSS]: https://github.com/microsoft/vscode

![Плагин todotxt-mode для Visual Studio Code](vscode-todotxt-mode.webp)

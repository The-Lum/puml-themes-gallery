# Contributing

Thank you for investing your time in contributing to our project!

## General Recommendation

> :information_source: When adding a new collection document to any of the collections below,
always follow the structure of other documents already present in that collection.
When adding new PUML diagram descriptions don't add any `!theme` or `skin` declarations yourself
as those will be added automatically.

## New Theme

If you want to add a new theme to the gallery,
go to [PlantUML "official" themes](https://github.com/plantuml/plantuml/tree/master/themes) and add it there.
After that, add a new document to the [local themes collection directory](/collections/_themes) describing your theme.
For now, only the themes directly packaged with PlantUML are supported.

## New Skin

For adding a new skin to the gallery,
the steps are nearly the same
but replace `theme` with `skin` e.g. go to [PlantUML skins](https://github.com/plantuml/plantuml/tree/master/skin)
and add a new document to the [local skins collection directory](/collections/_skins).

## New Diagram 

If instead you want to add a new diagram type, you will only need to add local files.
First, add a diagram source code PUML file to the [local diagrams input directory](/collections/_diagrams/input).
And second, add a corresponding description document to the [local diagrams collection directory](/collections/_diagrams).

## New Standard Library (stdlib)

Adding another [PlantUML Standard Library](https://github.com/plantuml/plantuml-stdlib) based diagram requires the same steps
as adding a new diagram.
But again replace `diagram` with `stdlib`
and add the new files inside the [local stdlibs collection directory](/collections/_stdlibs).


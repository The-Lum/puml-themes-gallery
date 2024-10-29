# `Script` dependance

```mermaid
flowchart TD

subgraph lib
b([lib/plantuml.jar])
vl[lib/plantuml-tag-latest.md]
v[lib/plantuml-tag.md]
end

subgraph _data
at[_data/themes.yml]
if[_data/diagrams.yml]
end

subgraph gallery
puml[(*.puml)]
svg[(*.svg)]
end


subgraph script
A[update_lib_with_snapshot.sh]
B[update_lib.sh]
VL[give_plantuml_version_latest.sh]
AllTheme[give_all_plantuml_theme.sh]
giveInput[give_all_input_file.pl]
genPUML[generate_all_puml_for_all_theme.pl]
genSVG[generate_all_SVG.sh]
end

subgraph input
i[(*.puml)]
end


subgraph PlantUML
s>plantuml/releases/tag/snapshot]
r>plantuml/releases/latest]
end
style PlantUML fill:#fbbd16,stroke:#ccc,stroke-width:4px

s --> A --> b
r --> B --> b

r --> VL --> vl
A & B --> v

b --> AllTheme --> at
i --> giveInput --> if

puml --> genSVG --> svg
at & i & if --> genPUML --> puml

style input fill:#047b04
style lib fill:#660044
style _data fill:#660044
style gallery fill:#660044
```

## Legend
````mermaid
graph TB
a[modifiable]
style a fill:#047b04
b["auto-generated (not directly modifiable)"]
style b fill:#660044
c[PlantUML dependance]
style c fill:#fbbd16 
````

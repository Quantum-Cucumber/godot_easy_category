# Godot Easy Category

A godot plugin to easily add categories to the property inspector panel. This project is inspired by https://github.com/mathewcst/godot-export-categories, but with some added customisation for my own needs.

Benefits:
- Easily customisable look via a control scene
- Uses the colours for the editor's theme to more closely match the normal category separator
- Automatic case conversion


## Installation
1. Copy the `easy_category` folder into your project `addons` folder
2. Enable the plugin via Project > Project Settings... > Plugins > Tick the "Enable" box for EasyCategory

## Usage
Export a variable of any type, prefixed with `_category_`, e.g.
```GDScript
export var _category_test_category: bool
export var test
```

The prefix can be changed in [`addons/easy_category/plugin.gd`](https://github.com/Quantum-Cucumber/godot_easy_category/blob/ff7a2db00038fad1728f6029f6b9b1799e79dd96/addons/easy_category/plugin.gd#L4)

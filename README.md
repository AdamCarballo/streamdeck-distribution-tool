Stream Deck Distribution Tool
=============================
A GitHub Action to export a Stream Deck plugin for distribution, using the official `DistributionTool` binaries for Windows and MacOS.

Requirements
-----
For the `DistributionTool` to find the inputted directory path, the environment variable `$GITHUB_WORKSPACE` must be set. This can only be achieved using the official [**`actions/checkout@v2`**](https://github.com/actions/checkout) GitHub Action before using this action.

Usage
-----
```
- name: StreamDeck Distribution Tool
  uses: AdamCarballo/streamdeck-distribution-tool@v1
  with:
    input: com.company.plugin_name.sdPlugin
    output: release
```
This example will take the contents of the `com.company.plugin_name.sdPlugin` folder and export the plugin into the `release` directory.

The `DistributionTool` requires both directories to exist (*it can't create directories*) and it must be run in a Windows or MacOS machine. **Linux (*`ubuntu-latest`, etc.*) is not supported**.

Inputs
-----
#### `input`
Source files directory path.<br>
*The source folder name must end with `.sdPlugin`, otherwise the tool will fail with `Exception: Invalid Path`. This is a requirement imposed by the `DistributionTool` binaries.*

- **Required**: Yes

#### `output`
Exported plugin directory path.

- **Required**: No
- **Default**: / *(`$GITHUB_WORKSPACE`)*

Legal
------
This GitHub Action wraps the original and official Stream Deck binaries to export and distribute plugins (`DistributionTool`).

The binaries can be found as part of Stream Deck SDK documentation [here](https://developer.elgato.com/documentation/stream-deck/sdk/exporting-your-plugin/). The download page and binaries have no versioning system, so if the binaries don't match, the source may have an updated version. If that's the case, please open an [issue](https://github.com/AdamCarballo/streamdeck-distribution-tool/issues) so I can update them.

Along with this project's [license](LICENSE), if you use this action you agree to any and all of Elgato privacy policies, data protection, etc.

I have no ownership and no knowledge of the content of the  `DistributionTool` and `DistributionTool.exe` files.

Elgato® and "Stream Deck" are registered trademarks of Corsair Gaming, Inc.

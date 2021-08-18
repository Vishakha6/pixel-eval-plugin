# Pixelwise Evaluation Plugin

Plugin to generate evaluation metrics for pixel-wise comparison of ground truth and predicted images. Contact [Vishakha Goyal](mailto:vishakha.goyal@nih.gov) for more information.

For more information on WIPP, visit the [official WIPP page](https://isg.nist.gov/deepzoomweb/software/wipp).

## Building

To build the Docker image for the conversion plugin, run
`./build-docker.sh`.

## Install WIPP Plugin

If WIPP is running, navigate to the plugins page and add a new plugin. Paste the contents of `plugin.json` into the pop-up window and submit.

## Options

This plugin takes six input arguments and one output argument:

| Name          | Description             | I/O    | Type   |
|---------------|-------------------------|--------|--------|
| `--GTDir` | Ground truth input image collection to be processed by this plugin | Input | collection |
| `--PredDir` | Predicted input image collection to be processed by this plugin | Input | collection |
| `--inputClasses` | Number of classes | Input | number |
| `--filePattern`  | File name pattern to filter data. | Input | string |
| `--individualStats`  | Boolean to create separate result file per image. | Input | boolean |
| `--totalStats`  | Boolean to calculate overall statistics across all images. | Input | boolean |
| `--outDir` | Output collection | Output | genericData |


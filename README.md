# Peruskartta

## Remote tileserver

A mapproxy service serving XYZ (also known as EPSG:3857 or EPSG:900913 or slippy map) tiles is deployed on [fly.io](https://fly.io/). You can access them via:

    https://peruskartta.fly.dev/tiles/peruskartta/webmercator/{z}/{x}/{y}.png

For example, access the [5/18/8 tile](https://lp-tools.toolforge.org/misc/bbox.html?sw=61.60639637138625,33.74999999999997&ne=66.51326044311185,22.499999999999954) tile using https://peruskartta.fly.dev/tiles/peruskartta/webmercator/5/18/8.png. Use the above URL to add Peruskartta as an XYZ layer to QGIS canvas.

## Local tileserver

Create locally run XYZ tileserver using [mapproxy](https://mapproxy.github.io/mapproxy/latest/install.html):

    mapproxy-util serve-develop mapproxy.yaml

Then XYZ tiles are accessible via:

    http://127.0.0.1:8080/tiles/peruskartta/webmercator/{z}/{x}/{y}.png

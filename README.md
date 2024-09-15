# Peruskartta

## Remote tileserver

A mapproxy service serving XYZ (also known as EPSG:3857 or EPSG:900913 or slippy map) tiles is deployed on [fly.io](https://fly.io/). You can access Peruskartta tiles via:

    https://peruskartta.fly.dev/tiles/peruskartta/webmercator/{z}/{x}/{y}.png

and the Ortokuva tiles via:

    https://peruskartta.fly.dev/tiles/ortokuva/webmercator/{z}/{x}/{y}.png

Use the above URL to add Peruskartta as an XYZ layer to QGIS canvas.

## Local tileserver with Docker

If we one doesn't want to bother with installing mapproxy natively, then they can just use [Kartoza's mapproxy image](https://hub.docker.com/r/kartoza/mapproxy):

    docker run --name "mapproxy" --publish 8080:8080 --detach --tty --volume `pwd`/.:/mapproxy kartoza/mapproxy

Run this in the directory [`mapproxy.yaml`](https://github.com/zabop/peruskartta/blob/main/mapproxy.yaml) is in. Tiles will be available at:

    http://localhost:8080/tiles/peruskartta/webmercator/{z}/{x}/{y}.png

and

    http://localhost:8080/tiles/ortokuva/webmercator/{z}/{x}/{y}.png

## Local tileserver with mapproxy installed locally

Create locally run XYZ tileserver using [mapproxy](https://mapproxy.github.io/mapproxy/latest/install.html):

    mapproxy-util serve-develop mapproxy.yaml

Then XYZ tiles are accessible via:

    http://127.0.0.1:8080/tiles/peruskartta/webmercator/{z}/{x}/{y}.png

and

    http://127.0.0.1:8080/tiles/ortokuva/webmercator/{z}/{x}/{y}.png

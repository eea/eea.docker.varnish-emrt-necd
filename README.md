EMRT-NECD Varnish image
=======================

[![Docker]( https://dockerbuildbadges.quelltext.eu/status.svg?organization=eeacms&repository=varnish-emrt-necd)](https://hub.docker.com/r/eeacms/varnish-emrt-necd/builds)

### Prerequisites

* Install [Docker](https://docs.docker.com/engine/installation/)
* Install [Docker Compose](https://docs.docker.com/compose/install/)

### Installation

1. Get the source code:

        $ git clone https://github.com/eea/eea.docker.varnish-emrt-necd
        $ cd eea.docker.varnish-emrt-necd

2. Build and run the image locally:

        $ docker build -t varnish:local .
        $ docker run varnish:local


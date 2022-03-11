# Docker Dev Environment CLI

A quick and dirty CLI to help make issuing commands to the DDE more concise.

## Commands
* start: starts the DDE container if not already running. Requires an image name.

    ```sh
    dde start image-name
    ```

* stop: stops the running DDE container.

    ```sh
    dde stop
    ```

* exec: `docker exec`s a command against a running DDE container.

    ```sh
    dde exec put your command string here
    ```

## Containers

The running container's id is kept track of by using `~/.dde_container_id`.

## Caveats

It can only handle a single container right now.

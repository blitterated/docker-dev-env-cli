# Docker Dev Environment CLI

A quick and dirty CLI to help make issuing commands to the DDE more concise.

## Commands
* `start`: starts the DDE container if not already running. Requires an image name.

    ```sh
    dde start image-name
    ```

* `stop`: stops a running DDE container.

    ```sh
    dde stop image_name
    ```

* `exec` or `x`: `docker exec`s a command against a running DDE container.

    ```sh
    dde exec image_name put your command string here
    ```

* `status` or `s`: check status of a DDE container.

    ```sh
    dde status image_name
    ```

* `rm`: deletes a stopped DDE container.

    ```sh
    dde rm image_name
    ```

## Containers

The containers' ids are kept track of in the `cid/<image_name>` directory found in the same directory where `dde` is run from.

## Caveats

It can only handle a single container for a given image. That means one dev container for one dev image.

## Dependencies

* `docker`
* `jq`
* `curl`
* `grep`
* `wc`

# Resources

* CLI
  * [Build a Custom CLI with Bash](https://medium.com/@brotandgames/build-a-custom-cli-with-bash-e3ce60cfb9a4)
  * [GH: bagcli](https://github.com/brotandgames/bagcli)
  * [Shell Scripting Tutorial - Getopt](https://www.shellscript.sh/tips/getopt/index.html)
  * [Building Command-line Tools: Bash Edition](https://www.inrhythm.com/building-command-line-tools-in-bash/)
* Bash and Web Request/Response
  * [curl hide progress bar output on Linux/Unix shell scripts](https://www.cyberciti.biz/faq/curl-hide-progress-bar-output-linux-unix-macos/)
  * [jq Manual (development version)](https://stedolan.github.io/jq/manual/#Basicfilters)
  * [Using jq to minify JSON](https://nelsonslog.wordpress.com/2016/08/19/using-jq-to-minify-json/)
* Bash
  * [read manpage, bash builtin command](https://ss64.com/bash/read.html)
  * [Bash Concatenate Strings](https://linuxize.com/post/bash-concatenate-strings/)
  * Advanced Bash-Scripting Guide
     * [Chapter 7. Tests](https://tldp.org/LDP/abs/html/tests.html)
     * [Chapter 10.1. Manipulating Strings](https://tldp.org/LDP/abs/html/string-manipulation.html)
  * Stack Overflow
     * [What is the proper way to test a Bash function's return value?](https://stackoverflow.com/a/6241283)
     * [How to assign a heredoc value to a variable in Bash?](https://stackoverflow.com/a/1655389)
     * [How to check the exit status using an 'if' statement](https://stackoverflow.com/questions/26675681/how-to-check-the-exit-status-using-an-if-statement)
     * [Assigning the result of 'test' to a variable](https://stackoverflow.com/a/24896746)
     * [How does nested if/then/elseif work in bash?]  (https://stackoverflow.com/a/15328027)
* Docker
  * [Bash, Docker: Check Container Existence and Status](https://yaroslavgrebnov.com/blog/bash-docker-check-container-existence-and-status/)
  * [SO: How to filter docker process based on image](https://stackoverflow.com/questions/29406871/how-to-filter-docker-process-based-on-image)
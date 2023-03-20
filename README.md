# Wordsmith Web

Wordsmith will display a random set of words every time you refresh the page. It builds the word list from an API that serves words from a database.

The demo runs across three apps:

- **web** - a Go web application that calls the API and builds words into sentences
- **api** - a Java REST API which serves words read from the database
- **db** - a Postgres database that stores words

## Architecture

![Architecture diagram](https://raw.githubusercontent.com/dockersamples/wordsmith/main/architecture.excalidraw.png)

## Original source repository

[BretFisher/wordsmith](https://github.com/BretFisher/wordsmith)
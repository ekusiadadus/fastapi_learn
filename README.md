![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)
![FastAPI](https://img.shields.io/badge/FastAPI-005571?style=for-the-badge&logo=fastapi)
![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white)

## Requirements

Python 3.9

## Installation

<div class="termy">

```console
$ poetry install

---> 100%
```

</div>

<div class="termy">

```console
$ poetry shell

---> 100%
```

</div>

## Example

### Use it

- Start up PostgreSQL(Docker) and amin(Docker)

<div class="termy">

```console
$ docker-compose up -d

---> 100%
```

</div>

- Start up FastAPI

<div class="termy">

```console
$ make up

---> 100%
```

</div>

## Tests

<div class="termy">

```console
$ pytest -s -v

---> 100%
```

</div>

![image](https://user-images.githubusercontent.com/70436490/153063980-af407df3-4e65-4cf6-8651-afc68c504ffe.png)


## Performance

Independent TechEmpower benchmarks show **FastAPI** applications running under Uvicorn as <a href="https://www.techempower.com/benchmarks/#section=test&runid=7464e520-0dc2-473d-bd34-dbdfd7e85911&hw=ph&test=query&l=zijzen-7" class="external-link" target="_blank">one of the fastest Python frameworks available</a>, only below Starlette and Uvicorn themselves (used internally by FastAPI). (\*)

To understand more about it, see the section <a href="https://fastapi.tiangolo.com/benchmarks/" class="internal-link" target="_blank">Benchmarks</a>.

+++
author = "Pato"
title = "Install MongoDB en Windows"
date = "2023-06-11"
description = "Vamos a ver una forma simple de instalar MongoDB en Windows usando winget"
tags = [
    "mongodb",
    "windows"
]
categories = [
    "guia",
    "windows",
]
series = ["Windows", "Guia"]
image = "https://webimages.mongodb.com/_com_assets/cms/kuzt9r42or1fxvlq2-Meta_Generic.png"
+++

Vamos a ver como realizar la instalacion de **MongoDB** en Windows (ya sea 10 o 11) con winget desde nuestra terminal.

## Video

En el video sigo los pasos para la instalacion utilizando winget para realizar la instalacion.

{{< youtube id="jRX23FDGCW4" >}}

## Comandos Utilizados

Este es el comendo que utilizamos para realizar la instalacion de MongoDB en Windows 10 o 11 utilizando winget:

```bash
winget install -e --id MongoDB.Server
```

## Ejecute MongoDB Community Edition desde la terminal

Para ejecutar MongoDB (o mongo) desde la terminal de Windows, debemos ejecutar el siguiente comando para crear la carpeta donde se guardaran los datos de la base de datos:

```bash
cd C:\
md "\data\db"
```

Luego ejecutamos el siguiente comando para ejecutar mongo:

```bash
"C:\Program Files\MongoDB\Server\6.0\bin\mongod.exe" --dbpath="c:\data\db"
```

> En este caso usamos `c:\data\db` pero pueden elegir el directorio que quieran

## Agregar binarios de MongoDB a la PATH del sistema

Si agrega `C:\Archivos de programa\MongoDB\Server\6.0\bin` a su PATH del sistema, puede omitir la ruta completa a los archivos binarios del servidor MongoDB. También debe agregar la ruta a `mongosh` si aún no lo ha hecho.

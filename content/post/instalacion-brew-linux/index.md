+++
author = "Pato"
title = "Como instalar brew en GNU/Linux"
date = "2023-01-31"
description = "Hoy vamos a ver como instalar brew (o homebrew) el gestor de paquetes para devs en nuestra distro."
tags = [
    "brew",
    "linux",
]
categories = [
    "guia",
    "linux",
]
series = ["Linux", "Guia"]
image = "https://www.dz-techs.com/wp-content/uploads/2019/02/homebrew-linux-windows-featured.jpg"
+++

Muchas veces tenemos que instalar dependencias o paquetes y en nuestros repositorios no se encuentran las últimas versiones. Si sos dev te suele pasar esto frecuentemente al preparar tu entorno de desarrollo, por lo cual te recomiendo usar **Homebrew** un gestor de paquetes para **GNU/Linux** y _MacOS_ que te permite gestionar muchas dependencias útiles para programar y otras que no necesariamente son para programar pero son muy útiles

## Video

<iframe class="yt-video" width="816" height="459" src="https://www.youtube.com/embed/yExijeK0X3U" title="Instalar Homebrew en GNU/Linux" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Comandos

El comando utilizado en el video es el siguiente

```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

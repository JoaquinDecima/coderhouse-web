+++
author = "Pato"
title = "Promp custom PowerLevel10k"
date = "2020-07-24"
description = "Como tener una terminal custom con PowerLevel10K y ZSH en Linux y MacOS."
tags = [
    "terminal",
    "macos",
    "linux",
]
categories = [
    "guia",
    "linux",
    "macos",
]
series = ["Windows", "Guia"]
image = "https://i.postimg.cc/15KHksnn/Screenshot-20200722-081612.png"
+++

Vamos a ver como personalizar una terminar de ZSH en GNU/Linux y MacOS, para obtener resultados mas interesantes similares a..

![Gif demostrativo](https://raw.githubusercontent.com/romkatv/powerlevel10k-media/master/performance.gif)

Dentro de la profesión como developer es importante la velocidad y simplicidad de tareas cotidianas y una de esas es el uso de la terminal, la terminal la uso todo el dia y para prácticamente todo, por lo cual requiero una terminal que pueda personalizar para que se acomode y obviamente me simplifique todo lo que pueda…

## ZSH un shell diferente

**ZSH** (Z shell) es una terminal (o mejor dicho shell) para uso interactivo que nos permitirá ser más eficientes cuando estemos delante de la consola. Esta **Shell** nos permite interpretar, además de comandos, scripts lo cual puede volverse extremadamente útil. Y entre sus ventajas podemos enumerar:

-   Eficiencia
-   Completado de tabulador mejorado (para los que usamos tab con frecuencia esto es lo que mas me enamoro)
-   Expansión de nombres de fichero mejorada
-   Manejo de arrays mejorado
-   Totalmente personalizable (a los fanáticos de la belleza esto les va a encantar)

La instalación es muy simple porque viene en los repositorios de la mayoría de las distros de **GNU/linux** y en **MacOS** ya viene por defecto como nuestra Shell. Lo cual nos permite hacerlo de una manera muy simple:

### Debian, Ubuntu y Derivados...

```zsh
sudo apt install zsh
```

### Arch y Derivadas

Podemos instalarlo con `pacman` de la siguiente manera:

```zsh
sudo pacman -Sy zsh
```

O tambien podemos instalarlo con `yay` de la siguiente manera:

```zsh
yay -Sy zsh
```

### CentOS y Similares

```zsh
sudo yum -y install zsh
```

## Oh My ZSH

Sin embargo por sí sola **ZSH** puede ser _un poco engorrosa_ de configurar y puede llevarnos demasiado tiempo, pero como vivimos en el mundo del Software Libre y de la gente que no se queda quieta, podemos encontrar unas vitaminas.

![Presentacion OhMyZSH](https://www.ivaylopavlov.com/wp-content/uploads/2017/04/Screenshot-2017-04-30-00.43.48.png)

Es un framework desarrollado por la comunidad para gestionar la configuración de ZSH. El cual viene a simplificar la tarea personalizar y añadir plugins y configurarlo a gusto, esto puede llegar a ser realmente muy útil y por supuesto simple de instalar, para iniciar debemos ejecutar un script de instalacion de la siguiente manera:

```zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

De esta forma se instalará este “aditivo” que permitirá configurarlo a nuestro gusto!

## PowerLevel 10k

![Presentacion PowerLevel 10k](https://raw.githubusercontent.com/romkatv/powerlevel10k-media/master/prompt-styles-high-contrast.png)

Esto ya es 100% decicion mia, es un theme que me gusto y que suma un valor agregado con datos que muchas veces pueden ser interesantes que pueden leer en su documentación dentro de los cuales puedo resaltar:

-   Tiempo de ejecución de script
-   Status de git
-   Hora de comando

Para instalarlos voy a indicar el paso a paso, no es obligatorio seguirlo así dado que algunos pasos son opcionales pero la verdad recomiendo hacerlo así para obtener una buena integración y performance… Iniciamos instalando las siguientes fonts y poniendo en nuestra terminal la font por defecto [**Meslo Nerd Font**](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf)

Luego desde la terminal descargamos el theme de PowerLevel10k desde su repositorio oficial:

```zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

Por último queda modificar el archivo de configuracion para que inicie este theme, para hacerlo en este caso lo explicare con nano pero pueden usar el editor que quieran:

```zsh
nano ~/.zshrc
```

ahi buscamos la linea que tenga lo siguiente

```zsh
ZSH_THEME="..."
```

Donde los puntos suspensivos (…) son cualquier texto. y lo remplazamos por la siguiente linea

```zsh
ZSH_THEME="powerlevel10k/powerlevel10k"
```

Ahora reiniciamos la terminal y nos abrira una configuracion paso a paso donde vamos a ir eligiendo entre ejemplos como se vera la terminal, las primeras preguntas son si vemos los iconos y luego nos mostrará opciones (casi siempre del 1 al 4) donde iremos estableciendo la visualización…

![Imagen de Configuracion de PowerLevel10K](https://raw.githubusercontent.com/romkatv/powerlevel10k-media/master/configuration-wizard.gif)

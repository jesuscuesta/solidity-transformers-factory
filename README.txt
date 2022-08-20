* Ejemplo de genetador de autobots mediante un factory de solidity
Los transformer vivían en Cybertron (nombre del fichero donde tenemos los Smart Contracts), y dentro de este tenemos a nuestro generador sencillo, donde nuestros transformer podrán crear dinámicamente autobots.

Para ello vamos a añadir a nuestro IDE Remix, este código (copia del proyecto en Github o Gist).

Como podéis comprobar en el código de Solidity, los puntos importantes que deberéis tener en cuenta:

Versión de Solidity: ^0.8.4
Contracts: las instancias de nuestros smart contracts
Mapping: tipo de variable, más información youtube
Structs: tipo de estructura de datos
Public: para poder hacer uso cuando se despliegue en smart contract
New: si habéis trabajado con objectos, sería para dar de alta una instancia de ese objeto

En el proyecto, podremos apreciar que tenemos dos contracts, uno que destinaremos a crear los autobots, y el otro, que será la base que iremos generando. En siguientes artículos, enriqueceremos los autobots, para que podamos posteriormente, añadirle nombre, colores, habilidades, etc.

Las partes más importantes de este proyecto, será el mapping, que nos ayudará a tener centralizado quien ha creado el autobot y el autobot dado de alta. Y el otro punto, sería la función Factory, que será la encargada de ir enriqueciendo el mapping, con los diferentes propietarios y autobots.


Uso Funcional

Ahora vamos a ver paso a paso, el uso de estos Smart Contracts usando Remix.

En primera fase, vamos a compilar nuestro fichero. Para ello, nos iremos a la tercera opción del menú de la izquierda y pulsaremos compilar.

Una vez compilado, iremos a la cuarta opción del menú. Allí, seleccionaremos el Contract de transformers y lo desplegaremos con el botón naranja, que pone deploy.

Teniendo ya nuestro contract desplegado, nos aparecerá en contracts desplegados. Allí tendremos que pulsar el botón Factory, donde nos generará una address con nuestro nuevo autobot. En las siguientes versiones, solicitaremos un nombre para el autobot, además del hash generado. Luego, tendremos que copiar nuestro código de Owner y ponerlo en la otra opción del contract, para pulsar el botón de personal_contract, para que nos dé el código del nuevo autobot.

Ahora, deberemos copiar ese nuevo código, cambiarnos al contract de autobot y el el botón que pone At Address, añadir nuestro código de autobot, para localizarlo, dado que ya esta desplegado. De esta forma, nos aparecerá en la sección de Deployed Contracts.


Además, si ampliamos nuestro autobot, y pulsamos en el botón de prime_creador, podremos ver el hash del propietario de dicho autobot.

REMIX DEFAULT WORKSPACE

Remix default workspace is present when:
i. Remix loads for the very first time 
ii. A new workspace is created with 'Default' template
iii. There are no files existing in the File Explorer

This workspace contains 3 directories:

1. 'contracts': Holds three contracts with increasing levels of complexity.
2. 'scripts': Contains four typescript files to deploy a contract. It is explained below.
3. 'tests': Contains one Solidity test file for 'Ballot' contract & one JS test file for 'Storage' contract.

SCRIPTS

The 'scripts' folder has four typescript files which help to deploy the 'Storage' contract using 'web3.js' and 'ethers.js' libraries.

For the deployment of any other contract, just update the contract's name from 'Storage' to the desired contract and provide constructor arguments accordingly 
in the file `deploy_with_ethers.ts` or  `deploy_with_web3.ts`

In the 'tests' folder there is a script containing Mocha-Chai unit tests for 'Storage' contract.

To run a script, right click on file name in the file explorer and click 'Run'. Remember, Solidity file must already be compiled.
Output from script will appear in remix terminal.

Please note, require/import is supported in a limited manner for Remix supported modules.
For now, modules supported by Remix are ethers, web3, swarmgw, chai, multihashes, remix and hardhat only for hardhat.ethers object/plugin.
For unsupported modules, an error like this will be thrown: '<module_name> module require is not supported by Remix IDE' will be shown.

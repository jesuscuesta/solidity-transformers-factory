// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract transformers {

    // Almacenamiento de la informacion de la fábrica de autobots (Factory)
    mapping (address => address) public personal_contract;

    // Emision de los nuevos autobots (smart contracts)
    function Factory() public {
        address addr_personal_contract = address(new autobot(msg.sender, address(this)));
        personal_contract[msg.sender] = addr_personal_contract;
    }
} 


contract autobot {

    // Estructura de datos del propietario 
    Owner public prime_creador_de_autobots;
    struct Owner {
        address _owner;
        address _smartcontractPadre;
    }

    // Datos recibido al nuevo Smart Contract
    constructor (address _account, address _accountSC){
        prime_creador_de_autobots._owner = _account;
        prime_creador_de_autobots._smartcontractPadre = _accountSC;
    }

}
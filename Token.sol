pragma solidity ^0.4.22;

import "./Faucet.sol";

contract Token is mortal {
    Faucet _faucet;

    constructor() {
        _faucet = new Faucet();
        _faucet.withdraw(0.5 ether);
    }

    function destroy() onlyOwner {
        _faucet.destroy();
    }
}

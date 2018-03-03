pragma solidity ^0.4.18;

contract Auction {
    /** store variables for auction */
    mapping(address => uint) usersBet;
    mapping(uint => address) users;
    uint totalUsers = 0;
    uint totalBets = 0;

    address owner;

    function Auction() public{
        owner = msg.sender;
    }
    
    /** function Bet needs to have the the payable modifier, which makes it possible to send Ethereum to the contract when the function is called. The amount of sent Ether will be stored in msg.value */
    function Bet() public payable {
        /** check if some Ethereum was sent */
        if (msg.value > 0) {
            /** check if it is a new player */
            /** if (usersBet[msg.sender].name == "") */
            if (usersBet[msg.sender] == 0) {
                users[totalUsers] = msg.sender;
                totalUsers += 1;
            }
            usersBet[msg.sender] += msg.value;
            totalBets += msg.value;
        }
    }
    
    function EndAuction() public {
        if (msg.sender == owner) {
            uint sum = 0;
            /** below is the simple to generate a winner number */
            /** in realworld, it needs to be more secure https://ethereum.stackexchange.com/questions/15284/how-to-find-out-whether-an-address-is-already-in-the-mapping */
            uint winningNumber = uint(block.blockhash(block.number-1)) % totalBets + 1;
            for (uint i=0; i < totalUsers; i++) {
                sum += usersBet[users[i]];
                if (sum >= winningNumber) {
                    selfdestruct(users[i]);
                    return;
                }
            }
        }
    }
    
}

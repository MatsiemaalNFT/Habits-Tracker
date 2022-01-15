
pragma solidity ^0.8.0;


contract HabitsContract {
     
    mapping (address => habit) public habtis;

    struct habit {
        string name;
        uint256 startDate;
        uint256 endDate;
        uint256 time;
        bool punishmentPayment;
        uint256 price;
        string nameReceiver;
        address addressReceiver;
    } 
    constructor() public {
    }
    function addHabit(  address _address, 
                        string memory _name,
                        uint256 _startDate, 
                        uint256  _endDate,
                        uint256  _time,
                        bool _punishmentPayment,
                        uint256 _price,
                        string memory _nameReceiver,
                        address _addressReceiver
                        ) public {
habtis[_address] = habit(_name, _startDate,_endDate,_time, _punishmentPayment, _price,_nameReceiver,_addressReceiver);
                        }

    function getHabits(address _address) public view returns (habits[] memory){
       habits[] memory ret = new habits[](addressRegistryCount);
    for (uint i = 0; i < addressRegistryCount; i++) {
        ret[i] = addresses[i];
    }
    return ret;
    }
}

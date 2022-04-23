//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
//The following types are data value types in Solidity:
    // booleans
    // strings
    // integers
    // unsigned integers
    // addresses
    // fixed-size byte arrays (bytes1 to bytes32)
    // enums
    // fixed point numbers (they are not fully supported yet)

contract SolidityTypes{

    bool public registered;
    string public name;
    bytes public age;
    int public rollnumber;
    uint public result;
    address public owner;
    address payable owner2;

    function setDataTypes(bool _bool1, string memory _name, int _rollno, uint _result ) public {
        registered = _bool1;
        name = _name;
        age = "32";
        rollnumber = _rollno;
        result = _result;
        owner = msg.sender;
        owner2 = payable(owner);
    }

    function getDataTypes() public view returns(bool _bool1, string memory _name, bytes memory _age, int _rollno, uint _result, address _owner, address payable _owner2 ){
        return(registered,name,age,rollnumber,result,owner,owner2);
    }
}

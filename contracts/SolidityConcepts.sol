// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract SolidityConcepts {
    // 상태 변수
    uint256 public constant FIXED_VALUE = 100;
    address public immutable owner;
    uint256 public value = 50;

    // 이벤트
    event ValueChanged(uint256 oldValue, uint256 newValue);

    // 생성자
    constructor() {
        owner = msg.sender;
    }

    // 조건문 예제
    function checkValue(uint256 _value) public pure returns (string memory) {
        if (_value > 100) {
            return "Value is greater than 100";
        } else if (_value == 100) {
            return "Value is exactly 100";
        } else {
            return "Value is less than 100";
        }
    }

    // 반복문 예제
    function sumUpTo(uint256 _n) public pure returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = 1; i <= _n; i++) {
            sum += i;
        }
        return sum;
    }

    // 상태 변수 변경 및 이벤트 발생
    function updateValue(uint256 newValue) public {
        uint256 oldValue = value;
        value = newValue;
        emit ValueChanged(oldValue, newValue);
    }

    // modifier 정의
    modifier onlyOwner() {
        require(msg.sender == owner, "Not the contract owner");
        _;
    }

    // modifier 적용 함수
    function ownerFunction() public view onlyOwner returns (string memory) {
        return "Hello, Owner!";
    }

    // receive 함수 정의
    receive() external payable {}

    // 송금 함수
    function sendEther(address payable _to) public payable {
        require(msg.value > 0, "Must send ether");
        _to.transfer(msg.value);
    }

    // 잔액 확인
    function getContractBalance() public view returns (uint256) {
        return address(this).balance;
    }

    // 소유자만 출금 가능
    function withDraw() public onlyOwner {
        payable(owner).transfer(address(this).balance);
    }
}

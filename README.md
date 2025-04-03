# SolidityConcepts

SolidityConcepts는 Solidity의 핵심 개념을 실습하기 위한 스마트 컨트랙트입니다. 이 과제는 조건문, 반복문, 상수/불변 변수, 이벤트, 접근 제어자(modifier), 이더 송수신 및 예외 처리 등 다양한 Solidity 문법을 종합적으로 학습하는 데 목적이 있습니다.

---

## ✅ 주요 학습 포인트

- `constant`, `immutable` 변수 선언
- 조건문(`if-else`) 및 반복문(`for`)
- 이벤트 정의 및 발생
- `modifier`를 통한 접근 제어
- `require`로 예외 처리
- `receive()` 함수 및 이더 전송 구현
- 컨트랙트 잔액 관리 및 인출 기능

---

## 🔧 스마트 컨트랙트 구성 요소

| 항목 | 설명 |
|------|------|
| `FIXED_VALUE` | 상수(`constant`) 값 100 |
| `owner` | 배포자 주소를 저장하는 불변 변수(`immutable`) |
| `value` | 기본값이 50인 일반 상태 변수 |
| `checkValue()` | 입력값에 따라 메시지를 반환하는 조건문 함수 |
| `sumUpTo()` | 입력값까지의 정수 합을 반환하는 반복문 함수 |
| `updateValue()` | `value`를 변경하고 이벤트를 발생시키는 함수 |
| `ValueChanged` | 상태값 변경 시 발생하는 이벤트 |
| `onlyOwner` | 오직 소유자만 실행 가능한 modifier |
| `ownerFunction()` | 소유자만 호출할 수 있는 함수 |
| `receive()` | 이더 수신을 위한 함수 |
| `sendEther()` | 지정 주소로 이더를 송금하는 함수 |
| `getContractBalance()` | 컨트랙트 잔액 반환 함수 |
| `withDraw()` | 소유자가 잔액 전액을 인출하는 함수 |

---

## 🧪 테스트 실행 방법

```bash
npm install
npx hardhat test
```

총 26개의 테스트 케이스가 존재하며, 각 항목별로 모든 기능을 확인합니다.

---

## 📁 프로젝트 구조

```
contracts/
└── SolidityConcepts.sol
test/
└── SolidityConcepts.test.ts
README.md
```

---

본 과제는 Solidity의 기초부터 실제적인 스마트 컨트랙트 기능 구현까지 모두 아우르며, 이후 더 복잡한 분산 애플리케이션 개발의 기초가 됩니다.

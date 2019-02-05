# Algorithm / Data Structure

효율적인 코드 구현을 위해 알고리즘과 자료구조를 공부하고 이를 기록한 내용입니다.

### Algorithm 

- 문제를 해결하기 위한 것으로, 명확하게 정의되고 순서가 있는 유한 개의 규칙으로 이루어진 집합

### Data Structure

- 자료(Data)의 집합의 의미하며, 각 원소들이 논리적으로 정의된 규칙에 의해 나열되며 자료에 대한 처리를 효율적으로 수행할 수 있도록 자료를 구분하여 표현한 것

  
## 1. 배열

### 1-1. 소수

[누적 소수의 배열] 

>- 2부터 차례로 소수를 배열에 누적시키기
>
>- 누적이 필요한 이유? 소수는 자기보다 작은 소수들로도 나눠 떨어지지 않는다.
>
>  *code: /Study-Algorithm/decimal.py*

[에라토스테내스의 체 ]

>- 소수가 아닌 값에 마킹하기
>- 그러나 이 방법은 배열의 크기가 커질수록 최악이 되므로 이미 체크된 값은 체크하지 않도록 하는 것이 중요하다.
> *code: /Study-Algorithm/decimal2.py*



## 2. 검색

### 2-1. 선형검색

- 무작위로 늘어놓은 데이터의 모임에서 순차적으로 검색을 수행, 가장 일반적으로 생각할 수 있는 검색

- 시간복잡도 : O(n)
- 선형검색의 종료 조건은 다음 두가지 이다.

> 1. 검색할 값과 같은 값을 발견한 경우
> 2. 검색할 값을 발견하지 못하고 배열의 끝을 지나간 경우

​	*code: /Study-Algorithm/seqSearch.py*

[보초법] 

> - 선형검색 과정에서 불필요한 판별식을 줄이기 위해 사용하는 방법
> - 보초법은 2번을 없애기 위해 검색할 값을 배열의 맨 뒤에 추가하는 방법으로, 이 경우 종료조건은 1번 한가지 뿐이다. 결과적으로 판별식이 반으로 줄어들게 된다.



### 2-2. 이진검색

- 일정한 규칙으로 늘어놓은 데이터의 모임에서 아주 빠른 검색

- 시간복잡도 : O(logn)

- 전제 조건 : 데이터값이 정렬(sort)된 상태에만 가능

- 중간 값과 검색할 값을 비교하면서 범위를 좁혀나가는 검색 방법

  *code: /Study-Algorithm/seqSearch.py*

[이진검색시 주의할 점]

> - 중복된 값이 존재하는 정렬된 배열에서 검색하는 경우, 이진검색만으로는 중복된 값 모두를 발견하기 어렵다.
> - 검색할 값이 배열에 2개 이상이상 저장되어 있다면, 앞 뒤로 같은 값을 검색하는 로직을 추가해야 한다.



### 2-3. 해시법 

- 추가, 삭제가 자주일어나는 데이터의 모임에서 아주 빠른 검색

- 체인법 : 같은 해시 값의 데이터를 선형리스트로 연결하는 방법
- 오픈 주소법 : 데이터를 위한 해시 값이 충돌할 때 재해시하는 밥법








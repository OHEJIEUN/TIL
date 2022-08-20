# <regex(Reular Expression : 정규표현식(패턴화/유효성검사)>
 ### 1. Stephone Cole Kleene이 개발함.
 ### 2. slashes + pattern + flag
 ### 3. 문법
 
 ---
 ### < 조건 >
- id, pw, email, address, socailNum 필수항목

- id : 정규식 입력시
  - 일치O = ' '
  - 일치X, null일 때 = 아이디는 영문,숫자조합 8자리 이상 12자리 이하입니다.
  - 중복체크

- pw : 정규식 입력시
  - 일치O = ' '
  - 일치X = 비밀번호는 영문,숫자,특수기호 중 2가지 이상 조합하여 10자리 이상 16자리 이하 입니다.
 
- pw확인: 가입신청버튼 클릭시(alert)  
  - 일치O = ' '
  - 일치X = 비밀번호와 비밀번호 확인의 입력값이 일치하지 않습니다.


- 이름 : 정규식 입력시
  - 일치O = ' '
  - 일치X = 한글과 영문 최소3자(maxlength x)최대9자


- 이메일 : 유효성(가입신청버튼 클릭시)
  - 정규식O = ' '
  - 정규식X = 올바른 이메일 형식으로 입력해주세요.

- 휴대폰 :  정규식 입력시
  - 정규식O = ' '
  - 정규식X = 전화번호를 정확히 입력해 주세요.
  - 4개 입력하면 3번째 창으로 커서이동


- 주민번호 : 가입 신청클릭시, 주민번호 유효성
  - 정규식O = 숫자만, ' '
  - 정규식X = 주민번호는 숫자만 입력가능합니다.
  - 뒷자리 맨첫자리만 숫자 1******


* 참고
  - https://github.com/dream-ellie/regex
  - https://regexr.com/5mhou
  - https://m.youtube.com/watch?v=t3M6toIflyQ

# Simple-file

Nginx + Spring Boot 기반의 심플한 파일서버 툴 입니다.   
복잡한 기능은 없고 단순히 파일 업로드(multipart)와 파일 목록을 Nginx autoindex를 통하여 보여줍니다 

아래 스크립트를 통하여 docker-compose를 수행/종료 하십시오

### 시작
```
start.sh
```
### 종료
```
stop.sh
```
  
#### 포트가 겹치는 경우 docker-compose.yml의 ***'ports'*** 항목을 수정하십시오
```
services:
  nginx:
    image: nginx:latest
    container_name: nginx
    networks:
      - default-network
    ports:
      - "80:80"

```
  
#### index.html 페이지에 접근하면 심플한 파일업로드폼 페이지를 제공합니다.
```
http://{서버아이피}  
```  

#### 클라이언트에서 curl 커멘드를 사용 가능하다면 아래와 같이 사용할 수도 있습니다
```
curl -F 'files=@{파일경로}' http://{서버아이피}/api/file/upload
```

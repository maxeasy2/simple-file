# Simple-file

docker(Nginx + Spring Boot) 기반의 심플한 파일서버 툴 입니다.   
복잡한 기능은 없고 단순히 파일 업로드(multipart)와 파일 목록을 Nginx *autoindex*를 통하여 보여줍니다 

> ***본 어플리케이션은 docker, docker-compose 가 필요합니다***

#### 아래 스크립트를 통하여 docker-compose를 수행/종료 하십시오

### 시작
```bash
start.sh
```
### 종료
```bash
stop.sh
```
  
#### 서버에서 사용하는 포트(80)가 겹치는 경우 docker-compose.yml의 ***'ports'*** 항목을 수정하십시오
```yml
services:
  nginx:
    image: nginx:latest
    container_name: nginx
    networks:
      - default-network
    ports:
      - "80:80"

```  

#### API Document
* Name : 파일 업로드 
* URI : /api/file/upload
* Method : post
* parameter
  - files : 파일 (multipart/required)
  - group : 하위 디렉터리 명 (String) 

#### File System
* 업로드 파일 경로 : (설치경로)/nginx/resource/html/file
  
#### index.html 페이지에 접근하면 심플한 파일 업로드폼 페이지를 제공합니다.
```
http://{서버아이피}  
```  

#### 클라이언트에서 curl 커멘드를 사용 가능하다면 아래와 같이 사용할 수도 있습니다.
```bash
curl -F 'files=@{파일경로}' http://{서버아이피}/api/file/upload
```

#### Postman 같은 httpclient tool에서 아래와 같이 활용할 수도 있습니다.
![postman](https://user-images.githubusercontent.com/7065267/91524151-78f5be00-e939-11ea-9dae-4f83e57685a1.PNG)

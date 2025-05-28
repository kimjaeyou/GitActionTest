# 1. Node.js 베이스 이미지 선택
FROM node:20

# 2. 컨테이너 내 작업 디렉토리 지정
WORKDIR /app

# 3. package.json 복사 → 의존성 설치
COPY package*.json ./
RUN npm install

# 4. 앱 소스 복사
COPY . . 

# 5. 포트 오픈
EXPOSE 3000

# 6. 실행 명령어
CMD [ "npm", "start" ]

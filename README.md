# react-ts-project

docker build . -t react/ubuntu:latest

yarn global add create-react-app
create-react-app react-sample --typescript

docker run -p 3000:3000 -v ~/Desktop/react-project/react-sample:/react-ts-project -it react/ubuntu:latest

yarn start



---
### 参考にしたURL
https://qiita.com/Tak0325/items/0eca0bf678be0dd570e5
https://qiita.com/sunnyG/items/05c2e9381d6ba2d9fccf

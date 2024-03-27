# 使用官方Node.js镜像作为构建环境
FROM node:18 as build

# 设置工作目录
WORKDIR /app

# 复制package.json和package-lock.json
COPY package*.json ./

# 安装项目依赖
RUN npm install

# 复制项目文件到工作目录
COPY . .

# 构建应用
RUN npm run build

# 使用nginx镜像作为生产环境
FROM nginx:alpine

# 将构建好的文件从构建环境复制到nginx目录
COPY --from=build /app/dist /usr/share/nginx/html

# 暴露80端口
EXPOSE 80

# 启动nginx，保持容器运行
CMD ["nginx", "-g", "daemon off;"]

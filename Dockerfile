# 使用nginx镜像作为生产环境
FROM nginx:alpine

# 将构建好的文件从构建环境复制到nginx目录
COPY --from=build /app/dist /usr/share/nginx/html

# 暴露80端口
EXPOSE 80

# 启动nginx，保持容器运行
CMD ["nginx", "-g", "daemon off;"]

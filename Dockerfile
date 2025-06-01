FROM node:20

# Nhận biến môi trường từ build args
ARG GIT_USERNAME
ARG GIT_TOKEN

# Cài git và pnpm
RUN apt update && apt install -y git && npm install -g pnpm

# Clone private repo
WORKDIR /app
RUN git clone https://${GIT_USERNAME}:${GIT_TOKEN}@github.com/gemvn90/private-saving.git .

# Cài và build
RUN pnpm install && pnpm run build

CMD ["pnpm", "run", "start"]
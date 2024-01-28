# ベースイメージを設定
FROM node:14

# 環境変数を設定
ENV LANG C.UTF-8
ENV TZ="Asia/Tokyo"

# 作業ディレクトリを設定
WORKDIR /app

# 作業ディレクトリにコピー
COPY package.json yarn.lock ./

# アプリケーションの依存関係をインストール
RUN npm install && \
    npm install -g @vue/cli

# ポートを設定
EXPOSE 8080
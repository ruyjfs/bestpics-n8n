FROM n8nio/n8n:1.123.5

USER root

RUN npm install firebase-admin

USER node

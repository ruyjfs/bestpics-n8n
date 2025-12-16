# n8n com Docker

Arquivos para subir rapidamente uma instância do n8n usando Docker Compose com Postgres para persistência.

## Pré-requisitos
- Docker e Docker Compose instalados

## Como usar
1. Ajuste variáveis no arquivo `.env` (para produção, use valores fortes e altere host/URL):
   - `N8N_ENCRYPTION_KEY` deve ser uma string longa e secreta
   - `WEBHOOK_URL` deve refletir o domínio/porta acessível externamente
2. Suba os serviços:
   - `docker compose up -d`
3. Acesse o n8n em `http://localhost:5678` (por padrão com Basic Auth `admin/admin`).

## Estrutura
- `docker-compose.yml`: define serviços `n8n` e `db` (Postgres)
- `.env`: variáveis padrão para desenvolvimento local
- `.env.example`: exemplo de configuração

## Notas
- Produção: altere `N8N_ENCRYPTION_KEY`, usuário/senha e `WEBHOOK_URL` para seu domínio (e use HTTPS atrás de um proxy reverso).
- Volumes nomeados `n8n_data` e `db_data` garantem persistência de dados.
- Logs: `docker compose logs -f n8n` e `docker compose logs -f db`.
- Parar/remover: `docker compose down` (use `-v` para remover volumes, cuidado com dados).


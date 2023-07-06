# Kontial SFTP Deploy
Deploy by SFTP.

## Example usage

```yml
on: [push]

jobs:
  sftp:
    name: deploy
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v2
      - name: SFTP
        uses: kontial/github-action-sftp@v1.0
        with:
          server: domain.com
          user: username
          password: ${{ secrets.PASSWORD }}
          port: 22
          local: /local/path/
          remote: /remote/path
```

| Key Name                | Required | Example                       | Default | Description                                                            |
|-------------------------|----------|-------------------------------|---------|------------------------------------------------------------------------|
| `server`                | Yes      | `domain.com`                  |         | Deployment destination server                                          |
| `user`                  | Yes      | `john`                        |         | SFTP user name                                                         |
| `password`              | Yes      | `secret123`                   |         | SFTP password                                                          |
| `port`                  | No       | `222`                         | `22`    | Server port to connect to (read your web hosts docs)                   |
| `local`                 | No       | `/local/path/`                | `./`    | Folder to upload from, must end with trailing slash `/`                |
| `remote`                | No       | `/remote/path`                | `./`    | Folder to upload to (on the server), must end with trailing slash `/`  |


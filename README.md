# crdb-gh

Unofficial [CockroachDB](https://www.cockroachlabs.com/) image to start an insecure, in-memory, single node.

The most common use is for testing where it is not possible to provide custom arguments (e.g. GitHub Actions services).

## Example

```yaml
on:
  pull_request:

jobs:
  example:
    runs-on: ubuntu-latest
    env:
      DB_URL: postgres://root@localhost:26257/defaultdb?sslmode=disable
    services:
      crdb:
        image: marcozac/crdb-gh:latest
        ports:
          - 8080:8080
          - 26257:26257
        options: >-
          --health-cmd "curl http://localhost:8080/health"
          --health-interval 10s
          --health-timeout 5s
          --health-retries 5
```

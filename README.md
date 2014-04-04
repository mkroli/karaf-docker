Apache Karaf Docker image
=========================

Run
---

```bash
docker run -d -t \
  --name karaf \
  -p 1099:1099 \
  -p 8101:8101 \
  -p 44444:44444 \
  -v /host/path/deploy:/deploy \
  mkroli/karaf
```

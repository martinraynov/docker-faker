# Faker containers

Docker image for testing different Faker solutions

To check all available commands you can use : 
```
make help
```

## Faker2DB

Based on the [Faker2DB](https://github.com/emirozer/fake2db). For the different values of the variables you can check directly the github page of the author.

To run you must pass some parameters : 
```
DB_VENDOR=postgresql \
DB_HOST={DATABASE DNS/IP} \
DB_PORT={DATABASE PORT} \
DB_USER={DATABASE USER} \
DB_PASSWORD={DATABASE PASSWORD} \
DB_NAME={DATABASE NAME} \
LOCALE={LOCALE FOR CONTENT} \
ROWS={NUMBER OF ROWS} \
CUSTOM={CUSTOM DATA} \
make fakertodb_run
```
# Number guess from scratch

## Description
Création d'une image Docker from scratch pour l'intégration d'un programme Python compilé

## 1. Builder le projet

```
docker build -t username/number-guess:1.0 .
```

## 2. Vérification de l'image
```
docker image ls username/number-guess:1.0
```

## 3. Vérification d'éventuelle faille de sécurité

```
docker scout cves  username/number-guess:1.0
```

## 4. Lancer le conteneur docker

```
docker run -it username/numer-guess:1.0
```



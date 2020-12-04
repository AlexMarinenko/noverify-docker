# NoVerify container

Noverify repository: [https://github.com/VKCOM/noverify](https://github.com/VKCOM/noverify)

## How to use?

```
docker run -v "${PWD}":/project asm2002/noverify
```

## Customize linter command

```
docker run -e ENTRYPOINT_CMD="noverify check -stubs-dir=/root/phpstorm-stubs -cache-dir=/tmp/cache/noverify -exclude=/vendor /project" -v "${PWD}":/project asm2002/noverify
```

## License

The MIT License ([MIT](LICENSE.md)).



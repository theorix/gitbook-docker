# GitBook Image

Run container:

```
$ docker run -p 80:4000 -v `$pwd`:/gitbook theorix/gitbook
```

`4000` – GitBook default service port.

`35729` – Live reload server port.

`/gitbook` – Default working directory for GitBook container.


## Build Static Website

```
$ docker run -v `$pwd':/gitbook theorix/gitbook gitbook build . _html
```

## Links

[GitHub: GitBook](https://github.com/GitbookIO/gitbook)

[GitBook Toolchain Documentation](http://toolchain.gitbook.com)

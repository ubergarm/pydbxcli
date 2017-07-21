pydbxcli
===
Dropbox CLI built on Python SDK

## Usage
Pass access token as environment variable:
```bash
DROPBOX_TOKEN=abc123 ./pydbxcli.py status
```

Pass access token as CLI argument:
```bash
./pydbxcli.py --dropbox_token=abc123 status
```

Recursively list all files in Dropbox:
```bash
./pydbxcli.py ls -r /
```

Recursively list all files in Dropbox excluding certian folders:
```bash
./pydbxcli.py ls -r '/' --excludePaths '/Team Folder/IgnoreThisFolder' '/Team Folder/IgnoreThisFolderToo'
```

Recursively download specific Dropbox directory to local directory
```bash
./pydbxcli.py get -r /mystuff/dropbox/dir ./localdir
```

## Docker Development
```bash
docker build -t ubergarm/pydbxcli .
```

## Docker Runtime
```bash
docker run --rm \
           -it \
           -v `pwd`:/localdir \
           -e DROPBOX_TOKEN \
           ubergarm/pydbxcli get /mystuff /localdir
```

## Contributing
```bash
flake8 --max-line-length=120 pydbxcli.py
```

## TODO
- [x] Authenticate with Dropbox
- [x] Print user account status
- [x] List files
- [x] Download Files
- [ ] Upload Files
- [ ] Travis CI

## References
* [dropbox/dropbox-sdk-python](https://github.com/dropbox/dropbox-sdk-python)
* [Generate Access Token](https://dropbox.com/developers/apps)
* [dropbox/dbxcli](https://github.com/dropbox/dbxcli)

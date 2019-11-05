## Dependencies
I usually uses:

- [git]
- [fzf]
- [fd]
- [ripgrep]
- GNU-based utils (for MacOS: [coreutils] and [gnu-sed])

Some scripts may use these utils, so please understand.

[ripgrep]: https://github.com/BurntSushi/ripgrep
[fd]: https://github.com/sharkdp/fd
[fzf]: https://github.com/junegunn/fzf
[git]: https://github.com/git/git
[coreutils]: https://formulae.brew.sh/formula/coreutils
[gnu-sed]: https://formulae.brew.sh/formula/gnu-sed

## License
[GPLv3](./LICENSE)

## Why not `bash` or `zsh` but `dash`?
[`dash` is extremely faster than `bash`](https://wiki.ubuntu.com/DashAsBinSh#Why_was_this_change_made.3F) and still it's POSIX-compatible. Although `dash` isn't designed for daily use, I want to use these utils like a binary executable to make compatible with `bash`/`zsh`/`fish`.

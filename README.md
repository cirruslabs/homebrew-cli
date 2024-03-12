# Cirrus Labs' Homebrew tap

To install a product run: 

```bash
brew install cirruslabs/cli/<product name>
```

List of availbale products:

- `tart` for [Tart Virtualization](https://github.com/cirruslabs/tart).
- `cirrus` for [Cirrus CLI](https://github.com/cirruslabs/cirrus-cli).
- `orchard` for [Orchard Orchestration](https://github.com/cirruslabs/orchard).
- `gitlab-tart-executor` for [GitLab Tart Executor](https://github.com/cirruslabs/gitlab-tart-executor).

## Reverting to a previous version

In order to revert to a preovious version please find SHA of the commit in this reporisoty for the particular version and run the follwoing:

```bash
brew uninstall cirruslabs/cli/<product name>
cd $(brew --repository)/Library/Taps/cirruslabs/homebrew-tap
git reset --hard SHA
brew install cirruslabs/cli/<product name>
```

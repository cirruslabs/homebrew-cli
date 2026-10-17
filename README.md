# Cirrus Labs' Homebrew tap

To install a product run: 

```bash
brew install cirruslabs/cli/<product name>
```

List of availbale products:

- `cirrus` for [Cirrus CLI](https://github.com/cirruslabs/cirrus-cli).
- `gitlab-tart-executor` for [GitLab Tart Executor](https://github.com/cirruslabs/gitlab-tart-executor).

## Tart, Softnet and Orchard have moved

`tart`, `softnet`, `orchard` and `tart-guest-agent` are now published to the
[`openai/tools`](https://github.com/openai/homebrew-tools) tap:

```bash
brew install openai/tools/tart
```

Existing installs from this tap are migrated automatically on `brew update`.

## Reverting to a previous version

In order to revert to a preovious version please find SHA of the commit in this reporisoty for the particular version and run the follwoing:

```bash
brew uninstall cirruslabs/cli/<product name>
cd $(brew --repository)/Library/Taps/cirruslabs/homebrew-tap
git reset --hard SHA
brew install cirruslabs/cli/<product name>
```

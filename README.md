# Cirrus Labs' Homebrew tap

> [!IMPORTANT]
> `tart`, `softnet`, `orchard` and `tart-guest-agent` have moved to the [`openai/tools`](https://github.com/openai/homebrew-tools) tap and are no longer updated here. See [Tart has moved](#tart-has-moved) below.

To install a product run: 

```bash
brew install cirruslabs/cli/<product name>
```

List of availbale products:

- `tart` for [Tart Virtualization](https://github.com/cirruslabs/tart) (moved, see below).
- `cirrus` for [Cirrus CLI](https://github.com/cirruslabs/cirrus-cli).
- `orchard` for [Orchard Orchestration](https://github.com/cirruslabs/orchard) (moved, see below).
- `gitlab-tart-executor` for [GitLab Tart Executor](https://github.com/cirruslabs/gitlab-tart-executor).

## Tart has moved

Tart and its related projects now live under OpenAI and are published to the [`openai/tools`](https://github.com/openai/homebrew-tools) tap instead of this one. The `tart`, `softnet`, `orchard` and `tart-guest-agent` formulas in this repository are stale.

On Homebrew 7 and newer installing `tart` or `softnet` from this tap fails:

```
$ brew install cirruslabs/cli/tart
Error: cirruslabs/cli/tart: Calling `depends_on :macos` with `depends_on macos:` is disabled! Use `depends_on :macos` with `depends_on macos:` inside an `on_macos` block instead.
Please report this issue to the cirruslabs/homebrew-cli tap (not Homebrew/* repositories), or even better, submit a PR to fix it:
  /opt/homebrew/Library/Taps/cirruslabs/homebrew-cli/tart.rb:22
```

To install `tart` run the following instead:

```bash
brew uninstall tart softnet # only if previously installed from this tap
brew untap cirruslabs/cli
brew tap openai/tools
brew trust openai/tools
brew install openai/tools/tart
```

Homebrew 7 refuses to load formulas from third-party taps until they are trusted, hence the `brew trust` step.

## Reverting to a previous version

In order to revert to a preovious version please find SHA of the commit in this reporisoty for the particular version and run the follwoing:

```bash
brew uninstall cirruslabs/cli/<product name>
cd $(brew --repository)/Library/Taps/cirruslabs/homebrew-tap
git reset --hard SHA
brew install cirruslabs/cli/<product name>
```

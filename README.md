# My Editor Config

For my editor I am using a combonation of the following several different tools which are listed below.

- Helix
- Zellij
- Yazi
- Ghostty
- NuShell

## Prerequisits

1. Deps to install

```
# Install all of the deps

brew install helix ghostty yazi nushell zoxide zellij

```

2. Clone this repo to any location on your system, then copy the following to your `~/.config` directory:

```
  cp /path-to-this-repo/editor/helix ~/.config/helix
  cp /path-to-this-repo/editor/ghostty ~/.config/ghostty
  cp /path-to-this-repo/editor/yazelix ~/.config/yazelix
```

3. Give the scripts access to run on the system

```
  chmod +x ~/.config/yazelix/**/*.nu
```
 
## NuShell Config
Run the following commands and add your env vars to the env.nu file.
```
# Starts a NuShell

  nu

# Opens the env.nu file on your system which you can add env vars to

  config env
```
## Zellij Config


## Lazygit config

### Install Lazygit

```
  brew install lazygit
```

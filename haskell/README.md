# Getting started

## Install the Haskell platform

[Click here for setup instructions](https://haskell.org/platform/)

## Run Haskell in interactive mode

```
ghci
```

Load up a haskell file in interactive mode

```
:l myfunctions
```

## Install Haskell Stack

```
brew install haskell-stack
```

## Start Yesod Project

```
stack new yesod-api <template_name>
```

e.g.

```
stack new yesod-api yesod-sqlite
```

Use `stack templates` to see other Yesod scaffoldings

Install yesod command line tool

```
stack install yesod-bin cabal-install --install-ghc
```

Build stack libraries

```
stack build
```

Launch devel server

```
stack exec -- yesod devel
```

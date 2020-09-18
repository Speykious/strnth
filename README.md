# Take a string and yeet it into itself n times

How to build the program:

- you have to have `ghc` and `cabal`.
- Clone the git repo somewhere: `git clone https://github.com/speykious/strnth`
- Now go into a terminal inside the root of the git repository
- Type the command `cabal new-build`
- The executable will be in `dist-newstyle/build/<your os>/ghc-<version>/strnth-<version>/x/strnth/build/strnth/strnth`, copy it wherever you want

If you just want to run the executable from the root repository, you can use Cabal's new-run subcommand: `cabal new-run strnth <args>`

***

# How to use the strnth command

```bash
strnth <n> <str>
```

- `<n>`: number of times to yeet the string into itself
- `<str>`: the string to yeet into itself

Examples:

```bash
strnth 3 yeet
```
Will produce:
```latex
$\text{yeet}^{\text{yeet}^{\text{yeet}}}$
```

```bash
strnth 4 yeet yoot
```
Will produce:
```latex
$\text{yeet}^{\text{yeet}^{\text{yeet}^{\text{yeet}}}}$
```

```bash
strnth 4 "yeet yoot"
```
Will produce:
```latex
$\text{yeet yoot}^{\text{yeet yoot}^{\text{yeet yoot}^{\text{yeet yoot}}}}$
```

```bash
strnth 20 10
```
Will produce:
```latex
$\text{10}^{\text{10}^{\text{10}^{\text{10}^{\text{10}^{\text{10}^{\text{10}^{\text{10}^{\text{10}^{\text{10}^{\text{10}^{\text{10}^{\text{10}^{\text{10}^{\text{10}^{\text{10}^{\text{10}^{\text{10}^{\text{10}^{\text{10}}}}}}}}}}}}}}}}}}}}$
```

Enjoy your yeet time lmao

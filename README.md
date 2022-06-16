## xsh-stdlib
Compilation of common functions that shell script developers find themselves writing again and again in their daily basis.
Sort of standard library for the shell but well, not so standard I guess. Proven to work with Bash and Zsh.

**Disclaimer**: This project is mainly an investment in my future self and is not intented for production use. 
That said, the automated tests and shell checks ensure a minimum of quality.

## Usage
Use the `bundle` utility to extract the functions required into a single chunk:

```bash
bin/bundle prompt::yesno
```
Standard output:
```
## START OF BUNDLE
## 2022-06-16T13:11+02:00

prompt::yesno() {
  local text="$1"
  local default="yes"
  if (( $# > 1 )); then
    default=$2
  fi
  
  local p="$(style::green ${PROMPT_SYMBOL}) $(style::bold ${text}) "
  echo -n "$p"
  if is_yes $default; then
    echo -n "$(style::dim \(Y/n\)) "
  else
    echo -n "$(style::dim \(y/N\)) "
  fi
  
  read output
  is_yes $output || (str::is_empty "$output" && is_yes $default)
}


style::green() {
  # missing function
}


style::dim() {
  # missing function
}


str::is_empty() {
  [[ -z "$1" ]]
}

## END OF BUNDLE
```
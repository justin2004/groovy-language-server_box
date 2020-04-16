## groovy-language-server in a box

- https://github.com/prominic/groovy-language-server

### use
- have docker installed
- have vim with https://github.com/natebosch/vim-lsc
- add the following to your .vimrc
>      let g:lsc_server_commands = {  'groovy' : {  'name': 'groovy-langserver',  'command': 'docker run --rm -i justin2004/groovy-language-server_box'} }

- TODO add notes about what LSP is

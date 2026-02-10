au BufRead,BufNewFile /etc/nginx/*,/usr/local/nginx/conf/*,nginx.conf set filetype=nginx
au BufRead *.conf if getline(1) =~# '^\s*\(server\|location\|upstream\|http\)\s*{' || search('\v^\s*(server_name|listen|proxy_pass|fastcgi_pass|root|index)\s', 'nw') | set filetype=nginx | endif

export EDITOR="vim"
alias showcpu="grep -m1 -A3 'vendor_id' /proc/cpuinfo"
alias check_glsa="glsa-check -t all"
alias update_config_files="sudo cfg-update -u" # Config: vim /etc/cfg-update.conf
alias sync_portage="sudo emerge --sync"
alias update_world="sudo emerge -avuND @world"


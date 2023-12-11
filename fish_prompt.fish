function fish_prompt
    if not set -q VIRTUAL_ENV_DISABLE_PROMPT
        set -g VIRTUAL_ENV_DISABLE_PROMPT true
    end
    set_color --bold yellow
    printf '%s' $USER 
    #set_color normal
    set_color --bold brcyan
    printf ' at '

    set_color --bold magenta
    echo -n (prompt_hostname)
    #set_color normal
    set_color --bold brcyan
    printf ' in '
    
    set_color normal
    set_color --bold $fish_color_cwd
    printf '%s' (pwd)
    set_color --bold brred
    __fish_git_prompt " on [%s]" 
    set_color --bold brwhite
    
    echo
    if test -n "$VIRTUAL_ENV"
        printf "(%s) " (set_color blue)(basename $VIRTUAL_ENV)(set_color normal)
    end
    printf '>>> $ '
    set_color normal 
end

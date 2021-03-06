#!/usr/bin/env bash
SCM_GIT_CHAR=${POWERLINE_SCM_GIT_CHAR:=" "}

SCM_THEME_PROMPT_DIRTY=" ${red}!"
SCM_THEME_PROMPT_CLEAN=" ${bold_purple}✓"
SCM_THEME_PROMPT_PREFIX=" | $SCM_GIT_CHA"
SCM_THEME_PROMPT_SUFFIX="${purple}|"

GIT_THEME_PROMPT_DIRTY=" ${red}!"
GIT_THEME_PROMPT_CLEAN=" ${bold_purple}✓"
GIT_THEME_PROMPT_PREFIX=" on ${purple}$SCM_GIT_CHAR"
GIT_THEME_PROMPT_SUFFIX="${purple}"

RVM_THEME_PROMPT_PREFIX="|"
RVM_THEME_PROMPT_SUFFIX="|"

_fishy_collapsed_wd() {
  echo $(pwd | perl -pe '
   BEGIN {
      binmode STDIN,  ":encoding(UTF-8)";
      binmode STDOUT, ":encoding(UTF-8)";
   }; s|^$ENV{HOME}|~|g; s|/([^/.])[^/]*(?=/)|/$1|g; s|/\.([^/])[^/]*(?=/)|/.$1|g
')
}

function prompt_command() {
    #PS1="${bold_cyan}$(scm_char)${green}$(scm_prompt_info)${purple}$(ruby_version_prompt) ${yellow}\h ${reset_color}in ${green}\w ${reset_color}\n${green}→${reset_color} "
    #PS1="\n${purple}\h: ${reset_color} ${green}\w\n${bold_cyan}$(scm_char)${green}$(scm_prompt_info) ${green}→${reset_color} "
    #PS1="\n${cyan}\h: ${reset_color} ${yellow}\w\n${red}$(scm_char)${red}$(scm_prompt_info) ${green}→${reset_color} "
    #PS1="\n${cyan}\h:$(virtualenv_prompt) ${reset_color} ${yellow}\w ${green}$(scm_prompt_info)\n${reset_color}$ "
    PS1="\n\u@\h${cyan}$(virtualenv_prompt) ${reset_color}${bold_green}$(_fishy_collapsed_wd) ${reset_color}>${purple}$(scm_prompt_info)\n${reset_color}$ "
}

safe_append_prompt_command prompt_command

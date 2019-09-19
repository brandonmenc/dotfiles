PROMPT='
%{$fg[green]%}%n %{$fg[cyan]%}%d$(git_prompt_short_sha)$(git_prompt_info)
%{$fg_bold[black]%}%C$(mix_target) %{$fg_bold[black]%}%#%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg_bold[black]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_SHA_BEFORE="\n%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER=""

mix_target () {
	if (($+MIX_TARGET))
	then
		echo " %{$fg_bold[red]%}$MIX_TARGET"
	fi
}


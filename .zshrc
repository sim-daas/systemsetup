# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"


if [ ! -d $ZINIT_HOME ]; then
	mkdir -p "$(dirname $ZINIT_HOME)"
	git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi


source "${ZINIT_HOME}/zinit.zsh"

zinit ice depth=1; zinit light romkatv/powerlevel10k

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet


zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab
#zinit ice depth=1; zinit light jeffreytse/zsh-vi-mode


autoload -U compinit && compinit
zinit cdreplay -q

#bindings
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'
bindkey -v

eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"


HISTSIZE=10000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_save_no_dups
setopt hist_find_no_dups
alias apt='nala'



#custom functions

tmux-select() {
    selected_directory=$(find /home /home/ubuntu -type d | fzf)
    if [[ -z $selected_directory ]]; then
        echo "No directory selected. Exiting."
        return 1
    fi

    selected_name=$(basename "$selected_directory" | tr . _)
    tmux_running=$(pgrep tmux)

    if [[ -z "$TMUX" ]]; then
        # Start a new tmux session
#        tmux new-session -s "$selected_name" -c "$selected_directory"
	if tmux has-session -t="$selected_name" 2> /dev/null; then
            # Session already exists, attach to it
            tmux attach -t "$selected_name"
        else
            # Start a new detached tmux session
            tmux new-session -ds "$selected_name" -c "$selected_directory"
            # Switch to the selected tmux session
            tmux attach -t "$selected_name"
        fi
    else
        if tmux has-session -t="$selected_name" 2> /dev/null; then
            # Session already exists, attach to it
            tmux switch-client -t "$selected_name"
        else
            # Start a new detached tmux session
            tmux new-session -ds "$selected_name" -c "$selected_directory"
            # Switch to the selected tmux session
            tmux switch-client -t "$selected_name"
        fi
    fi
}

# Define the function in your .bashrc or .zshrc
tmux-select-session() {
    # Get the list of tmux sessions
    sessions=$(tmux list-sessions -F "#S" 2>/dev/null)

    if [[ -z "$sessions" ]]; then
        echo "No tmux sessions found."
        return 1
    fi

    # Use fzf to select a session
    selected_session=$(echo "$sessions" | fzf --height=10 --border --prompt="Select tmux session: ")

    if [[ -z "$selected_session" ]]; then
        echo "No session selected. Exiting."
        return 1
    fi

    # Attach to the selected session
    if [[ -z "$TMUX" ]]; then
        tmux attach-session -t "$selected_session"
    else
        tmux switch-client -t "$selected_session"
    fi
}

# Define the custom function
fzf_cd() {
  local dir
  dir=$(find /home -type d | fzf) && cd "$dir"
}

bindkey -s '^N' 'fzf_cd :. ^M'
bindkey -s '^E' 'tmux-select :. ^M'
bindkey -s '^T' 'tmux-select-session :. ^M'
bindkey -s '^[[23\;2D' 'tmux detach'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ubuntu/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ubuntu/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/ubuntu/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ubuntu/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
#source /opt/ros/jazzy/setup.zsh
export PATH="$PATH:/home/ubuntu/.modular/bin"
# Add this to your ~/.bashrc or ~/.zshrc file
open_with_ranger() {
  selected_file=$(find /home/ubuntu/ -type f | fzf --preview 'cat {}')
  [ -n "$selected_file" ] && ranger --selectfile="$selected_file"
}

alias rzf='open_with_ranger'
push_code() {
    # Start in the current directory
    dir="$PWD"
    
    # Traverse up until we find a .git directory or reach the root
    while [ "$dir" != "/" ]; do
        if [ -d "$dir/.git" ]; then
            # If .git directory is found, run push.sh from the found directory
            (cd "$dir" && /home/ubuntu/githubrepos/backend/push.sh)
            return
        fi
        # Move up one directory
        dir=$(dirname "$dir")
    done
    
    # If no git repo was found
    echo "No git repository found in this directory or its parents."
}
alias push='push_code'
bindkey -s '^F' 'open_with_ranger :. ^M'
bindkey -s '^P' 'push_code :. ^M'

# Function to push code with a commit message
push_with_commit() {
    # Start in the current directory
    dir="$PWD"
    
    # Traverse up until we find a .git directory or reach the root
    while [ "$dir" != "/" ]; do
        if [ -d "$dir/.git" ]; then
            # Prompt for commit message
            echo -n "Enter commit message: "
            read commit_message
            
            # Check if commit message is empty
            if [ -z "$commit_message" ]; then
                echo "Commit message cannot be empty. Aborting."
                return 1
            fi

            # If .git directory is found, run push.sh from the found directory with the commit message
            (cd "$dir" && /home/ubuntu/githubrepos/backend/push.sh "$commit_message")
            return
        fi
        # Move up one directory
        dir=$(dirname "$dir")
    done
    
    # If no git repo was found
    echo "No git repository found in this directory or its parents."
}

# Function to toggle a line in Readme.md and push changes
toggle_readme_and_push() {
    local num_cycles=${1:-5} # Default to 5 cycles if no argument is provided
    local readme_file="Readme.md"
    local temp_line_prefix="🤖 This is a temporary line: "

    # Check if Readme.md exists in the current directory
    if [[ ! -f "$readme_file" ]]; then
        echo "Error: '$readme_file' not found in the current directory."
        echo "Please navigate to the directory containing your Readme.md."
        return 1
    fi

    # Check if it's a Git repository
    if [[ ! -d ".git" ]]; then
        echo "Error: Not a Git repository."
        echo "Please ensure you are in the root directory of your Git project."
        return 1
    fi

    echo "Starting Readme.md toggle and push cycles ($num_cycles times)..."

    for i in $(seq 1 $num_cycles); do
        echo "--- Cycle $i of $num_cycles ---"

        # --- Phase 1: Add temporary line and push ---
        local current_timestamp=$(date +"%Y-%m-%d %H:%M:%S")
        local line_to_add="${temp_line_prefix}${current_timestamp}"

        echo "Adding line: '$line_to_add' to $readme_file"
        echo "$line_to_add" >> "$readme_file"

        echo "Committing and pushing the added line..."
        git add "$readme_file"
        if git commit -m "feat: Add temporary line (cycle $i, add)"; then
            git push origin HEAD
        else
            echo "Warning: No changes to commit for adding, skipping push."
        fi
        sleep 1 # Give a moment before next action

        # --- Phase 2: Undo temporary line and push ---
        echo "Undoing temporary line from $readme_file"
        # Using sed to remove lines starting with the prefix
        # Note: 'sed -i ""' is for macOS, 'sed -i' is for Linux
        if [[ "$(uname)" == "Darwin" ]]; then
            sed -i '' "/^${temp_line_prefix}/d" "$readme_file"
        else
            sed -i "/^${temp_line_prefix}/d" "$readme_file"
        fi

        echo "Committing and pushing the undone line..."
        git add "$readme_file"
        if git commit -m "revert: Undo temporary line (cycle $i, undo)"; then
            git push origin HEAD
        else
            echo "Warning: No changes to commit for undoing, skipping push."
        fi
        sleep 1 # Give a moment before next action
    done

    echo "--- All cycles completed! ---"
    echo "Your Readme.md should be back to its original state (minus any pre-existing temporary lines)."
}




alias pushc='push_with_commit'
bindkey -s '\e^P' 'push_with_commit :. ^M'
bindkey -s '\e^G' 'toggle_readme_and_push 8 :. ^M'

alias nixins='nix-env -iA'
export ISAAC_ROS_WS=/home/ubuntu/workspaces/isaac_ros-dev/

# add Pulumi to the PATH
export PATH=$PATH:/home/ubuntu/.pulumi/bin

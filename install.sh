#!/bin/bash

function update_git_shortcuts() {
	echo "Update Git Shortcuts"
	echo ":::: cp git-shortcuts ~/.git-shortcuts"
	cp git-shortcuts ~/.git-shortcuts
}

function add_to_zshrc() {
	echo "Installing to ~/.zshrc..."
	echo ":::: echo \"source ~/.git-shortcuts\" >> ~/.zshrc"
	echo "source ~/.git-shortcuts" >> ~/.zshrc
}

function add_to_bashrc() {
	echo "Installing to ~/.bashrc..."
	echo ":::: echo \"source ~/.git-shortcuts\" >> ~/.bashrc"
	echo "source ~/.git-shortcuts" >> ~/.bashrc
}

function fetch_git_shortcuts() {
	echo "Fetching new version of git-shortcuts from Github..."
	echo ":::: git fetch --all"
	git fetch --all
	echo ":::: git merge"
	git merge
}

function show_not_installed_message() {
	echo "Git shortcuts not installed!"
	echo "To install use:"
	echo ":::: ./install.sh zsh or ./install bashrc"
}

function show_git_shortcuts() {
	echo "Show content of git-shortcuts..."
	if [ ! -f ~/.git-shortcuts ]; then
		show_not_installed_message
	else
		echo ":::: cat ~/.git-shortcuts"
		cat ~/.git-shortcuts
	fi
}

function show_git_shortcuts_difference() {
	echo "Show difference between current and installed version..."
	if [ ! -f ~/.git-shortcuts ]; then
		show_not_installed_message
	else
		echo ":::: diff git-shortcuts ~/.git-shortcuts"
		diff git-shortcuts ~/.git-shortcuts
	fi
}

function show_help_message() {
	echo ":::: Help message ::::"
	echo "----------------------"
	echo "zsh: Install .git-shortcuts to zsh shell."
	echo "bash: Install .git-shortcuts to bash shell."
	echo "fetch: Update .git-shortcuts from Github repository"
	echo "update: Update .git-shortcuts from local git repository."
	echo "show: Show content of current .git-shortcuts file."
	echo "diff: Show difference between local repository and your current installed version."
	echo "help or --help: Show this message"
	echo "----------------------"
	echo "Note: to use new commands, run this command:"
	echo "ZSH shell"
	echo ":::: source ~/.zshrc"
	echo "Bash shell"
	echo ":::: source ~/.bashrc"
}

function show_unknown_command_message() {
	echo "Unknown command \"$1\""
	echo "Run ./install.sh without parameters or ./install help or ./install --help"
}

if [ "$1" = "zsh" ]; then add_to_zshrc && update_git_shortcuts && source ~/.zshrc
elif [ "$1" = "bash" ]; then add_to_bashrc && update_git_shortcuts && source ~/.bashrc
elif [ "$1" = "fetch" ]; then fetch_git_shortcuts && update_git_shortcuts
elif [ "$1" = "update" ]; then update_git_shortcuts
elif [ "$1" = "show" ]; then show_git_shortcuts
elif [ "$1" = "diff" ]; then show_git_shortcuts_difference
elif [ "$1" = "help" ] || [ "$1" = "--help" ] || [ "$1" = "" ]; then show_help_message
else show_unknown_command_message $1
fi
#!/usr/bin/env nu
# ~/.config/yazelix/nushell/open_terminal.nu

source ~/.config/yazelix/nushell/zellij_utils.nu
source ~/.config/yazelix/nushell/logging.nu

def main [] {
    # Get current path
    let current_path = $env.PWD
    
    # Extract project name with more reliable method
    let project_path = if ($current_path | str contains "/projects/") {
        try {
            # Find project name using position in path
            let path_str = $current_path | str replace -r ".*/projects/" ""
            let project_name = $path_str | str replace -r "/.*" ""
            
            if ($project_name | str length) > 0 {
                $"/Users/kodyberry/projects/($project_name)"
            } else {
                "~"
            }
        } catch {
            log_to_file "open_terminal.log" "Error extracting project name, using home directory"
            "~"
        }
    } else {
        "~"  # Default to home if not in a projects directory
    }
    
    log_to_file "open_terminal.log" $"Setting terminal path to: ($project_path)"
    
    # Create a new terminal pane below with the extracted project path
    log_to_file "open_terminal.log" "Creating new terminal pane"
    zellij action new-pane --direction "down"
}
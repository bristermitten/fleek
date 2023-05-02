{ pkgs, misc, ... }: {
   home.shellAliases = {
    fleeks = "cd /Users/alex/.local/share/fleek";
    
    pinentry-mac = "~/.nix-profile/Applications/pinentry-mac.app/Contents/MacOS/pinentry-mac";
    
    # bat --plain for unformatted cat
    catp = "bat -P";
    
    # replace cat with bat
    cat = "bat";
    };
}

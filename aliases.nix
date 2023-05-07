{ pkgs, misc, ... }: {
   home.shellAliases = {
    apply-hm = "nix run --impure home-manager/master -- -b bak switch --flake .#alex";
        
    pinentry-mac = "~/.nix-profile/Applications/pinentry-mac.app/Contents/MacOS/pinentry-mac";
    
    # bat --plain for unformatted cat
    catp = "bat -P";
    
    # replace cat with bat
    cat = "bat";
    };
}

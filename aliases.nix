{ pkgs, misc, ... }: {
  home.shellAliases = {
    apply-hm = "nix run --impure home-manager/master -- -b bak switch --flake .#alex";

    pinentry-mac = "~/.nix-profile/Applications/pinentry-mac.app/Contents/MacOS/pinentry-mac";

    # bat --plain for unformatted cat
    catp = "bat -P";

    # replace cat with bat
    cat = "bat";

    # Easy alias to fix whenever nix fucks itself up, see https://github.com/NixOS/nix/issues/2899#issuecomment-699299567 for source
    fix-nix = "sudo launchctl setenv NIX_SSL_CERT_FILE \"/nix/var/nix/profiles/default/etc/ssl/certs/ca-bundle.crt\" && sudo launchctl kickstart -k system/org.nixos.nix-daemon";
  };
}

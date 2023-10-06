{...}: {
  programs.git = {
    userEmail = "alexljwood24@hotmail.co.uk";
    userName = "Alexander Wood";
    signing = {
      key = "~/.ssh/id_ed25519.pub";
      signByDefault = true;
    };
  };
}

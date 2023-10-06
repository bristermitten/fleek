{pkgs, ...}: {
  home.packages = with pkgs; [
  ];
  home.sessionVariables = rec {
  };
  programs.git = {
    enable = true;
    lfs.enable = true;
    userEmail = "fi22264@bristol.ac.uk";
    userName = "fi22264";
    extraConfig = {
      http.sslVerify = true;
      http.sslCAInfo = "/etc/ssl/certs/ca-certificates.crt";
    };
  };
}

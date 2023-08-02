{pkgs, ...}: {
  home.packages = [
    pkgs.gradle_7
  ];

  # TODO: figure out SOPS
  # home.file.".gradle/gradle.properties".text = ''
  #'';
}

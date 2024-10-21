{pkgs, ...}: {
  # https://devenv.sh/basics/
  # See full reference at https://devenv.sh/reference/options/
  packages = [
    pkgs.git
    # pkgs.hugo
    pkgs.hunspellDicts.en_US
  ];
  languages = {
    nix.enable = true;
  };

  devcontainer.enable = true;

  pre-commit.hooks = {
    # html-tidy.enable = true;  # Nope, for now..

    commitizen.enable = true;

    deadnix.enable = true;

    actionlint.enable = true;

    shellcheck.enable = true;

    alejandra.enable = true;

    # hunspell.enable = true;

    markdownlint.enable = true;

    lychee.enable = true;
  };
}

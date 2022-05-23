{
  description = "Webdev flake";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs";
  inputs.flake-utils.url = "git+https://g.m5w.de/mawalu/flake-utils";
  inputs.flake-utils.inputs.nixpkgs.follows = "nixpkgs";

  outputs = { self, nixpkgs, flake-utils }: 
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        inputs = with pkgs; [
          nodejs nodePackages.npm nodePackages.yarn
          git gnupg vim less openssh
        ];
        mkPhp = pkg: let php = pkg.buildEnv { 
          extensions = { enabled, all }: enabled ++ [ all.imagick all.redis ]; 
          extraConfig = "memory_limit = 2G";
        }; in [ php php.packages.composer ];
        devShell = config: pkgs.mkShell ({
           shellHook = ''
              cd $DEVSHELL_OLDPWD
              exec bwbox --profile dev zsh
            '';
        } // config);
      in {
        devShells = {
          php74 = devShell {
            buildInputs = inputs ++ (mkPhp pkgs.php74);
          };
          php80 = devShell {
            buildInputs = inputs ++ (mkPhp pkgs.php80); 
          };
          php81 = devShell {
            buildInputs = inputs ++ (mkPhp pkgs.php81); 
          };
          devops = devShell {
            buildInputs = with pkgs; inputs ++ [ ansible ];
          };
          ctf = devShell {
            buildInputs = 
            let
                python = pkgs.python310.withPackages (p: with p; [
                  pip
                  pwntools
                  requests
                  setuptools
            ]);
            in
              with pkgs; inputs ++ [ python curl pwndbg metasploit john gobuster nmap ];
          };
        };
      }
    );
}

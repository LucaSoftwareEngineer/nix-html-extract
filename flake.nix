{
    description = "Questo Flake configura il pacchetto curl per permettere di estrarre html dagli url ricevuti";

    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    };

    outputs = { self, nixpkgs }:
        let
            system = "x86_64-linux";
            pkgs = nixpkgs.legacyPackages.${system};
        in {
            devShells.${system}.default = pkgs.mkShell {
                buildInputs = [ pkgs.curl ];
            };
        };
        
}
{
    description = "Questo Flake configura il pacchetto curl per permettere di estrarre html dagli url ricevuti";

    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    };

    outputs = { self, nixpkgs }:
        let
            sistemaOperativo = "x86_64-linux";
            pacchettiPerSistemaOperativo = nixpkgs.legacyPackages.${sistemaOperativo};
        in {
            devShells.${sistemaOperativo}.default = pacchettiPerSistemaOperativo.mkShell {
                buildInputs = [ pacchettiPerSistemaOperativo.curl ];
            };
        };
        
}
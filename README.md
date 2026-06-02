# nix-html-extract

Un Flake Nix minimale progettato per estrarre il codice HTML dai siti web all'interno di un ambiente di sviluppo isolato e riproducibile.

---

## Come utilizzare il Flake

Per utilizzare questo progetto, assicurati di avere installato **Nix** sul tuo sistema (funziona su distribuzioni Linux).

### 1. Clona la repository
Apri il terminale e clona il progetto sul tuo computer:

```bash
git clone https://github.com/LucaSoftwareEngineer/nix-html-extract
cd nix-html-extract
```

### 2. Estrai l'HTML di un sito
Esegui il comando nix develop passando l'URL del sito web di cui desideri ottenere il codice sorgente. 

```bash
nix develop . --command curl <URL>
```

### Esempio:
```bash
nix develop . --command curl https://example.com
```

### Risultato:
```bash
<!doctype html><html lang="en"><head><title>Example Domain</title><meta name="viewport" content="width=device-width, initial-scale=1"><style>body{background:#eee;width:60vw;margin:15vh auto;font-family:system-ui,sans-serif}h1{font-size:1.5em}div{opacity:0.8}a:link,a:visited{color:#348}</style></head><body><div><h1>Example Domain</h1><p>This domain is for use in documentation examples without needing permission. Avoid use in operations.</p><p><a href="https://iana.org/domains/example">Learn more</a></p></div></body></html>
```

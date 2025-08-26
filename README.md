# SSH Tunnel on Render

To repozytorium pozwala uruchomić serwer SSH na Renderze na porcie 7, który można wykorzystać jako tunel SOCKS.

## Jak używać

1. Utwórz nowe Web Service na [Render](https://render.com/).
2. Wybierz to repozytorium jako źródło.
3. W **Advanced Settings → Environment** dodaj zmienną:
   - `PORT=7`
4. Po zbudowaniu dostaniesz adres serwera np. `ssh-tunnel.onrender.com`.

## Łączenie z Windows

W PowerShell:

```bash
ssh -D 1080 -p 7 vpnuser@ssh-tunnel.onrender.com

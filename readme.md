# Sprawdź czy twoja maszyna jest przygotowana do warsztatów

## Wymagania

* Visual Studio 2017 Community
* Entity Framework 6 tools (individual componets for VS 2017), [link](https://stackoverflow.com/a/43638930/2029818)
* localDb 13.0 lub wyższy


## Weryfikacja

To repozytorium zawiera przykladowy projekt, backup bazy w formie pliku `.bak` oraz skrypt do zaladowania go do `localDb`.

Aby sprawdzić czy środowisko zostalo poprawnie przygotowane wynonaj poniższe kroki:

1. Uruchom skrypt powershellowy [`restore-db.ps1`](./scripts/restore-db.ps1) z odpowiednimi parametrami.

```
> powershell ./restore-db.ps1 -bak '{bezwzględna ścieżka do bak z baza}' -project '{bezwzgledna sciezka do tego projektu}'
```

Przyklad
```
> powershell ./restore-db.ps1 -bak 'D:\Workspaces\isa\northwind-backups\NORTHWND-20180519-1.bak' -project 'C:\Workspaces\isa\ef-workshops-preparation'
```

2. Uruchom solucję z katalogu `post-manager` w Visual Studio, zainstaluj wszystkie zależności `nuget`.
3. Po uruchomieniu efektem powinnny być poniższe dane wypisane na konsoli:

```
Categories:
1: Beverages
2: Condiments
3: Confections
4: Dairy Products
5: Grains/Cereals
6: Meal/Poultry
7: Produce
8: Seafood
```
# Sprawdź czy twoja maszyna jest przygotowana do warsztatów

## Wymagania

* Visual Studio 2017 Community wraz z Entity Framework 6 tools (individual componets for VS 2017), [link](https://stackoverflow.com/a/43638930/2029818)
 * Lub Visual Studio 2015 Professional
* localDb 13.0 lub wyższy (Dostępne w dystrybucji MS SQL Express)


## Weryfikacja

Aby sprawdzić instalację `localDb` uruchom `SqlLocalDb.exe`.


To repozytorium zawiera przykladowy projekt, backup bazy w formie pliku `.bak` oraz skrypt do zaladowania go do `localDb`.

Aby sprawdzić czy środowisko zostalo poprawnie przygotowane wynonaj poniższe kroki:

1. Uruchom skrypt powershellowy [`restore-db.ps1`](./scripts/restore-db.ps1) aby stworzyć bazę localDb i zaladować dane
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
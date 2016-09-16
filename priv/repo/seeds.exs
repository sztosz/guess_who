# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     GuessWho.Repo.insert!(%GuessWho.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias GuessWho.Repo
alias GuessWho.User


Repo.insert!(%User{name: "Kasia Gardocka", photo_url: "https://d3smv2e8i8bs2f.cloudfront.net/assets/promo/about-us/us/k.gardocka-06b74a5e13a8b9b7711d646484b39cb1602a78733a9fd01b8a3371a55254fd0d.jpg"})
Repo.insert!(%User{name: "Gosia Ksionek", photo_url: "https://d3smv2e8i8bs2f.cloudfront.net/assets/promo/about-us/us/g.ksionek-212f3e5f5e55db00649ae5b2b100507f95b80b45fc815b5ce7a1913e58c4d53f.jpg"})
Repo.insert!(%User{name: "Robert Pawlas", photo_url: ""})
Repo.insert!(%User{name: "Piotr Kaczmarczyk", photo_url: "https://d3smv2e8i8bs2f.cloudfront.net/assets/promo/about-us/us/p.kaczmarczyk-954f25bfabd59fae7e923d3c4ed4e9fcd5c171fca597e4bc472aaf84e71cbb20.jpg"})
Repo.insert!(%User{name: "Jan Makara", photo_url: ""})
Repo.insert!(%User{name: "Mikołaj Wawrzyniak", photo_url: ""})
Repo.insert!(%User{name: "Bartosz Nowak", photo_url: ""})
Repo.insert!(%User{name: "Rafał Wojsznis", photo_url: "https://d3smv2e8i8bs2f.cloudfront.net/assets/promo/about-us/us/r.wojsznis-09f373b7a9dad33c9958d10af5e715320c2ceae2cd6848711d04ba5d339f9196.jpg"})
Repo.insert!(%User{name: "Adrian Dulić", photo_url: "https://d3smv2e8i8bs2f.cloudfront.net/assets/promo/about-us/us/a.dulic-a7f566d7c5fd5bee3d17035bc67485bcbfc63c0e1b95791fc03d7314b5b20ed7.jpg"})
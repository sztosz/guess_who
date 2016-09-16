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
alias GuessWho.Question


kasia   = Repo.insert!(%User{name: "Kasia Gardocka", photo_url: "https://d3smv2e8i8bs2f.cloudfront.net/assets/promo/about-us/us/k.gardocka-06b74a5e13a8b9b7711d646484b39cb1602a78733a9fd01b8a3371a55254fd0d.jpg"})
gosia   = Repo.insert!(%User{name: "Gosia Ksionek", photo_url: "https://d3smv2e8i8bs2f.cloudfront.net/assets/promo/about-us/us/g.ksionek-212f3e5f5e55db00649ae5b2b100507f95b80b45fc815b5ce7a1913e58c4d53f.jpg"})
robert  = Repo.insert!(%User{name: "Robert Pawlas", photo_url: ""})
piotrek = Repo.insert!(%User{name: "Piotr Kaczmarczyk", photo_url: "https://d3smv2e8i8bs2f.cloudfront.net/assets/promo/about-us/us/p.kaczmarczyk-954f25bfabd59fae7e923d3c4ed4e9fcd5c171fca597e4bc472aaf84e71cbb20.jpg"})
janek   = Repo.insert!(%User{name: "Jan Makara", photo_url: ""})
mikolaj = Repo.insert!(%User{name: "Mikołaj Wawrzyniak", photo_url: ""})
bartek  = Repo.insert!(%User{name: "Bartosz Nowak", photo_url: ""})
rafal   = Repo.insert!(%User{name: "Rafał Wojsznis", photo_url: "https://d3smv2e8i8bs2f.cloudfront.net/assets/promo/about-us/us/r.wojsznis-09f373b7a9dad33c9958d10af5e715320c2ceae2cd6848711d04ba5d339f9196.jpg"})
adrian  = Repo.insert!(%User{name: "Adrian Dulić", photo_url: "https://d3smv2e8i8bs2f.cloudfront.net/assets/promo/about-us/us/a.dulic-a7f566d7c5fd5bee3d17035bc67485bcbfc63c0e1b95791fc03d7314b5b20ed7.jpg"})

Repo.insert!(%Question{user: adrian, question: "Who would eat vege over meat, but won’t admit it?", hint_1: "This person works in Positionly from the very beginning", hint_2: "This person has a son."})
Repo.insert!(%Question{user: piotrek, question: "Who would want to boil some more water?", hint_1: "This person knows his stuff around coal."})
Repo.insert!(%Question{user: bartek, question: "Who had his Wedding on Crete?", hint_1: "This person has a son", hint_2: "This person drinks coffee"})
Repo.insert!(%Question{user: robert, question: "Who has problems with riding bikes?", hint_1: "This person has more than one sibling", hint_2: "This person knows his stuff around coal", hint_3: "This person drinks coffee"})
Repo.insert!(%Question{user: mikolaj, question: "Who wears a medieval armour from time to time?", hint_1: "This person drinks coffee."})
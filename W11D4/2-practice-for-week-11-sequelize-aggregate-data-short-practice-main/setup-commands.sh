cd server

# Remove the database file (if run multiple times - not in README)

rm db/dev.db 2> /dev/null || true

# Getting started

npm install

cp .env.example .env

# Migrations and seeders

dotenv npx sequelize db:migrate

dotenv npx sequelize db:seed:all

echo "----- Tables Exist? -----"
sqlite3 db/dev.db ".schema"

echo "----- Tables Have Data? -----"
sqlite3 db/dev.db "SELECT 'catCount', count(id) FROM Cats;"
sqlite3 db/dev.db "SELECT 'toyCount', count(id) FROM Toys;"
sqlite3 db/dev.db "SELECT 'CatToyCount', count(id) FROM CatToys;"
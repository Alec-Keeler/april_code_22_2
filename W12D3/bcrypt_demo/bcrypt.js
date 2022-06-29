const bcrypt = require('bcryptjs');

function hashPassword(password) {
    const hash = bcrypt.hashSync(password, 12)  //password + salt
    console.log(hash)
}

hashPassword('password')

// $2a$10$pcgsj4W4VqTEwNGic/gSg.Nf/T8xwL37e4XjB2vKiSZhIPjo6.s.W
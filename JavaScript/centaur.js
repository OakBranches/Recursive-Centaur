function centaur(level, isLast = true, res = []) {
    if(level < 0)
        return
    centaur(level-1, false, res)
    if(level == 0) // head
        res.push(' o\n/|\\_____\n|       #')
    if(!isLast) // body
        res.push('____\n' + ' '.repeat(level * 5) + '! !``|       #')
    else { // bottom
        res.push('\n' + ' '.repeat(level * 5) + '! !```! !')
        console.log(res.join(''))
    }
}

// Browser
if(typeof window !== 'undefined')
    centaur(prompt('Level: '))
// Node.js
else {
    const readline = require('readline')
    const { stdin: input, stdout: output } = require('process')
    const rl = readline.createInterface({ input, output })
    rl.question('Level: ', level => {
        centaur(level)
        rl.close()
    })
}
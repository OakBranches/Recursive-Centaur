#[
    Nim lang implementation for the recursive centaur
]#

import strutils

proc `*`(a: int, b: string): string =
    var output: string = ""
    for i in 0 ..< a:
        output.add(b)
    return output

proc centaur(level: int, finish: bool = true): void =
    if level < 0:
        return

    # base strings
    var
        top: string = """|       #"""
        bottom: string = ""

    # call upper levels
    centaur(level-1, false)

    if level == 0: # is head of the centaur
        top = """ o""" & '\n' & """/|\_____""" & '\n' & """|       #"""
    else: # is recursive centaur's body
        top = (level-1) * """     """ & """! !``""" & top
    
    if finish: # end of recursive centaur
        bottom = '\n' & (level) * """     """ & """! !```! !"""
    else: # recursive centaur's back
        top &= """____"""

    # print centaur lvl a
    echo top & bottom

var levels: int

let input = readLine(stdin)
levels = parseInt(input)

centaur(levels)
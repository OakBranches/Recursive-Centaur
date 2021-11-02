fun centaur(level:Int, finish:Boolean) {
    // finish
    if (level < 0) {
        return
    }
    // call upper level
    centaur(level-1, false)
    // default values
    var top:String = "|       #"
    var bottom:String = ""

    // is head?
    if (level == 0) {
        top = " o\n/|\\_____\n|       #"
    }
    else {
        // spaces + default top
        top = "     ".repeat(level-1) + "! !``" + top
    }
        
    // is last body (legs)?
    if (finish) {
        // add legs
        bottom = "     ".repeat(level) + "! !```! !\n"
    }
    else {
        // add centaur's back
        top += "____"
    }
    print("${top + '\n' + bottom}")
}

fun main() {
    var n:Int = readLine()!!.toInt()

    centaur(n, true)
}
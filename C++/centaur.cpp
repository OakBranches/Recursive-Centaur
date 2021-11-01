// Gabriel Penajo Machado
#include <iostream>
#include <string>
#include <sstream>

void centaur(int level, bool finish = true) {
    // finish
    if (level < 0) {
        return;
    }
    // call upper level
    centaur(level-1, false);
    // default values
    std::string top = "|       #", bottom = "\n";

    // is head?
    if (level == 0) {
        top = " o\n/|\\_____\n|       #";
    }
    else {
        // spaces + default top
        std::stringstream space;
        for (int i = 1; i < level; ++i) {
            space << "     ";
        }
        top = space.str() + "! !``" + top;
    }
        
    // is last body (legs)?
    if (finish) {
        // add legs
        std::stringstream space;
        for (int i = 0; i < level; ++i) {
            space << "     ";
        }
        bottom = "\n" + space.str() + "! !```! !";
    }
    else {
        // add centaur's back
        top += "____";
    }
    std::cout << top << bottom;
}

int main() {
    int n;
    std::cin >> n;

    centaur(n);
    return 0;
}
// Gabriel Penajo Machado
#include <stdio.h>

#define TRUE 1
#define FALSE 0

void centaur(int level, int finish) {
    // finish
    if (level < 0) {
        return;
    }
    // call upper level
    centaur(level-1, FALSE);

    // is head?
    if (level == 0) {
        printf(" o\n/|\\_____\n|       #");
    }
    else {
        // spaces padding
        for (int i = 1; i < level; ++i) {
            printf("     ");
        }
        printf("! !``");
        // default top value
        printf("|       #");
    }

    // is not last body (legs)?
    if (finish == FALSE) {
        // centaur's back
        printf("____");
        // default bottom value
        printf("\n");
    }
    else {
        // default bottom value
        printf("\n");
        // spaces padding
        for (int i = 0; i < level; ++i) {
            printf("     ");
        }
        // legs
        printf("! !```! !");
    }
}

int main() {
    int n;
    scanf("%d", &n);

    centaur(n, TRUE);
    return 0;
}
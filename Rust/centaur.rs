// Miguel Antonio de Oliveira

fn centaur(level: usize, is_last: bool) {
    if level == 0 {
        print!(" o\n/|\\_____\n|       #");
    } else {
        centaur(level - 1, false);
        let space = " ".repeat(level * 5 - 5);
        if is_last {
            print!("\n{}! !  ! !\n", space);
        } else {
            print!("____\n{}! !  |       #", space);
        }
    }
}

fn main() {
    let level: usize = std::env::args()
        .nth(1)
        .and_then(|l| l.parse().ok())
        .unwrap_or_default();
    centaur(level + 1, true);
}

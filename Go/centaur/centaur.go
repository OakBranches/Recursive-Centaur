package centaur

import (
	"errors"
	"fmt"
	"log"
	"strings"
)

func Draw(height int, level int) {
	if height < 0 {
		error := errors.New("invalid height")
		log.SetFlags(0)
		log.SetPrefix("[ERROR] ")
		log.Fatal(error)
	}
	if level < 0 {
		error := errors.New("invalid level")
		log.SetFlags(0)
		log.SetPrefix("[ERROR] ")
		log.Fatal(error)
	}

	if level > height {
		return
	}

	if level == 0 {
		drawHead()
	}
	drawBody(height, level)
	if level == height {
		drawHooves(level)
	}
	Draw(height, level+1)
}

func drawHead() {
	fmt.Println(" o       ")
	fmt.Println("/|\\_____")
}

func drawBody(height int, level int) {
	var builder strings.Builder
	// padding
	drawPadding(level - 1)

	// front legs
	if level > 0 {
		builder.WriteString("! !  ")
	}

	// recursive centaur half
	builder.WriteString("|       #")

	// recursive centaur's back half
	// from lower level
	if height != level {
		builder.WriteString("____")
	}
	fmt.Println(builder.String())
}

func drawHooves(level int) {
	drawPadding(level)
	fmt.Println("! !  ! !")
}

func drawPadding(amount int) {
	if amount > 0 {
		fmt.Print(strings.Repeat("     ", amount))
	}
}

// Base
//  o            0
// /|\_____
// |       #
// ! !  ! !

//  o            1
// /|\_____
// |       #____
// ! !  |       #
//      ! !  ! !

//  o             2
// /|\_____
// |       #____
// ! !  |       #____
//      ! !  |       #
//           ! !  ! !

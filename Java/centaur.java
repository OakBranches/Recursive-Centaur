import java.util.*;

// Gabriel de Jesus Dantas

public class centaur{
    public static void recursive(int a, boolean b){

        //finish
        if(a < 0)
            return;
        
        //call the upper level
        recursive(a-1, false);

        // default values
        String top = "|       #", bottom = "\n";

        //is the first body?
        if (a == 0)
            //+head 
            top = " o\n/|\\_____\n|       #";
        else
            //spaces + default top
            top = (new String("     ")).repeat(a-1) + "! !``" + top;
        
         
        //is the last body?
        if(b)
            //add the legs
            bottom = "\n" + (new String("     ")).repeat(a) + "! !```! !";
        else
            //add the back
            top += "____";

        System.out.print(top + bottom);

    }

    public static void main(String args[]) {
        Scanner scan = new Scanner(System.in);

        int x = scan.nextInt();
        centaur.recursive(x, true);
        
        scan.close();
    }
}
import java.util.*;
import java.io.*;
import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import static java.lang.System.*;

Acronyms acro;

void setup() {
  acro=new Acronyms();
  println(acro.decode("I drove my PU to TSO to get a HD. My CPU has a virus. I sometimes SO when trying to kick a FG. I had 2 RBI at the game. I saw 2 PDA infractions in the hall."));
}

void moon() {
  if (moonCount==0) {// Full moon
    fill(255);
    ellipse(100, 100, 50, 50);//Default moon
  }

  if (moonCount==1) {// Waning crescent moon
    fill(255);
    ellipse(100, 100, 50, 50);
    fill(0, 0, 70);
    ellipse(120, 100, 50, 50);//Moon cover up
  }

  if (moonCount==2) {// Half moon
    fill(255);
    ellipse(100, 100, 50, 50);
    fill(0, 0, 70);
    rect(125, 100, 50, 50);//Moon cover up
  }

  if (moonCount==3) {// Waxing crescent moon
    fill(255);
    ellipse(100, 100, 50, 50);
    fill(0, 0, 70);
    ellipse(80, 100, 50, 50);//Moon cover up
  }

  if (moonCount==4) {// New moon
    fill(0, 0, 70);//New moons aren't visible
    ellipse(100, 100, 50, 50);
  }

  if (moonCount==5) {// New moon
    moonCount=0;
  }
}

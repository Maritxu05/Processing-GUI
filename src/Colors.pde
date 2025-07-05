enum PastelColor {
  WHITE, BLACK, PINK, MINT, LAVENDER, PEACH, SKY, LEMON
}

color getPastelColor(PastelColor c) {
  switch (c) {
    case WHITE:
      return color (255, 255, 255);
    case BLACK:
      return color (0, 0, 0);
    case PINK:
      return color(255, 182, 193); // Light Pink
    case MINT:
      return color(189, 252, 201); // Mint Green
    case LAVENDER:
      return color(230, 230, 250); // Lavender
    case PEACH:
      return color(255, 218, 185); // Peach
    case SKY:
      return color(176, 224, 230); // Light Sky Blue
    case LEMON:
      return color(255, 250, 205); // Lemon Chiffon
    default:
      return color(255); // White fallback
  }
}

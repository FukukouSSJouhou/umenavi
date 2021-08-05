
enum BunkasaiClasskun{
  C11,
  C12,
  C13,
  C14,
  C15,
  C16,
  C17,
  C21,
  C22,
  C23,
  C24,
  C25,
  C26,
  C27,
  C31,
  C32,
  C33,
  C34,
  C35,
  C36,
  C37,
  NONEKUN
}

String BunkasaiClasskun_to_str(BunkasaiClasskun b1){
  String resultkun="";
  switch(b1){
    case BunkasaiClasskun.C11:
      return "1-1";
      break;
    case BunkasaiClasskun.C12:
      return "1-2";
      break;
    case BunkasaiClasskun.C13:
      return "1-3";
      break;
    case BunkasaiClasskun.C14:
      return "1-4";
      break;
    case BunkasaiClasskun.C15:
      return "1-5";
      break;
    case BunkasaiClasskun.C16:
      return "1-6";
      break;
    case BunkasaiClasskun.C17:
      return "1-7";
      break;
    case BunkasaiClasskun.C21:
      return "2-1";
      break;
    case BunkasaiClasskun.C22:
      return "2-2";
      break;
    case BunkasaiClasskun.C23:
      return "2-3";
      break;
    case BunkasaiClasskun.C24:
      return "2-4";
      break;
    case BunkasaiClasskun.C25:
      return "2-5";
      break;
    case BunkasaiClasskun.C26:
      return "2-6";
      break;
    case BunkasaiClasskun.C27:
      return "2-7";
      break;
    case BunkasaiClasskun.C31:
      return "3-1";
      break;
    case BunkasaiClasskun.C32:
      return "3-2";
      break;
    case BunkasaiClasskun.C33:
      return "3-3";
      break;
    case BunkasaiClasskun.C34:
      return "3-4";
      break;
    case BunkasaiClasskun.C35:
      return "3-5";
      break;
    case BunkasaiClasskun.C36:
      return "3-6";
      break;
    case BunkasaiClasskun.C37:
      return "3-7";
      break;
    case BunkasaiClasskun.NONEKUN:
      return "none";
      break;
  }
  return resultkun;
}
BunkasaiClasskun str_to_bunkasaiClass(String txtun){
  switch(txtun){
    case "1-1":
      return BunkasaiClasskun.C11;
      break;
    case "1-2":
      return BunkasaiClasskun.C12;
      break;
    case "1-3":
      return BunkasaiClasskun.C13;
      break;
    case "1-4":
      return BunkasaiClasskun.C14;
      break;
    case "1-5":
      return BunkasaiClasskun.C15;
      break;
    case "1-6":
      return BunkasaiClasskun.C16;
      break;
    case "1-7":
      return BunkasaiClasskun.C17;
      break;
    case "2-1":
      return BunkasaiClasskun.C21;
      break;
    case "2-2":
      return BunkasaiClasskun.C22;
      break;
    case "2-3":
      return BunkasaiClasskun.C23;
      break;
    case "2-4":
      return BunkasaiClasskun.C24;
      break;
    case "2-5":
      return BunkasaiClasskun.C25;
      break;
    case "2-6":
      return BunkasaiClasskun.C26;
      break;
    case "2-7":
      return BunkasaiClasskun.C27;
      break;
    case "3-1":
      return BunkasaiClasskun.C31;
      break;
    case "3-2":
      return BunkasaiClasskun.C32;
      break;
    case "3-3":
      return BunkasaiClasskun.C33;
      break;
    case "3-4":
      return BunkasaiClasskun.C34;
      break;
    case "3-5":
      return BunkasaiClasskun.C35;
      break;
    case "3-6":
      return BunkasaiClasskun.C36;
      break;
    case "3-7":
      return BunkasaiClasskun.C37;
      break;
    case "none":
      return BunkasaiClasskun.NONEKUN;
      break;
  }
  return BunkasaiClasskun.C15;
}
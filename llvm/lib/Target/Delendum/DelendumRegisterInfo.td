class DelendumReg<bits<5> Enc, string n, list<string> alt = []>: Register<n> {
  let HWEncoding{4-0} = Enc;
  let AltNames = alt;
  let Namespace = "DL";
}

def PC  : DelendumReg<0, "pc", []>;
def FP  : DelendumReg<1, "fp", []>;

def I32 : RegisterClass<"Delendum", [i32], 32, (add
    PC, FP)> {
  let Namespace = "DL";
}

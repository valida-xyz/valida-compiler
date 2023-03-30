class DelendumReg<bits<5> Enc, string n, list<string> alt = []>: Register<n> {
  let HWEncoding{4-0} = Enc;
  let AltNames = alt;
  let Namespace = "DL";
}

def PC  : DelendumReg<0, "pc", []>;
def SP  : DelendumReg<1, "sp", []>;
def FP  : DelendumReg<2, "fp", []>;

def X0  : DelendumReg<3, "x0", []>;

// TODO: Just for testing, we need to eliminate physical registers
def GPR : RegisterClass<"Delendum", [i32], 32, (add
    X0)> {
  let Namespace = "DL";
}

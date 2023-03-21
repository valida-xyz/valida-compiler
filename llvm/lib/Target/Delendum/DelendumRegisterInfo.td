class DelendumReg<bits<5> Enc, string n, list<string> alt = []>: Register<n> {
  let HWEncoding{4-0} = Enc;
  let AltNames = alt;
  let Namespace = "DL";
}

def X0  : DelendumReg<0, "x0", []>;
def X1  : DelendumReg<1, "x1", []>;
def X2  : DelendumReg<2, "x2", []>;
def X3  : DelendumReg<3, "x3", ["fp"]>;
def X4  : DelendumReg<4, "x4", ["sp"]>;

// TODO: Just for testing, we need to eliminate physical registers
def GPR : RegisterClass<"Delendum", [i32], 32, (add
    X0, X1, X2, X3, X4)> {
  let Namespace = "DL";
}

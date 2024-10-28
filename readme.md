# Sample project notes for verilog projects

Only open source tools, this is a personal template for when I do a project.

To run the tests using :

- Verilator simulator
- Cocotb testbench
- System verilog for the dut

run :

```bash
cd tb
make
```

## Tools stack used for the project

### The HDL

SystemVerilog

### Simulator :  Verilator

[docs](https://verilator.org/guide/latest/index.html)

```sudo apt install verilator```

On [debian 11 and other versions](https://repology.org/project/verilator/versions), the apt packages may not fot the versions requirements for cocotb. you can choose to use another simulator, or like me, use this **VERY CONVINIENT** (not) set of commands to build from git :

```bash
sudo apt install git make autoconf g++ flex bison help2man
git clone https://github.com/verilator/verilator.git
cd verilator
git checkout stable
autoconf
./configure
make -j$(nproc)
sudo make install
verilator --version
```

### TenstBenches : cocotb

[WebSite](https://www.cocotb.org/)

[docs](https://docs.cocotb.org/en/stable/install.html)

```sudo apt-get install make python3 python3-pip libpython3-dev```

```pip install cocotb```

for the "makefile" : [docs](https://docs.cocotb.org/en/stable/quickstart.html#creating-a-makefile)

<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Clk50" />
        <signal name="SDC_SCK" />
        <signal name="XLXN_3" />
        <signal name="SDC_MOSI" />
        <port polarity="Input" name="Clk50" />
        <port polarity="Output" name="SDC_SCK" />
        <port polarity="Output" name="SDC_MOSI" />
        <blockdef name="controler">
            <timestamp>2024-4-16T9:26:13</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="transmitter">
            <timestamp>2024-4-16T10:1:40</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="controler" name="XLXI_1">
            <blockpin signalname="Clk50" name="clk_in" />
            <blockpin signalname="SDC_SCK" name="sclk" />
        </block>
        <block symbolname="transmitter" name="XLXI_2">
            <blockpin signalname="SDC_SCK" name="CLK" />
            <blockpin name="TX_BGN" />
            <blockpin name="CMD_IN(47:0)" />
            <blockpin name="TX_END" />
            <blockpin signalname="SDC_MOSI" name="MOSI" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1024" y="864" name="XLXI_1" orien="R0">
        </instance>
        <branch name="Clk50">
            <wire x2="1024" y1="768" y2="768" x1="784" />
        </branch>
        <branch name="SDC_SCK">
            <wire x2="1456" y1="768" y2="768" x1="1408" />
            <wire x2="1808" y1="768" y2="768" x1="1456" />
            <wire x2="1536" y1="480" y2="480" x1="1456" />
            <wire x2="1456" y1="480" y2="768" x1="1456" />
        </branch>
        <iomarker fontsize="28" x="784" y="768" name="Clk50" orien="R180" />
        <iomarker fontsize="28" x="1808" y="768" name="SDC_SCK" orien="R0" />
        <instance x="1536" y="640" name="XLXI_2" orien="R0">
        </instance>
        <branch name="SDC_MOSI">
            <wire x2="2112" y1="608" y2="608" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="2112" y="608" name="SDC_MOSI" orien="R0" />
    </sheet>
</drawing>
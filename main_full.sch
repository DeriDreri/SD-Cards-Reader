<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="LCD_E" />
        <signal name="LCD_RS" />
        <signal name="LCD_RW" />
        <signal name="LCD_D(3:0)" />
        <signal name="SF_CE" />
        <signal name="Clk_50MHz" />
        <signal name="SDC_MOSI" />
        <signal name="SDC_SCK" />
        <signal name="SDC_SS" />
        <signal name="SDC_MISO" />
        <signal name="XLXN_23(7:0)" />
        <signal name="XLXN_24(63:0)" />
        <signal name="XLXN_25(15:0)" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="SW0" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34(47:0)" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38(47:0)" />
        <signal name="XLXN_39" />
        <port polarity="Output" name="LCD_E" />
        <port polarity="Output" name="LCD_RS" />
        <port polarity="Output" name="LCD_RW" />
        <port polarity="BiDirectional" name="LCD_D(3:0)" />
        <port polarity="Output" name="SF_CE" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Output" name="SDC_MOSI" />
        <port polarity="Output" name="SDC_SCK" />
        <port polarity="Output" name="SDC_SS" />
        <port polarity="Input" name="SDC_MISO" />
        <port polarity="Input" name="SW0" />
        <blockdef name="spi_controler">
            <timestamp>2024-4-30T8:15:18</timestamp>
            <rect width="288" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-208" y2="-208" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <rect width="64" x="0" y="-60" height="24" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <line x2="416" y1="-288" y2="-288" x1="352" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <rect width="64" x="352" y="-44" height="24" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
        </blockdef>
        <blockdef name="LCD1x64">
            <timestamp>2008-9-19T11:10:6</timestamp>
            <line x2="416" y1="-288" y2="-288" x1="352" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="-108" height="24" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
            <rect width="288" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="spi_lcd_adapter">
            <timestamp>2024-4-30T9:11:40</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="command_controler">
            <timestamp>2024-5-7T9:48:35</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-192" height="256" />
        </blockdef>
        <block symbolname="LCD1x64" name="XLXI_4">
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin name="Reset" />
            <blockpin signalname="XLXN_24(63:0)" name="Line(63:0)" />
            <blockpin signalname="XLXN_25(15:0)" name="Blank(15:0)" />
            <blockpin signalname="LCD_D(3:0)" name="LCD_D(3:0)" />
            <blockpin signalname="LCD_E" name="LCD_E" />
            <blockpin signalname="LCD_RW" name="LCD_RW" />
            <blockpin signalname="LCD_RS" name="LCD_RS" />
            <blockpin signalname="SF_CE" name="SF_CE" />
        </block>
        <block symbolname="spi_lcd_adapter" name="XLXI_5">
            <blockpin signalname="XLXN_23(7:0)" name="spi_in(7:0)" />
            <blockpin signalname="XLXN_24(63:0)" name="lcd_out(63:0)" />
            <blockpin signalname="XLXN_25(15:0)" name="blank(15:0)" />
        </block>
        <block symbolname="spi_controler" name="XLXI_3">
            <blockpin signalname="XLXN_28" name="TX_BGN" />
            <blockpin signalname="Clk_50MHz" name="CLK" />
            <blockpin signalname="SDC_MISO" name="MISO" />
            <blockpin signalname="XLXN_38(47:0)" name="CMD_IN(47:0)" />
            <blockpin signalname="XLXN_39" name="R_READY" />
            <blockpin signalname="SDC_MOSI" name="MOSI" />
            <blockpin signalname="SDC_SCK" name="SCK" />
            <blockpin signalname="SDC_SS" name="CS" />
            <blockpin signalname="XLXN_23(7:0)" name="R_OUT(7:0)" />
        </block>
        <block symbolname="command_controler" name="XLXI_8">
            <blockpin signalname="SW0" name="button" />
            <blockpin signalname="XLXN_39" name="response" />
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="XLXN_28" name="tx_bgn" />
            <blockpin signalname="XLXN_38(47:0)" name="cmd_out(47:0)" />
            <blockpin signalname="XLXN_23(7:0)" name="response_in(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2160" y="1200" name="XLXI_4" orien="R0">
        </instance>
        <branch name="LCD_E">
            <wire x2="2656" y1="912" y2="912" x1="2576" />
        </branch>
        <branch name="LCD_RS">
            <wire x2="2656" y1="976" y2="976" x1="2576" />
        </branch>
        <branch name="LCD_RW">
            <wire x2="2656" y1="1040" y2="1040" x1="2576" />
        </branch>
        <branch name="LCD_D(3:0)">
            <wire x2="2656" y1="1104" y2="1104" x1="2576" />
        </branch>
        <branch name="SF_CE">
            <wire x2="2656" y1="1168" y2="1168" x1="2576" />
        </branch>
        <iomarker fontsize="28" x="2656" y="912" name="LCD_E" orien="R0" />
        <iomarker fontsize="28" x="2656" y="976" name="LCD_RS" orien="R0" />
        <iomarker fontsize="28" x="2656" y="1040" name="LCD_RW" orien="R0" />
        <iomarker fontsize="28" x="2656" y="1104" name="LCD_D(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2656" y="1168" name="SF_CE" orien="R0" />
        <branch name="SDC_MOSI">
            <wire x2="1424" y1="1008" y2="1008" x1="1392" />
            <wire x2="1440" y1="1008" y2="1008" x1="1424" />
        </branch>
        <branch name="SDC_SCK">
            <wire x2="1424" y1="1072" y2="1072" x1="1392" />
            <wire x2="1440" y1="1072" y2="1072" x1="1424" />
        </branch>
        <branch name="SDC_SS">
            <wire x2="1424" y1="1136" y2="1136" x1="1392" />
            <wire x2="1440" y1="1136" y2="1136" x1="1424" />
        </branch>
        <branch name="SDC_MISO">
            <wire x2="960" y1="1104" y2="1104" x1="944" />
            <wire x2="976" y1="1104" y2="1104" x1="960" />
        </branch>
        <iomarker fontsize="28" x="1440" y="1072" name="SDC_SCK" orien="R0" />
        <iomarker fontsize="28" x="1440" y="1136" name="SDC_SS" orien="R0" />
        <iomarker fontsize="28" x="1440" y="1008" name="SDC_MOSI" orien="R0" />
        <iomarker fontsize="28" x="944" y="1104" name="SDC_MISO" orien="R180" />
        <branch name="Clk_50MHz">
            <wire x2="736" y1="1392" y2="1392" x1="672" />
            <wire x2="976" y1="672" y2="672" x1="736" />
            <wire x2="736" y1="672" y2="1024" x1="736" />
            <wire x2="736" y1="1024" y2="1328" x1="736" />
            <wire x2="736" y1="1328" y2="1392" x1="736" />
            <wire x2="2144" y1="1328" y2="1328" x1="736" />
            <wire x2="976" y1="1024" y2="1024" x1="736" />
            <wire x2="2160" y1="1168" y2="1168" x1="2144" />
            <wire x2="2144" y1="1168" y2="1328" x1="2144" />
        </branch>
        <instance x="1632" y="1296" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_23(7:0)">
            <wire x2="976" y1="736" y2="736" x1="656" />
            <wire x2="656" y1="736" y2="1280" x1="656" />
            <wire x2="1440" y1="1280" y2="1280" x1="656" />
            <wire x2="1440" y1="1200" y2="1200" x1="1392" />
            <wire x2="1616" y1="1200" y2="1200" x1="1440" />
            <wire x2="1632" y1="1200" y2="1200" x1="1616" />
            <wire x2="1440" y1="1200" y2="1280" x1="1440" />
        </branch>
        <branch name="XLXN_24(63:0)">
            <wire x2="2080" y1="1200" y2="1200" x1="2016" />
            <wire x2="2080" y1="912" y2="1200" x1="2080" />
            <wire x2="2160" y1="912" y2="912" x1="2080" />
        </branch>
        <branch name="XLXN_25(15:0)">
            <wire x2="2096" y1="1264" y2="1264" x1="2016" />
            <wire x2="2096" y1="976" y2="1264" x1="2096" />
            <wire x2="2160" y1="976" y2="976" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="672" y="1392" name="Clk_50MHz" orien="R180" />
        <iomarker fontsize="28" x="768" y="544" name="SW0" orien="R180" />
        <branch name="SW0">
            <wire x2="976" y1="544" y2="544" x1="768" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="960" y1="832" y2="944" x1="960" />
            <wire x2="976" y1="944" y2="944" x1="960" />
            <wire x2="1440" y1="832" y2="832" x1="960" />
            <wire x2="1440" y1="544" y2="544" x1="1360" />
            <wire x2="1440" y1="544" y2="832" x1="1440" />
        </branch>
        <instance x="976" y="1232" name="XLXI_3" orien="R0">
        </instance>
        <instance x="976" y="704" name="XLXI_8" orien="R0">
        </instance>
        <branch name="XLXN_38(47:0)">
            <wire x2="976" y1="1184" y2="1184" x1="928" />
            <wire x2="928" y1="1184" y2="1360" x1="928" />
            <wire x2="2064" y1="1360" y2="1360" x1="928" />
            <wire x2="2064" y1="672" y2="672" x1="1360" />
            <wire x2="2064" y1="672" y2="1360" x1="2064" />
        </branch>
        <branch name="XLXN_39">
            <wire x2="912" y1="432" y2="608" x1="912" />
            <wire x2="976" y1="608" y2="608" x1="912" />
            <wire x2="1408" y1="432" y2="432" x1="912" />
            <wire x2="1408" y1="432" y2="944" x1="1408" />
            <wire x2="1408" y1="944" y2="944" x1="1392" />
        </branch>
    </sheet>
</drawing>
<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Clk_50MHz" />
        <signal name="XLXN_62" />
        <signal name="XLXN_44" />
        <signal name="XLXN_52" />
        <signal name="VGA_B" />
        <signal name="VGA_G" />
        <signal name="VGA_R" />
        <signal name="VGA_VS" />
        <signal name="VGA_HS" />
        <signal name="XLXN_45(7:0)" />
        <signal name="XLXN_169" />
        <signal name="SDC_MISO" />
        <signal name="SDC_SS" />
        <signal name="SDC_SCK" />
        <signal name="SDC_MOSI" />
        <signal name="XLXN_186(47:0)" />
        <signal name="XLXN_187" />
        <signal name="XLXN_23(7:0)" />
        <signal name="XLXN_219" />
        <signal name="LCD_E" />
        <signal name="LCD_RS" />
        <signal name="LCD_RW" />
        <signal name="LCD_D(3:0)" />
        <signal name="SF_CE" />
        <signal name="XLXN_24(63:0)" />
        <signal name="XLXN_25(15:0)" />
        <signal name="XLXN_229" />
        <signal name="XLXN_230" />
        <signal name="XLXN_231(23:0)" />
        <signal name="XLXN_232" />
        <signal name="XLXN_233" />
        <signal name="XLXN_234(7:0)" />
        <signal name="PS2_Data" />
        <signal name="PS2_Clk" />
        <signal name="XLXN_284" />
        <signal name="XLXN_285" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Input" name="SDC_MISO" />
        <port polarity="Output" name="SDC_SS" />
        <port polarity="Output" name="SDC_SCK" />
        <port polarity="Output" name="SDC_MOSI" />
        <port polarity="Output" name="LCD_E" />
        <port polarity="Output" name="LCD_RS" />
        <port polarity="Output" name="LCD_RW" />
        <port polarity="BiDirectional" name="LCD_D(3:0)" />
        <port polarity="Output" name="SF_CE" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Input" name="PS2_Clk" />
        <blockdef name="spi_controler">
            <timestamp>2024-5-28T10:1:16</timestamp>
            <line x2="416" y1="224" y2="224" x1="352" />
            <line x2="416" y1="32" y2="32" x1="352" />
            <line x2="416" y1="96" y2="96" x1="352" />
            <rect width="64" x="352" y="148" height="24" />
            <line x2="416" y1="160" y2="160" x1="352" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-208" y2="-208" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <rect width="64" x="0" y="-60" height="24" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <rect width="288" x="64" y="-320" height="576" />
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
        <blockdef name="command_controler">
            <timestamp>2024-5-28T10:46:1</timestamp>
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-192" height="448" />
        </blockdef>
        <blockdef name="VGAtxt48x20">
            <timestamp>2024-5-7T10:18:54</timestamp>
            <rect width="304" x="64" y="-640" height="728" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-448" y2="-448" x1="64" />
            <line x2="0" y1="-384" y2="-384" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="64" y2="64" x1="64" />
            <line x2="0" y1="0" y2="0" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <line x2="432" y1="-608" y2="-608" x1="368" />
            <line x2="432" y1="-544" y2="-544" x1="368" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
        </blockdef>
        <blockdef name="spi_vga_adapter">
            <timestamp>2024-5-14T9:19:1</timestamp>
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-192" height="320" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="PS2_Kbd">
            <timestamp>2024-5-28T8:15:39</timestamp>
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="address_controler">
            <timestamp>2024-5-28T9:22:11</timestamp>
            <line x2="432" y1="96" y2="96" x1="368" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-108" height="24" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <rect width="304" x="64" y="-192" height="320" />
        </blockdef>
        <blockdef name="address_lcd_adapter">
            <timestamp>2024-5-28T8:55:38</timestamp>
            <rect width="336" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="400" y="-108" height="24" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <block symbolname="vcc" name="XLXI_15">
            <blockpin signalname="XLXN_219" name="P" />
        </block>
        <block symbolname="buf" name="XLXI_12">
            <blockpin signalname="XLXN_52" name="I" />
            <blockpin signalname="VGA_G" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_13">
            <blockpin signalname="XLXN_52" name="I" />
            <blockpin signalname="VGA_B" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_11">
            <blockpin signalname="XLXN_52" name="I" />
            <blockpin signalname="VGA_R" name="O" />
        </block>
        <block symbolname="VGAtxt48x20" name="XLXI_9">
            <blockpin signalname="XLXN_45(7:0)" name="Char_DI(7:0)" />
            <blockpin name="Home" />
            <blockpin name="NewLine" />
            <blockpin signalname="XLXN_62" name="Goto00" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_219" name="CursorOn" />
            <blockpin signalname="XLXN_219" name="ScrollEn" />
            <blockpin signalname="XLXN_219" name="ScrollClear" />
            <blockpin signalname="XLXN_169" name="Busy" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="XLXN_52" name="VGA_RGB" />
            <blockpin signalname="XLXN_44" name="Char_WE" />
        </block>
        <block symbolname="spi_vga_adapter" name="XLXI_10">
            <blockpin signalname="XLXN_229" name="data_ready" />
            <blockpin signalname="XLXN_169" name="vga_busy" />
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="XLXN_23(7:0)" name="data_in(7:0)" />
            <blockpin signalname="XLXN_44" name="char_ready" />
            <blockpin signalname="XLXN_45(7:0)" name="char(7:0)" />
            <blockpin signalname="XLXN_62" name="init_out" />
        </block>
        <block symbolname="command_controler" name="XLXI_8">
            <blockpin signalname="XLXN_230" name="response" />
            <blockpin signalname="XLXN_284" name="adress_ready" />
            <blockpin signalname="XLXN_285" name="data_over" />
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="XLXN_23(7:0)" name="response_in(7:0)" />
            <blockpin signalname="XLXN_231(23:0)" name="address_in(23:0)" />
            <blockpin signalname="XLXN_187" name="tx_bgn" />
            <blockpin signalname="XLXN_186(47:0)" name="cmd_out(47:0)" />
        </block>
        <block symbolname="spi_controler" name="XLXI_3">
            <blockpin signalname="XLXN_187" name="TX_BGN" />
            <blockpin signalname="Clk_50MHz" name="CLK" />
            <blockpin signalname="SDC_MISO" name="MISO" />
            <blockpin signalname="XLXN_186(47:0)" name="CMD_IN(47:0)" />
            <blockpin signalname="XLXN_230" name="RESPONSE_READY" />
            <blockpin signalname="XLXN_229" name="DATA_READY" />
            <blockpin signalname="XLXN_285" name="DATA_OVER" />
            <blockpin signalname="SDC_MOSI" name="MOSI" />
            <blockpin signalname="SDC_SCK" name="SCK" />
            <blockpin signalname="SDC_SS" name="CS" />
            <blockpin signalname="XLXN_23(7:0)" name="DATA_OUT(7:0)" />
        </block>
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
        <block symbolname="address_controler" name="XLXI_26">
            <blockpin signalname="XLXN_232" name="f0" />
            <blockpin signalname="XLXN_233" name="data_ready" />
            <blockpin signalname="Clk_50MHz" name="clk_in" />
            <blockpin signalname="XLXN_234(7:0)" name="data_in(7:0)" />
            <blockpin signalname="XLXN_231(23:0)" name="address(23:0)" />
            <blockpin signalname="XLXN_284" name="address_ready" />
        </block>
        <block symbolname="address_lcd_adapter" name="XLXI_27">
            <blockpin signalname="XLXN_231(23:0)" name="address_in(23:0)" />
            <blockpin signalname="XLXN_24(63:0)" name="lcd_out(63:0)" />
            <blockpin signalname="XLXN_25(15:0)" name="blank(15:0)" />
        </block>
        <block symbolname="PS2_Kbd" name="XLXI_16">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin name="E0" />
            <blockpin signalname="XLXN_232" name="F0" />
            <blockpin signalname="XLXN_233" name="DO_Rdy" />
            <blockpin signalname="XLXN_234(7:0)" name="DO(7:0)" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_62">
            <wire x2="2128" y1="1744" y2="1744" x1="2112" />
            <wire x2="2128" y1="1712" y2="1744" x1="2128" />
            <wire x2="2496" y1="1712" y2="1712" x1="2128" />
        </branch>
        <branch name="XLXN_44">
            <wire x2="2496" y1="1488" y2="1488" x1="2112" />
        </branch>
        <instance x="2224" y="1888" name="XLXI_15" orien="R0" />
        <instance x="3072" y="1664" name="XLXI_12" orien="R0" />
        <branch name="XLXN_52">
            <wire x2="2992" y1="1552" y2="1552" x1="2928" />
            <wire x2="2992" y1="1552" y2="1632" x1="2992" />
            <wire x2="3072" y1="1632" y2="1632" x1="2992" />
            <wire x2="2992" y1="1632" y2="1712" x1="2992" />
            <wire x2="3072" y1="1712" y2="1712" x1="2992" />
            <wire x2="3072" y1="1552" y2="1552" x1="2992" />
        </branch>
        <branch name="VGA_B">
            <wire x2="3312" y1="1712" y2="1712" x1="3296" />
        </branch>
        <branch name="VGA_G">
            <wire x2="3312" y1="1632" y2="1632" x1="3296" />
        </branch>
        <branch name="VGA_R">
            <wire x2="3312" y1="1552" y2="1552" x1="3296" />
        </branch>
        <instance x="3072" y="1744" name="XLXI_13" orien="R0" />
        <instance x="3072" y="1584" name="XLXI_11" orien="R0" />
        <branch name="VGA_VS">
            <wire x2="2976" y1="1488" y2="1488" x1="2928" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="2976" y1="1424" y2="1424" x1="2928" />
        </branch>
        <instance x="2496" y="2032" name="XLXI_9" orien="R0">
        </instance>
        <branch name="XLXN_45(7:0)">
            <wire x2="2288" y1="1616" y2="1616" x1="2112" />
            <wire x2="2288" y1="1424" y2="1616" x1="2288" />
            <wire x2="2496" y1="1424" y2="1424" x1="2288" />
        </branch>
        <instance x="1728" y="1648" name="XLXI_10" orien="R0">
        </instance>
        <branch name="XLXN_169">
            <wire x2="1728" y1="1680" y2="1680" x1="1664" />
            <wire x2="1664" y1="1680" y2="2160" x1="1664" />
            <wire x2="2960" y1="2160" y2="2160" x1="1664" />
            <wire x2="2960" y1="1680" y2="1680" x1="2928" />
            <wire x2="2960" y1="1680" y2="2160" x1="2960" />
        </branch>
        <branch name="SDC_MISO">
            <wire x2="2256" y1="272" y2="272" x1="2224" />
        </branch>
        <branch name="SDC_SS">
            <wire x2="2720" y1="304" y2="304" x1="2672" />
        </branch>
        <branch name="SDC_SCK">
            <wire x2="2720" y1="240" y2="240" x1="2672" />
        </branch>
        <branch name="SDC_MOSI">
            <wire x2="2720" y1="176" y2="176" x1="2672" />
        </branch>
        <branch name="XLXN_187">
            <wire x2="2240" y1="128" y2="128" x1="1760" />
            <wire x2="2256" y1="112" y2="112" x1="2240" />
            <wire x2="2240" y1="112" y2="128" x1="2240" />
        </branch>
        <instance x="2256" y="400" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_23(7:0)">
            <wire x2="1312" y1="320" y2="688" x1="1312" />
            <wire x2="1312" y1="688" y2="1616" x1="1312" />
            <wire x2="1728" y1="1616" y2="1616" x1="1312" />
            <wire x2="2752" y1="688" y2="688" x1="1312" />
            <wire x2="1376" y1="320" y2="320" x1="1312" />
            <wire x2="2752" y1="560" y2="560" x1="2672" />
            <wire x2="2752" y1="560" y2="688" x1="2752" />
        </branch>
        <iomarker fontsize="28" x="3312" y="1712" name="VGA_B" orien="R0" />
        <iomarker fontsize="28" x="3312" y="1632" name="VGA_G" orien="R0" />
        <iomarker fontsize="28" x="3312" y="1552" name="VGA_R" orien="R0" />
        <iomarker fontsize="28" x="2976" y="1488" name="VGA_VS" orien="R0" />
        <iomarker fontsize="28" x="2976" y="1424" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="2720" y="176" name="SDC_MOSI" orien="R0" />
        <iomarker fontsize="28" x="2720" y="240" name="SDC_SCK" orien="R0" />
        <iomarker fontsize="28" x="2720" y="304" name="SDC_SS" orien="R0" />
        <iomarker fontsize="28" x="2224" y="272" name="SDC_MISO" orien="R180" />
        <iomarker fontsize="28" x="1072" y="1264" name="Clk_50MHz" orien="R180" />
        <branch name="XLXN_219">
            <wire x2="2288" y1="1888" y2="1920" x1="2288" />
            <wire x2="2384" y1="1920" y2="1920" x1="2288" />
            <wire x2="2384" y1="1872" y2="1920" x1="2384" />
            <wire x2="2480" y1="1872" y2="1872" x1="2384" />
            <wire x2="2480" y1="1872" y2="1936" x1="2480" />
            <wire x2="2496" y1="1936" y2="1936" x1="2480" />
            <wire x2="2496" y1="1872" y2="1872" x1="2480" />
            <wire x2="2496" y1="1808" y2="1808" x1="2480" />
            <wire x2="2480" y1="1808" y2="1872" x1="2480" />
        </branch>
        <branch name="LCD_E">
            <wire x2="1456" y1="2256" y2="2256" x1="1376" />
        </branch>
        <branch name="LCD_RS">
            <wire x2="1456" y1="2320" y2="2320" x1="1376" />
        </branch>
        <branch name="LCD_RW">
            <wire x2="1456" y1="2384" y2="2384" x1="1376" />
        </branch>
        <branch name="LCD_D(3:0)">
            <wire x2="1456" y1="2448" y2="2448" x1="1376" />
        </branch>
        <branch name="SF_CE">
            <wire x2="1456" y1="2512" y2="2512" x1="1376" />
        </branch>
        <branch name="XLXN_24(63:0)">
            <wire x2="816" y1="2512" y2="2512" x1="672" />
            <wire x2="816" y1="2512" y2="2544" x1="816" />
            <wire x2="880" y1="2544" y2="2544" x1="816" />
            <wire x2="880" y1="2256" y2="2544" x1="880" />
            <wire x2="960" y1="2256" y2="2256" x1="880" />
        </branch>
        <branch name="XLXN_25(15:0)">
            <wire x2="816" y1="2576" y2="2576" x1="672" />
            <wire x2="816" y1="2576" y2="2608" x1="816" />
            <wire x2="896" y1="2608" y2="2608" x1="816" />
            <wire x2="896" y1="2320" y2="2608" x1="896" />
            <wire x2="960" y1="2320" y2="2320" x1="896" />
        </branch>
        <instance x="960" y="2544" name="XLXI_4" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1456" y="2256" name="LCD_E" orien="R0" />
        <iomarker fontsize="28" x="1456" y="2320" name="LCD_RS" orien="R0" />
        <iomarker fontsize="28" x="1456" y="2384" name="LCD_RW" orien="R0" />
        <iomarker fontsize="28" x="1456" y="2448" name="LCD_D(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1456" y="2512" name="SF_CE" orien="R0" />
        <branch name="XLXN_229">
            <wire x2="1648" y1="1376" y2="1488" x1="1648" />
            <wire x2="1728" y1="1488" y2="1488" x1="1648" />
            <wire x2="1808" y1="1376" y2="1376" x1="1648" />
            <wire x2="1808" y1="1056" y2="1376" x1="1808" />
            <wire x2="2736" y1="1056" y2="1056" x1="1808" />
            <wire x2="2736" y1="432" y2="432" x1="2672" />
            <wire x2="2736" y1="432" y2="1056" x1="2736" />
        </branch>
        <instance x="208" y="2608" name="XLXI_27" orien="R0">
        </instance>
        <instance x="176" y="2304" name="XLXI_26" orien="R0">
        </instance>
        <branch name="XLXN_234(7:0)">
            <wire x2="176" y1="2272" y2="2272" x1="128" />
            <wire x2="128" y1="2272" y2="2432" x1="128" />
            <wire x2="816" y1="2432" y2="2432" x1="128" />
            <wire x2="816" y1="1808" y2="1808" x1="672" />
            <wire x2="816" y1="1808" y2="2432" x1="816" />
        </branch>
        <branch name="XLXN_232">
            <wire x2="176" y1="2144" y2="2144" x1="112" />
            <wire x2="112" y1="2144" y2="2448" x1="112" />
            <wire x2="768" y1="2448" y2="2448" x1="112" />
            <wire x2="768" y1="1936" y2="1936" x1="672" />
            <wire x2="768" y1="1936" y2="2448" x1="768" />
        </branch>
        <branch name="XLXN_233">
            <wire x2="128" y1="2048" y2="2208" x1="128" />
            <wire x2="176" y1="2208" y2="2208" x1="128" />
            <wire x2="688" y1="2048" y2="2048" x1="128" />
            <wire x2="688" y1="2000" y2="2000" x1="672" />
            <wire x2="688" y1="2000" y2="2048" x1="688" />
        </branch>
        <iomarker fontsize="28" x="208" y="1872" name="PS2_Data" orien="R180" />
        <iomarker fontsize="28" x="176" y="1808" name="PS2_Clk" orien="R180" />
        <branch name="PS2_Data">
            <wire x2="288" y1="1872" y2="1872" x1="208" />
        </branch>
        <branch name="PS2_Clk">
            <wire x2="288" y1="1808" y2="1808" x1="176" />
        </branch>
        <instance x="288" y="2032" name="XLXI_16" orien="R0">
        </instance>
        <branch name="XLXN_186(47:0)">
            <wire x2="2000" y1="256" y2="256" x1="1760" />
            <wire x2="2000" y1="256" y2="352" x1="2000" />
            <wire x2="2256" y1="352" y2="352" x1="2000" />
        </branch>
        <branch name="XLXN_231(23:0)">
            <wire x2="208" y1="2512" y2="2512" x1="192" />
            <wire x2="192" y1="2512" y2="2672" x1="192" />
            <wire x2="752" y1="2672" y2="2672" x1="192" />
            <wire x2="752" y1="2208" y2="2208" x1="608" />
            <wire x2="752" y1="2208" y2="2672" x1="752" />
            <wire x2="752" y1="384" y2="2208" x1="752" />
            <wire x2="1376" y1="384" y2="384" x1="752" />
        </branch>
        <branch name="XLXN_230">
            <wire x2="1328" y1="192" y2="720" x1="1328" />
            <wire x2="2688" y1="720" y2="720" x1="1328" />
            <wire x2="1376" y1="192" y2="192" x1="1328" />
            <wire x2="2688" y1="624" y2="624" x1="2672" />
            <wire x2="2688" y1="624" y2="720" x1="2688" />
        </branch>
        <instance x="1376" y="288" name="XLXI_8" orien="R0">
        </instance>
        <branch name="Clk_50MHz">
            <wire x2="160" y1="1936" y2="2336" x1="160" />
            <wire x2="176" y1="2336" y2="2336" x1="160" />
            <wire x2="256" y1="1936" y2="1936" x1="160" />
            <wire x2="256" y1="1936" y2="2000" x1="256" />
            <wire x2="288" y1="2000" y2="2000" x1="256" />
            <wire x2="288" y1="1936" y2="1936" x1="256" />
            <wire x2="256" y1="1552" y2="1936" x1="256" />
            <wire x2="1136" y1="1552" y2="1552" x1="256" />
            <wire x2="1136" y1="1552" y2="2032" x1="1136" />
            <wire x2="2400" y1="2032" y2="2032" x1="1136" />
            <wire x2="2400" y1="2032" y2="2096" x1="2400" />
            <wire x2="2496" y1="2096" y2="2096" x1="2400" />
            <wire x2="2496" y1="2032" y2="2032" x1="2400" />
            <wire x2="1728" y1="1552" y2="1552" x1="1136" />
            <wire x2="912" y1="2032" y2="2528" x1="912" />
            <wire x2="944" y1="2528" y2="2528" x1="912" />
            <wire x2="1136" y1="2032" y2="2032" x1="912" />
            <wire x2="960" y1="2512" y2="2512" x1="944" />
            <wire x2="944" y1="2512" y2="2528" x1="944" />
            <wire x2="1136" y1="1264" y2="1264" x1="1072" />
            <wire x2="1136" y1="1264" y2="1552" x1="1136" />
            <wire x2="1376" y1="256" y2="256" x1="1136" />
            <wire x2="1136" y1="256" y2="608" x1="1136" />
            <wire x2="1136" y1="608" y2="1264" x1="1136" />
            <wire x2="2016" y1="608" y2="608" x1="1136" />
            <wire x2="2256" y1="192" y2="192" x1="2016" />
            <wire x2="2016" y1="192" y2="608" x1="2016" />
        </branch>
        <branch name="XLXN_285">
            <wire x2="1376" y1="512" y2="512" x1="1296" />
            <wire x2="1296" y1="512" y2="704" x1="1296" />
            <wire x2="2720" y1="704" y2="704" x1="1296" />
            <wire x2="2720" y1="496" y2="496" x1="2672" />
            <wire x2="2720" y1="496" y2="704" x1="2720" />
        </branch>
        <branch name="XLXN_284">
            <wire x2="736" y1="2400" y2="2400" x1="608" />
            <wire x2="1376" y1="448" y2="448" x1="736" />
            <wire x2="736" y1="448" y2="2048" x1="736" />
            <wire x2="736" y1="2048" y2="2400" x1="736" />
        </branch>
    </sheet>
</drawing>
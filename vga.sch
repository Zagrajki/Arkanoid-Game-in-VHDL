<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(2:0)" />
        <signal name="XLXN_2(8:0)" />
        <signal name="XLXN_3(9:0)" />
        <signal name="CLK_50MHZ" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="VGA_RDY" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18(7:0)" />
        <signal name="XLXN_19" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_29" />
        <port polarity="Input" name="CLK_50MHZ" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_RDY" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="PS2_Data" />
        <blockdef name="vga_driver1">
            <timestamp>2021-3-22T21:18:32</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="PS2_Kbd">
            <timestamp>2008-9-19T9:9:36</timestamp>
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
        <blockdef name="game3">
            <timestamp>2021-5-14T6:50:17</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
        </blockdef>
        <block symbolname="vga_driver1" name="XLXI_15">
            <blockpin signalname="CLK_50MHZ" name="CLK_50MHZ" />
            <blockpin signalname="XLXN_1(2:0)" name="RGB(2:0)" />
            <blockpin signalname="VGA_R" name="VGA_R" />
            <blockpin signalname="VGA_G" name="VGA_G" />
            <blockpin signalname="VGA_B" name="VGA_B" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="VGA_RDY" name="RDY" />
            <blockpin signalname="XLXN_3(9:0)" name="PIX_X(9:0)" />
            <blockpin signalname="XLXN_2(8:0)" name="PIX_Y(8:0)" />
        </block>
        <block symbolname="PS2_Kbd" name="XLXI_16">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="CLK_50MHZ" name="Clk_50MHz" />
            <blockpin name="E0" />
            <blockpin signalname="XLXN_24" name="F0" />
            <blockpin signalname="XLXN_26" name="DO_Rdy" />
            <blockpin signalname="XLXN_18(7:0)" name="DO(7:0)" />
            <blockpin signalname="CLK_50MHZ" name="Clk_Sys" />
        </block>
        <block symbolname="game3" name="XLXI_19">
            <blockpin signalname="VGA_RDY" name="RDY" />
            <blockpin signalname="XLXN_26" name="DO_RDY" />
            <blockpin signalname="XLXN_24" name="FO" />
            <blockpin signalname="XLXN_18(7:0)" name="DO(7:0)" />
            <blockpin signalname="XLXN_3(9:0)" name="PIX_X(9:0)" />
            <blockpin signalname="XLXN_2(8:0)" name="PIX_Y(8:0)" />
            <blockpin signalname="XLXN_1(2:0)" name="RGB(2:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_1(2:0)">
            <wire x2="1456" y1="976" y2="976" x1="1424" />
            <wire x2="1456" y1="976" y2="1040" x1="1456" />
            <wire x2="1456" y1="1040" y2="1232" x1="1456" />
            <wire x2="1520" y1="1232" y2="1232" x1="1456" />
        </branch>
        <branch name="VGA_R">
            <wire x2="1920" y1="784" y2="784" x1="1904" />
        </branch>
        <branch name="VGA_G">
            <wire x2="1920" y1="848" y2="848" x1="1904" />
        </branch>
        <branch name="VGA_B">
            <wire x2="1920" y1="912" y2="912" x1="1904" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="1920" y1="976" y2="976" x1="1904" />
        </branch>
        <branch name="VGA_VS">
            <wire x2="1920" y1="1040" y2="1040" x1="1904" />
        </branch>
        <iomarker fontsize="28" x="1920" y="976" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="1920" y="1040" name="VGA_VS" orien="R0" />
        <iomarker fontsize="28" x="1920" y="912" name="VGA_B" orien="R0" />
        <iomarker fontsize="28" x="1920" y="848" name="VGA_G" orien="R0" />
        <iomarker fontsize="28" x="1920" y="784" name="VGA_R" orien="R0" />
        <instance x="1520" y="1264" name="XLXI_15" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2256" y="1104" name="VGA_RDY" orien="R0" />
        <iomarker fontsize="28" x="224" y="704" name="CLK_50MHZ" orien="R180" />
        <iomarker fontsize="28" x="192" y="784" name="PS2_Clk" orien="R180" />
        <iomarker fontsize="28" x="208" y="848" name="PS2_Data" orien="R180" />
        <branch name="CLK_50MHZ">
            <wire x2="432" y1="704" y2="704" x1="224" />
            <wire x2="1504" y1="704" y2="704" x1="432" />
            <wire x2="1504" y1="704" y2="784" x1="1504" />
            <wire x2="1520" y1="784" y2="784" x1="1504" />
            <wire x2="432" y1="704" y2="912" x1="432" />
            <wire x2="464" y1="912" y2="912" x1="432" />
            <wire x2="432" y1="912" y2="976" x1="432" />
            <wire x2="464" y1="976" y2="976" x1="432" />
        </branch>
        <branch name="PS2_Data">
            <wire x2="464" y1="848" y2="848" x1="208" />
        </branch>
        <branch name="PS2_Clk">
            <wire x2="464" y1="784" y2="784" x1="192" />
        </branch>
        <instance x="464" y="1008" name="XLXI_16" orien="R0">
        </instance>
        <branch name="XLXN_18(7:0)">
            <wire x2="864" y1="784" y2="784" x1="848" />
            <wire x2="1008" y1="784" y2="784" x1="864" />
            <wire x2="1008" y1="784" y2="1168" x1="1008" />
            <wire x2="1040" y1="1168" y2="1168" x1="1008" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="864" y1="912" y2="912" x1="848" />
            <wire x2="944" y1="912" y2="912" x1="864" />
            <wire x2="944" y1="912" y2="1104" x1="944" />
            <wire x2="1040" y1="1104" y2="1104" x1="944" />
        </branch>
        <branch name="XLXN_2(8:0)">
            <wire x2="912" y1="1296" y2="1392" x1="912" />
            <wire x2="1968" y1="1392" y2="1392" x1="912" />
            <wire x2="1040" y1="1296" y2="1296" x1="912" />
            <wire x2="1920" y1="1232" y2="1232" x1="1904" />
            <wire x2="1968" y1="1232" y2="1232" x1="1920" />
            <wire x2="1968" y1="1232" y2="1392" x1="1968" />
        </branch>
        <branch name="XLXN_3(9:0)">
            <wire x2="896" y1="1232" y2="1408" x1="896" />
            <wire x2="2000" y1="1408" y2="1408" x1="896" />
            <wire x2="1040" y1="1232" y2="1232" x1="896" />
            <wire x2="1920" y1="1168" y2="1168" x1="1904" />
            <wire x2="2000" y1="1168" y2="1168" x1="1920" />
            <wire x2="2000" y1="1168" y2="1408" x1="2000" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="864" y1="976" y2="976" x1="848" />
            <wire x2="864" y1="976" y2="1040" x1="864" />
            <wire x2="1040" y1="1040" y2="1040" x1="864" />
        </branch>
        <branch name="VGA_RDY">
            <wire x2="1024" y1="976" y2="1376" x1="1024" />
            <wire x2="2064" y1="1376" y2="1376" x1="1024" />
            <wire x2="1040" y1="976" y2="976" x1="1024" />
            <wire x2="2064" y1="1104" y2="1104" x1="1904" />
            <wire x2="2256" y1="1104" y2="1104" x1="2064" />
            <wire x2="2064" y1="1104" y2="1376" x1="2064" />
        </branch>
        <instance x="1040" y="1328" name="XLXI_19" orien="R0">
        </instance>
    </sheet>
</drawing>
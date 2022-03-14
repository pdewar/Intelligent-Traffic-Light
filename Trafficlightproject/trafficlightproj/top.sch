<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="FY" />
        <signal name="FR" />
        <signal name="FG" />
        <signal name="HY" />
        <signal name="HR" />
        <signal name="HG" />
        <signal name="speed(3)" />
        <signal name="speed(5)" />
        <signal name="speed(5:0)" />
        <signal name="sensor" />
        <signal name="reset" />
        <signal name="clock" />
        <signal name="XLXN_8" />
        <signal name="XLXN_7" />
        <signal name="XLXN_5" />
        <signal name="XLXN_4" />
        <signal name="XLXN_3" />
        <signal name="XLXN_2" />
        <signal name="XLXN_43" />
        <signal name="XLXN_44" />
        <signal name="TG" />
        <signal name="TR" />
        <signal name="XLXN_49" />
        <signal name="sensort" />
        <port polarity="Output" name="FY" />
        <port polarity="Output" name="FR" />
        <port polarity="Output" name="FG" />
        <port polarity="Output" name="HY" />
        <port polarity="Output" name="HR" />
        <port polarity="Output" name="HG" />
        <port polarity="Input" name="sensor" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="clock" />
        <port polarity="Output" name="TG" />
        <port polarity="Output" name="TR" />
        <port polarity="Input" name="sensort" />
        <blockdef name="slow_clock">
            <timestamp>2021-11-20T23:28:31</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="state_machine">
            <timestamp>2021-11-21T5:10:30</timestamp>
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-320" height="640" />
        </blockdef>
        <blockdef name="d2_4e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="vcc" name="XLXI_5">
            <blockpin signalname="XLXN_8" name="P" />
        </block>
        <block symbolname="slow_clock" name="XLXI_1">
            <blockpin signalname="clock" name="clock" />
            <blockpin signalname="XLXN_7" name="clear" />
            <blockpin signalname="speed(5:0)" name="speed(5:0)" />
        </block>
        <block symbolname="d2_4e" name="XLXI_3">
            <blockpin signalname="XLXN_5" name="A0" />
            <blockpin signalname="XLXN_4" name="A1" />
            <blockpin signalname="XLXN_8" name="E" />
            <blockpin signalname="FG" name="D0" />
            <blockpin signalname="FR" name="D1" />
            <blockpin signalname="FY" name="D2" />
            <blockpin signalname="XLXN_49" name="D3" />
        </block>
        <block symbolname="d2_4e" name="XLXI_4">
            <blockpin signalname="XLXN_2" name="A0" />
            <blockpin signalname="XLXN_3" name="A1" />
            <blockpin signalname="XLXN_8" name="E" />
            <blockpin signalname="HG" name="D0" />
            <blockpin signalname="HR" name="D1" />
            <blockpin signalname="HY" name="D2" />
            <blockpin signalname="XLXN_49" name="D3" />
        </block>
        <block symbolname="d2_4e" name="XLXI_25">
            <blockpin signalname="XLXN_43" name="A0" />
            <blockpin signalname="XLXN_44" name="A1" />
            <blockpin signalname="XLXN_8" name="E" />
            <blockpin signalname="TG" name="D0" />
            <blockpin signalname="TR" name="D1" />
            <blockpin signalname="XLXN_49" name="D2" />
            <blockpin signalname="XLXN_49" name="D3" />
        </block>
        <block symbolname="gnd" name="XLXI_26">
            <blockpin signalname="XLXN_49" name="G" />
        </block>
        <block symbolname="state_machine" name="XLXI_28">
            <blockpin signalname="clock" name="clock" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="sensor" name="sensor" />
            <blockpin signalname="sensort" name="sensort" />
            <blockpin signalname="speed(5)" name="long" />
            <blockpin signalname="speed(3)" name="short" />
            <blockpin signalname="XLXN_3" name="HL1" />
            <blockpin signalname="XLXN_2" name="HL0" />
            <blockpin signalname="XLXN_4" name="FL1" />
            <blockpin signalname="XLXN_5" name="FL0" />
            <blockpin signalname="XLXN_43" name="TL0" />
            <blockpin signalname="XLXN_44" name="TL1" />
            <blockpin signalname="XLXN_7" name="clear" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <iomarker fontsize="28" x="128" y="704" name="clock" orien="R180" />
        <iomarker fontsize="28" x="1776" y="1168" name="FY" orien="R0" />
        <iomarker fontsize="28" x="1776" y="1104" name="FR" orien="R0" />
        <iomarker fontsize="28" x="1776" y="1040" name="FG" orien="R0" />
        <iomarker fontsize="28" x="1776" y="720" name="HY" orien="R0" />
        <iomarker fontsize="28" x="1776" y="656" name="HR" orien="R0" />
        <iomarker fontsize="28" x="1776" y="592" name="HG" orien="R0" />
        <iomarker fontsize="28" x="368" y="928" name="sensor" orien="R180" />
        <iomarker fontsize="28" x="368" y="864" name="reset" orien="R180" />
        <bustap x2="688" y1="1056" y2="1056" x1="592" />
        <bustap x2="688" y1="992" y2="992" x1="592" />
        <instance x="160" y="800" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1360" y="1360" name="XLXI_3" orien="R0" />
        <instance x="1360" y="912" name="XLXI_4" orien="R0" />
        <branch name="FY">
            <wire x2="1776" y1="1168" y2="1168" x1="1744" />
        </branch>
        <branch name="FR">
            <wire x2="1776" y1="1104" y2="1104" x1="1744" />
        </branch>
        <branch name="FG">
            <wire x2="1776" y1="1040" y2="1040" x1="1744" />
        </branch>
        <branch name="HY">
            <wire x2="1776" y1="720" y2="720" x1="1744" />
        </branch>
        <branch name="HR">
            <wire x2="1776" y1="656" y2="656" x1="1744" />
        </branch>
        <branch name="HG">
            <wire x2="1776" y1="592" y2="592" x1="1744" />
        </branch>
        <branch name="speed(3)">
            <wire x2="704" y1="1056" y2="1056" x1="688" />
            <wire x2="720" y1="1056" y2="1056" x1="704" />
        </branch>
        <branch name="speed(5)">
            <wire x2="704" y1="992" y2="992" x1="688" />
            <wire x2="720" y1="992" y2="992" x1="704" />
        </branch>
        <branch name="speed(5:0)">
            <wire x2="592" y1="704" y2="704" x1="544" />
            <wire x2="592" y1="704" y2="992" x1="592" />
            <wire x2="592" y1="992" y2="1056" x1="592" />
            <wire x2="592" y1="1056" y2="1120" x1="592" />
        </branch>
        <branch name="sensor">
            <wire x2="384" y1="928" y2="928" x1="368" />
            <wire x2="720" y1="928" y2="928" x1="384" />
        </branch>
        <branch name="reset">
            <wire x2="384" y1="864" y2="864" x1="368" />
            <wire x2="720" y1="864" y2="864" x1="384" />
        </branch>
        <branch name="clock">
            <wire x2="144" y1="704" y2="704" x1="128" />
            <wire x2="160" y1="704" y2="704" x1="144" />
            <wire x2="640" y1="576" y2="576" x1="144" />
            <wire x2="640" y1="576" y2="800" x1="640" />
            <wire x2="720" y1="800" y2="800" x1="640" />
            <wire x2="144" y1="576" y2="704" x1="144" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="112" y1="768" y2="1360" x1="112" />
            <wire x2="1136" y1="1360" y2="1360" x1="112" />
            <wire x2="144" y1="768" y2="768" x1="112" />
            <wire x2="160" y1="768" y2="768" x1="144" />
            <wire x2="1136" y1="1056" y2="1056" x1="1104" />
            <wire x2="1136" y1="1056" y2="1360" x1="1136" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1216" y1="992" y2="992" x1="1104" />
            <wire x2="1216" y1="992" y2="1040" x1="1216" />
            <wire x2="1344" y1="1040" y2="1040" x1="1216" />
            <wire x2="1360" y1="1040" y2="1040" x1="1344" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1232" y1="928" y2="928" x1="1104" />
            <wire x2="1232" y1="928" y2="1104" x1="1232" />
            <wire x2="1344" y1="1104" y2="1104" x1="1232" />
            <wire x2="1360" y1="1104" y2="1104" x1="1344" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1120" y1="800" y2="800" x1="1104" />
            <wire x2="1216" y1="800" y2="800" x1="1120" />
            <wire x2="1216" y1="656" y2="800" x1="1216" />
            <wire x2="1344" y1="656" y2="656" x1="1216" />
            <wire x2="1360" y1="656" y2="656" x1="1344" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1120" y1="864" y2="864" x1="1104" />
            <wire x2="1232" y1="864" y2="864" x1="1120" />
            <wire x2="1232" y1="592" y2="864" x1="1232" />
            <wire x2="1344" y1="592" y2="592" x1="1232" />
            <wire x2="1360" y1="592" y2="592" x1="1344" />
        </branch>
        <instance x="1376" y="1792" name="XLXI_25" orien="R0" />
        <branch name="XLXN_43">
            <wire x2="1200" y1="1120" y2="1120" x1="1104" />
            <wire x2="1200" y1="1120" y2="1472" x1="1200" />
            <wire x2="1360" y1="1472" y2="1472" x1="1200" />
            <wire x2="1376" y1="1472" y2="1472" x1="1360" />
        </branch>
        <branch name="XLXN_44">
            <wire x2="1184" y1="1184" y2="1184" x1="1104" />
            <wire x2="1184" y1="1184" y2="1536" x1="1184" />
            <wire x2="1360" y1="1536" y2="1536" x1="1184" />
            <wire x2="1376" y1="1536" y2="1536" x1="1360" />
        </branch>
        <branch name="TG">
            <wire x2="1776" y1="1472" y2="1472" x1="1760" />
        </branch>
        <branch name="TR">
            <wire x2="1776" y1="1536" y2="1536" x1="1760" />
        </branch>
        <instance x="1952" y="1792" name="XLXI_26" orien="R0" />
        <branch name="XLXN_49">
            <wire x2="2016" y1="784" y2="784" x1="1744" />
            <wire x2="2016" y1="784" y2="1232" x1="2016" />
            <wire x2="2016" y1="1232" y2="1600" x1="2016" />
            <wire x2="2016" y1="1600" y2="1664" x1="2016" />
            <wire x2="2016" y1="1232" y2="1232" x1="1744" />
            <wire x2="1904" y1="1600" y2="1600" x1="1760" />
            <wire x2="2016" y1="1600" y2="1600" x1="1904" />
            <wire x2="1904" y1="1600" y2="1664" x1="1904" />
            <wire x2="1904" y1="1664" y2="1664" x1="1760" />
        </branch>
        <instance x="720" y="1088" name="XLXI_28" orien="R0">
        </instance>
        <instance x="1136" y="1776" name="XLXI_5" orien="R270" />
        <branch name="XLXN_8">
            <wire x2="1168" y1="1712" y2="1712" x1="1136" />
            <wire x2="1168" y1="1296" y2="1712" x1="1168" />
            <wire x2="1312" y1="1296" y2="1296" x1="1168" />
            <wire x2="1312" y1="1296" y2="1664" x1="1312" />
            <wire x2="1376" y1="1664" y2="1664" x1="1312" />
            <wire x2="1360" y1="784" y2="784" x1="1312" />
            <wire x2="1312" y1="784" y2="1232" x1="1312" />
            <wire x2="1312" y1="1232" y2="1296" x1="1312" />
            <wire x2="1360" y1="1232" y2="1232" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="1776" y="1472" name="TG" orien="R0" />
        <iomarker fontsize="28" x="1776" y="1536" name="TR" orien="R0" />
        <branch name="sensort">
            <wire x2="720" y1="1248" y2="1248" x1="640" />
        </branch>
        <iomarker fontsize="28" x="640" y="1248" name="sensort" orien="R180" />
    </sheet>
</drawing>
simSetSimulator "-vcssv" -exec "./simv" -args " " -uvmDebug on
debImport "-i" "-simflow" "-dbdir" "./simv.daidir"
srcTBInvokeSim
verdiSetActWin -dock widgetDock_<Member>
verdiWindowResize -win $_Verdi_1 "500" "182" "900" "700"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "rca_tb.dut" -win $_nTrace1
srcTBRunSim
wvCreateWindow
verdiSetActWin -win $_nWave3
wvGetSignalOpen -win $_nWave3
wvGetSignalSetScope -win $_nWave3 "/rca_tb"
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/rca_tb/a\[3:0\]} \
{/rca_tb/b\[3:0\]} \
{/rca_tb/cin} \
{/rca_tb/s\[3:0\]} \
{/rca_tb/cout} \
}
wvAddSignal -win $_nWave3 -group {"G2" \
}
wvSelectSignal -win $_nWave3 {( "G1" 5 )} 
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/rca_tb/a\[3:0\]} \
{/rca_tb/b\[3:0\]} \
{/rca_tb/cin} \
{/rca_tb/s\[3:0\]} \
{/rca_tb/cout} \
}
wvAddSignal -win $_nWave3 -group {"G2" \
}
wvSelectSignal -win $_nWave3 {( "G1" 5 )} 
wvSetPosition -win $_nWave3 {("G1" 5)}
wvGetSignalClose -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomAll -win $_nWave3
wvSearchNext -win $_nWave3
wvSearchNext -win $_nWave3
wvSearchPrev -win $_nWave3
wvSearchPrev -win $_nWave3
wvSearchPrev -win $_nWave3
wvSetCursor -win $_nWave3 29.094727 -snap {("G1" 0)}
wvZoomOut -win $_nWave3
wvSetCursor -win $_nWave3 66.261980 -snap {("G2" 0)}
debExit

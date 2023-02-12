catonetworksvpn)
    name="Cato Networks VPN"
    type="pkg"
    downloadURL="https://myvpn.catonetworks.com/public/clients/CatoClient.pkg"
    appNewVersion=$( curl -fsIL "${downloadURL}" | grep -i "^location" | awk '{print $2}' | sed -E 's/.*\/[0-9a-zA-Z]*-([0-9.]*)\..*/\1/g' )
    expectedTeamID="CKGSB8CH43"
    blockingProcesses=( "CatoClient" )
    #forcefulQuit=YES
    ;;

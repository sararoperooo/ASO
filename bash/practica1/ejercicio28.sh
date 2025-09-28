#!bin/bash
info_red(){
  interfaz=$(ip route | grep '^default' | awk '{print $5}' | head -n1)
  ip_addr=$(ip -4 addr show "$interfaz" | grep inet |awk '{print "$2"} | head .n1)
  if [[ -x "$ip_addr" ]]; then
     echo "No se pudo obtener la dirección ip"
  fi
  eval $(ipcalc -n -b -m "$ip_addr")
  echo "Interfaz "$interfaz""
  echo "direccion IP "$ip_addr""
  echo "Red "$NETWORK""
  echo "Red"$BROADCAST""
  echo "Mascara "$NETMASK"
}
ecanear_red(){
  for ip in $((nmap -sL -m $NETWORK/$NETMASK | awk '/Nmap scan report/{print $NF}' | grep -v '^$')); do
    if ping 
}

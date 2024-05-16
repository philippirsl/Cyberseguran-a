param($ip)
if(!$ip){
    echo "PORTSCAN - Escaneamento de Portas"
    echo ".\portscan.ps1 inserir_ip"
} else {
foreach ($porta in 1..1024){
if (Test-NetConnection $ip -Port $porta -WarningAction SilentlyContinue -InformationLevel Quiet) {
    echo "Porta $porta Aberta"
}} else {
    echo "Porta $porta Fechada"
}
}

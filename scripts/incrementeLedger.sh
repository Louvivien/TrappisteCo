#!/bin/bash 


printf '\nadd Stock Biere data\n'
peer chaincode invoke -o orderer0.trappiste.fr:7050 --tls true --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/trappiste.fr/orderers/orderer0.trappiste.fr/msp/tlscacerts/tlsca.trappiste.fr-cert.pem  -C channel-magasin -n chaincode-trappiste -c '{"Args":["updateBiere", "Biere0","Chimay Bleu","200", "123456786", "0.18", "2.1"]}'
peer chaincode invoke -o orderer0.trappiste.fr:7050 --tls true --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/trappiste.fr/orderers/orderer0.trappiste.fr/msp/tlscacerts/tlsca.trappiste.fr-cert.pem  -C channel-magasin -n chainecode-trappiste -c '{"Args":["updateBiere", "Biere1","Chimay Rouge","200", "123456787", "0.19", "2.2"]}'
peer chaincode invoke -o orderer0.trappiste.fr:7050 --tls true --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/trappiste.fr/orderers/orderer0.trappiste.fr/msp/tlscacerts/tlsca.trappiste.fr-cert.pem  -C channel-magasin -n chainecode-trappiste -c '{"Args":["updateBiere", "Biere2","Chimay Dorée","200", "123456788", "0.20", "2.3"]}'
peer chaincode invoke -o orderer0.trappiste.fr:7050 --tls true --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/trappiste.fr/orderers/orderer0.trappiste.fr/msp/tlscacerts/tlsca.trappiste.fr-cert.pem  -C channel-magasin -n chainecode-trappiste -c '{"Args":["updateBiere", "Biere3","Chimay Triple","200", "123456789", "0.21", "2.4"]}'
    

printf '\nadd Vente data\n'
peer chaincode invoke -o orderer0.trappiste.fr:7050 --tls true --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/trappiste.fr/orderers/orderer0.trappiste.fr/msp/tlscacerts/tlsca.trappiste.fr-cert.pem  -C channel-magasin -n chainecode-trappiste -c '{"Args":["updateVente","Vente0" , "Reduction158", "1578482510" ,"{\"Biere3\" : 12, \"Biere0\" : 3}" ,"11.95"]}'
peer chaincode invoke -o orderer0.trappiste.fr:7050 --tls true --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/trappiste.fr/orderers/orderer0.trappiste.fr/msp/tlscacerts/tlsca.trappiste.fr-cert.pem  -C channel-magasin -n chainecode-trappiste -c '{"Args":["updateVente","Vente1" , "", "1578482510" ,"{\"Biere1\" : 6, \"Biere2\" : 12}" ,"15.95"]}'
peer chaincode invoke -o orderer0.trappiste.fr:7050 --tls true --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/trappiste.fr/orderers/orderer0.trappiste.fr/msp/tlscacerts/tlsca.trappiste.fr-cert.pem  -C channel-magasin -n chainecode-trappiste -c '{"Args":["updateVente","Vente2" , "Reduction45", "1578482510" ,"{\"Biere0\" : 9 }", "11.95"]}'

printf '\naddConsigne'
peer chaincode invoke -o orderer0.trappiste.fr:7050 --tls true --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/trappiste.fr/orderers/orderer0.trappiste.fr/msp/tlscacerts/tlsca.trappiste.fr-cert.pem  -C channel-magasin -n chainecode-trappiste -c '{"Args":["updateConsigne","Consigne0","Biere0","9"]}'
peer chaincode invoke -o orderer0.trappiste.fr:7050 --tls true --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/trappiste.fr/orderers/orderer0.trappiste.fr/msp/tlscacerts/tlsca.trappiste.fr-cert.pem  -C channel-magasin -n chainecode-trappiste -c '{"Args":["updateConsigne","Consigne1","Biere1","18"]}'
peer chaincode invoke -o orderer0.trappiste.fr:7050 --tls true --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/trappiste.fr/orderers/orderer0.trappiste.fr/msp/tlscacerts/tlsca.trappiste.fr-cert.pem  -C channel-magasin -n chainecode-trappiste -c '{"Args":["updateConsigne","Consigne2","Biere3","12"]}'
peer chaincode invoke -o orderer0.trappiste.fr:7050 --tls true --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/trappiste.fr/orderers/orderer0.trappiste.fr/msp/tlscacerts/tlsca.trappiste.fr-cert.pem  -C channel-magasin -n chainecode-trappiste -c '{"Args":["updateConsigne","Consigne1","Biere1","18"]}'

printf '\nadd TicketReduction\n'
peer chaincode invoke -o orderer0.trappiste.fr:7050 --tls true --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/trappiste.fr/orderers/orderer0.trappiste.fr/msp/tlscacerts/tlsca.trappiste.fr-cert.pem  -C channel-magasin -n chainecode-trappiste -c '{"Args":["updateTicketDeReduction","TicketReduction0","0.75","111111111110","true"]}'
peer chaincode invoke -o orderer0.trappiste.fr:7050 --tls true --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/trappiste.fr/orderers/orderer0.trappiste.fr/msp/tlscacerts/tlsca.trappiste.fr-cert.pem  -C channel-magasin -n chainecode-trappiste -c '{"Args":["updateTicketDeReduction","TicketReduction1","0.25","111111111111","false"]}'
peer chaincode invoke -o orderer0.trappiste.fr:7050 --tls true --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/trappiste.fr/orderers/orderer0.trappiste.fr/msp/tlscacerts/tlsca.trappiste.fr-cert.pem  -C channel-magasin -n chainecode-trappiste -c '{"Args":["updateTicketDeReduction","TicketReduction2","0.45","111111111112","true"]}'
peer chaincode invoke -o orderer0.trappiste.fr:7050 --tls true --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/trappiste.fr/orderers/orderer0.trappiste.fr/msp/tlscacerts/tlsca.trappiste.fr-cert.pem  -C channel-magasin -n chainecode-trappiste -c '{"Args":["updateTicketDeReduction","TicketReduction3","1.75","111111111113","true"]}'
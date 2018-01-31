# Unix colors
# -----------
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHTGRAY='\033[0;37m'
DARKGRAY='\033[1;30m'
LIGHTRED='\033[1;31m'
LIGHTGREEN='\033[1;32m'
YELLOW='\033[1;33m'
LIGHTBLUE='\033[1;34m'
LIGHTPURPLE='\033[1;35m'
LIGHTCYAN='\033[1;36m'
WHITE='\033[1;37m'
NC='\033[0m' # No Color

# Audit script
# ------------

echo "┌──────────────┐"
echo -e "│ ${YELLOW}Server audit${NC} │"
echo "└──────────────┘"
echo ""

echo -e "${GREEN}• CURRENT USER INFORMATIONS${NC}"
whoami | id
echo ""

echo -e "${GREEN}• HOST NAME${NC}"
hostname
echo ""

echo -e "${GREEN}• OS VERSION${NC}"
cat /etc/*-release
echo ""

echo -e "${GREEN}• NETWORK CONFIGURATION${NC}"
ifconfig | grep inet
echo ""

echo -e "${GREEN}• SERVICES${NC}"
service --status-all

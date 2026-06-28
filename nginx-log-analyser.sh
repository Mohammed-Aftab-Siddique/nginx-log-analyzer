#!/bin/bash

# Create an associative array to store all unique values and their count
declare -A ips
declare -A paths
declare -A codes

while read -r ip _ _ _ _ _ path _ code _; do
	if [[ "$ip" =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]; then
		((ips["$ip"]++))
	fi
	if [[ "$path" == *"/"* ]]; then
		((paths["$path"]++))
	fi
	if [[ "$code" =~ ^[0-9]+$ ]]; then
		((codes["$code"]++))
	fi
done < nginx-access.log

# Print the output
echo "Top 5 IP addresses with the most requests"

for ip in "${!ips[@]}"; do
	echo "${ips[$ip]} $ip"
done | sort -rn | head -5 | while read -r count ip; do
	echo "$ip - $count requests"
done
echo ""

echo "Top 5 most requested paths"

for path in "${!paths[@]}"; do
        echo "${paths[$path]} $path"
done | sort -rn | head -5 | while read -r count path; do
	echo "$path - $count requests"
done
echo ""

echo "Top 5 response status codes"

for code in "${!codes[@]}"; do
        echo "${codes[$code]} $code"
done | sort -rn | head -5 | while read -r count code; do
        echo "$code - $count requests"
done
echo ""

# Create an associative array to store user-agents
declare -A user_agents

while IFS='"' read -r _ _ _ _ _ ua _; do
    ((user_agents["$ua"]++))
done < nginx-access.log

# Print output
echo "Top 5 user agents"

for ua in "${!user_agents[@]}"; do
        echo "${user_agents[$ua]} $ua"
done | sort -rn | head -5 | while read -r count ua; do
        echo "$ua - $count requests"
done


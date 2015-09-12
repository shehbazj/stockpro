# program for searching new web pages.
# 1. the program will read the webpage link from file link_prnewswire and fetch webpage on the client.
# 2. we then grep the client for acquire / acquired news. If there is no new news, we discard the news.
# 3. If we do get new news, we isolate the company Tags from the NASDAQ_DB file.
# TODO NASDAQ_DB updation script 
# TODO When does NASDAQ_DB get updated. Is there a way to monitor new companies that become public?




# Date : 29 Aug 2015
# Author : Shehbaz Jaffer
# Email : shehbazjaffer007@gmail.com

rm -rf new old
touch old new

while true
do
curl `cat link_global` | grep -e Acquires -e acquired -e NYSE -e NASDAQ > new
if [[ `diff new old` ]]; then
	echo "New News"
	# grep for acquire / acquisitions
	cat new | awk -F'"' '{print $2}'  > stringfile
	#split stringfile	
	cp new old
else
	echo "Old News"
fi
done

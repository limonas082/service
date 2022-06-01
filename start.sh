clear
echo press enter to continue.
read varpause
clear
pip install -U -r requirements.txt
python gen_sa_accounts.py
clear
echo press enter to view your projects list
read varpause1
python gen_sa_accounts.py --list-projects
echo Enter you now using project.
read varpi
python gen_sa_accounts.py --enable-services $varpi
python gen_sa_accounts.py --create-sas $varpi
python gen_sa_accounts.py --download-keys $varpi
echo click Enter to rename json files
read varpause1
clear
python3 rename.py
echo all json s renamed.

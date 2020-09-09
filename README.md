# AutoSearchsploit
Script to bulk autorun application checks against exploitDB


For use with the Kali workstation (or any other similiar Linux build)

Set-Up:

[*]  Generate a list of applications to check

[*]  List applications in a text file, one application per line

[*]  Run AutoSearchsploit, Example: ./autosearchsploit.sh server1_apps.txt"


The script checks for exploitDB updates, then runs each application listed in the input file against exploitDB using searchsploit and creates a separate findings report for each application. Reports are saved to a "ssploit_results" folder that is created on the user's desktop. 

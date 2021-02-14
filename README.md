# LOGTOOL:
 Tool to assist logging

Initially we must load the package:<br>
 package require logtool 1.0<br>
<br>
How to use:<br>
 logtool:log_mes < message > < name of the process you called > < tag (optional) > < log file (optional)><br>
<br>
Ex:<br>
<br>
#!/usr/bin/env tclsh<br>
<br>
package require logtool 1.0<br>
<br>
logtool:log_mes "log example" "exemple.tcl" "ERRO" /var/log/syslog<br>

# virtualMail

This script are made for retrieve a mail sended by php's mail function.

You just must specify it in your php.ini file (sendmail_path directive)

First arg is the path you want to save mail.
Seccond arg is the filename. (default mail)
Third arg is whatever you want overwrite the file each time you send a mail. If set to false, filename will be suffixed by a number. (default true)

ex on your php init :
sendmail_path = "virtualMail"

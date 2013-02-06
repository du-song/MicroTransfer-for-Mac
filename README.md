Send to iPhone service
======================
Push text snippets and URLs from Mac to iPhone by [WeiChuan (Chinese:微传)](http://weichuan.me) as Mac OS X service ( in Menu → `Services` → `Send to iPhone` )

Install
-------

1. Download and unzip [Send to iPhone](https://github.com/freewizard/MicroTransfer-for-Mac/archive/master.zip) and locate the `SendToIphone.service` file.

2. Copy it to the `Services` folder.	
	* Open a new Finder window by switching to the Finder and choosing File → New Finder Window.
	* Navigate to the `Library` folder in your home folder by holding the alt/option key and then choosing `Go` → `Library`.
	* Inside the `Library` folder, open the `Services` folder. If it does not exist, create it.
	* Copy the `SendToIphone.service` file into the `Services` folder.

3. Make sure it is not blocked by _Gatekeeper_.	
	* Double-click the service.
	* An alert may appear with the text "service name can’t be opened because it is from an unidentified developer". This is a security feature in OS X. If you encounter this alert, click `OK` to close the dialog, then right click (or control+click ) the service and choose `Open` from the contextual menu. When the alert appears again, click the `Open` button to enable the service.
	* This is the Gatekeeper feature in OS X, warning about downloaded software without a traceable cryptographic signature being used for the first time. For more information, search Mac Help for "Gatekeeper".

4. Setup ~/.weichuanrc
create `.weichuanrc` in your $HOME folder

```
username: username
authcode: authcode_or_leave_empty
```

*✓*   The `Send to iPhone` service is installed and can be used from applications.

Credits
-------
The script is made possible with [ThisService](http://wafflesoftware.net/thisservice/services/)


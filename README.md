#   SQL-WhatsAppDB-Model📜📜📩📉

In this project, I generated scripts that create tables and populate data of what I felt  is a WhatsApp database. This is an implicit look and is subject to a retrofit in the near future.
I created the **Entity Relationship Diagram(ERD)** showing all the relationships that exists between these tables.
And Finally, I created a view from which one  can see the sender name, receiver name, messages sent between them with time stamps.


## Implementation🤷‍♀️👓🚗
SQL scripting was chosen over manual table creation to generate the **WhatsAppChatDB** and its tables. I have upto 8 table. These includes: __**Users,Messages,Calls,Media,Contacts,Notifications,Groups,GroupMembers**__.


## Take A Look🕶👓🤷‍♀️🤷
Our ERD diagram looks like this for
![](https://github.com/kendrickchibueze/SQL-WhatsAppDB-Model/blob/main/Whatsapp-ERD.png?raw=true)


As for the chat between sender and receiver and their timestamps:
![](https://github.com/kendrickchibueze/SQL-WhatsAppDB-Model/blob/main/SR-Chat.png?raw=true)


## Knowledge Share👌📜📜📜
* Users table to store user information such as phone number, name, profile picture, etc.

* Contacts table to store information about contacts such as phone number, name, etc.

* Messages table to store information about chats such as messages, participants, timestamps, etc.

* Media table to store information about shared media files such as images, videos, etc.

* Groups table to store information about groups such as group name and creator name.

* Notifications table can be used to store information about push notifications sent to users, such as the message content, sender, timestamp, etc.

* Calls table can be used to store information about voice and video calls made through the app, such as the call participants, call duration, call type (voice/video), etc.

* Group Members table is also present in this WhatsApp database. This table can be used to store information about the members of a group chat, such as the phone number, name, status, etc. The table can also be used to store information about the role of each member (e.g. admin, regular member), the date and time when each member joined the group, etc. This information can be used to support features such as group member management, member lists, etc.


## Relationships BreakDown🚗🚉🧑

* **One-to-many** relationship between **Users table and Messages table**, where one user can participate in many messages.

* **Many-to-many** relationship between **Users table and Contacts table**, where one user can have many contacts, and one contact can belong to many users.

* **One-to-many** relationship between **Messages table and Group Members table**, where one message conversation can be responded by many group members.

* **One-to-many** relationship between **Messages table and Media table**, where one message conversation can have many media files.

*  **one-to-many relationship** between **Notifications table and Users table** in a WhatsApp database. This means that one user can have multiple notifications, but each notification belongs to only one user.

* **many-to-many relationship**. This means that one group can have multiple members, and one member can belong to multiple groups.

## Technologies Used👨‍🦳👨‍🦳🧓
* Relational Database (SQL)
* Microsoft SQL server Management Studio
* SQL server



## Conclusion
This is subject to corrections and future retrofits. But for now you can give in to my solution and avoid the fuss and bother of creating your own. This can be used for academic purposes. Conncect with me also via twitter and LinkedIn

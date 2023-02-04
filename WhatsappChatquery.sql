--CREATE Database WhatsAppChatDB;

use WhatsAppChatDB;   




 
     		
       
CREATE TABLE Users(
UserID INT PRIMARY KEY IDENTITY(1,1),
Name VARCHAR(255) NOT NULL,
Email VARCHAR(255) NOT NULL UNIQUE,
PhoneNumber VARCHAR(255) NOT NULL UNIQUE,
ProfileImage VARCHAR(255)
);

CREATE TABLE Contacts(
  ContactID INT PRIMARY KEY IDENTITY(1,1),
  UserID INT NOT NULL,
  ContactUserID INT NOT NULL,
  FOREIGN KEY (UserID) REFERENCES Users(UserID),
  FOREIGN KEY (ContactUserID) REFERENCES Users(UserID)
);

CREATE TABLE Groups(
    GroupID INT PRIMARY KEY IDENTITY(1,1),
    GroupName VARCHAR(255) NOT NULL,
    CreatorID INT NOT NULL,
FOREIGN KEY(CreatorID) REFERENCES Users(UserID)
);

CREATE TABLE GroupMembers(
  GroupMemberID INT PRIMARY KEY IDENTITY(1,1),
  GroupID INT NOT NULL,
  UserID INT NOT NULL,
  FOREIGN KEY (GroupID) REFERENCES Groups(GroupID),
  FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

CREATE TABLE Messages(
    MessageID INT PRIMARY KEY IDENTITY(1,1),
    SenderID INT NOT NULL,
    RecipientID INT NOT NULL,
    Message TEXT NOT NULL,
    Timestamp DATETIME NOT NULL,
    FOREIGN KEY (SenderID) REFERENCES Users(UserID),
    FOREIGN KEY (RecipientID) REFERENCES Users(UserID)
);

CREATE TABLE Media(
    MediaID INT PRIMARY KEY IDENTITY(1,1),
    MessageID INT NOT NULL,
    MediaFile VARCHAR(255) NOT NULL,
    FOREIGN KEY(MessageID) REFERENCES Messages(MessageID)
);

CREATE TABLE Notifications(
  NotificationID INT PRIMARY KEY IDENTITY(1,1),
  UserID INT NOT NULL,
  UnreadMessageCount INT NOT NULL,
  NotificationType VARCHAR(255) NOT NULL,
  FOREIGN KEY(UserID) REFERENCES Users(UserID)
);

CREATE TABLE Calls(
  CallID INT PRIMARY KEY IDENTITY(1,1),
  CallerID INT NOT NULL,
  RecipientID INT NOT NULL,
  CallType VARCHAR(255) NOT NULL,
  Timestamp DATETIME NOT NULL,
  FOREIGN KEY(CallerID) REFERENCES Users(UserID),
  FOREIGN KEY(RecipientID) REFERENCES Users(UserID)
);


INSERT INTO Users(Name, Email, PhoneNumber, ProfileImage)
VALUES
    ('kendrick', 'kendrick@email.com', '111-111-1111', 'kendrick.jpg'),
    ('Isreal', 'Isreal@email.com', '222-222-2222', 'Isreal.jpg'),
    ('Ebube', 'Ebube@email.com', '333-333-3333', 'Ebube.jpg'),
	('Joshua', 'Joshua@email.com', '444-444-444', 'Joshua.jpg');

INSERT INTO Contacts(UserID, ContactUserID)
VALUES
  (1, 2),
  (1, 3),
  (2, 3),
  (2, 4);

INSERT INTO Groups(GroupName, CreatorID)
VALUES
  ('Group1', 1),
  ('Group2', 2),
  ('Group3', 3);

INSERT INTO GroupMembers(GroupID, UserID)
VALUES
  (1, 1),
  (1, 2),
  (2, 2),
  (2, 3),
  (3, 3),
  (3, 4);

INSERT INTO Messages(SenderID, RecipientID, Message, Timestamp)
VALUES

    (1, 2, 'Hello', CURRENT_TIMESTAMP),
    (2, 1, 'Hi', CURRENT_TIMESTAMP),
    (3, 2, 'How are you?', CURRENT_TIMESTAMP),
    (2, 3, 'I am good, Have you finished your tasks', CURRENT_TIMESTAMP);




INSERT INTO Media(MessageID, MediaFile)
VALUES
  (1, 'message1_image.jpg'),
  (2, 'message2_image.jpg'),
  (3, 'message3_image.jpg'),
  (4, 'message4_image.jpg');

INSERT INTO Notifications(UserID, UnreadMessageCount, NotificationType)
VALUES
  (1, 2, 'New Message'),
  (2, 0, 'No new messages'),
  (3, 1, 'New Message'),
  (4, 0, 'No new messages');

INSERT INTO Calls(CallerID, RecipientID, CallType, Timestamp)
VALUES
  (1, 2, 'Voice Call', CURRENT_TIMESTAMP),
  (2, 3, 'Video Call', CURRENT_TIMESTAMP),
  (3, 4, 'Voice Call', CURRENT_TIMESTAMP),
  (4, 1, 'Video Call', CURRENT_TIMESTAMP);





SELECT 
  Sender.Name AS SenderName, 
  Recipient.Name AS ReceiverName, 
  Messages.Message, 
  Messages.Timestamp
FROM 
  Messages
  JOIN Users AS Sender ON Sender.UserID = Messages.SenderID
  JOIN Users AS Recipient ON Recipient.UserID = Messages.RecipientID


























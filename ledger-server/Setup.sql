CREATE TABLE [Oltiva_users](
  UserId int NOT NULL primary key,
  UserName varchar(255),
  JoinDate DATETIME,
  LastActiveDate DATETIME
) WITH (SYSTEM_VERSIONING = ON, LEDGER = ON);
CREATE TABLE [Oltiva_Partners](
  PartnerId int NOT NULL,
  PartnerName varchar(255),
  PRIMARY KEY (PartnerId),
) WITH (SYSTEM_VERSIONING = ON, LEDGER = ON);
CREATE TABLE [Oltiva_QR](
  QRlocId int NOT NULL,
  QRloc varchar(255),
  PartnerId int NOT NULL,
  QRType int,
  LocType varchar(255),
  Duration DATETIME,
  PRIMARY KEY (QRlocID),
  FOREIGN KEY (PartnerId) REFERENCES Oltiva_Partners(PartnerId)
) WITH (SYSTEM_VERSIONING = ON, LEDGER = ON);
CREATE TABLE [Oltiva_DataSet](
  DataSetId int NOT NULL,
  UserId int NOT NULL,
  PartnerId int NOT NULL,
  Unit varchar(255),
  LastUpdateDateTime DATETIME,
  DataType varchar(255),
  SharedUntilDateTime DATETIME,
  DataStatus varchar(255),
  PRIMARY KEY (DataSetId),
  FOREIGN KEY (PartnerId) REFERENCES Oltiva_Partners(PartnerId),
  FOREIGN KEY (UserId) REFERENCES Oltiva_users(UserId)
) WITH (SYSTEM_VERSIONING = ON, LEDGER = ON);
CREATE TABLE [Oltiva_DataPoint](
  DataPointId int NOT NULL,
  DataSetId int NOT NULL,
  DataTimestamp DATETIME,
  DataValue varchar(255),
  PRIMARY KEY (DataPointId),
  FOREIGN KEY (DataSetId) REFERENCES Oltiva_DataSet(DataSetId)
) WITH (SYSTEM_VERSIONING = ON, LEDGER = ON);
INSERT INTO
  [dbo].[Oltiva_QR](
    QRlocId,
    QRloc,
    PartnerId,
    QRType,
    LocType,
    Duration
  )
VALUES
  (
    4002,
    'actif4002',
    3004,
    'Equipment',
    '2021-07-13T09:00:00'
  ),
  (
    4003,
    'actif4003',
    3007,
    'Healthcare',
    '2021-08-17T09:00:00'
  ),
  (
    4004,
    'actif4004',
    3009,
    'Equipment',
    '2022-01-01T09:00:00'
  ),
  (
    4002,
    'actif4005',
    3015,
    'Commercial',
    '2021-06-03T09:00:00'
  )
INSERT INTO
  [dbo].[Oltiva_Partner] (PartnerId, PartnerName)
VALUES
  (3001, 'Sacred Heart Health Ltd'),
  (3002, 'Greater London Health Service'),
  (3003, 'Wandsworth Heath Surgery'),
  (3004, 'Jamesons Sports Equipment'),
  (3005, 'Diabetes Research UK'),
  (3006, 'Le Lapment Laboratories'),
  (3007, 'Bloomsbury Hospital'),
  (3008, 'Baker Street Clinic'),
  (3009, 'Frumptons Sports Co'),
  (3010, 'Analytics UK Inc'),
  (3011, 'Slefton Road Pharmacy'),
  (3012, 'Dr. Green Clinic'),
  (3013, 'Lambeth East Inpatient Care'),
  (3014, 'UKSR'),
  (3015, 'Facebank Data Group'),
  (3016, 'Thames Front Surgery'),
  (3017, 'National Testing Laboratories'),
  (3018, 'Pourtown Down'),
  (3019, 'Readingly Hospital'),
  (3020, 'East Buckheads Health'),
  (3021, 'Pinapple Sports Studio')
INSERT INTO
  [dbo].[Oltiva_Users] (UserId, UserName, JoinDate, LastActiveDate)
VALUES
  (
    1001,
    'Leah Wallis',
    '2021-04-17T10:41:34',
    '2021-04-17T10:41:34'
  ),
  (
    1002,
    'James Wallis',
    '2021-04-18T11:44:34',
    '2021-04-17T09:32:34'
  ),
  (
    1003,
    'Daniel Sing',
    '2021-02-11T17:54:14',
    '2021-04-17T09:33:35'
  ),
  (
    1004,
    'Sarah Green',
    '2021-01-21T13:11:54',
    '2021-04-16T17:31:33'
  ),
  (
    1005,
    'David Kelly',
    '2021-01-03T00:00:00',
    '2021-07-08T00:00:00'
  ),
  (
    1006,
    'Erica Woods',
    '2021-10-06T00:00:00',
    '2021-10-06T00:00:00'
  ),
  (
    1007,
    'Matteo Thomas',
    '2021-07-21T00:00:00',
    '2021-07-21T00:00:00'
  ),
  (
    1008,
    'Finley Day',
    '2021-07-08T00:00:00',
    '2021-01-03T00:00:00'
  ),
  (
    1009,
    'Kit Morgan',
    '2021-01-06T00:00:00',
    '2021-03-15T00:00:00'
  ),
  (
    1010,
    'Haris Carter',
    '2021-10-06T00:00:00',
    '2021-03-22T00:00:00'
  ),
  (
    1011,
    'Louise Day',
    '2021-07-08T00:00:00',
    '2021-01-06T00:00:00'
  ),
  (
    1012,
    'Cooper Reynolds',
    '2021-03-15T00:00:00',
    '2021-01-06T00:00:00'
  ),
  (
    1013,
    'Martin Foster',
    '2021-03-22T00:00:00',
    '2021-01-03T00:00:00'
  ),
INSERT INTO
  [dbo].[Oltiva_DataSet](
    DataSetId,
    UserId,
    PartnerId,
    Unit,
    LastUpdateDateTime,
    DataType,
    SharedUntilDateTime,
    DataStatus
  )
VALUES(
    5001,
    1001,
    3002,
    'bpm',
    '2021-05-04T09:00:00',
    'Heart Rate',
    '2021-07-10T09:00:00',
    'active'
  )
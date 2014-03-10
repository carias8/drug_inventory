class DataPoint < ActiveRecord::Base

  #CREATE TABLE DATA_POINT (
  #      Ctr_loc VARCHAR(50)                     NOT NULL,
  #      Dname           VARCHAR(50)             NOT NULL,
  #      Time_stamp      TIMESTAMP               NOT NULL,
  #      Count           CHAR(32)                DEFAULT NULL,
  #      PRIMARY KEY(Ctr_loc, Dname, Time_stamp),
  #      FOREIGN KEY (Ctr_loc) REFERENCES DIST_CTR (Location)
  #              ON DELETE CASCADE       ON UPDATE CASCADE,
  #      FOREIGN KEY (Dname) REFERENCES DRUG (Dname)
  #              ON DELETE CASCADE       ON UPDATE CASCADE)
  #DEFAULT CHARACTER SET utf8;

end
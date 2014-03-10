class Batch < ActiveRecord::Base

  #CREATE TABLE BATCHES (
  #      Dname           VARCHAR(50)             NOT NULL,
  #      Bid                     INT                             NOT NULL,
  #      Ctr_loc VARCHAR(50)                     NOT NULL,
  #      Exp_date        DATE,
  #      PRIMARY KEY (Dname, Bid, Ctr_loc),
  #      FOREIGN KEY (Ctr_loc) REFERENCES DIST_CTR (Location)
  #              ON DELETE CASCADE       ON UPDATE CASCADE,
  #      FOREIGN KEY (Dname) REFERENCES DRUG (Dname)
  #              ON DELETE CASCADE       ON UPDATE CASCADE)
  #DEFAULT CHARACTER SET utf8;

end
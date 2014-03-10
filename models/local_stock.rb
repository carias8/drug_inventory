class LocalStock < ActiveRecord::Base
  self.primary_key = 'Ctr_loc'


  #CREATE TABLE  DRUG_PER_LOC (
  #      Ctr_loc         VARCHAR(50)             NOT NULL,
  #      Dname           VARCHAR(50)             NOT NULL,
  #      Par_lvl         INT                             DEFAULT 30,
  #      Flag            CHAR(5)                 DEFAULT FALSE,
  #      PRIMARY KEY (Ctr_loc, Dname),
  #      FOREIGN KEY (Ctr_loc) REFERENCES DIST_CTR (Location)
  #              ON DELETE CASCADE       ON UPDATE CASCADE,
  #      FOREIGN KEY (Dname) REFERENCES DRUG (Dname)
  #              ON DELETE CASCADE       ON UPDATE CASCADE)
  #  DEFAULT CHARACTER SET utf8;

end
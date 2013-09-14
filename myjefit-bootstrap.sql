PRAGMA foreign_keys = ON;

CREATE TABLE "exercise" (
      "id" INTEGER PRIMARY KEY  NOT NULL ,
      "name" VARCHAR NOT NULL );

CREATE TABLE "trainingSession" (
    "id" INTEGER PRIMARY KEY  NOT NULL , 
    "date_time" DATETIME NOT NULL );

CREATE TABLE "trainingLog" (
      "session_id" INTEGER NOT NULL , 
      "exercise_id" INTEGER NOT NULL , 
      "id" INTEGER PRIMARY KEY  NOT NULL  UNIQUE , 
      "weight" INTEGER NOT NULL, 
      "reps" INTEGER NOT NULL , 
      FOREIGN KEY(session_id) REFERENCES trainingSession(id),
      FOREIGN KEY(exercise_id) REFERENCES exercise(id)
);

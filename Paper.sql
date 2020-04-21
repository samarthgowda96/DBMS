DROP DATABASE IF EXISTS research_paper;
CREATE DATABASE IF NOT EXISTS research_paper;
USE research_paper;
DROP TABLE IF EXISTS Review;
DROP TABLE IF EXISTS Paper;
DROP TABLE IF EXISTS Topic;
DROP TABLE IF EXISTS Reviewer;
DROP TABLE IF EXISTS Author;

-- CREATE TABLE SCHEMA
CREATE TABLE IF NOT EXISTS Author (
    Email varchar(25),
    FirstName varchar(25),
    LastName varchar(25),
    PRIMARY KEY (Email)
);
CREATE TABLE IF NOT EXISTS  Paper (
    ID varchar(25) NOT NULL,
    Title varchar(100),
    Abstract varchar(2000),
    FileName varchar(50),
    Email varchar(25),
    PRIMARY KEY (ID),
    FOREIGN KEY (Email) REFERENCES Author(Email)
);

CREATE TABLE IF NOT EXISTS  Reviewer (
    Email varchar(25) NOT NULL,
    FirstName varchar(25),
    LastName varchar(25),
    AuthorFeedback varchar(25),
    CommiteeFeedback Varchar(25),
    PhNO int(25),
    Affiliation Varchar(25),
    PRIMARY KEY (Email)
   );
 
 
CREATE TABLE IF NOT EXISTS  Topic (
    ID varchar(25),
    TopicName varchar(25),
    PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS  Review (
    ID varchar(25) not NULL ,
    Recommendation varchar(25),
    MeritScore varchar(250),
    PaperID varchar(50),
    ReadabilityScore varchar(25),
    ReviewerID varchar(50),
    RelevanceScore Int,
    OriginalityScore int,
    PRIMARY KEY (ID),
    FOREIGN KEY (ID) REFERENCES Paper(ID)
);

-- INSERT VALUES INTO TABLES
INSERT INTO AUTHOR (FIRSTNAME, LASTNAME, EMAIL)
VALUES ('Henry', 'Topper', 'Henrytopper@gmail.com');
INSERT INTO AUTHOR (FIRSTNAME, LASTNAME, EMAIL)
VALUES ('Dennis', 'Richie', 'Dennisrichie@gmail.com');
INSERT INTO AUTHOR (FIRSTNAME, LASTNAME, EMAIL)
VALUES ('Anoosha', 'Swamy', 'Anusha@gmail.com');
INSERT INTO AUTHOR (FIRSTNAME, LASTNAME, EMAIL)
VALUES ('Deepansh','Parab','Deepanshparab@gmail.com');
INSERT INTO PAPER (ID, TITLE,ABSTRACT,FILENAME, EMAIL)
VALUES ('Henrytopper@gmail.com', 'A Defined Digital Forensic Criteria for Cybercrime Reporting', 'A defined digital forensic (DF) criteria for cybercrime reporting is proposed to address this problem. The method employed is to firstly, develop a generic DF cybercrime reporting data collection system that uses a DF cybercrime incident criteria definition that is also privacy enhanced. Secondly, the creation of a natural language data preparation semantic builder that is integrated to store mapped semantics data used to create defined DF criteria for a cybercrime language database. Thirdly, the integrated database (DB) defined DF cybercrime semantic DB can be analysed to formulate a digital forensic readiness architecture for cybercrime language detection. The generated natural language (NL), semantic data of potential cybercrime language, could be developed as a plugin and APIs, pluggable to any DF investigations, tools and applications. The benefits of the proposed defined DF cybercrime reporting criteria include the following; (i) It is a medium for cybercrime victims to report a crime. (ii) The proposed system generates useful data for the implementation of digital forensic readiness architecture and planning that is re-usable and scalable to accommodate other forms of intrusion detection techniques and processes (iii) To design and develop cyber- attack reporting tools and techniques using the information provided by the victims, especially in a text-based cyber-attack. (iv) To provide research data for cybercrime data analytics using the gathered reported data. (v) The proposed criteria ensure that the victims of cybercrime could report cyber-attacks anonymously while maintaining privacy. The findings of this paper pave the way to develop a readily available, easily accessible and defined digital forensic criteria for cybercrime reporting.','Forensic','Henrytopper@gmail.com');
INSERT INTO PAPER (ID, TITLE,ABSTRACT,FILENAME, EMAIL)
VALUES('Dennisrichie@gmail.com','Cyber Attack Grammars for Risk/Cost Analysis','In practice, mitigating cyber risk involves economic analysis - it is not realistic to eliminate all risk, so the goal is to find the most cost-effective mitigations for the most significant risks. This economic analysis, however, requires principled quantification of cyber risk. This paper describes how to enhance attack tree analysis (Schneier, 1999) to enumerate the possible attacks against a specific system and to assign risk values to each attack. This enumeration enables the attacks ruled out by a specific mitigation to be counted, and the corresponding risk reduction to be calculated precisely. Assigning a cost to each mitigation enables risk mitigation to be related to cost. Specifically, a weighted-set-covering analysis reveals the sequence of mitigations that achieve the greatest risk reduction per unit cost. The result of this analysis is a curve that shows how much the cost goes up as the risk comes down, directly revealing how much cyber risk can be mitigated for a specific cost, how much it would cost to mitigate 80% of the cyber risk, etc. This quantitative, objective approach to cyber risk/cost analysis enables stakeholders to allocate their cyber defense resources efficiently. Traditional attack tree representations struggle to scale to large, complex systems.','Cyber Attacks','Dennisrichie@gmail.com');
INSERT INTO PAPER (ID, TITLE,ABSTRACT,FILENAME, EMAIL)
VALUES('Anusha@gmail.com','Career Development in Cyber Security: Bootcamp Training Programs','Growing number of cyber security incidents across the globe shifted the focus of governments and the IT sector to deal with the skills shortage in this domain. Developing competent individuals for this growing area triggered government institutions to craft strategy documents as well. Other than traditional undergraduate or MSc programs, there is one particular solution which receives lots of attention: cyber security training bootcamp programs. These short, focused and intense training programs, also known as bootcamps, have particularly appealed to adult learners during the past decade. The bootcamps which focus on IT and cybersecurity domains have emerged as an important pipeline to help individuals get started in IT careers. One of the key factors driving the advancement of bootcamp programs is related to the high demand for IT programs which traditional education institutes, such as universities, cannot keep up with. In this paper, we evaluated how bootcamp training programs perform in comparison with traditional training faculties.','cyber security','Anusha@gmail.com');
INSERT INTO PAPER (ID, TITLE,ABSTRACT,FILENAME, EMAIL)
VALUES('Deepanshparab@gmail.com','Python in Data Science',' This paper provides the use and importance of python programming language in data science', 'Datascience' ,'Deepanshparab@gmail.com');
INSERT INTO REVIEWER (EMAIL, FIRSTNAME,LASTNAME,AUTHORFEEDBACK,COMMITEEFEEDBACK, PHNO,AFFILIATION)
VALUES('Mennis@gmail.com','mennis','dennis','Positive','Positive','619345262','Markus Agency');
INSERT INTO REVIEWER (EMAIL, FIRSTNAME,LASTNAME,AUTHORFEEDBACK,COMMITEEFEEDBACK, PHNO,AFFILIATION)
VALUES('saketh@gmail.com','saketh','madulla','Positive','Negative','619345263','Hiley Agency');
INSERT INTO REVIEWER (EMAIL, FIRSTNAME,LASTNAME,AUTHORFEEDBACK,COMMITEEFEEDBACK, PHNO,AFFILIATION)
VALUES('dexter@gmail.com','dexter','halt','Negative','Positive','619345262','Tennesse Agency');
INSERT INTO REVIEWER (EMAIL, FIRSTNAME,LASTNAME,AUTHORFEEDBACK,COMMITEEFEEDBACK, PHNO,AFFILIATION)
VALUES('Mathew@gmail.com', 'Mathew','Carter','positive','positive','619344262','New york agency');
INSERT INTO TOPIC (ID, TOPICNAME)
VALUES ('1','Science');
INSERT INTO TOPIC (ID, TOPICNAME)
VALUES ('2','Cyber Security');
INSERT INTO TOPIC (ID, TOPICNAME)
VALUES ('3','Data Science');
INSERT INTO TOPIC (ID, TOPICNAME)
VALUES ('4','Web Development');
INSERT INTO REVIEW (ID, RECOMMENDATION,MERITSCORE,PAPERID,READABILITYSCORE,REVIEWERID,RELEVANCESCORE,ORIGINALITYSCORE)
VALUES('Henrytopper@gmail.com','Yes','80','1','90','1','95','96');
INSERT INTO REVIEW (ID, RECOMMENDATION,MERITSCORE,PAPERID,READABILITYSCORE,REVIEWERID,RELEVANCESCORE,ORIGINALITYSCORE)
VALUES('Dennisrichie@gmail.com','No','90','2','99','2','98','99');
INSERT INTO REVIEW (ID, RECOMMENDATION,MERITSCORE,PAPERID,READABILITYSCORE,REVIEWERID,RELEVANCESCORE,ORIGINALITYSCORE)
VALUES('Anusha@gmail.com','Yes','88','3','92','3','96','93');
INSERT INTO REVIEW (ID, RECOMMENDATION,MERITSCORE,PAPERID,READABILITYSCORE,REVIEWERID,RELEVANCESCORE,ORIGINALITYSCORE)
VALUES('Deepanshparab@gmail.com','Yes','84','4','93','4','97','98');

SELECT * FROM AUTHOR;
SELECT * FROM PAPER;
SELECT * FROM REVIEWER;
SELECT * FROM TOPIC;
SELECT * FROM REVIEW;





-- H2 2.2.224;
;             
CREATE USER IF NOT EXISTS "SA" SALT 'e93d64e14375fb1b' HASH 'be84942c62b96ead1a339faa2a7b22ee51f7a593fc94e25d15bcbb7d18cf871d' ADMIN;         
CREATE CACHED TABLE "PUBLIC"."PRODUCT"(
    "ID" INTEGER GENERATED BY DEFAULT AS IDENTITY(START WITH 1 RESTART WITH 3) NOT NULL,
    "CREATE_DATE" TIMESTAMP(6),
    "DESCRIPTION" CHARACTER VARYING,
    "NAME" CHARACTER VARYING,
    "PRICE" NUMERIC(38, 2),
    "TYPE" CHARACTER VARYING(200)
);   
ALTER TABLE "PUBLIC"."PRODUCT" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_1" PRIMARY KEY("ID");      
-- 9 +/- SELECT COUNT(*) FROM PUBLIC.PRODUCT; 
INSERT INTO "PUBLIC"."PRODUCT" VALUES
(1, NULL, U&'\bd80\b4dc\b7ec\c6b4 \b2ec\cf64\d55c \d06c\b9bc\c774 \b4e4\c5b4\ac04 \c804\d1b5 \d55c\ad6d\c2dd \be75', U&'\d06c\b9bc\be75', 3000.00, U&'\be75'),
(2, NULL, U&'\ce58\c988\c640 \d584\c774 \ac00\b4dd\d55c \c9ed\c870\b984\d55c \b9db\c758 \be75.', U&'\d584\ce58\c988\be75', 3500.00, U&'\be75'),
(3, NULL, U&'\b2ec\cf64\d55c \d325\c774 \b4ec\bfcd \b4e4\c5b4\ac04 \ace0\c18c\d55c \d325\be75', U&'\d325\be75', 2500.00, U&'\be75'),
(4, NULL, U&'\ac89\c740 \bc14\c0ad\d558\ace0 \c18d\c740 \bd80\b4dc\b7ec\c6b4 \c804\d1b5 \bc14\ac8c\d2b8', U&'\d504\b80c\ce58 \bc14\ac8c\d2b8', 4000.00, U&'\bc14\ac8c\d2b8'),
(5, NULL, U&'\acac\acfc\b958\ac00 \b4e4\c5b4\ac04 \ac74\ac15\d55c \bc14\ac8c\d2b8', U&'\d638\b450 \bc14\ac8c\d2b8', 4500.00, U&'\bc14\ac8c\d2b8'),
(6, NULL, U&'\c62c\b9ac\be0c\c640 \d5c8\be0c\ac00 \b4e4\c5b4\ac00 \ace0\ae09\c2a4\b7ec\c6b4 \b9db\c744 \c790\b791\d558\b294 \bc14\ac8c\d2b8', U&'\c62c\b9ac\be0c \bc14\ac8c\d2b8', 5000.00, U&'\bc14\ac8c\d2b8'),
(7, NULL, U&'\c2e0\c120\d55c \c0dd\d06c\b9bc\acfc \b538\ae30\ac00 \b4e4\c5b4\ac04 \c0c1\d07c\d55c \cf00\c774\d06c', U&'\b538\ae30 \c0dd\d06c\b9bc \cf00\c774\d06c', 15000.00, U&'\cf00\c774\d06c'),
(8, NULL, U&'\c9c4\d55c \cd08\cf5c\b9bf \b9db\c774 \c77c\d488\c778 \cf00\c774\d06c', U&'\cd08\cf5c\b9bf \cf00\c774\d06c', 17000.00, U&'\cf00\c774\d06c'),
(9, NULL, U&'\ace0\c18c\d55c \ce58\c988\ac00 \b4e4\c5b4\ac04 \bd80\b4dc\b7ec\c6b4 \ce58\c988 \cf00\c774\d06c', U&'\ce58\c988 \cf00\c774\d06c''', 16000.00, U&'\cf00\c774\d06c');          
CREATE CACHED TABLE "PUBLIC"."REVIEW"(
    "ID" BIGINT GENERATED BY DEFAULT AS IDENTITY(START WITH 1 RESTART WITH 15) NOT NULL,
    "PRODUCT_ID" INTEGER,
    "CONTENT" CHARACTER VARYING,
    "CREATE_DATE" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    "RATING" INTEGER
);               
ALTER TABLE "PUBLIC"."REVIEW" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_8" PRIMARY KEY("ID");       
-- 6 +/- SELECT COUNT(*) FROM PUBLIC.REVIEW;  
INSERT INTO "PUBLIC"."REVIEW" VALUES
(9, 1, U&'\b108\bb34 \b9db\c788\c5b4\c694', TIMESTAMP '2024-10-07 19:45:15.125246', 5),
(10, 1, U&'\ac00\aca9\c774 \b108\bb34 \be44\c2f8\c694 \3160\3160 ', TIMESTAMP '2024-10-07 19:45:41.915691', 2),
(11, 5, U&'\bcc4\c810 5\ac1c ', TIMESTAMP '2024-10-07 19:51:48.545259', 5),
(12, 5, U&'\bcc4\c810 3\ac1c / \d3c9\ade0 4\ac1c ', TIMESTAMP '2024-10-07 19:52:18.747624', 4),
(13, 6, U&'\bcc4\c810 5\ac1c ', TIMESTAMP '2024-10-07 19:53:13.598787', 5),
(14, 6, U&'\bcc4\c810 3\ac1c / \d3c9\ade0 4\ac1c ', TIMESTAMP '2024-10-07 19:53:31.834315', 3);    
ALTER TABLE "PUBLIC"."REVIEW" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_8F" FOREIGN KEY("PRODUCT_ID") REFERENCES "PUBLIC"."PRODUCT"("ID") NOCHECK;  

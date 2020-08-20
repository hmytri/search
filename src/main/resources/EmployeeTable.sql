CREATE TABLE "EMPLOYEE" (
    "ID"           NUMBER
        GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER
        NOCYCLE NOKEEP NOSCALE
        NOT NULL ENABLE,
    "FIRSTNAME"    VARCHAR2(30 BYTE),
    "LASTNAME"     VARCHAR2(30 BYTE)
        NOT NULL ENABLE,
    "TELEPHONE"    VARCHAR2(15 BYTE),
    "EMAIL"        VARCHAR2(30 BYTE),
    "CREATED"      DATE DEFAULT sysdate
        NOT NULL ENABLE,
    "AGE"          NUMBER,
    "START_DATE"   DATE,
    "END_DATE"     DATE
)
SEGMENT CREATION IMMEDIATE
PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
    DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT )
TABLESPACE "USERS";

INSERT INTO c##hmytri.employee (
    id,
    firstname,
    lastname,
    telephone,
    email,
    created,
    age,
    start_date,
    end_date
) VALUES (
    42,
    'EXL',
    'PROJECT',
    '8902347658',
    'PROJECT@EXL.COM',
    TO_DATE('20-AUG-20', 'DD-MON-RR'),
    45,
    TO_DATE('01-JAN-09', 'DD-MON-RR'),
    TO_DATE('17-JAN-20', 'DD-MON-RR')
);

INSERT INTO c##hmytri.employee (
    id,
    firstname,
    lastname,
    telephone,
    email,
    created,
    age,
    start_date,
    end_date
) VALUES (
    24,
    'KANS',
    'YADAV',
    '6579083452',
    'kyadav@gmail.com',
    TO_DATE('17-AUG-20', 'DD-MON-RR'),
    45,
    NULL,
    NULL
);

INSERT INTO c##hmytri.employee (
    id,
    firstname,
    lastname,
    telephone,
    email,
    created,
    age,
    start_date,
    end_date
) VALUES (
    41,
    'JUILSI',
    'ACESS',
    '9897652034',
    'ADDI@BMAIL.COM',
    TO_DATE('20-AUG-20', 'DD-MON-RR'),
    45,
    TO_DATE('17-JAN-10', 'DD-MON-RR'),
    NULL
);

INSERT INTO c##hmytri.employee (
    id,
    firstname,
    lastname,
    telephone,
    email,
    created,
    age,
    start_date,
    end_date
) VALUES (
    46,
    'BXER',
    'ADMIN',
    '2345678909',
    'BOX@CAR.COM',
    TO_DATE('20-AUG-20', 'DD-MON-RR'),
    34,
    TO_DATE('17-JAN-20', 'DD-MON-RR'),
    NULL
);

INSERT INTO c##hmytri.employee (
    id,
    firstname,
    lastname,
    telephone,
    email,
    created,
    age,
    start_date,
    end_date
) VALUES (
    44,
    'FRIO',
    'LOBO',
    '8980902345',
    'LOBO@EMAIL.COM',
    TO_DATE('20-AUG-20', 'DD-MON-RR'),
    45,
    NULL,
    NULL
);

INSERT INTO c##hmytri.employee (
    id,
    firstname,
    lastname,
    telephone,
    email,
    created,
    age,
    start_date,
    end_date
) VALUES (
    45,
    'PROXY',
    'ADMIN',
    '3456780909',
    'pro@gmadmin.com',
    TO_DATE('20-AUG-20', 'DD-MON-RR'),
    34,
    TO_DATE('02-JAN-17', 'DD-MON-RR'),
    TO_DATE('03-JAN-20', 'DD-MON-RR')
);

INSERT INTO c##hmytri.employee (
    id,
    firstname,
    lastname,
    telephone,
    email,
    created,
    age,
    start_date,
    end_date
) VALUES (
    1,
    'Adam',
    'Mattis',
    '9893456762',
    'Amatti@gmail.com',
    TO_DATE('16-AUG-20', 'DD-MON-RR'),
    77,
    TO_DATE('05-APR-19', 'DD-MON-RR'),
    NULL
);

COMMIT;
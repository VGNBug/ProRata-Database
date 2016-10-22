CREATE TABLE account (
    account_id INTEGER NOT NULL,
    prorata_user_id INTEGER NOT NULL,
    account_number VARCHAR NOT NULL,
    sort_code VARCHAR,
    bank_id INTEGER
);



CREATE TABLE bank (
    bank_id INTEGER NOT NULL,
    name VARCHAR,
    address VARCHAR,
    postcode VARCHAR,
    telphone VARCHAR,
    email VARCHAR
);

CREATE TABLE contract (
    contract_id INTEGER NOT NULL,
    employment_id INTEGER
);

CREATE TABLE employer (
    employer_id INTEGER NOT NULL,
    name VARCHAR NOT NULL,
    office_address VARCHAR,
    office_postcode VARCHAR
);

CREATE TABLE employer_contact (
    employer_contact_id INTEGER NOT NULL,
    employer_id INTEGER NOT NULL,
    contact_name VARCHAR,
    contact_type VARCHAR,
    contact_body VARCHAR
);

CREATE SEQUENCE employer_employer_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


CREATE TABLE employment (
    employment_id INTEGER NOT NULL,
    employer_id INTEGER NOT NULL,
    prorata_user_id INTEGER NOT NULL,
    hourly_rate REAL NOT NULL,
    start_DATE DATE NOT NULL,
    end_DATE DATE,
    hours_per_week REAL,
    name VARCHAR NOT NULL
);

CREATE TABLE employment_session (
    employment_session_id INTEGER NOT NULL,
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    employment_id INTEGER NOT NULL,
    location_id INTEGER NOT NULL
);

CREATE TABLE location (
    location_id INTEGER NOT NULL,
    x_coordinate REAL NOT NULL,
    y_coordinate REAL NOT NULL
);
CREATE TABLE pay_cheque (
    pay_cheque_id INTEGER NOT NULL,
    payment_id INTEGER
);

CREATE TABLE payment (
    payment_id INTEGER NOT NULL,
    amount REAL NOT NULL,
    payment_DATE DATE,
    employment_id INTEGER NOT NULL
);

CREATE TABLE prorata_user (
    prorata_user_id INTEGER NOT NULL,
    password VARCHAR NOT NULL,
    first_name VARCHAR,
    last_name VARCHAR,
    email VARCHAR,
    address VARCHAR,
    postcode VARCHAR
);

CREATE TABLE subscription (
    subscription_id INTEGER NOT NULL,
    prorata_user_id INTEGER NOT NULL,
    subscription_type_id INTEGER NOT NULL,
    start_DATE_time TIMESTAMP NOT NULL,
    end_DATE_time TIMESTAMP
);

CREATE TABLE subscription_type (
    subscription_type_id INTEGER NOT NULL,
    name VARCHAR NOT NULL,
    rate REAL NOT NULL
);

CREATE TABLE tax_bracket (
    tax_bracket_id INTEGER NOT NULL,
    year DATE,
    personal_allowance REAL,
    percent_deduction REAL,
    tax_code VARCHAR
);

CREATE TABLE tax_deduction (
    tax_deduction_id INTEGER NOT NULL,
    tax_bracket_id INTEGER NOT NULL,
    amount REAL,
    payment_id INTEGER
);

CREATE TABLE user_contact (
    user_contact_id INTEGER NOT NULL,
    contact_name VARCHAR,
    contact_type VARCHAR,
    contact_body VARCHAR,
    prorata_user_id INTEGER NOT NULL
);

ALTER TABLE ONLY location
    ADD CONSTRAINT location_pkey PRIMARY KEY (location_id);


ALTER TABLE ONLY account
    ADD CONSTRAINT pk_account PRIMARY KEY (account_id);


ALTER TABLE ONLY bank
    ADD CONSTRAINT pk_bank PRIMARY KEY (bank_id);


ALTER TABLE ONLY contract
    ADD CONSTRAINT pk_contract PRIMARY KEY (contract_id);


ALTER TABLE ONLY employer
    ADD CONSTRAINT pk_employer PRIMARY KEY (employer_id);


ALTER TABLE ONLY employer_contact
    ADD CONSTRAINT pk_employer_contact PRIMARY KEY (employer_contact_id);


ALTER TABLE ONLY employment
    ADD CONSTRAINT pk_employment PRIMARY KEY (employment_id);


ALTER TABLE ONLY employment_session
    ADD CONSTRAINT pk_employment_session PRIMARY KEY (employment_session_id);


ALTER TABLE ONLY pay_cheque
    ADD CONSTRAINT pk_pay_cheque PRIMARY KEY (pay_cheque_id);


ALTER TABLE ONLY payment
    ADD CONSTRAINT pk_payment PRIMARY KEY (payment_id);


ALTER TABLE ONLY prorata_user
    ADD CONSTRAINT pk_prorata_user PRIMARY KEY (prorata_user_id);


ALTER TABLE ONLY tax_bracket
    ADD CONSTRAINT pk_tax_bracket PRIMARY KEY (tax_bracket_id);


ALTER TABLE ONLY tax_deduction
    ADD CONSTRAINT pk_tax_deduction PRIMARY KEY (tax_deduction_id);


ALTER TABLE ONLY user_contact
    ADD CONSTRAINT pk_user_contact PRIMARY KEY (user_contact_id);


ALTER TABLE ONLY subscription
    ADD CONSTRAINT subscription_pkey PRIMARY KEY (subscription_id);


ALTER TABLE ONLY subscription_type
    ADD CONSTRAINT subscription_type_pkey PRIMARY KEY (subscription_type_id);

ALTER TABLE ONLY prorata_user
    ADD CONSTRAINT unique_prorata_user_email UNIQUE (email);


ALTER TABLE ONLY user_contact
    ADD CONSTRAINT fk_2gcgtrmnvwgv2sphapl5jmo3w FOREIGN KEY (prorata_user_id) REFERENCES user_contact(user_contact_id);


ALTER TABLE ONLY account
    ADD CONSTRAINT fk_account_0 FOREIGN KEY (prorata_user_id) REFERENCES prorata_user(prorata_user_id) ON UPDATE CASCADE ON DELETE CASCADE;


ALTER TABLE ONLY account
    ADD CONSTRAINT fk_account_1 FOREIGN KEY (bank_id) REFERENCES bank(bank_id) ON UPDATE CASCADE ON DELETE CASCADE;


ALTER TABLE ONLY contract
    ADD CONSTRAINT fk_contract_0 FOREIGN KEY (employment_id) REFERENCES employment(employment_id) ON UPDATE CASCADE ON DELETE CASCADE;


ALTER TABLE ONLY employer_contact
    ADD CONSTRAINT fk_employer_contact_0 FOREIGN KEY (employer_id) REFERENCES employer(employer_id) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY employment
    ADD CONSTRAINT fk_employment_0 FOREIGN KEY (employer_id) REFERENCES employer(employer_id) ON UPDATE CASCADE ON DELETE CASCADE;


ALTER TABLE ONLY employment
    ADD CONSTRAINT fk_employment_1 FOREIGN KEY (prorata_user_id) REFERENCES prorata_user(prorata_user_id) ON UPDATE CASCADE ON DELETE CASCADE;


ALTER TABLE ONLY employment_session
    ADD CONSTRAINT fk_employment_session_0 FOREIGN KEY (employment_id) REFERENCES employment(employment_id) ON UPDATE CASCADE ON DELETE CASCADE;


ALTER TABLE ONLY employment_session
    ADD CONSTRAINT fk_employment_session_location FOREIGN KEY (location_id) REFERENCES location(location_id);


ALTER TABLE ONLY user_contact
    ADD CONSTRAINT fk_h6syfj9fse40b9ii02tcxj3ya FOREIGN KEY (user_contact_id) REFERENCES prorata_user(prorata_user_id);


ALTER TABLE ONLY pay_cheque
    ADD CONSTRAINT fk_pay_cheque_0 FOREIGN KEY (payment_id) REFERENCES payment(payment_id) ON UPDATE CASCADE ON DELETE CASCADE;


ALTER TABLE ONLY payment
    ADD CONSTRAINT fk_payment_0 FOREIGN KEY (employment_id) REFERENCES employment(employment_id) ON UPDATE CASCADE ON DELETE CASCADE;


ALTER TABLE ONLY subscription
    ADD CONSTRAINT fk_subscription_prorata_user FOREIGN KEY (prorata_user_id) REFERENCES prorata_user(prorata_user_id) ON UPDATE CASCADE ON DELETE CASCADE;


ALTER TABLE ONLY subscription
    ADD CONSTRAINT fk_subscription_subscription_type FOREIGN KEY (subscription_type_id) REFERENCES subscription_type(subscription_type_id) ON UPDATE CASCADE ON DELETE CASCADE;


ALTER TABLE ONLY tax_deduction
    ADD CONSTRAINT fk_tax_deduction_0 FOREIGN KEY (tax_bracket_id) REFERENCES tax_bracket(tax_bracket_id) ON UPDATE CASCADE ON DELETE CASCADE;


ALTER TABLE ONLY tax_deduction
    ADD CONSTRAINT fk_tax_deduction_1 FOREIGN KEY (payment_id) REFERENCES payment(payment_id) ON UPDATE CASCADE ON DELETE CASCADE;


ALTER TABLE ONLY user_contact
    ADD CONSTRAINT fk_user_contact_0 FOREIGN KEY (prorata_user_id) REFERENCES prorata_user(prorata_user_id) ON UPDATE CASCADE ON DELETE CASCADE;
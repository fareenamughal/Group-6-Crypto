--creating the crypto table
CREATE TABLE public.crypto_tbl
(
    "Date" date,
    "Open" money,
    "High" money,
    "Low" money,
    "Close" money,
    "Adj_Close" money,
    "Volume" character varying(20),
    "Name" character varying(20)
)
WITH (
    OIDS = FALSE
);

ALTER TABLE IF EXISTS public.crypto_tbl
    OWNER to postgres;


--creating the s&p500 table
CREATE TABLE public.sp500_tbl
(
    "Date" date,
    "Open" money,
    "High" money,
    "Low" money,
    "Close" money,
    "Adj_Close" money,
    "Volume" character varying(20),
    "Name" character varying(20),
    PRIMARY KEY ("Date")
)
WITH (
    OIDS = FALSE
);

ALTER TABLE IF EXISTS public.sp500_tbl
    OWNER to postgres;


--display tables' data
SELECT * FROM crypto_tbl
SELECT * FROM sp500_tbl


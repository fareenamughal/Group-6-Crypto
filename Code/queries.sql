--creating crypto table
CREATE TABLE public.crypto_tbl
(
    "Date" date,
    "Open" money,
    "Volume" character varying(20),
    "Market_Capitalization" money,
    "Coin_Name" character varying(20)
)
WITH (
    OIDS = FALSE
);

ALTER TABLE IF EXISTS public.crypto_tbl
    OWNER to postgres;

--creating sp_500 table
CREATE TABLE public.sp500_tbl
(
    "Date" date,
    "Open" money,
    "High" money,
    "Low" money,
    "Close" money,
    "Adj_Close" money,
    "Volume" character varying(20),
    PRIMARY KEY ("Date")
)
WITH (
    OIDS = FALSE
);

ALTER TABLE IF EXISTS public.sp500_tbl
    OWNER to postgres;

--OTHER QUERIES
SELECT * FROM sp500_tbl;
SELECT * FROM crypto_tbl;
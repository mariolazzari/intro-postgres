-- Table: public.bookmarks
-- DROP TABLE IF EXISTS public.bookmarks;
CREATE TABLE IF NOT EXISTS public.bookmarks (
    id integer NOT NULL,
    url character varying(255) COLLATE pg_catalog."default" NOT NULL,
    name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    description character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT bookmarks_pkey PRIMARY KEY (id)
) TABLESPACE pg_default;
ALTER TABLE IF EXISTS public.bookmarks OWNER to mariolazzari;
INSERT INTO public.bookmarks(id, url, name, description)
VALUES (
        1,
        'https://mariolazzari.it',
        'Mario Lazzari',
        'My personal site'
    );
SELECT id,
    url,
    name,
    description
FROM public.bookmarks;
create table if not exists aggregator_sites (
  url character varying not null,
  prev_sync_last_data_update timestamp with time zone null,
	prev_sync_http_code smallint null,
	prev_sync_message null,
	constraint url_pkey primary key (url)
);

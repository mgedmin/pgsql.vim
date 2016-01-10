" Vim syntax file
" Language:     SQL, PL/pgSQL, PL/Python (PostgreSQL 9.5)
" Author:       space::tekk
" Maintainer:   Lifepillar

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore

syn keyword sqlSpecial   false null true

" SQL keywords (see Table C-1 in App. C of PostgreSQL manual)
syn keyword sqlKeyword   abort abs absent absolute access according action ada add admin after array
syn keyword sqlKeyword   aggregate allocate also always analyse are array_agg array_max_cardinality as
syn keyword sqlKeyword   asc asensitive assertion assignment asymmetric at atomic attribute attributes
syn keyword sqlKeyword   authorization avg backward base64 before begin begin_frame begin_partition
syn keyword sqlKeyword   bernoulli binary bit_length blob blocked bom both breadth by cache call called
syn keyword sqlKeyword   cardinality cascade cascaded case cast catalog catalog_name ceil ceiling chain
syn keyword sqlKeyword   characteristics characters character_length character_set_catalog
syn keyword sqlKeyword   character_set_name character_set_schema char_length check checkpoint class
syn keyword sqlKeyword   class_origin clob close cluster coalesce cobol collate collation
syn keyword sqlKeyword   collation_catalog collation_name collation_schema collect column columns
syn keyword sqlKeyword   column_name command_function command_function_code comments committed
syn keyword sqlKeyword   concurrently condition condition_number configuration conflict connect
syn keyword sqlKeyword   connection connection_name constraint constraints constraint_catalog
syn keyword sqlKeyword   constraint_name constraint_schema constructor content continue contains
syn keyword sqlKeyword   control conversion convert corr corresponding cost count covar_pop covar_samp
syn keyword sqlKeyword   cross csv cube cume_dist current current_catalog current_date
syn keyword sqlKeyword   current_default_transform_group current_path current_role current_row
syn keyword sqlKeyword   current_schema current_time current_timestamp current_transform_group_for_type
syn keyword sqlKeyword   current_user cursor cursor_name cycle data database datalink
syn keyword sqlKeyword   datetime_interval_code datetime_interval_precision day db deallocate dec
syn keyword sqlKeyword   declare default defaults deferrable deferred defined definer degree delimiter
syn keyword sqlKeyword   delimiters dense_rank depth deref derived desc describe descriptor
syn keyword sqlKeyword   deterministic diagnostics dictionary disable discard disconnect dispatch
syn keyword sqlKeyword   dlnewcopy dlpreviouscopy dlurlcomplete dlurlcompleteonly dlurlcompletewrite
syn keyword sqlKeyword   dlurlpath dlurlpathonly dlurlpathwrite dlurlscheme dlurlserver dlvalue do
syn keyword sqlKeyword   document domain dynamic dynamic_function dynamic_function_code each element
syn keyword sqlKeyword   else empty enable encoding encrypted end end-exec end_frame end_partition
syn keyword sqlKeyword   enforced equals event every exception exclude excluding exclusive exec exp
syn keyword sqlKeyword   expression extension external extract family fetch file filter final first
syn keyword sqlKeyword   first_value flag floor following for force foreign fortran forward found
syn keyword sqlKeyword   frame_row free freeze from fs full function functions fusion general generated
syn keyword sqlKeyword   get global go goto granted greatest group grouping groups handler having
syn keyword sqlKeyword   header hex hierarchy hold hour id identity if ignore immediate immediately
syn keyword sqlKeyword   immutable implementation implicit import including increment indent index
syn keyword sqlKeyword   indexes indicator inherit inherits initially inline inner inout input
syn keyword sqlKeyword   insensitive instance instantiable instead integrity intersection into invoker
syn keyword sqlKeyword   is isnull isolation join key key_member key_type label lag language large last
syn keyword sqlKeyword   last_value lateral lead leading leakproof least left length level library
syn keyword sqlKeyword   like_regex limit link listen ln load local localtime localtimestamp location
syn keyword sqlKeyword   locator locked logged lower map mapping match matched materialized max
syn keyword sqlKeyword   maxvalue max_cardinality member merge message_length message_octet_length
syn keyword sqlKeyword   message_text method min minute minvalue mod mode modifies module month more
syn keyword sqlKeyword   move multiset mumps name names namespace national natural nchar nclob nesting
syn keyword sqlKeyword   new next nfc nfd nfkc nfkd nil no none normalize normalized not nothing notify
syn keyword sqlKeyword   notnull nowait nth_value ntile nullable nullif nulls number object
syn keyword sqlKeyword   occurrences_regex octets octet_length of off offset oids old on only open
syn keyword sqlKeyword   operator option options or order ordering ordinality others out outer output
syn keyword sqlKeyword   over overlaps overlay overriding owned owner pad parameter parameter_mode
syn keyword sqlKeyword   parameter_name parameter_ordinal_position parameter_specific_catalog
syn keyword sqlKeyword   parameter_specific_name parameter_specific_schema parser partial partition
syn keyword sqlKeyword   pascal passing passthrough password percent percentile_cont percentile_disc
syn keyword sqlKeyword   percent_rank period permission placing plans pli policy portion position
syn keyword sqlKeyword   position_regex power precedes preceding precision prepare prepared preserve
syn keyword sqlKeyword   primary prior privileges procedural procedure program public quote range rank
syn keyword sqlKeyword   read reads real reassign recheck recovery recursive ref references referencing
syn keyword sqlKeyword   refresh regr_avgx regr_avgy regr_count regr_intercept regr_r2 regr_slope
syn keyword sqlKeyword   regr_sxx regr_sxy regr_syy reindex relative release rename repeatable replace
syn keyword sqlKeyword   replica requiring reset respect restart restore restrict result return
syn keyword sqlKeyword   returned_cardinality returned_length returned_octet_length returned_sqlstate
syn keyword sqlKeyword   returning returns right role rollup routine routine_catalog routine_name
syn keyword sqlKeyword   routine_schema row rows row_count row_number rule scale schema schema_name
syn keyword sqlKeyword   scope scope_catalog scope_name scope_schema scroll search second section
syn keyword sqlKeyword   security selective self sensitive sequence sequences serializable server
syn keyword sqlKeyword   server_name session session_user setof sets share show similar simple size
syn keyword sqlKeyword   skip snapshot some source space specific specifictype specific_name sql
syn keyword sqlKeyword   sqlcode sqlerror sqlexception sqlstate sqlwarning sqrt stable standalone start
syn keyword sqlKeyword   state statement static statistics stddev_pop stddev_samp stdin stdout storage
syn keyword sqlKeyword   strict strip structure style subclass_origin submultiset substring
syn keyword sqlKeyword   substring_regex succeeds sum symmetric sysid system system_time system_user
syn keyword sqlKeyword   table tables tablesample tablespace table_name temp template temporary then
syn keyword sqlKeyword   ties timezone_hour timezone_minute to token top_level_count trailing
syn keyword sqlKeyword   transaction transactions_committed transactions_rolled_back transaction_active
syn keyword sqlKeyword   transform transforms translate translate_regex translation treat trigger
syn keyword sqlKeyword   trigger_catalog trigger_name trigger_schema trim trim_array trusted type types
syn keyword sqlKeyword   uescape unbounded uncommitted under unencrypted union unique unknown unlink
syn keyword sqlKeyword   unlisten unlogged unnamed unnest until untyped upper uri usage user
syn keyword sqlKeyword   user_defined_type_catalog user_defined_type_code user_defined_type_name
syn keyword sqlKeyword   user_defined_type_schema using vacuum valid validate validator value values
syn keyword sqlKeyword   value_of varbinary variadic var_pop var_samp verbose version versioning view
syn keyword sqlKeyword   views volatile when whenever where whitespace width_bucket window with within
syn keyword sqlKeyword   without work wrapper write xmlagg xmlattributes xmlbinary xmlcast xmlcomment
syn keyword sqlKeyword   xmlconcat xmldeclaration xmldocument xmlelement xmlexists xmlforest xmliterate
syn keyword sqlKeyword   xmlnamespaces xmlparse xmlpi xmlquery xmlroot xmlschema xmlserialize xmltable
syn keyword sqlKeyword   xmltext xmlvalidate year yes zone
" PL/pgSQL
syn keyword sqlKeyword contained alias all array as begin by case close collate column constant
syn keyword sqlKeyword contained constraint continue current current cursor datatype declare
syn keyword sqlKeyword contained detail diagnostics else elsif end errcode exception execute
syn keyword sqlKeyword contained exit fetch fetch for foreach forward found from get hint if
syn keyword sqlKeyword contained into last loop message move next no notice open perform prepare
syn keyword sqlKeyword contained query raise relative return reverse rowtype schema
syn keyword sqlKeyword contained scroll slice sqlstate stacked strict table tg_argv tg_event
syn keyword sqlKeyword contained tg_level tg_name tg_nargs tg_op tg_relid tg_relname
syn keyword sqlKeyword contained tg_table_name tg_table_schema tg_tag tg_when then type using
syn keyword sqlKeyword contained while

" Functions
" To get the list of all PostgreSQL functions, give the following commands
" (this assumes that template1 has not been modified from its default):
"
" psql template1
" \t
" \o functions.txt
" select   distinct p.proname
" from     pg_catalog.pg_namespace n
" join     pg_catalog.pg_proc p
" on       p.pronamespace = n.oid
" where    p.proname not like '\_%'
" order by p.proname;
syn keyword sqlFunction RI_FKey_cascade_del RI_FKey_cascade_upd RI_FKey_check_ins
syn keyword sqlFunction RI_FKey_check_upd RI_FKey_noaction_del RI_FKey_noaction_upd
syn keyword sqlFunction RI_FKey_restrict_del RI_FKey_restrict_upd RI_FKey_setdefault_del
syn keyword sqlFunction RI_FKey_setdefault_upd RI_FKey_setnull_del RI_FKey_setnull_upd abbrev abs
syn keyword sqlFunction abstime abstimeeq abstimege abstimegt abstimein abstimele abstimelt
syn keyword sqlFunction abstimene abstimeout abstimerecv abstimesend aclcontains acldefault
syn keyword sqlFunction aclexplode aclinsert aclitemeq aclitemin aclitemout aclremove acos age
syn keyword sqlFunction any_in any_out anyarray_in anyarray_out anyarray_recv anyarray_send
syn keyword sqlFunction anyelement_in anyelement_out anyenum_in anyenum_out anynonarray_in
syn keyword sqlFunction anynonarray_out anyrange_in anyrange_out anytextcat area areajoinsel
syn keyword sqlFunction areasel array_agg array_agg_array_finalfn array_agg_array_transfn
syn keyword sqlFunction array_agg_finalfn array_agg_transfn array_append array_cat array_dims
syn keyword sqlFunction array_eq array_fill array_ge array_gt array_in array_larger array_le
syn keyword sqlFunction array_length array_lower array_lt array_ndims array_ne array_out
syn keyword sqlFunction array_position array_positions array_prepend array_recv array_remove
syn keyword sqlFunction array_replace array_send array_smaller array_to_json array_to_string
syn keyword sqlFunction array_typanalyze array_upper arraycontained arraycontains
syn keyword sqlFunction arraycontjoinsel arraycontsel arrayoverlap ascii ascii_to_mic
syn keyword sqlFunction ascii_to_utf8 asin atan atan2 avg bernoulli big5_to_euc_tw big5_to_mic
syn keyword sqlFunction big5_to_utf8 binary_upgrade_create_empty_extension
syn keyword sqlFunction binary_upgrade_set_next_array_pg_type_oid
syn keyword sqlFunction binary_upgrade_set_next_heap_pg_class_oid
syn keyword sqlFunction binary_upgrade_set_next_index_pg_class_oid
syn keyword sqlFunction binary_upgrade_set_next_pg_authid_oid binary_upgrade_set_next_pg_enum_oid
syn keyword sqlFunction binary_upgrade_set_next_pg_type_oid
syn keyword sqlFunction binary_upgrade_set_next_toast_pg_class_oid
syn keyword sqlFunction binary_upgrade_set_next_toast_pg_type_oid bit bit_and bit_in bit_length
syn keyword sqlFunction bit_or bit_out bit_recv bit_send bitand bitcat bitcmp biteq bitge bitgt
syn keyword sqlFunction bitle bitlt bitne bitnot bitor bitshiftleft bitshiftright bittypmodin
syn keyword sqlFunction bittypmodout bitxor bool bool_accum bool_accum_inv bool_alltrue bool_and
syn keyword sqlFunction bool_anytrue bool_or booland_statefunc booleq boolge boolgt boolin boolle
syn keyword sqlFunction boollt boolne boolor_statefunc boolout boolrecv boolsend bound_box box
syn keyword sqlFunction box_above box_above_eq box_add box_below box_below_eq box_center
syn keyword sqlFunction box_contain box_contain_pt box_contained box_distance box_div box_eq
syn keyword sqlFunction box_ge box_gt box_in box_intersect box_le box_left box_lt box_mul box_out
syn keyword sqlFunction box_overabove box_overbelow box_overlap box_overleft box_overright
syn keyword sqlFunction box_recv box_right box_same box_send box_sub bpchar bpchar_larger
syn keyword sqlFunction bpchar_pattern_ge bpchar_pattern_gt bpchar_pattern_le bpchar_pattern_lt
syn keyword sqlFunction bpchar_smaller bpcharcmp bpchareq bpcharge bpchargt bpchariclike
syn keyword sqlFunction bpcharicnlike bpcharicregexeq bpcharicregexne bpcharin bpcharle
syn keyword sqlFunction bpcharlike bpcharlt bpcharne bpcharnlike bpcharout bpcharrecv
syn keyword sqlFunction bpcharregexeq bpcharregexne bpcharsend bpchartypmodin bpchartypmodout
syn keyword sqlFunction brin_inclusion_add_value brin_inclusion_consistent brin_inclusion_opcinfo
syn keyword sqlFunction brin_inclusion_union brin_minmax_add_value brin_minmax_consistent
syn keyword sqlFunction brin_minmax_opcinfo brin_minmax_union brin_summarize_new_values
syn keyword sqlFunction brinbeginscan brinbuild brinbuildempty brinbulkdelete brincostestimate
syn keyword sqlFunction brinendscan bringetbitmap brininsert brinmarkpos brinoptions brinrescan
syn keyword sqlFunction brinrestrpos brinvacuumcleanup broadcast btabstimecmp btarraycmp
syn keyword sqlFunction btbeginscan btboolcmp btbpchar_pattern_cmp btbuild btbuildempty
syn keyword sqlFunction btbulkdelete btcanreturn btcharcmp btcostestimate btendscan btfloat48cmp
syn keyword sqlFunction btfloat4cmp btfloat4sortsupport btfloat84cmp btfloat8cmp
syn keyword sqlFunction btfloat8sortsupport btgetbitmap btgettuple btinsert btint24cmp btint28cmp
syn keyword sqlFunction btint2cmp btint2sortsupport btint42cmp btint48cmp btint4cmp
syn keyword sqlFunction btint4sortsupport btint82cmp btint84cmp btint8cmp btint8sortsupport
syn keyword sqlFunction btmarkpos btnamecmp btnamesortsupport btoidcmp btoidsortsupport
syn keyword sqlFunction btoidvectorcmp btoptions btrecordcmp btrecordimagecmp btreltimecmp
syn keyword sqlFunction btrescan btrestrpos btrim bttext_pattern_cmp bttextcmp bttextsortsupport
syn keyword sqlFunction bttidcmp bttintervalcmp btvacuumcleanup bytea_string_agg_finalfn
syn keyword sqlFunction bytea_string_agg_transfn byteacat byteacmp byteaeq byteage byteagt
syn keyword sqlFunction byteain byteale bytealike bytealt byteane byteanlike byteaout bytearecv
syn keyword sqlFunction byteasend cardinality cash_cmp cash_div_cash cash_div_flt4 cash_div_flt8
syn keyword sqlFunction cash_div_int2 cash_div_int4 cash_eq cash_ge cash_gt cash_in cash_le
syn keyword sqlFunction cash_lt cash_mi cash_mul_flt4 cash_mul_flt8 cash_mul_int2 cash_mul_int4
syn keyword sqlFunction cash_ne cash_out cash_pl cash_recv cash_send cash_words cashlarger
syn keyword sqlFunction cashsmaller cbrt ceil ceiling center char char_length character_length
syn keyword sqlFunction chareq charge chargt charin charle charlt charne charout charrecv
syn keyword sqlFunction charsend chr cideq cidin cidout cidr cidr_in cidr_out cidr_recv cidr_send
syn keyword sqlFunction cidrecv cidsend circle circle_above circle_add_pt circle_below
syn keyword sqlFunction circle_center circle_contain circle_contain_pt circle_contained
syn keyword sqlFunction circle_distance circle_div_pt circle_eq circle_ge circle_gt circle_in
syn keyword sqlFunction circle_le circle_left circle_lt circle_mul_pt circle_ne circle_out
syn keyword sqlFunction circle_overabove circle_overbelow circle_overlap circle_overleft
syn keyword sqlFunction circle_overright circle_recv circle_right circle_same circle_send
syn keyword sqlFunction circle_sub_pt clock_timestamp close_lb close_ls close_lseg close_pb
syn keyword sqlFunction close_pl close_ps close_sb close_sl col_description concat concat_ws
syn keyword sqlFunction contjoinsel contsel convert convert_from convert_to corr cos cot count
syn keyword sqlFunction covar_pop covar_samp cstring_in cstring_out cstring_recv cstring_send
syn keyword sqlFunction cume_dist cume_dist_final current_database current_query current_schema
syn keyword sqlFunction current_schemas current_setting current_user currtid currtid2 currval
syn keyword sqlFunction cursor_to_xml cursor_to_xmlschema database_to_xml
syn keyword sqlFunction database_to_xml_and_xmlschema database_to_xmlschema date date_cmp
syn keyword sqlFunction date_cmp_timestamp date_cmp_timestamptz date_eq date_eq_timestamp
syn keyword sqlFunction date_eq_timestamptz date_ge date_ge_timestamp date_ge_timestamptz date_gt
syn keyword sqlFunction date_gt_timestamp date_gt_timestamptz date_in date_larger date_le
syn keyword sqlFunction date_le_timestamp date_le_timestamptz date_lt date_lt_timestamp
syn keyword sqlFunction date_lt_timestamptz date_mi date_mi_interval date_mii date_ne
syn keyword sqlFunction date_ne_timestamp date_ne_timestamptz date_out date_part date_pl_interval
syn keyword sqlFunction date_pli date_recv date_send date_smaller date_sortsupport date_trunc
syn keyword sqlFunction daterange daterange_canonical daterange_subdiff datetime_pl datetimetz_pl
syn keyword sqlFunction dcbrt decode degrees dense_rank dense_rank_final dexp diagonal diameter
syn keyword sqlFunction dispell_init dispell_lexize dist_cpoint dist_cpoly dist_lb dist_pb
syn keyword sqlFunction dist_pc dist_pl dist_polyp dist_ppath dist_ppoly dist_ps dist_sb dist_sl
syn keyword sqlFunction div dlog1 dlog10 domain_in domain_recv dpow dround dsimple_init
syn keyword sqlFunction dsimple_lexize dsnowball_init dsnowball_lexize dsqrt dsynonym_init
syn keyword sqlFunction dsynonym_lexize dtrunc elem_contained_by_range encode enum_cmp enum_eq
syn keyword sqlFunction enum_first enum_ge enum_gt enum_in enum_larger enum_last enum_le enum_lt
syn keyword sqlFunction enum_ne enum_out enum_range enum_recv enum_send enum_smaller eqjoinsel
syn keyword sqlFunction eqsel euc_cn_to_mic euc_cn_to_utf8 euc_jis_2004_to_shift_jis_2004
syn keyword sqlFunction euc_jis_2004_to_utf8 euc_jp_to_mic euc_jp_to_sjis euc_jp_to_utf8
syn keyword sqlFunction euc_kr_to_mic euc_kr_to_utf8 euc_tw_to_big5 euc_tw_to_mic euc_tw_to_utf8
syn keyword sqlFunction event_trigger_in event_trigger_out every exp factorial family
syn keyword sqlFunction fdw_handler_in fdw_handler_out first_value float4 float48div float48eq
syn keyword sqlFunction float48ge float48gt float48le float48lt float48mi float48mul float48ne
syn keyword sqlFunction float48pl float4_accum float4abs float4div float4eq float4ge float4gt
syn keyword sqlFunction float4in float4larger float4le float4lt float4mi float4mul float4ne
syn keyword sqlFunction float4out float4pl float4recv float4send float4smaller float4um float4up
syn keyword sqlFunction float8 float84div float84eq float84ge float84gt float84le float84lt
syn keyword sqlFunction float84mi float84mul float84ne float84pl float8_accum float8_avg
syn keyword sqlFunction float8_corr float8_covar_pop float8_covar_samp float8_regr_accum
syn keyword sqlFunction float8_regr_avgx float8_regr_avgy float8_regr_intercept float8_regr_r2
syn keyword sqlFunction float8_regr_slope float8_regr_sxx float8_regr_sxy float8_regr_syy
syn keyword sqlFunction float8_stddev_pop float8_stddev_samp float8_var_pop float8_var_samp
syn keyword sqlFunction float8abs float8div float8eq float8ge float8gt float8in float8larger
syn keyword sqlFunction float8le float8lt float8mi float8mul float8ne float8out float8pl
syn keyword sqlFunction float8recv float8send float8smaller float8um float8up floor flt4_mul_cash
syn keyword sqlFunction flt8_mul_cash fmgr_c_validator fmgr_internal_validator fmgr_sql_validator
syn keyword sqlFunction format format_type gb18030_to_utf8 gbk_to_utf8 generate_series
syn keyword sqlFunction generate_subscripts get_bit get_byte get_current_ts_config
syn keyword sqlFunction getdatabaseencoding getpgusername gin_cmp_prefix gin_cmp_tslexeme
syn keyword sqlFunction gin_compare_jsonb gin_consistent_jsonb gin_consistent_jsonb_path
syn keyword sqlFunction gin_extract_jsonb gin_extract_jsonb_path gin_extract_jsonb_query
syn keyword sqlFunction gin_extract_jsonb_query_path gin_extract_tsquery gin_extract_tsvector
syn keyword sqlFunction gin_triconsistent_jsonb gin_triconsistent_jsonb_path
syn keyword sqlFunction gin_tsquery_consistent gin_tsquery_triconsistent ginarrayconsistent
syn keyword sqlFunction ginarrayextract ginarraytriconsistent ginbeginscan ginbuild ginbuildempty
syn keyword sqlFunction ginbulkdelete gincostestimate ginendscan gingetbitmap gininsert
syn keyword sqlFunction ginmarkpos ginoptions ginqueryarrayextract ginrescan ginrestrpos
syn keyword sqlFunction ginvacuumcleanup gist_bbox_distance gist_box_compress gist_box_consistent
syn keyword sqlFunction gist_box_decompress gist_box_fetch gist_box_penalty gist_box_picksplit
syn keyword sqlFunction gist_box_same gist_box_union gist_circle_compress gist_circle_consistent
syn keyword sqlFunction gist_point_compress gist_point_consistent gist_point_distance
syn keyword sqlFunction gist_point_fetch gist_poly_compress gist_poly_consistent gistbeginscan
syn keyword sqlFunction gistbuild gistbuildempty gistbulkdelete gistcanreturn gistcostestimate
syn keyword sqlFunction gistendscan gistgetbitmap gistgettuple gistinsert gistmarkpos gistoptions
syn keyword sqlFunction gistrescan gistrestrpos gistvacuumcleanup gtsquery_compress
syn keyword sqlFunction gtsquery_consistent gtsquery_decompress gtsquery_penalty
syn keyword sqlFunction gtsquery_picksplit gtsquery_same gtsquery_union gtsvector_compress
syn keyword sqlFunction gtsvector_consistent gtsvector_decompress gtsvector_penalty
syn keyword sqlFunction gtsvector_picksplit gtsvector_same gtsvector_union gtsvectorin
syn keyword sqlFunction gtsvectorout has_any_column_privilege has_column_privilege
syn keyword sqlFunction has_database_privilege has_foreign_data_wrapper_privilege
syn keyword sqlFunction has_function_privilege has_language_privilege has_schema_privilege
syn keyword sqlFunction has_sequence_privilege has_server_privilege has_table_privilege
syn keyword sqlFunction has_tablespace_privilege has_type_privilege hash_aclitem hash_array
syn keyword sqlFunction hash_numeric hash_range hashbeginscan hashbpchar hashbuild hashbuildempty
syn keyword sqlFunction hashbulkdelete hashchar hashcostestimate hashendscan hashenum hashfloat4
syn keyword sqlFunction hashfloat8 hashgetbitmap hashgettuple hashinet hashinsert hashint2
syn keyword sqlFunction hashint2vector hashint4 hashint8 hashmacaddr hashmarkpos hashname hashoid
syn keyword sqlFunction hashoidvector hashoptions hashrescan hashrestrpos hashtext
syn keyword sqlFunction hashvacuumcleanup hashvarlena height host hostmask iclikejoinsel
syn keyword sqlFunction iclikesel icnlikejoinsel icnlikesel icregexeqjoinsel icregexeqsel
syn keyword sqlFunction icregexnejoinsel icregexnesel inet_client_addr inet_client_port
syn keyword sqlFunction inet_gist_compress inet_gist_consistent inet_gist_decompress
syn keyword sqlFunction inet_gist_fetch inet_gist_penalty inet_gist_picksplit inet_gist_same
syn keyword sqlFunction inet_gist_union inet_in inet_merge inet_out inet_recv inet_same_family
syn keyword sqlFunction inet_send inet_server_addr inet_server_port inetand inetmi inetmi_int8
syn keyword sqlFunction inetnot inetor inetpl initcap int2 int24div int24eq int24ge int24gt
syn keyword sqlFunction int24le int24lt int24mi int24mul int24ne int24pl int28div int28eq int28ge
syn keyword sqlFunction int28gt int28le int28lt int28mi int28mul int28ne int28pl int2_accum
syn keyword sqlFunction int2_accum_inv int2_avg_accum int2_avg_accum_inv int2_mul_cash int2_sum
syn keyword sqlFunction int2abs int2and int2div int2eq int2ge int2gt int2in int2int4_sum
syn keyword sqlFunction int2larger int2le int2lt int2mi int2mod int2mul int2ne int2not int2or
syn keyword sqlFunction int2out int2pl int2recv int2send int2shl int2shr int2smaller int2um
syn keyword sqlFunction int2up int2vectoreq int2vectorin int2vectorout int2vectorrecv
syn keyword sqlFunction int2vectorsend int2xor int4 int42div int42eq int42ge int42gt int42le
syn keyword sqlFunction int42lt int42mi int42mul int42ne int42pl int48div int48eq int48ge int48gt
syn keyword sqlFunction int48le int48lt int48mi int48mul int48ne int48pl int4_accum
syn keyword sqlFunction int4_accum_inv int4_avg_accum int4_avg_accum_inv int4_mul_cash int4_sum
syn keyword sqlFunction int4abs int4and int4div int4eq int4ge int4gt int4in int4inc int4larger
syn keyword sqlFunction int4le int4lt int4mi int4mod int4mul int4ne int4not int4or int4out int4pl
syn keyword sqlFunction int4range int4range_canonical int4range_subdiff int4recv int4send int4shl
syn keyword sqlFunction int4shr int4smaller int4um int4up int4xor int8 int82div int82eq int82ge
syn keyword sqlFunction int82gt int82le int82lt int82mi int82mul int82ne int82pl int84div int84eq
syn keyword sqlFunction int84ge int84gt int84le int84lt int84mi int84mul int84ne int84pl
syn keyword sqlFunction int8_accum int8_accum_inv int8_avg int8_avg_accum int8_avg_accum_inv
syn keyword sqlFunction int8_sum int8abs int8and int8dec int8dec_any int8div int8eq int8ge int8gt
syn keyword sqlFunction int8in int8inc int8inc_any int8inc_float8_float8 int8larger int8le int8lt
syn keyword sqlFunction int8mi int8mod int8mul int8ne int8not int8or int8out int8pl int8pl_inet
syn keyword sqlFunction int8range int8range_canonical int8range_subdiff int8recv int8send int8shl
syn keyword sqlFunction int8shr int8smaller int8um int8up int8xor integer_pl_date inter_lb
syn keyword sqlFunction inter_sb inter_sl internal_in internal_out interval interval_accum
syn keyword sqlFunction interval_accum_inv interval_avg interval_cmp interval_div interval_eq
syn keyword sqlFunction interval_ge interval_gt interval_hash interval_in interval_larger
syn keyword sqlFunction interval_le interval_lt interval_mi interval_mul interval_ne interval_out
syn keyword sqlFunction interval_pl interval_pl_date interval_pl_time interval_pl_timestamp
syn keyword sqlFunction interval_pl_timestamptz interval_pl_timetz interval_recv interval_send
syn keyword sqlFunction interval_smaller interval_transform interval_um intervaltypmodin
syn keyword sqlFunction intervaltypmodout intinterval isclosed isempty isfinite ishorizontal
syn keyword sqlFunction iso8859_1_to_utf8 iso8859_to_utf8 iso_to_koi8r iso_to_mic iso_to_win1251
syn keyword sqlFunction iso_to_win866 isopen isparallel isperp isvertical johab_to_utf8 json_agg
syn keyword sqlFunction json_agg_finalfn json_agg_transfn json_array_element
syn keyword sqlFunction json_array_element_text json_array_elements json_array_elements_text
syn keyword sqlFunction json_array_length json_build_array json_build_object json_each
syn keyword sqlFunction json_each_text json_extract_path json_extract_path_text json_in
syn keyword sqlFunction json_object json_object_agg json_object_agg_finalfn
syn keyword sqlFunction json_object_agg_transfn json_object_field json_object_field_text
syn keyword sqlFunction json_object_keys json_out json_populate_record json_populate_recordset
syn keyword sqlFunction json_recv json_send json_strip_nulls json_to_record json_to_recordset
syn keyword sqlFunction json_typeof jsonb_agg jsonb_agg_finalfn jsonb_agg_transfn
syn keyword sqlFunction jsonb_array_element jsonb_array_element_text jsonb_array_elements
syn keyword sqlFunction jsonb_array_elements_text jsonb_array_length jsonb_build_array
syn keyword sqlFunction jsonb_build_object jsonb_cmp jsonb_concat jsonb_contained jsonb_contains
syn keyword sqlFunction jsonb_delete jsonb_delete_path jsonb_each jsonb_each_text jsonb_eq
syn keyword sqlFunction jsonb_exists jsonb_exists_all jsonb_exists_any jsonb_extract_path
syn keyword sqlFunction jsonb_extract_path_text jsonb_ge jsonb_gt jsonb_hash jsonb_in jsonb_le
syn keyword sqlFunction jsonb_lt jsonb_ne jsonb_object jsonb_object_agg jsonb_object_agg_finalfn
syn keyword sqlFunction jsonb_object_agg_transfn jsonb_object_field jsonb_object_field_text
syn keyword sqlFunction jsonb_object_keys jsonb_out jsonb_populate_record
syn keyword sqlFunction jsonb_populate_recordset jsonb_pretty jsonb_recv jsonb_send jsonb_set
syn keyword sqlFunction jsonb_strip_nulls jsonb_to_record jsonb_to_recordset jsonb_typeof
syn keyword sqlFunction justify_days justify_hours justify_interval koi8r_to_iso koi8r_to_mic
syn keyword sqlFunction koi8r_to_utf8 koi8r_to_win1251 koi8r_to_win866 koi8u_to_utf8 lag
syn keyword sqlFunction language_handler_in language_handler_out last_value lastval latin1_to_mic
syn keyword sqlFunction latin2_to_mic latin2_to_win1250 latin3_to_mic latin4_to_mic lead left
syn keyword sqlFunction length like like_escape likejoinsel likesel line line_distance line_eq
syn keyword sqlFunction line_horizontal line_in line_interpt line_intersect line_out
syn keyword sqlFunction line_parallel line_perp line_recv line_send line_vertical ln lo_close
syn keyword sqlFunction lo_creat lo_create lo_export lo_from_bytea lo_get lo_import lo_lseek
syn keyword sqlFunction lo_lseek64 lo_open lo_put lo_tell lo_tell64 lo_truncate lo_truncate64
syn keyword sqlFunction lo_unlink log loread lower lower_inc lower_inf lowrite lpad lseg
syn keyword sqlFunction lseg_center lseg_distance lseg_eq lseg_ge lseg_gt lseg_horizontal lseg_in
syn keyword sqlFunction lseg_interpt lseg_intersect lseg_le lseg_length lseg_lt lseg_ne lseg_out
syn keyword sqlFunction lseg_parallel lseg_perp lseg_recv lseg_send lseg_vertical ltrim
syn keyword sqlFunction macaddr_and macaddr_cmp macaddr_eq macaddr_ge macaddr_gt macaddr_in
syn keyword sqlFunction macaddr_le macaddr_lt macaddr_ne macaddr_not macaddr_or macaddr_out
syn keyword sqlFunction macaddr_recv macaddr_send make_date make_interval make_time
syn keyword sqlFunction make_timestamp make_timestamptz makeaclitem masklen max md5 mic_to_ascii
syn keyword sqlFunction mic_to_big5 mic_to_euc_cn mic_to_euc_jp mic_to_euc_kr mic_to_euc_tw
syn keyword sqlFunction mic_to_iso mic_to_koi8r mic_to_latin1 mic_to_latin2 mic_to_latin3
syn keyword sqlFunction mic_to_latin4 mic_to_sjis mic_to_win1250 mic_to_win1251 mic_to_win866 min
syn keyword sqlFunction mktinterval mod mode mode_final money mul_d_interval mxid_age name nameeq
syn keyword sqlFunction namege namegt nameiclike nameicnlike nameicregexeq nameicregexne namein
syn keyword sqlFunction namele namelike namelt namene namenlike nameout namerecv nameregexeq
syn keyword sqlFunction nameregexne namesend neqjoinsel neqsel netmask network network_cmp
syn keyword sqlFunction network_eq network_ge network_gt network_larger network_le network_lt
syn keyword sqlFunction network_ne network_overlap network_smaller network_sub network_subeq
syn keyword sqlFunction network_sup network_supeq networkjoinsel networksel nextval nlikejoinsel
syn keyword sqlFunction nlikesel notlike now npoints nth_value ntile numeric numeric_abs
syn keyword sqlFunction numeric_accum numeric_accum_inv numeric_add numeric_avg numeric_avg_accum
syn keyword sqlFunction numeric_cmp numeric_div numeric_div_trunc numeric_eq numeric_exp
syn keyword sqlFunction numeric_fac numeric_ge numeric_gt numeric_in numeric_inc numeric_larger
syn keyword sqlFunction numeric_le numeric_ln numeric_log numeric_lt numeric_mod numeric_mul
syn keyword sqlFunction numeric_ne numeric_out numeric_poly_avg numeric_poly_stddev_pop
syn keyword sqlFunction numeric_poly_stddev_samp numeric_poly_sum numeric_poly_var_pop
syn keyword sqlFunction numeric_poly_var_samp numeric_power numeric_recv numeric_send
syn keyword sqlFunction numeric_smaller numeric_sortsupport numeric_sqrt numeric_stddev_pop
syn keyword sqlFunction numeric_stddev_samp numeric_sub numeric_sum numeric_transform
syn keyword sqlFunction numeric_uminus numeric_uplus numeric_var_pop numeric_var_samp
syn keyword sqlFunction numerictypmodin numerictypmodout numnode numrange numrange_subdiff
syn keyword sqlFunction obj_description octet_length oid oideq oidge oidgt oidin oidlarger oidle
syn keyword sqlFunction oidlt oidne oidout oidrecv oidsend oidsmaller oidvectoreq oidvectorge
syn keyword sqlFunction oidvectorgt oidvectorin oidvectorle oidvectorlt oidvectorne oidvectorout
syn keyword sqlFunction oidvectorrecv oidvectorsend oidvectortypes on_pb on_pl on_ppath on_ps
syn keyword sqlFunction on_sb on_sl opaque_in opaque_out ordered_set_transition
syn keyword sqlFunction ordered_set_transition_multi overlaps overlay path path_add path_add_pt
syn keyword sqlFunction path_center path_contain_pt path_distance path_div_pt path_in path_inter
syn keyword sqlFunction path_length path_mul_pt path_n_eq path_n_ge path_n_gt path_n_le path_n_lt
syn keyword sqlFunction path_npoints path_out path_recv path_send path_sub_pt pclose percent_rank
syn keyword sqlFunction percent_rank_final percentile_cont percentile_cont_float8_final
syn keyword sqlFunction percentile_cont_float8_multi_final percentile_cont_interval_final
syn keyword sqlFunction percentile_cont_interval_multi_final percentile_disc
syn keyword sqlFunction percentile_disc_final percentile_disc_multi_final pg_advisory_lock
syn keyword sqlFunction pg_advisory_lock_shared pg_advisory_unlock pg_advisory_unlock_all
syn keyword sqlFunction pg_advisory_unlock_shared pg_advisory_xact_lock
syn keyword sqlFunction pg_advisory_xact_lock_shared pg_available_extension_versions
syn keyword sqlFunction pg_available_extensions pg_backend_pid pg_backup_start_time
syn keyword sqlFunction pg_cancel_backend pg_char_to_encoding pg_client_encoding pg_collation_for
syn keyword sqlFunction pg_collation_is_visible pg_column_is_updatable pg_column_size
syn keyword sqlFunction pg_conf_load_time pg_conversion_is_visible
syn keyword sqlFunction pg_create_logical_replication_slot pg_create_physical_replication_slot
syn keyword sqlFunction pg_create_restore_point pg_current_xlog_insert_location
syn keyword sqlFunction pg_current_xlog_location pg_cursor pg_database_size pg_ddl_command_in
syn keyword sqlFunction pg_ddl_command_out pg_ddl_command_recv pg_ddl_command_send
syn keyword sqlFunction pg_describe_object pg_drop_replication_slot pg_encoding_max_length
syn keyword sqlFunction pg_encoding_to_char pg_event_trigger_ddl_commands
syn keyword sqlFunction pg_event_trigger_dropped_objects pg_event_trigger_table_rewrite_oid
syn keyword sqlFunction pg_event_trigger_table_rewrite_reason pg_export_snapshot
syn keyword sqlFunction pg_extension_config_dump pg_extension_update_paths pg_filenode_relation
syn keyword sqlFunction pg_function_is_visible pg_get_constraintdef pg_get_expr
syn keyword sqlFunction pg_get_function_arg_default pg_get_function_arguments
syn keyword sqlFunction pg_get_function_identity_arguments pg_get_function_result
syn keyword sqlFunction pg_get_functiondef pg_get_indexdef pg_get_keywords
syn keyword sqlFunction pg_get_multixact_members pg_get_object_address pg_get_replication_slots
syn keyword sqlFunction pg_get_ruledef pg_get_serial_sequence pg_get_triggerdef pg_get_userbyid
syn keyword sqlFunction pg_get_viewdef pg_has_role pg_identify_object
syn keyword sqlFunction pg_identify_object_as_address pg_indexes_size pg_is_in_backup
syn keyword sqlFunction pg_is_in_recovery pg_is_other_temp_schema pg_is_xlog_replay_paused
syn keyword sqlFunction pg_last_committed_xact pg_last_xact_replay_timestamp
syn keyword sqlFunction pg_last_xlog_receive_location pg_last_xlog_replay_location
syn keyword sqlFunction pg_listening_channels pg_lock_status pg_logical_slot_get_binary_changes
syn keyword sqlFunction pg_logical_slot_get_changes pg_logical_slot_peek_binary_changes
syn keyword sqlFunction pg_logical_slot_peek_changes pg_ls_dir pg_lsn_cmp pg_lsn_eq pg_lsn_ge
syn keyword sqlFunction pg_lsn_gt pg_lsn_hash pg_lsn_in pg_lsn_le pg_lsn_lt pg_lsn_mi pg_lsn_ne
syn keyword sqlFunction pg_lsn_out pg_lsn_recv pg_lsn_send pg_my_temp_schema pg_node_tree_in
syn keyword sqlFunction pg_node_tree_out pg_node_tree_recv pg_node_tree_send pg_notify
syn keyword sqlFunction pg_opclass_is_visible pg_operator_is_visible pg_opfamily_is_visible
syn keyword sqlFunction pg_options_to_table pg_postmaster_start_time pg_prepared_statement
syn keyword sqlFunction pg_prepared_xact pg_read_binary_file pg_read_file pg_relation_filenode
syn keyword sqlFunction pg_relation_filepath pg_relation_is_updatable pg_relation_size
syn keyword sqlFunction pg_reload_conf pg_replication_origin_advance pg_replication_origin_create
syn keyword sqlFunction pg_replication_origin_drop pg_replication_origin_oid
syn keyword sqlFunction pg_replication_origin_progress pg_replication_origin_session_is_setup
syn keyword sqlFunction pg_replication_origin_session_progress
syn keyword sqlFunction pg_replication_origin_session_reset pg_replication_origin_session_setup
syn keyword sqlFunction pg_replication_origin_xact_reset pg_replication_origin_xact_setup
syn keyword sqlFunction pg_rotate_logfile pg_sequence_parameters pg_show_all_file_settings
syn keyword sqlFunction pg_show_all_settings pg_show_replication_origin_status pg_size_pretty
syn keyword sqlFunction pg_sleep pg_sleep_for pg_sleep_until pg_start_backup
syn keyword sqlFunction pg_stat_clear_snapshot pg_stat_file pg_stat_get_activity
syn keyword sqlFunction pg_stat_get_analyze_count pg_stat_get_archiver
syn keyword sqlFunction pg_stat_get_autoanalyze_count pg_stat_get_autovacuum_count
syn keyword sqlFunction pg_stat_get_backend_activity pg_stat_get_backend_activity_start
syn keyword sqlFunction pg_stat_get_backend_client_addr pg_stat_get_backend_client_port
syn keyword sqlFunction pg_stat_get_backend_dbid pg_stat_get_backend_idset
syn keyword sqlFunction pg_stat_get_backend_pid pg_stat_get_backend_start
syn keyword sqlFunction pg_stat_get_backend_userid pg_stat_get_backend_waiting
syn keyword sqlFunction pg_stat_get_backend_xact_start
syn keyword sqlFunction pg_stat_get_bgwriter_buf_written_checkpoints
syn keyword sqlFunction pg_stat_get_bgwriter_buf_written_clean
syn keyword sqlFunction pg_stat_get_bgwriter_maxwritten_clean
syn keyword sqlFunction pg_stat_get_bgwriter_requested_checkpoints
syn keyword sqlFunction pg_stat_get_bgwriter_stat_reset_time
syn keyword sqlFunction pg_stat_get_bgwriter_timed_checkpoints pg_stat_get_blocks_fetched
syn keyword sqlFunction pg_stat_get_blocks_hit pg_stat_get_buf_alloc
syn keyword sqlFunction pg_stat_get_buf_fsync_backend pg_stat_get_buf_written_backend
syn keyword sqlFunction pg_stat_get_checkpoint_sync_time pg_stat_get_checkpoint_write_time
syn keyword sqlFunction pg_stat_get_db_blk_read_time pg_stat_get_db_blk_write_time
syn keyword sqlFunction pg_stat_get_db_blocks_fetched pg_stat_get_db_blocks_hit
syn keyword sqlFunction pg_stat_get_db_conflict_all pg_stat_get_db_conflict_bufferpin
syn keyword sqlFunction pg_stat_get_db_conflict_lock pg_stat_get_db_conflict_snapshot
syn keyword sqlFunction pg_stat_get_db_conflict_startup_deadlock
syn keyword sqlFunction pg_stat_get_db_conflict_tablespace pg_stat_get_db_deadlocks
syn keyword sqlFunction pg_stat_get_db_numbackends pg_stat_get_db_stat_reset_time
syn keyword sqlFunction pg_stat_get_db_temp_bytes pg_stat_get_db_temp_files
syn keyword sqlFunction pg_stat_get_db_tuples_deleted pg_stat_get_db_tuples_fetched
syn keyword sqlFunction pg_stat_get_db_tuples_inserted pg_stat_get_db_tuples_returned
syn keyword sqlFunction pg_stat_get_db_tuples_updated pg_stat_get_db_xact_commit
syn keyword sqlFunction pg_stat_get_db_xact_rollback pg_stat_get_dead_tuples
syn keyword sqlFunction pg_stat_get_function_calls pg_stat_get_function_self_time
syn keyword sqlFunction pg_stat_get_function_total_time pg_stat_get_last_analyze_time
syn keyword sqlFunction pg_stat_get_last_autoanalyze_time pg_stat_get_last_autovacuum_time
syn keyword sqlFunction pg_stat_get_last_vacuum_time pg_stat_get_live_tuples
syn keyword sqlFunction pg_stat_get_mod_since_analyze pg_stat_get_numscans
syn keyword sqlFunction pg_stat_get_snapshot_timestamp pg_stat_get_tuples_deleted
syn keyword sqlFunction pg_stat_get_tuples_fetched pg_stat_get_tuples_hot_updated
syn keyword sqlFunction pg_stat_get_tuples_inserted pg_stat_get_tuples_returned
syn keyword sqlFunction pg_stat_get_tuples_updated pg_stat_get_vacuum_count
syn keyword sqlFunction pg_stat_get_wal_senders pg_stat_get_xact_blocks_fetched
syn keyword sqlFunction pg_stat_get_xact_blocks_hit pg_stat_get_xact_function_calls
syn keyword sqlFunction pg_stat_get_xact_function_self_time pg_stat_get_xact_function_total_time
syn keyword sqlFunction pg_stat_get_xact_numscans pg_stat_get_xact_tuples_deleted
syn keyword sqlFunction pg_stat_get_xact_tuples_fetched pg_stat_get_xact_tuples_hot_updated
syn keyword sqlFunction pg_stat_get_xact_tuples_inserted pg_stat_get_xact_tuples_returned
syn keyword sqlFunction pg_stat_get_xact_tuples_updated pg_stat_reset pg_stat_reset_shared
syn keyword sqlFunction pg_stat_reset_single_function_counters
syn keyword sqlFunction pg_stat_reset_single_table_counters pg_stop_backup pg_switch_xlog
syn keyword sqlFunction pg_table_is_visible pg_table_size pg_tablespace_databases
syn keyword sqlFunction pg_tablespace_location pg_tablespace_size pg_terminate_backend
syn keyword sqlFunction pg_timezone_abbrevs pg_timezone_names pg_total_relation_size
syn keyword sqlFunction pg_trigger_depth pg_try_advisory_lock pg_try_advisory_lock_shared
syn keyword sqlFunction pg_try_advisory_xact_lock pg_try_advisory_xact_lock_shared
syn keyword sqlFunction pg_ts_config_is_visible pg_ts_dict_is_visible pg_ts_parser_is_visible
syn keyword sqlFunction pg_ts_template_is_visible pg_type_is_visible pg_typeof
syn keyword sqlFunction pg_xact_commit_timestamp pg_xlog_location_diff pg_xlog_replay_pause
syn keyword sqlFunction pg_xlog_replay_resume pg_xlogfile_name pg_xlogfile_name_offset pi
syn keyword sqlFunction plainto_tsquery plpgsql_call_handler plpgsql_inline_handler
syn keyword sqlFunction plpgsql_validator point point_above point_add point_below point_distance
syn keyword sqlFunction point_div point_eq point_horiz point_in point_left point_mul point_ne
syn keyword sqlFunction point_out point_recv point_right point_send point_sub point_vert
syn keyword sqlFunction poly_above poly_below poly_center poly_contain poly_contain_pt
syn keyword sqlFunction poly_contained poly_distance poly_in poly_left poly_npoints poly_out
syn keyword sqlFunction poly_overabove poly_overbelow poly_overlap poly_overleft poly_overright
syn keyword sqlFunction poly_recv poly_right poly_same poly_send polygon popen position
syn keyword sqlFunction positionjoinsel positionsel postgresql_fdw_validator pow power prsd_end
syn keyword sqlFunction prsd_headline prsd_lextype prsd_nexttoken prsd_start pt_contained_circle
syn keyword sqlFunction pt_contained_poly query_to_xml query_to_xml_and_xmlschema
syn keyword sqlFunction query_to_xmlschema querytree quote_ident quote_literal quote_nullable
syn keyword sqlFunction radians radius random range_adjacent range_after range_before range_cmp
syn keyword sqlFunction range_contained_by range_contains range_contains_elem range_eq range_ge
syn keyword sqlFunction range_gist_compress range_gist_consistent range_gist_decompress
syn keyword sqlFunction range_gist_fetch range_gist_penalty range_gist_picksplit range_gist_same
syn keyword sqlFunction range_gist_union range_gt range_in range_intersect range_le range_lt
syn keyword sqlFunction range_merge range_minus range_ne range_out range_overlaps range_overleft
syn keyword sqlFunction range_overright range_recv range_send range_typanalyze range_union
syn keyword sqlFunction rangesel rank rank_final record_eq record_ge record_gt record_image_eq
syn keyword sqlFunction record_image_ge record_image_gt record_image_le record_image_lt
syn keyword sqlFunction record_image_ne record_in record_le record_lt record_ne record_out
syn keyword sqlFunction record_recv record_send regclass regclassin regclassout regclassrecv
syn keyword sqlFunction regclasssend regconfigin regconfigout regconfigrecv regconfigsend
syn keyword sqlFunction regdictionaryin regdictionaryout regdictionaryrecv regdictionarysend
syn keyword sqlFunction regexeqjoinsel regexeqsel regexnejoinsel regexnesel regexp_matches
syn keyword sqlFunction regexp_replace regexp_split_to_array regexp_split_to_table regnamespacein
syn keyword sqlFunction regnamespaceout regnamespacerecv regnamespacesend regoperatorin
syn keyword sqlFunction regoperatorout regoperatorrecv regoperatorsend regoperin regoperout
syn keyword sqlFunction regoperrecv regopersend regprocedurein regprocedureout regprocedurerecv
syn keyword sqlFunction regproceduresend regprocin regprocout regprocrecv regprocsend regr_avgx
syn keyword sqlFunction regr_avgy regr_count regr_intercept regr_r2 regr_slope regr_sxx regr_sxy
syn keyword sqlFunction regr_syy regrolein regroleout regrolerecv regrolesend regtypein
syn keyword sqlFunction regtypeout regtyperecv regtypesend reltime reltimeeq reltimege reltimegt
syn keyword sqlFunction reltimein reltimele reltimelt reltimene reltimeout reltimerecv
syn keyword sqlFunction reltimesend repeat replace reverse right round row_number
syn keyword sqlFunction row_security_active row_to_json rpad rtrim scalargtjoinsel scalargtsel
syn keyword sqlFunction scalarltjoinsel scalarltsel schema_to_xml schema_to_xml_and_xmlschema
syn keyword sqlFunction schema_to_xmlschema session_user set_bit set_byte set_config set_masklen
syn keyword sqlFunction setseed setval setweight shell_in shell_out
syn keyword sqlFunction shift_jis_2004_to_euc_jis_2004 shift_jis_2004_to_utf8 shobj_description
syn keyword sqlFunction sign similar_escape sin sjis_to_euc_jp sjis_to_mic sjis_to_utf8 slope
syn keyword sqlFunction smgreq smgrin smgrne smgrout spg_kd_choose spg_kd_config
syn keyword sqlFunction spg_kd_inner_consistent spg_kd_picksplit spg_quad_choose spg_quad_config
syn keyword sqlFunction spg_quad_inner_consistent spg_quad_leaf_consistent spg_quad_picksplit
syn keyword sqlFunction spg_range_quad_choose spg_range_quad_config
syn keyword sqlFunction spg_range_quad_inner_consistent spg_range_quad_leaf_consistent
syn keyword sqlFunction spg_range_quad_picksplit spg_text_choose spg_text_config
syn keyword sqlFunction spg_text_inner_consistent spg_text_leaf_consistent spg_text_picksplit
syn keyword sqlFunction spgbeginscan spgbuild spgbuildempty spgbulkdelete spgcanreturn
syn keyword sqlFunction spgcostestimate spgendscan spggetbitmap spggettuple spginsert spgmarkpos
syn keyword sqlFunction spgoptions spgrescan spgrestrpos spgvacuumcleanup split_part sqrt
syn keyword sqlFunction statement_timestamp stddev stddev_pop stddev_samp string_agg
syn keyword sqlFunction string_agg_finalfn string_agg_transfn string_to_array strip strpos substr
syn keyword sqlFunction substring sum suppress_redundant_updates_trigger system table_to_xml
syn keyword sqlFunction table_to_xml_and_xmlschema table_to_xmlschema tan text text_ge text_gt
syn keyword sqlFunction text_larger text_le text_lt text_pattern_ge text_pattern_gt
syn keyword sqlFunction text_pattern_le text_pattern_lt text_smaller textanycat textcat texteq
syn keyword sqlFunction texticlike texticnlike texticregexeq texticregexne textin textlen
syn keyword sqlFunction textlike textne textnlike textout textrecv textregexeq textregexne
syn keyword sqlFunction textsend thesaurus_init thesaurus_lexize tideq tidge tidgt tidin
syn keyword sqlFunction tidlarger tidle tidlt tidne tidout tidrecv tidsend tidsmaller time
syn keyword sqlFunction time_cmp time_eq time_ge time_gt time_hash time_in time_larger time_le
syn keyword sqlFunction time_lt time_mi_interval time_mi_time time_ne time_out time_pl_interval
syn keyword sqlFunction time_recv time_send time_smaller time_transform timedate_pl timemi
syn keyword sqlFunction timenow timeofday timepl timestamp timestamp_cmp timestamp_cmp_date
syn keyword sqlFunction timestamp_cmp_timestamptz timestamp_eq timestamp_eq_date
syn keyword sqlFunction timestamp_eq_timestamptz timestamp_ge timestamp_ge_date
syn keyword sqlFunction timestamp_ge_timestamptz timestamp_gt timestamp_gt_date
syn keyword sqlFunction timestamp_gt_timestamptz timestamp_hash timestamp_in
syn keyword sqlFunction timestamp_izone_transform timestamp_larger timestamp_le timestamp_le_date
syn keyword sqlFunction timestamp_le_timestamptz timestamp_lt timestamp_lt_date
syn keyword sqlFunction timestamp_lt_timestamptz timestamp_mi timestamp_mi_interval timestamp_ne
syn keyword sqlFunction timestamp_ne_date timestamp_ne_timestamptz timestamp_out
syn keyword sqlFunction timestamp_pl_interval timestamp_recv timestamp_send timestamp_smaller
syn keyword sqlFunction timestamp_sortsupport timestamp_transform timestamp_zone_transform
syn keyword sqlFunction timestamptypmodin timestamptypmodout timestamptz timestamptz_cmp
syn keyword sqlFunction timestamptz_cmp_date timestamptz_cmp_timestamp timestamptz_eq
syn keyword sqlFunction timestamptz_eq_date timestamptz_eq_timestamp timestamptz_ge
syn keyword sqlFunction timestamptz_ge_date timestamptz_ge_timestamp timestamptz_gt
syn keyword sqlFunction timestamptz_gt_date timestamptz_gt_timestamp timestamptz_in
syn keyword sqlFunction timestamptz_larger timestamptz_le timestamptz_le_date
syn keyword sqlFunction timestamptz_le_timestamp timestamptz_lt timestamptz_lt_date
syn keyword sqlFunction timestamptz_lt_timestamp timestamptz_mi timestamptz_mi_interval
syn keyword sqlFunction timestamptz_ne timestamptz_ne_date timestamptz_ne_timestamp
syn keyword sqlFunction timestamptz_out timestamptz_pl_interval timestamptz_recv timestamptz_send
syn keyword sqlFunction timestamptz_smaller timestamptztypmodin timestamptztypmodout timetypmodin
syn keyword sqlFunction timetypmodout timetz timetz_cmp timetz_eq timetz_ge timetz_gt timetz_hash
syn keyword sqlFunction timetz_in timetz_larger timetz_le timetz_lt timetz_mi_interval timetz_ne
syn keyword sqlFunction timetz_out timetz_pl_interval timetz_recv timetz_send timetz_smaller
syn keyword sqlFunction timetzdate_pl timetztypmodin timetztypmodout timezone tinterval
syn keyword sqlFunction tintervalct tintervalend tintervaleq tintervalge tintervalgt tintervalin
syn keyword sqlFunction tintervalle tintervalleneq tintervallenge tintervallengt tintervallenle
syn keyword sqlFunction tintervallenlt tintervallenne tintervallt tintervalne tintervalout
syn keyword sqlFunction tintervalov tintervalrecv tintervalrel tintervalsame tintervalsend
syn keyword sqlFunction tintervalstart to_ascii to_char to_date to_hex to_json to_jsonb to_number
syn keyword sqlFunction to_regclass to_regnamespace to_regoper to_regoperator to_regproc
syn keyword sqlFunction to_regprocedure to_regrole to_regtype to_timestamp to_tsquery to_tsvector
syn keyword sqlFunction transaction_timestamp translate trigger_in trigger_out trunc ts_debug
syn keyword sqlFunction ts_headline ts_lexize ts_match_qv ts_match_tq ts_match_tt ts_match_vq
syn keyword sqlFunction ts_parse ts_rank ts_rank_cd ts_rewrite ts_stat ts_token_type
syn keyword sqlFunction ts_typanalyze tsm_handler_in tsm_handler_out tsmatchjoinsel tsmatchsel
syn keyword sqlFunction tsq_mcontained tsq_mcontains tsquery_and tsquery_cmp tsquery_eq
syn keyword sqlFunction tsquery_ge tsquery_gt tsquery_le tsquery_lt tsquery_ne tsquery_not
syn keyword sqlFunction tsquery_or tsqueryin tsqueryout tsqueryrecv tsquerysend tsrange
syn keyword sqlFunction tsrange_subdiff tstzrange tstzrange_subdiff tsvector_cmp tsvector_concat
syn keyword sqlFunction tsvector_eq tsvector_ge tsvector_gt tsvector_le tsvector_lt tsvector_ne
syn keyword sqlFunction tsvector_update_trigger tsvector_update_trigger_column tsvectorin
syn keyword sqlFunction tsvectorout tsvectorrecv tsvectorsend txid_current txid_current_snapshot
syn keyword sqlFunction txid_snapshot_in txid_snapshot_out txid_snapshot_recv txid_snapshot_send
syn keyword sqlFunction txid_snapshot_xip txid_snapshot_xmax txid_snapshot_xmin
syn keyword sqlFunction txid_visible_in_snapshot uhc_to_utf8 unique_key_recheck unknownin
syn keyword sqlFunction unknownout unknownrecv unknownsend unnest upper upper_inc upper_inf
syn keyword sqlFunction utf8_to_ascii utf8_to_big5 utf8_to_euc_cn utf8_to_euc_jis_2004
syn keyword sqlFunction utf8_to_euc_jp utf8_to_euc_kr utf8_to_euc_tw utf8_to_gb18030 utf8_to_gbk
syn keyword sqlFunction utf8_to_iso8859 utf8_to_iso8859_1 utf8_to_johab utf8_to_koi8r
syn keyword sqlFunction utf8_to_koi8u utf8_to_shift_jis_2004 utf8_to_sjis utf8_to_uhc utf8_to_win
syn keyword sqlFunction uuid_cmp uuid_eq uuid_ge uuid_gt uuid_hash uuid_in uuid_le uuid_lt
syn keyword sqlFunction uuid_ne uuid_out uuid_recv uuid_send var_pop var_samp varbit varbit_in
syn keyword sqlFunction varbit_out varbit_recv varbit_send varbit_transform varbitcmp varbiteq
syn keyword sqlFunction varbitge varbitgt varbitle varbitlt varbitne varbittypmodin
syn keyword sqlFunction varbittypmodout varchar varchar_transform varcharin varcharout
syn keyword sqlFunction varcharrecv varcharsend varchartypmodin varchartypmodout variance version
syn keyword sqlFunction void_in void_out void_recv void_send width width_bucket win1250_to_latin2
syn keyword sqlFunction win1250_to_mic win1251_to_iso win1251_to_koi8r win1251_to_mic
syn keyword sqlFunction win1251_to_win866 win866_to_iso win866_to_koi8r win866_to_mic
syn keyword sqlFunction win866_to_win1251 win_to_utf8 xideq xideqint4 xidin xidout xidrecv
syn keyword sqlFunction xidsend xml xml_in xml_is_well_formed xml_is_well_formed_content
syn keyword sqlFunction xml_is_well_formed_document xml_out xml_recv xml_send xmlagg xmlcomment
syn keyword sqlFunction xmlconcat2 xmlexists xmlvalidate xpath xpath_exists

" PostGIS 2.2 functions
" To build this list use:
"
" psql template1
" create database tmp;
" \c tmp
" create schema postgis;
" create extension postgis with schema postgis;
" \t
" \o postgis_functions.txt
" select  distinct p.proname
" from    pg_catalog.pg_namespace n
" join    pg_catalog.pg_proc p
" on      p.pronamespace = n.oid
" where   n.nspname = 'postgis' and p.proname not like '\_%' order by p.proname;
syn keyword sqlFunction addauth addgeometrycolumn addoverviewconstraints addrasterconstraints box
syn keyword sqlFunction box2d box2d_in box2d_out box2df_in box2df_out box3d box3d_in box3d_out
syn keyword sqlFunction box3dtobox bytea checkauth checkauthtrigger disablelongtransactions
syn keyword sqlFunction dropgeometrycolumn dropgeometrytable dropoverviewconstraints
syn keyword sqlFunction droprasterconstraints enablelongtransactions equals find_srid geography
syn keyword sqlFunction geography_analyze geography_cmp geography_distance_knn geography_eq
syn keyword sqlFunction geography_ge geography_gist_compress geography_gist_consistent
syn keyword sqlFunction geography_gist_decompress geography_gist_distance geography_gist_penalty
syn keyword sqlFunction geography_gist_picksplit geography_gist_same geography_gist_union
syn keyword sqlFunction geography_gt geography_in geography_le geography_lt geography_out
syn keyword sqlFunction geography_overlaps geography_recv geography_send geography_typmod_in
syn keyword sqlFunction geography_typmod_out geometry geometry_above geometry_analyze
syn keyword sqlFunction geometry_below geometry_cmp geometry_contained_by_raster
syn keyword sqlFunction geometry_contains geometry_distance_box geometry_distance_centroid
syn keyword sqlFunction geometry_distance_centroid_nd geometry_distance_cpa geometry_eq
syn keyword sqlFunction geometry_ge geometry_gist_compress_2d geometry_gist_compress_nd
syn keyword sqlFunction geometry_gist_consistent_2d geometry_gist_consistent_nd
syn keyword sqlFunction geometry_gist_decompress_2d geometry_gist_decompress_nd
syn keyword sqlFunction geometry_gist_distance_2d geometry_gist_distance_nd
syn keyword sqlFunction geometry_gist_penalty_2d geometry_gist_penalty_nd
syn keyword sqlFunction geometry_gist_picksplit_2d geometry_gist_picksplit_nd
syn keyword sqlFunction geometry_gist_same_2d geometry_gist_same_nd geometry_gist_union_2d
syn keyword sqlFunction geometry_gist_union_nd geometry_gt geometry_in geometry_le geometry_left
syn keyword sqlFunction geometry_lt geometry_out geometry_overabove geometry_overbelow
syn keyword sqlFunction geometry_overlaps geometry_overlaps_nd geometry_overleft
syn keyword sqlFunction geometry_overright geometry_raster_contain geometry_raster_overlap
syn keyword sqlFunction geometry_recv geometry_right geometry_same geometry_send
syn keyword sqlFunction geometry_typmod_in geometry_typmod_out geometry_within geometrytype
syn keyword sqlFunction geomfromewkb geomfromewkt get_proj4_from_srid gettransactionid gidx_in
syn keyword sqlFunction gidx_out gserialized_gist_joinsel_2d gserialized_gist_joinsel_nd
syn keyword sqlFunction gserialized_gist_sel_2d gserialized_gist_sel_nd lockrow
syn keyword sqlFunction longtransactionsenabled path pgis_abs_in pgis_abs_out
syn keyword sqlFunction pgis_geometry_accum_finalfn pgis_geometry_accum_transfn
syn keyword sqlFunction pgis_geometry_clusterintersecting_finalfn
syn keyword sqlFunction pgis_geometry_clusterwithin_finalfn pgis_geometry_collect_finalfn
syn keyword sqlFunction pgis_geometry_makeline_finalfn pgis_geometry_polygonize_finalfn
syn keyword sqlFunction pgis_geometry_union_finalfn point polygon populate_geometry_columns
syn keyword sqlFunction postgis_addbbox postgis_cache_bbox postgis_constraint_dims
syn keyword sqlFunction postgis_constraint_srid postgis_constraint_type postgis_dropbbox
syn keyword sqlFunction postgis_full_version postgis_gdal_version postgis_geos_version
syn keyword sqlFunction postgis_getbbox postgis_hasbbox postgis_lib_build_date
syn keyword sqlFunction postgis_lib_version postgis_libjson_version postgis_liblwgeom_version
syn keyword sqlFunction postgis_libxml_version postgis_noop postgis_proj_version
syn keyword sqlFunction postgis_raster_lib_build_date postgis_raster_lib_version
syn keyword sqlFunction postgis_raster_scripts_installed postgis_scripts_build_date
syn keyword sqlFunction postgis_scripts_installed postgis_scripts_released postgis_svn_version
syn keyword sqlFunction postgis_transform_geometry postgis_type_name postgis_typmod_dims
syn keyword sqlFunction postgis_typmod_srid postgis_typmod_type postgis_version raster_above
syn keyword sqlFunction raster_below raster_contain raster_contained raster_contained_by_geometry
syn keyword sqlFunction raster_eq raster_geometry_contain raster_geometry_overlap raster_hash
syn keyword sqlFunction raster_in raster_left raster_out raster_overabove raster_overbelow
syn keyword sqlFunction raster_overlap raster_overleft raster_overright raster_right raster_same
syn keyword sqlFunction spheroid_in spheroid_out st_3dclosestpoint st_3ddfullywithin
syn keyword sqlFunction st_3ddistance st_3ddwithin st_3dextent st_3dintersects st_3dlength
syn keyword sqlFunction st_3dlength_spheroid st_3dlongestline st_3dmakebox st_3dmaxdistance
syn keyword sqlFunction st_3dperimeter st_3dshortestline st_accum st_addband st_addmeasure
syn keyword sqlFunction st_addpoint st_affine st_approxcount st_approxhistogram st_approxquantile
syn keyword sqlFunction st_approxsummarystats st_area st_area2d st_asbinary st_asencodedpolyline
syn keyword sqlFunction st_asewkb st_asewkt st_asgdalraster st_asgeojson st_asgml st_ashexewkb
syn keyword sqlFunction st_asjpeg st_askml st_aslatlontext st_aspect st_aspng st_asraster
syn keyword sqlFunction st_assvg st_astext st_astiff st_astwkb st_asx3d st_azimuth st_band
syn keyword sqlFunction st_bandisnodata st_bandmetadata st_bandnodatavalue st_bandpath
syn keyword sqlFunction st_bandpixeltype st_bdmpolyfromtext st_bdpolyfromtext st_boundary
syn keyword sqlFunction st_boundingdiagonal st_box2dfromgeohash st_buffer st_buildarea
syn keyword sqlFunction st_centroid st_cleangeometry st_clip st_clipbybox2d st_closestpoint
syn keyword sqlFunction st_closestpointofapproach st_clusterintersecting st_clusterwithin
syn keyword sqlFunction st_collect st_collectionextract st_collectionhomogenize st_colormap
syn keyword sqlFunction st_combine_bbox st_combinebbox st_concavehull st_contains
syn keyword sqlFunction st_containsproperly st_convexhull st_coorddim st_count st_countagg
syn keyword sqlFunction st_coveredby st_covers st_cpawithin st_createoverview st_crosses
syn keyword sqlFunction st_curvetoline st_delaunaytriangles st_dfullywithin st_difference
syn keyword sqlFunction st_dimension st_disjoint st_distance st_distance_sphere
syn keyword sqlFunction st_distance_spheroid st_distancecpa st_distancesphere st_distancespheroid
syn keyword sqlFunction st_distinct4ma st_dump st_dumpaspolygons st_dumppoints st_dumprings
syn keyword sqlFunction st_dumpvalues st_dwithin st_endpoint st_envelope st_equals
syn keyword sqlFunction st_estimated_extent st_estimatedextent st_expand st_extent
syn keyword sqlFunction st_exteriorring st_find_extent st_findextent st_flipcoordinates
syn keyword sqlFunction st_force2d st_force3d st_force3dm st_force3dz st_force4d st_force_2d
syn keyword sqlFunction st_force_3d st_force_3dm st_force_3dz st_force_4d st_force_collection
syn keyword sqlFunction st_forcecollection st_forcecurve st_forcerhr st_forcesfs
syn keyword sqlFunction st_fromgdalraster st_gdaldrivers st_geogfromtext st_geogfromwkb
syn keyword sqlFunction st_geographyfromtext st_geohash st_geomcollfromtext st_geomcollfromwkb
syn keyword sqlFunction st_geometryfromtext st_geometryn st_geometrytype st_geomfromewkb
syn keyword sqlFunction st_geomfromewkt st_geomfromgeohash st_geomfromgeojson st_geomfromgml
syn keyword sqlFunction st_geomfromkml st_geomfromtext st_geomfromtwkb st_geomfromwkb
syn keyword sqlFunction st_georeference st_geotransform st_gmltosql st_hasarc st_hasnoband
syn keyword sqlFunction st_hausdorffdistance st_height st_hillshade st_histogram st_interiorringn
syn keyword sqlFunction st_interpolatepoint st_intersection st_intersects st_invdistweight4ma
syn keyword sqlFunction st_isclosed st_iscollection st_iscoveragetile st_isempty st_isring
syn keyword sqlFunction st_issimple st_isvalid st_isvaliddetail st_isvalidreason
syn keyword sqlFunction st_isvalidtrajectory st_length st_length2d st_length2d_spheroid
syn keyword sqlFunction st_length2dspheroid st_length_spheroid st_lengthspheroid
syn keyword sqlFunction st_line_interpolate_point st_line_locate_point st_line_substring
syn keyword sqlFunction st_linecrossingdirection st_linefromencodedpolyline st_linefrommultipoint
syn keyword sqlFunction st_linefromtext st_linefromwkb st_lineinterpolatepoint st_linelocatepoint
syn keyword sqlFunction st_linemerge st_linestringfromwkb st_linesubstring st_linetocurve
syn keyword sqlFunction st_locate_along_measure st_locate_between_measures st_locatealong
syn keyword sqlFunction st_locatebetween st_locatebetweenelevations st_longestline st_m
syn keyword sqlFunction st_makebox2d st_makeemptyraster st_makeenvelope st_makeline st_makepoint
syn keyword sqlFunction st_makepointm st_makepolygon st_makevalid st_mapalgebra st_mapalgebraexpr
syn keyword sqlFunction st_mapalgebrafct st_mapalgebrafctngb st_max4ma st_maxdistance st_mean4ma
syn keyword sqlFunction st_mem_size st_memcollect st_memsize st_memunion st_metadata st_min4ma
syn keyword sqlFunction st_minconvexhull st_mindist4ma st_minimumboundingcircle
syn keyword sqlFunction st_minpossiblevalue st_mlinefromtext st_mlinefromwkb st_mpointfromtext
syn keyword sqlFunction st_mpointfromwkb st_mpolyfromtext st_mpolyfromwkb st_multi
syn keyword sqlFunction st_multilinefromwkb st_multilinestringfromtext st_multipointfromtext
syn keyword sqlFunction st_multipointfromwkb st_multipolyfromwkb st_multipolygonfromtext st_ndims
syn keyword sqlFunction st_nearestvalue st_neighborhood st_node st_notsamealignmentreason
syn keyword sqlFunction st_npoints st_nrings st_numbands st_numgeometries st_numinteriorring
syn keyword sqlFunction st_numinteriorrings st_numpatches st_numpoints st_offsetcurve
syn keyword sqlFunction st_orderingequals st_overlaps st_patchn st_perimeter st_perimeter2d
syn keyword sqlFunction st_pixelascentroid st_pixelascentroids st_pixelaspoint st_pixelaspoints
syn keyword sqlFunction st_pixelaspolygon st_pixelaspolygons st_pixelheight st_pixelofvalue
syn keyword sqlFunction st_pixelwidth st_point st_point_inside_circle st_pointfromgeohash
syn keyword sqlFunction st_pointfromtext st_pointfromwkb st_pointinsidecircle st_pointn
syn keyword sqlFunction st_pointonsurface st_polyfromtext st_polyfromwkb st_polygon
syn keyword sqlFunction st_polygonfromtext st_polygonfromwkb st_polygonize st_project st_quantile
syn keyword sqlFunction st_range4ma st_rastertoworldcoord st_rastertoworldcoordx
syn keyword sqlFunction st_rastertoworldcoordy st_reclass st_relate st_relatematch st_removepoint
syn keyword sqlFunction st_removerepeatedpoints st_resample st_rescale st_resize st_reskew
syn keyword sqlFunction st_retile st_reverse st_rotate st_rotatex st_rotatey st_rotatez
syn keyword sqlFunction st_rotation st_roughness st_samealignment st_scale st_scalex st_scaley
syn keyword sqlFunction st_segmentize st_setbandisnodata st_setbandnodatavalue
syn keyword sqlFunction st_seteffectivearea st_setgeoreference st_setgeotransform st_setpoint
syn keyword sqlFunction st_setrotation st_setscale st_setskew st_setsrid st_setupperleft
syn keyword sqlFunction st_setvalue st_setvalues st_sharedpaths st_shift_longitude
syn keyword sqlFunction st_shiftlongitude st_shortestline st_simplify st_simplifypreservetopology
syn keyword sqlFunction st_simplifyvw st_skewx st_skewy st_slope st_snap st_snaptogrid st_split
syn keyword sqlFunction st_srid st_startpoint st_stddev4ma st_subdivide st_sum4ma st_summary
syn keyword sqlFunction st_summarystats st_summarystatsagg st_swapordinates st_symdifference
syn keyword sqlFunction st_symmetricdifference st_tile st_touches st_tpi st_transform
syn keyword sqlFunction st_translate st_transscale st_tri st_unaryunion st_union st_upperleftx
syn keyword sqlFunction st_upperlefty st_value st_valuecount st_valuepercent st_width st_within
syn keyword sqlFunction st_wkbtosql st_wkttosql st_worldtorastercoord st_worldtorastercoordx
syn keyword sqlFunction st_worldtorastercoordy st_x st_xmax st_xmin st_y st_ymax st_ymin st_z
syn keyword sqlFunction st_zmax st_zmflag st_zmin text unlockrows updategeometrysrid
syn keyword sqlFunction updaterastersrid

" PostGIS 2.2 Topology functions
" To build this list:
"
" create extension postgis_topology;
" \t
" \o postgis_topology.txt
" select  distinct p.proname
" from    pg_catalog.pg_namespace n
" join    pg_catalog.pg_proc p
" on      p.pronamespace = n.oid
" where   n.nspname = 'topology' and p.proname not like '\_%' order by p.proname;
syn keyword sqlFunction addedge addface addnode addtopogeometrycolumn addtosearchpath asgml
syn keyword sqlFunction astopojson cleartopogeom copytopology createtopogeom createtopology
syn keyword sqlFunction droptopogeometrycolumn droptopology equals geometry geometrytype
syn keyword sqlFunction getedgebypoint getfacebypoint getnodebypoint getnodeedges getringedges
syn keyword sqlFunction gettopogeomelementarray gettopogeomelements gettopologyid gettopologyname
syn keyword sqlFunction gettopologysrid intersects layertrigger polygonize
syn keyword sqlFunction postgis_topology_scripts_installed relationtrigger st_addedgemodface
syn keyword sqlFunction st_addedgenewfaces st_addisoedge st_addisonode st_changeedgegeom
syn keyword sqlFunction st_createtopogeo st_geometrytype st_getfaceedges st_getfacegeometry
syn keyword sqlFunction st_inittopogeo st_modedgeheal st_modedgesplit st_moveisonode
syn keyword sqlFunction st_newedgeheal st_newedgessplit st_remedgemodface st_remedgenewface
syn keyword sqlFunction st_remisonode st_removeisoedge st_removeisonode st_simplify
syn keyword sqlFunction topoelementarray_agg topoelementarray_append topogeo_addgeometry
syn keyword sqlFunction topogeo_addlinestring topogeo_addpoint topogeo_addpolygon topologysummary
syn keyword sqlFunction totopogeom validatetopology

syn keyword sqlOperator  all and any between distinct escape except exists
syn keyword sqlOperator  ilike in intersect like not or like_regex similar
syn keyword sqlOperator  some to union

syn keyword sqlStatement alter analyze comment commit copy create delete drop
syn keyword sqlStatement execute explain grant insert lock revoke rollback
syn keyword sqlStatement savepoint select set truncate update

" To build this list:
"
" psql template1
" \t
" \o types.txt
" select distinct pg_catalog.format_type(t.oid, null) as "name"
"   from pg_catalog.pg_type t
"   left join pg_catalog.pg_namespace n
"     on n.oid = t.typnamespace
"  where (t.typrelid = 0 or (select c.relkind = 'c' from pg_catalog.pg_class c
"                             where c.oid = t.typrelid))
"    and not exists(select 1 from pg_catalog.pg_type el
"                    where el.oid = t.typelem and el.typarray = t.oid)
"    and pg_catalog.pg_type_is_visible(t.oid)
"  order by "name";
"
"  Note that there are data type names composed of more than one word and
"  some other are between quotes. The list must be complemented with the
"  types and aliases listed in Table 8-1 of PostgreSQL manual.
syn keyword sqlType abstime aclitem any anyarray anyelement anyenum anynonarray anyrange
syn keyword sqlType bigint bigserial bit boolean box bytea char character varying cid cidr
syn keyword sqlType circle cstring date daterange decimal double precision event_trigger
syn keyword sqlType fdw_handler float4 float8 gtsvector inet int int2 int2vector int4
syn keyword sqlType int4range int8 int8range integer internal interval json jsonb
syn keyword sqlType language_handler line lseg macaddr money name numeric numrange oid
syn keyword sqlType oidvector opaque path pg_ddl_command pg_lsn pg_node_tree point polygon
syn keyword sqlType real record refcursor regclass regconfig regdictionary regnamespace
syn keyword sqlType regoper regoperator regproc regprocedure regrole regtype reltime serial
syn keyword sqlType serial2 serial4 serial8 smallint smallserial smgr text tid time with time
syn keyword sqlType zone time without timestamp timestampz timetz tinterval trigger
syn keyword sqlType tsm_handler tsquery tsrange tstzrange tsvector txid_snapshot unknown uuid
syn keyword sqlType varbit varchar void xid xml

" PostGIS 2.2 types
" From pg_type and PostGIS manual
syn keyword sqlType addbandarg agg_count agg_samealignment box2d box2df box3d geography
syn keyword sqlType geometry geomtry_dump geomval gidx pgis_abs rastbandarg raster reclassarg
syn keyword sqlType spheroid summarystats unionarg valid_detail
syn keyword sqlType getfaceedges_returntype layer topoelement topoelementarray topogeometry
syn keyword sqlType topology topology_id_seq validatetopology_returntype

" Constants
syn keyword sqlConstant  debug5 debug4 debug3 debug2 debug1 log notice warning
syn keyword sqlConstant  error fatal panic
" System catalogs:
syn keyword sqlConstant  pg_aggregate pg_am pg_amop pg_amproc pg_attrdef
syn keyword sqlConstant  pg_attribute pg_auth_members pg_authid
syn keyword sqlConstant  pg_available_extension_versions
syn keyword sqlConstant  pg_available_extensions pg_cast pg_class
syn keyword sqlConstant  pg_collation pg_constraint pg_conversion pg_cursors
syn keyword sqlConstant  pg_database pg_db_role_setting pg_default_acl
syn keyword sqlConstant  pg_depend pg_description pg_enum pg_event_trigger
syn keyword sqlConstant  pg_extension pg_file_settings
syn keyword sqlConstant  pg_foreign_data_wrapper pg_foreign_server
syn keyword sqlConstant  pg_foreign_table pg_group pg_index pg_indexes
syn keyword sqlConstant  pg_inherits pg_language pg_largeobject
syn keyword sqlConstant  pg_largeobject_metadata pg_locks pg_matviews
syn keyword sqlConstant  pg_namespace pg_opclass pg_operator pg_opfamily
syn keyword sqlConstant  pg_pltemplate pg_policies pg_policy
syn keyword sqlConstant  pg_prepared_statements pg_prepared_xacts pg_proc
syn keyword sqlConstant  pg_range pg_replication_origin
syn keyword sqlConstant  pg_replication_origin_status pg_replication_slots
syn keyword sqlConstant  pg_rewrite pg_roles pg_rules pg_seclabel
syn keyword sqlConstant  pg_seclabels pg_settings pg_shadow pg_shdepend
syn keyword sqlConstant  pg_shdescription pg_shseclabel pg_statistic
syn keyword sqlConstant  pg_stats pg_tables pg_tablespace
syn keyword sqlConstant  pg_timezone_abbrevs pg_timezone_names pg_transform
syn keyword sqlConstant  pg_trigger pg_ts_config pg_ts_config_map pg_ts_dict
syn keyword sqlConstant  pg_ts_parser pg_ts_template pg_type pg_user
syn keyword sqlConstant  pg_user_mapping pg_user_mappings pg_views

" PostGIS 2.2 Grand Unified Custom Variables (GUCs) (§8.2 from the manual)
syn keyword sqlConstant backend gdal_datapath gdal_enabled_drivers enable_outdb_rasters

" Variables
syn match sqlVariable    "\<_[A-Za-z0-9][A-Za-z0-9_]*\>"

" Numbers
syn match sqlNumber      "-\=\<\d*\.\=[0-9_]\>"

" Strings
syn region sqlIdentifier start=+"+  skip=+\\\\\|\\"+  end=+"+
syn region sqlString     start=+'+  skip=+\\\\\|\\'+  end=+'+ contains=@Spell

" Comments
syn region sqlComment    start="/\*" end="\*/" contains=sqlTodo,@Spell
syn match  sqlComment    "#.*$"                contains=sqlTodo,@Spell
syn match  sqlComment    "--.*$"               contains=sqlTodo,@Spell

syn sync ccomment sqlComment

" Options
syn keyword sqlOption    client_min_messages search_path

" Error Codes
syn keyword sqlErrorCode successful_completion warning dynamic_result_sets_returned
syn keyword sqlErrorCode implicit_zero_bit_padding null_value_eliminated_in_set_function
syn keyword sqlErrorCode privilege_not_granted privilege_not_revoked string_data_right_truncation
syn keyword sqlErrorCode deprecated_feature no_data no_additional_dynamic_result_sets_returned
syn keyword sqlErrorCode sql_statement_not_yet_complete connection_exception
syn keyword sqlErrorCode connection_does_not_exist connection_failure
syn keyword sqlErrorCode sqlclient_unable_to_establish_sqlconnection
syn keyword sqlErrorCode sqlserver_rejected_establishment_of_sqlconnection
syn keyword sqlErrorCode transaction_resolution_unknown protocol_violation triggered_action_exception
syn keyword sqlErrorCode feature_not_supported invalid_transaction_initiation locator_exception
syn keyword sqlErrorCode invalid_locator_specification invalid_grantor invalid_grant_operation
syn keyword sqlErrorCode invalid_role_specification diagnostics_exception
syn keyword sqlErrorCode stacked_diagnostics_accessed_without_active_handler
syn keyword sqlErrorCode case_not_found cardinality_violation data_exception array_subscript_error
syn keyword sqlErrorCode character_not_in_repertoire datetime_field_overflow division_by_zero
syn keyword sqlErrorCode error_in_assignment escape_character_conflict indicator_overflow
syn keyword sqlErrorCode interval_field_overflow invalid_argument_for_logarithm
syn keyword sqlErrorCode invalid_argument_for_ntile_function invalid_argument_for_nth_value_function
syn keyword sqlErrorCode invalid_argument_for_power_function invalid_argument_for_width_bucket_function
syn keyword sqlErrorCode invalid_character_value_for_cast invalid_datetime_format
syn keyword sqlErrorCode invalid_escape_character invalid_escape_octet invalid_escape_sequence
syn keyword sqlErrorCode nonstandard_use_of_escape_character invalid_indicator_parameter_value
syn keyword sqlErrorCode invalid_parameter_value invalid_regular_expression
syn keyword sqlErrorCode invalid_row_count_in_limit_clause invalid_row_count_in_result_offset_clause
syn keyword sqlErrorCode invalid_time_zone_displacement_value invalid_use_of_escape_character
syn keyword sqlErrorCode most_specific_type_mismatch null_value_not_allowed
syn keyword sqlErrorCode null_value_no_indicator_parameter numeric_value_out_of_range
syn keyword sqlErrorCode string_data_length_mismatch string_data_right_truncation substring_error
syn keyword sqlErrorCode trim_error unterminated_c_string zero_length_character_string
syn keyword sqlErrorCode floating_point_exception invalid_text_representation
syn keyword sqlErrorCode invalid_binary_representation bad_copy_file_format untranslatable_character
syn keyword sqlErrorCode not_an_xml_document invalid_xml_document invalid_xml_content invalid_xml_comment
syn keyword sqlErrorCode invalid_xml_processing_instruction integrity_constraint_violation
syn keyword sqlErrorCode restrict_violation not_null_violation foreign_key_violation unique_violation
syn keyword sqlErrorCode check_violation exclusion_violation invalid_cursor_state invalid_transaction_state
syn keyword sqlErrorCode active_sql_transaction branch_transaction_already_active
syn keyword sqlErrorCode held_cursor_requires_same_isolation_level
syn keyword sqlErrorCode inappropriate_access_mode_for_branch_transaction
syn keyword sqlErrorCode inappropriate_isolation_level_for_branch_transaction
syn keyword sqlErrorCode no_active_sql_transaction_for_branch_transaction
syn keyword sqlErrorCode read_only_sql_transaction schema_and_data_statement_mixing_not_supported
syn keyword sqlErrorCode no_active_sql_transaction in_failed_sql_transaction invalid_sql_statement_name
syn keyword sqlErrorCode triggered_data_change_violation invalid_authorization_specification
syn keyword sqlErrorCode invalid_password dependent_privilege_descriptors_still_exist
syn keyword sqlErrorCode dependent_objects_still_exist invalid_transaction_termination
syn keyword sqlErrorCode sql_routine_exception function_executed_no_return_statement
syn keyword sqlErrorCode modifying_sql_data_not_permitted prohibited_sql_statement_attempted
syn keyword sqlErrorCode reading_sql_data_not_permitted invalid_cursor_name external_routine_exception
syn keyword sqlErrorCode containing_sql_not_permitted modifying_sql_data_not_permitted
syn keyword sqlErrorCode prohibited_sql_statement_attempted reading_sql_data_not_permitted
syn keyword sqlErrorCode external_routine_invocation_exception invalid_sqlstate_returned
syn keyword sqlErrorCode null_value_not_allowed trigger_protocol_violated srf_protocol_violated
syn keyword sqlErrorCode savepoint_exception invalid_savepoint_specification invalid_catalog_name
syn keyword sqlErrorCode invalid_schema_name transaction_rollback transaction_integrity_constraint_violation
syn keyword sqlErrorCode serialization_failure statement_completion_unknown deadlock_detected
syn keyword sqlErrorCode syntax_error_or_access_rule_violation syntax_error insufficient_privilege
syn keyword sqlErrorCode cannot_coerce grouping_error windowing_error invalid_recursion invalid_foreign_key
syn keyword sqlErrorCode invalid_name name_too_long reserved_name datatype_mismatch indeterminate_datatype
syn keyword sqlErrorCode collation_mismatch indeterminate_collation wrong_object_type undefined_column
syn keyword sqlErrorCode undefined_function undefined_table undefined_parameter undefined_object
syn keyword sqlErrorCode duplicate_column duplicate_cursor duplicate_database duplicate_function
syn keyword sqlErrorCode duplicate_prepared_statement duplicate_schema duplicate_table duplicate_alias
syn keyword sqlErrorCode duplicate_object ambiguous_column ambiguous_function ambiguous_parameter
syn keyword sqlErrorCode ambiguous_alias invalid_column_reference invalid_column_definition
syn keyword sqlErrorCode invalid_cursor_definition invalid_database_definition invalid_function_definition
syn keyword sqlErrorCode invalid_prepared_statement_definition invalid_schema_definition
syn keyword sqlErrorCode invalid_table_definition invalid_object_definition with_check_option_violation
syn keyword sqlErrorCode insufficient_resources disk_full out_of_memory too_many_connections
syn keyword sqlErrorCode configuration_limit_exceeded program_limit_exceeded statement_too_complex
syn keyword sqlErrorCode too_many_columns too_many_arguments object_not_in_prerequisite_state object_in_use
syn keyword sqlErrorCode cant_change_runtime_param lock_not_available operator_intervention query_canceled
syn keyword sqlErrorCode admin_shutdown crash_shutdown cannot_connect_now database_dropped system_error
syn keyword sqlErrorCode io_error undefined_file duplicate_file config_file_error lock_file_exists
syn keyword sqlErrorCode fdw_error fdw_column_name_not_found fdw_dynamic_parameter_value_needed
syn keyword sqlErrorCode fdw_function_sequence_error fdw_inconsistent_descriptor_information
syn keyword sqlErrorCode fdw_invalid_attribute_value fdw_invalid_column_name fdw_invalid_column_number
syn keyword sqlErrorCode fdw_invalid_data_type fdw_invalid_data_type_descriptors
syn keyword sqlErrorCode fdw_invalid_descriptor_field_identifier
syn keyword sqlErrorCode fdw_invalid_handle fdw_invalid_option_index fdw_invalid_option_name
syn keyword sqlErrorCode fdw_invalid_string_length_or_buffer_length fdw_invalid_string_format
syn keyword sqlErrorCode fdw_invalid_use_of_null_pointer fdw_too_many_handles fdw_out_of_memory
syn keyword sqlErrorCode fdw_no_schemas fdw_option_name_not_found fdw_reply_handle fdw_schema_not_found
syn keyword sqlErrorCode fdw_table_not_found fdw_unable_to_create_execution fdw_unable_to_create_reply
syn keyword sqlErrorCode fdw_unable_to_establish_connection plpgsql_error raise_exception no_data_found
syn keyword sqlErrorCode too_many_rows internal_error data_corrupted index_corrupted

" Extensions
syn keyword sqlExtension plpgsql plpythonu plpython plperl plpgsqlu hstore adminpack auth_delay
syn keyword sqlExtension auto_explain btree_gin btree_gist chkpass citext cube dblink dict_int
syn keyword sqlExtension dict_xsyn dummy_seclabel earthdistance file_fdw fuzzystrmatch intagg
syn keyword sqlExtension intarray isn lo ltree pageinspect passwordcheck pg_buffercache pgcrypto
syn keyword sqlExtension pg_freespacemap pg_prewarm pgrowlocks pg_stat_statements pgstattuple
syn keyword sqlExtension pg_trgm postgres_fdw seg sepgsql spi sslinfo tablefunc tcn test_decoding
syn keyword sqlExtension test_parser test_shm_mq tsearch2 unaccent uuid-ossp xml2

" Psql Keywords
syn keyword sqlPsqlKeyword cd conninfo echo qecho prompt pset setenv timing unset

" Todo
syn keyword sqlTodo contained TODO FIXME XXX DEBUG NOTE

" PL/pgSQL
syn region plpgsql start=+\$pgsql\$+ end=+\$pgsql\$+ keepend contains=ALL
syn region plpgsql start=+\$\$+ end=+\$\$+ keepend contains=ALL

" PL/Python
syn include @Python syntax/python.vim
syn region plPython start=+\$python\$+ end=+\$python\$+ keepend contains=@Python

" Syntax Synchronizing
syn sync minlines=10 maxlines=100

" Default highlighting
command -nargs=+ HiLink hi def link <args>

HiLink sqlComment        Comment
HiLink sqlConstant       Constant
HiLink sqlErrorCode      Special
HiLink sqlExtension      Type
HiLink sqlFunction       Function
HiLink sqlIdentifier     Identifier
HiLink sqlKeyword        sqlSpecial
HiLink sqlNumber         Number
HiLink sqlOperator       sqlStatement
HiLink sqlOption         Define
HiLink sqlSpecial        Special
HiLink sqlStatement      Statement
HiLink sqlString         String
HiLink sqlType           Type
HiLink sqlTodo           Todo
HiLink sqlVariable       Identifier
HiLink sqlPsqlKeyword    SpecialKey

delcommand HiLink

let b:current_syntax = "sql"


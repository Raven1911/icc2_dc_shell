set dir /home/shtp/ShareData/0-Server/AECAYKHE/FLAVOR1/data
set G_MAX_TLUPLUS_FILE $dir/tech/star_rcxt/saed32nm_1p9m_Cmax.tluplus
set G_MIN_TLUPLUS_FILE $dir/tech/star_rcxt/saed32nm_1p9m_Cmin.tluplus
set G_TLUPLUS_MAP_FILE $dir/tech/milkyway/saed32nm_tf_itf_tluplus.map

#set_app_options -name mv.upf.upf_bias_support -value true
#set_app_options -name mv.upf.upf_use_new_bias_leq -value true
#set_app_options -name mv.upf.enable_nwell_only_support -value true
#set_app_options -name mv.upf.multi_pd_single_va_strict_check -value false

read_parasitic_tech -name maxTLU -tlup $G_MAX_TLUPLUS_FILE -layermap $G_TLUPLUS_MAP_FILE
read_parasitic_tech -name minTLU -tlup $G_MIN_TLUPLUS_FILE -layermap $G_TLUPLUS_MAP_FILE

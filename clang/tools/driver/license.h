/******************************************************************************

	    COPYRIGHT (c) 2005, 2017 by Reprise Software, Inc.
	This software has been provided pursuant to a License Agreement
	containing restrictions on its use.  This software contains
	valuable trade secrets and proprietary information of 
	Reprise Software Inc and is protected by law.  It may not be 
	copied or distributed in any form or medium, disclosed to third 
	parties, reverse engineered or used in any manner not provided 
	for in said License Agreement except with the prior written 
	authorization from Reprise Software Inc.

 *****************************************************************************/
/*	
 *	Description: 	RLM external definitions
 *
 *	M. Christiano
 *	11/19/05
 *
 */

#ifndef RLM_LICENSE_H_INCLUDED
#define RLM_LICENSE_H_INCLUDED

#ifdef __cplusplus
extern "C" {
#endif

#define RLM_VERSION 12 
#define RLM_REVISION 3
#define RLM_BUILD 3
#define RLM_PATCH 0

#define RLM_SOFTWARE_VERSION  "Reprise License Manager (RLM) v12.3, Copyright (C) 2006-2017, Reprise Software, Inc."
#define RLM_COPYRIGHT  "Copyright (C) 2006-2017, Reprise Software, Inc. All rights reserved."

typedef struct rlm_license *RLM_LICENSE;
typedef struct rlm_handle *RLM_HANDLE;
typedef struct rlm_isv_config *RLM_ISV_CONFIG_HANDLE;
typedef struct rlm_products *RLM_PRODUCTS;
typedef struct rlm_act_handle *RLM_ACT_HANDLE;
typedef struct l_hostid *L_HOSTID;

/*
 *	RLM_ACT_HANDLE member settings
 */

#define RLM_ACT_HANDLE_ISV	1
#define RLM_ACT_HANDLE_HOSTID_LIST 2
#define RLM_ACT_HANDLE_HOSTNAME	3
#define RLM_ACT_HANDLE_EXTRA	4
#define RLM_ACT_HANDLE_LOG	5
#define RLM_ACT_HANDLE_REHOST	6
#define RLM_ACT_HANDLE_DISCONN	7
#define RLM_ACT_HANDLE_PRODUCT	8
/* 9: unused, Next value: 10 */

/*
 *	RLM Activation Pro license types
 */

#define RLM_ACT_LT_FLOATING 0	 /* Floating */
#define RLM_ACT_LT_F_UPGRADE 4	 /* Floating UPGRADE */
#define RLM_ACT_LT_UNCOUNTED 1	 /* Nodelocked, Uncounted */
#define RLM_ACT_LT_NLU_UPGRADE 5 /* Nodelocked, Uncounted UPGRADE */
#define RLM_ACT_LT_COUNTED 2	 /* Nodelocked, counted (Not implemented)*/
#define RLM_ACT_LT_NLC_UPGRADE 6 /* NL, counted UPGRADE (Not implemented )*/
#define RLM_ACT_LT_SINGLE 3	 /* Single */
#define RLM_ACT_LT_S_UPGRADE 7	 /* Single UPGRADE */
#define RLM_ACT_LT_ASH 8	 /* Alternate Server Hostid (ASH) */
#define RLM_ACT_LT_ANH 9	 /* Alternate Nodelock Hostid (ANH) */
#define RLM_ACT_LT_TOKEN_UNLOCKED 10 /* Token, unlocked */
#define RLM_ACT_LT_TOKEN_LOCKED 11   /* Token, locked */
#define RLM_ACT_LT_METERED 12    /* Metered */

/*
 *	Activation Pro allowed hostid types
 */
#define RLM_ACTPRO_ALLOW_REHOST 0x1	/* Rehostable hostids */
#define RLM_ACTPRO_ALLOW_ISV 0x2 	/* ISV-defined hostids */
#define RLM_ACTPRO_ALLOW_RLMID 0x4	/* RLMID hostids */
#define RLM_ACTPRO_ALLOW_ETHER 0x8	/* Ethernet hostids */
#define RLM_ACTPRO_ALLOW_32 0x10	/* 32-bit hostids */
#define RLM_ACTPRO_ALLOW_DISKSN 0x20	/* Disk Serial number hostid */
#define RLM_ACTPRO_ALLOW_IP 0x40	/* IP address hostids */
#define RLM_ACTPRO_ALLOW_USER 0x80	/* Username hostid */
#define RLM_ACTPRO_ALLOW_HOST 0x100	/* Hostname hostid */
#define RLM_ACTPRO_ALLOW_SN 0x200	/* Serial Number hostid */
#define RLM_ACTPRO_ALLOW_STRING 0x400	/* String hostid */
#define RLM_ACTPRO_ALLOW_DEMO 0x1000	/* "DEMO" hostid */
#define RLM_ACTPRO_ALLOW_ANY 0x2000	/* "ANY" hostid */
#define RLM_ACTPRO_ALLOW_ASH 0x4000	/* Alt Server Hostid */
#define RLM_ACTPRO_ALLOW_ISVDEF 0x8000	/* ISV string as hostid */
#define RLM_ACTPRO_ALLOW_IPV6 0x10000	/* IPv6 address as hostid */
#define RLM_ACTPRO_ALLOW_UUID 0x20000	/* UUID as hostid */

/*
 *	Special - allow ALL hostids:
 */
#define RLM_ACTPRO_ALLOW_ALL_HOSTIDS (RLM_ACTPRO_ALLOW_REHOST | \
					RLM_ACTPRO_ALLOW_ISV | \
					RLM_ACTPRO_ALLOW_RLMID  | \
					RLM_ACTPRO_ALLOW_UUID | \
					RLM_ACTPRO_ALLOW_ETHER  | \
					RLM_ACTPRO_ALLOW_32  | \
					RLM_ACTPRO_ALLOW_DISKSN  | \
					RLM_ACTPRO_ALLOW_IP  | \
					RLM_ACTPRO_ALLOW_IPV6  | \
					RLM_ACTPRO_ALLOW_USER  | \
					RLM_ACTPRO_ALLOW_HOST  | \
					RLM_ACTPRO_ALLOW_ISVDEF  | \
					RLM_ACTPRO_ALLOW_SN  | \
					RLM_ACTPRO_ALLOW_DEMO  | \
					RLM_ACTPRO_ALLOW_ASH  | \
					RLM_ACTPRO_ALLOW_ANY )

/*
 *	Default hostids to allow:
 */
#define RLM_ACTPRO_ALLOW_DEFAULT     (RLM_ACTPRO_ALLOW_REHOST | \
					RLM_ACTPRO_ALLOW_ISV | \
					RLM_ACTPRO_ALLOW_ISVDEF | \
					RLM_ACTPRO_ALLOW_RLMID  | \
					RLM_ACTPRO_ALLOW_ETHER  | \
					RLM_ACTPRO_ALLOW_32  | \
					RLM_ACTPRO_ALLOW_ASH  | \
					RLM_ACTPRO_ALLOW_UUID  | \
					RLM_ACTPRO_ALLOW_DISKSN  )


/*
 *	Default URL for activation pro server
 */
#define RLM_ACTPRO_URL_DEFAULT	"hostedactivation.com"

#define RLM_MAX_LINE	  1024	/* Maximum size of a LF line (after */
						/* all continuations */

#ifndef RLM_MAX_PATH
#ifndef _WIN32
#define RLM_MAX_PATH    1024 /* FIX: MAXPATHLEN */
#else
#define RLM_MAX_PATH 	2048 /* Windows wide chars */
#endif
#endif

#define RLM_ACT_MAX_LICENSE 32767 /* Maximum size of a license string */
				  /*   returned from RLM Activation Pro */

#define RLM_LIC_LINE_LEN    70	/* Default max length of LICENSE lines */
#define RLM_MAX_PRODUCT     40	/* Max length of a product name */
#define RLM_MAX_VER         10	/* Max length of a version string vvvvvv.rrr */
#define RLM_MAX_CUST	    40	/* Maximum length of a customer name */
#define RLM_MAX_ISV	    10	/* Maximum ISV name length */
#define RLM_MAX_EXP	    11	/* Max length of expiration date: dd-mmm-yyyy */
#define	RLM_ERRSTRING_MAX  512	/* string passed to rlm_errstring() */
					/* 256 for error, 256 for extended */
#define RLM_MAX_LOG	   256	/* Max length of a log string */
#define RLM_MAX_HOSTNAME    64	/* Max length of a license server hostname */
#define RLM_MAX_USERNAME    32	/* Max length of a username */
#define RLM_MAX_GC	    64	/* Max length of a google cloud string */
#define RLM_MAX_DISKSN	    32	/* Max length of a disk serial number */
#define RLM_MAX_REHOST	    50	/* Max length of a rehostable hostid */
#define RLM_MAX_UUID	    41	/* Max length of a UUID hostid */

#define RLM_MAX_REFRESH_ID 64	/* Max length of a refresh ID string */
#define RLM_MAX_REFRESH_URL 64	/* Max length of a refresh URL string */

#define RLM_ACT_MAX_MISC  255	/* Max length of a "misc" or "extra license */
				/* parameters" string */
#define RLM_ACT_MAX_LICTEXT 1024 /* Max length of string to prepend to lic */
/*
 *	Hostid string length
 */
#define RLM_MAX_HOSTID  RLM_MAX_HOSTNAME	/* Max length of hostid data */
#define RLM_MAX_HID_KEYWORD_LEN	10	/* Max length of a hostid type keyword */
/*
 *	RLM_MAX_HOSTID_STRING is the maximum length of a single hostid.
 */
#define RLM_MAX_HOSTID_STRING  (RLM_MAX_HOSTID+RLM_MAX_HID_KEYWORD_LEN+2)
/*
 *	Max length of a hostid list (must be longer than RLM_MAX_HOSTID_STRING)
 *	This refers to a hostid list in a license line.
 */
#define RLM_MAX_HOSTID_LIST  25		/* No more than 25 hostids in a list */
#define RLM_MAX_HOSTID_LIST_STRING  200	/* Max of 200 bytes of hostid lists */
/*
 *	Maximum length of hostid strings passed internally (from client->server,
 *	and client->activation server)
 */
#define RLM_MAX_INTERNAL_HOSTID_STRING ((8*(RLM_MAX_HOSTID_STRING+1)) + 1)
/*
 *	Max length of a list to transmit to the activation server.
 */
#define RLM_ACT_MAX_HOSTID_STRING  (RLM_MAX_INTERNAL_HOSTID_STRING+5)	
					/* internal hostid list + "list:" */
					/* Was 205 pre-v11, 622 in v11+ */

/*
 *	Hostid types
 */
#define RLM_HOSTID_NONE	  0	/* No hostid specified, e.g. empty string 
				   passed to rlm_get_id() - new in v3.0BL4 */
#define RLM_HOSTID_32BIT  1
#define RLM_HOSTID_STRING 2	/* Equivalent to ANY, ie, works anywhere */
#define RLM_HOSTID_ETHER  3
#define RLM_HOSTID_USER	  4	/* User= */
#define RLM_HOSTID_HOST	  5 	/* Host= */
#define RLM_HOSTID_IP	  6	/* IP address */
#define RLM_HOSTID_ANY	  7	/* ANY - valid anywhere */
#define RLM_HOSTID_DEMO	  8	/* DEMO - valid anywhere */
#define RLM_HOSTID_INVALID 9	/* INVALID hostid - new in v3.0BL4 */
#define RLM_HOSTID_SN    10	/* Serial # - just like STRING, new in v5.0 */
#define RLM_HOSTID_RLMID1  11	/* First dongle type (aladdin) - new in v5.0 */
#define RLM_HOSTID_RLMID2  12	/* Second dongle type (safenet) - new in v6.0 */
#define RLM_HOSTID_RLMID3  13	/* Third dongle type (uniloc) - new in v6.0 */
#define RLM_HOSTID_DISKSN  14	
#define RLM_HOSTID_REHOST  15	/* Rehostable hostid */
#define RLM_HOSTID_GC  	   16	/* Google Cloud hostid (v11.1) */
#define RLM_HOSTID_ASH 	   17 	/* Alternate Server Hostid - v11.2 */
#define RLM_HOSTID_ISV	   18	/* ISV= */
#define RLM_HOSTID_IPV6	   19	/* IPv6 address */
#define RLM_HOSTID_UUID	   20	/* BIOS UUID (Windows only) */

#define RLM_ISV_HID_TYPE_MIN 1000 /* Minimum type value for ISV-def hostid */

#define RLM_MAX_ISVDEF 32	/* Max length of an ISV-defined field in the */
				/*  rlm_set_environ() call */

/* 
 *	License types, from type= keyword
 */

#define RLM_LA_BETA_TYPE	0x1
#define RLM_LA_EVAL_TYPE	0x2
#define RLM_LA_DEMO_TYPE	0x4

/* 
 *	License sharing definitions, from share= keyword
 */

#define RLM_LA_SHARE_USER 1		/* Share if username matches */
#define RLM_LA_SHARE_HOST 2		/* Share if hostname matches */
#define RLM_LA_SHARE_ISV  4		/* Share if isv-defined matches */

/*
 *	Function prototypes
 */
extern int			rlm_add_isv_hostid(RLM_HANDLE, const char *, 
					int, int, int (*)(char *, RLM_HANDLE));
extern int			rlm_add_isv_hostid_compare(RLM_HANDLE, int, 
						int (*)(int, char *, char *));
extern int			rlm_add_isv_hostid_multiple(RLM_HANDLE, 
						const char *, int, int, 
						int (*)(char *, RLM_HANDLE), 
						int (*)(char *, RLM_HANDLE));
extern char **			rlm_all_hostids(RLM_HANDLE, int);
extern void			rlm_all_hostids_free(char **);
extern int			rlm_auth_check(RLM_LICENSE, char *);
extern int			rlm_auto_hb(RLM_HANDLE, int, int,
				    void (*func)(RLM_HANDLE, RLM_LICENSE, int));
extern int			rlm_checkin(RLM_LICENSE);
extern struct rlm_license * 	rlm_checkout(RLM_HANDLE, const char *, 
							const char *, int);
extern struct rlm_license * 	rlm_checkout_product(RLM_HANDLE, RLM_PRODUCTS,
							const char *, int);
extern int			rlm_close(RLM_HANDLE);
extern char *			rlm_errstring(RLM_LICENSE, RLM_HANDLE, char *);
extern char *			rlm_errstring_num(int err, char *);
extern void			rlm_forget_isv_down(RLM_HANDLE);
extern int			rlm_get_attr_health(RLM_LICENSE);
extern char *			rlm_get_attr_lfpath(RLM_LICENSE);
extern void			rlm_get_proxy(const char *url, char *proxy);
extern int			rlm_get_rehost(RLM_HANDLE, char *, char *);
extern const char *		rlm_hostid(RLM_HANDLE, int, char *);
extern struct rlm_handle *	rlm_init(const char *, const char *, 
								const char *);
extern struct rlm_handle *	rlm_init_disconn(const char *, const char *, 
							const char *, int);
extern int			rlm_detached_demo(RLM_HANDLE, int, 
								const char *);
extern int			rlm_detached_demox(RLM_HANDLE, const char *prod,
							const char *ver);
extern void			rlm_diagnostics(RLM_HANDLE, char *file);
extern void			rlm_isv_cfg_actpro_allowed_hostids(RLM_HANDLE, 
									int);
extern void			rlm_isv_cfg_disable_broadcast(RLM_HANDLE, int);
extern void			rlm_isv_cfg_disable_clock_windback_check(
							    RLM_HANDLE, int);
extern void			rlm_isv_cfg_disable_generic_server(
							    RLM_HANDLE, int);
extern void			rlm_isv_cfg_disable_reference_hostid_check(
							    RLM_HANDLE, int);
extern void			rlm_isv_cfg_disable_windows_fileid_check(
							RLM_HANDLE, int);
extern void			rlm_isv_cfg_enable_check_license(RLM_HANDLE, 
									int);
extern void			rlm_isv_cfg_enable_client_cache(RLM_HANDLE, int);
extern void			rlm_isv_cfg_set_compat(RLM_HANDLE, int, int);
extern void			rlm_isv_cfg_set_enable_roam_transient(
							RLM_HANDLE, int);
extern void			rlm_isv_cfg_set_enable_vm(RLM_HANDLE, int);
extern void			rlm_isv_cfg_set_license(RLM_HANDLE, 
								const char *);
extern int			rlm_isv_cfg_set_name(RLM_HANDLE, const char *);
extern void			rlm_isv_cfg_set_oldest_server(RLM_HANDLE, 
							int oldest_ver,
							int oldest_rev,
							int oldest_build);
extern void			rlm_isv_cfg_set_rehost_dir(RLM_HANDLE, char *);
extern void			rlm_isv_cfg_set_roam_single(RLM_HANDLE, int);
extern void			rlm_isv_cfg_set_server_roam(RLM_HANDLE, char *);
extern void			rlm_isv_cfg_set_url(RLM_HANDLE, char *);
extern void			rlm_isv_cfg_set_use_admin_disksns(RLM_HANDLE, 
							int);
extern void			rlm_isv_cfg_set_use_flexlm_lockfile(RLM_HANDLE, 
							int);
extern void			rlm_isv_cfg_set_use_hostid(RLM_HANDLE, int, 
					   void (*)(RLM_HANDLE, L_HOSTID),
					   int (*)(RLM_HANDLE, char *, char *));
extern int			rlm_log(RLM_HANDLE, const char *);
extern int			rlm_dlog(RLM_HANDLE, const char *);
extern int			rlm_sign_license(RLM_HANDLE rh, int encode_bits,
					  char *server_hostid, char *license);
extern void			rlm_skip_isv_down(RLM_HANDLE);
extern int			rlm_putenv(const char *);

/*
 *	RLM_LICENSE data
 */

extern char *		rlm_license_akey(RLM_LICENSE lic);
extern int		rlm_license_cached(RLM_LICENSE lic);
extern int		rlm_license_client_cache(RLM_LICENSE lic);
extern char *		rlm_license_contract(RLM_LICENSE lic);
extern char *		rlm_license_customer(RLM_LICENSE lic);
extern int		rlm_license_count(RLM_LICENSE lic);
extern int		rlm_license_detached_demo(RLM_LICENSE lic);
extern char *		rlm_license_exp(RLM_LICENSE lic);
extern int		rlm_license_exp_days(RLM_LICENSE lic);
extern int 		rlm_license_goodonce(RLM_LICENSE lic);
extern int 		rlm_license_hold(RLM_LICENSE lic);
extern int 		rlm_license_host_based(RLM_LICENSE lic);
extern char * 		rlm_license_hostid(RLM_LICENSE lic);
extern char *		rlm_license_issued(RLM_LICENSE lic);
extern char *		rlm_license_issuer(RLM_LICENSE lic);
extern char *		rlm_license_line_item(RLM_LICENSE lic);
extern int 		rlm_license_max_roam(RLM_LICENSE lic);
extern int 		rlm_license_max_roam_count(RLM_LICENSE lic);
extern int 		rlm_license_max_share(RLM_LICENSE lic);
extern int 		rlm_license_min_checkout(RLM_LICENSE lic);
extern int 		rlm_license_min_remove(RLM_LICENSE lic);
extern int 		rlm_license_min_timeout(RLM_LICENSE lic);
extern int 		rlm_license_named_user_count(RLM_LICENSE lic);
extern int 		rlm_license_named_user_min_hours(RLM_LICENSE lic);
extern char *		rlm_license_options(RLM_LICENSE lic);
extern char *		rlm_license_platforms(RLM_LICENSE lic);
extern char *		rlm_license_product(RLM_LICENSE lic);
extern int		rlm_license_roaming(RLM_LICENSE lic);
extern char *		rlm_license_server(RLM_LICENSE lic);
extern int 		rlm_license_share(RLM_LICENSE lic);
extern int 		rlm_license_single(RLM_LICENSE lic);
extern int 		rlm_license_soft_limit(RLM_LICENSE lic);
extern char *		rlm_license_start(RLM_LICENSE lic);
extern int		rlm_license_stat(RLM_LICENSE);
extern int 		rlm_license_type(RLM_LICENSE lic);
extern int 		rlm_license_tz(RLM_LICENSE lic);
extern int 		rlm_license_uncounted(RLM_LICENSE lic);
extern int 		rlm_license_user_based(RLM_LICENSE lic);
extern char * 		rlm_license_ver(RLM_LICENSE lic);

/*
 *	rlm_products() data
 */
extern RLM_PRODUCTS 	rlm_products(RLM_HANDLE, char *, char *);
extern RLM_PRODUCTS	rlm_products_dynres(RLM_HANDLE rh, char *product, 
						char *ver, char *dynres);
extern void 		rlm_products_free(RLM_PRODUCTS);
extern void 		rlm_product_first(RLM_PRODUCTS);
extern int 		rlm_product_next(RLM_PRODUCTS);

extern char *		rlm_product_akey(RLM_PRODUCTS);
extern int		rlm_product_client_cache(RLM_PRODUCTS);
extern char *		rlm_product_contract(RLM_PRODUCTS);
extern int		rlm_product_count(RLM_PRODUCTS);
extern int		rlm_product_current_inuse(RLM_PRODUCTS);
extern int		rlm_product_current_resuse(RLM_PRODUCTS);
extern char *		rlm_product_customer(RLM_PRODUCTS);
extern char *		rlm_product_exp(RLM_PRODUCTS);
extern int		rlm_product_exp_days(RLM_PRODUCTS);
extern int		rlm_product_hbased(RLM_PRODUCTS);
extern int		rlm_product_hold(RLM_PRODUCTS);
extern char *		rlm_product_hostid(RLM_PRODUCTS);
extern char *		rlm_product_issuer(RLM_PRODUCTS);
extern int		rlm_product_min_checkout(RLM_PRODUCTS);
extern int		rlm_product_max_roam(RLM_PRODUCTS);
extern int		rlm_product_max_roam_count(RLM_PRODUCTS);
extern int		rlm_product_min_remove(RLM_PRODUCTS);
extern int		rlm_product_max_share(RLM_PRODUCTS);
extern int		rlm_product_min_timeout(RLM_PRODUCTS);
extern char *		rlm_product_name(RLM_PRODUCTS);
extern int		rlm_product_nres(RLM_PRODUCTS);
extern int		rlm_product_num_roam_allowed(RLM_PRODUCTS);
extern char *		rlm_product_options(RLM_PRODUCTS);
extern int		rlm_product_roaming(RLM_PRODUCTS);
extern char *		rlm_product_server(RLM_PRODUCTS);
extern int		rlm_product_share(RLM_PRODUCTS);
extern int		rlm_product_soft_limit(RLM_PRODUCTS);
extern int		rlm_product_thisroam(RLM_PRODUCTS);
extern int		rlm_product_timeout(RLM_PRODUCTS);
extern int		rlm_product_tz(RLM_PRODUCTS);
extern int		rlm_product_tokens(RLM_PRODUCTS);
extern int		rlm_product_type(RLM_PRODUCTS);
extern int		rlm_product_ubased(RLM_PRODUCTS);
extern char *		rlm_product_ver(RLM_PRODUCTS);

extern void		rlm_set_active(RLM_HANDLE, int);
extern void		rlm_set_attr_keep_conn(RLM_HANDLE, int);
extern void		rlm_set_attr_logging(RLM_HANDLE, int);
extern void		rlm_set_attr_password(RLM_HANDLE, char *);
extern void		rlm_set_attr_reference_hostid(RLM_HANDLE, char *);
extern void		rlm_set_attr_req_opt(RLM_HANDLE, char *);
extern void		rlm_set_auto_hb_isvdata(RLM_HANDLE, const void *i);
extern void		rlm_set_environ(RLM_HANDLE, char *, char *, char *);
extern int		rlm_stat(RLM_HANDLE);

/*
 *	rlm_act_xxx() functions - Internet Activation
 */

extern const char * 	rlm_act_errstring(int stat);
extern int		rlm_act_fulfill_info(RLM_HANDLE rh, const char *url, 
					char *akey, char *product, char *ver, 
					int *date_based, int *license_type,
					char *upgrade_version, int *count,
					int *fulfilled, int *rehosts, 
					int *revoked, char *exp, char *hostid);
extern int		rlm_act_info(RLM_HANDLE rh, const char *url, 
					char *akey, char *product, char *ver, 
					int *date_based, int *license_type,
					char *upgrade_version);
extern int		rlm_act_keyinfo(RLM_HANDLE rh, const char *url, 
					char *akey, char *product, char *ver, 
					int *date_based, int *license_type,
					char *upgrade_version, int *count,
					int *fulfilled, int *rehosts, 
					int *revoked);
extern int		rlm_act_keyvalid(RLM_HANDLE rh, const char *url,
					char *akey, char *hosid);
extern int		rlm_act_keyvalid_license(RLM_HANDLE rh, 
					const char *url, char *akey, 
					char *hosid, char *license);
extern int		rlm_act_request(RLM_HANDLE rh, const char *url, 
					const char *isv, const char *akey, 
					const char *hostid_list, 
					const char *hostname,
					int count, const char *extra, 
					char *license);
extern int		rlm_act_refresh(RLM_HANDLE rh, char *isv,
					void (*func)(char *, char *, int));
extern int		rlm_activate(RLM_HANDLE rh, const char *url, 
					const char *akey, int count, 
					char *license, RLM_ACT_HANDLE handle);
extern RLM_ACT_HANDLE	rlm_act_new_handle(RLM_HANDLE rh);
extern void		rlm_act_destroy_handle(RLM_ACT_HANDLE handle);
extern int		rlm_act_set_handle(RLM_ACT_HANDLE handle, int what, 
								void *val);
extern int		rlm_act_revoke(RLM_HANDLE rh, const char *url,
							char *product);
extern int		rlm_act_revoke_reference(RLM_HANDLE rh, const char *url,
								char *product);
extern int		rlm_act_revoke_disconn(RLM_HANDLE rh, const char *url,
						    char *param, char *retval);
/*
 *    v12.0 - Apps may call this OpenSSL routine directly so define it to
 *    use the new in v12 RLM-specific name.
 */
#if !defined(_WIN32) && !defined(hp_h1) && !defined(hp64_h1) && !defined(ia64_h1) && !defined(ibm_a1) && !defined(ibm64_a1) && !defined(sun_s1) && !defined(sun64_s1)
#define ERR_remove_state rlmssl_ERR_remove_state
#endif

/*
 *	General Errors - returned by rlm_stat(license_handle)
 */
#define RLM_HANDLE_ERR_FIRST	 101
#define RLM_EH_NOHANDLE		-101	/* No handle supplied to call */
#define RLM_EH_READ_NOLICENSE	-102	/* Can't read license data */
#define RLM_EH_NET_INIT		-103	/* Network (msg_init()) error */
#define RLM_EH_NET_WERR		-104	/* Error writing to network */
#define RLM_EH_NET_RERR		-105	/* Error reading from network */
#define RLM_EH_NET_BADRESP 	-106	/* Unexpected response */
#define RLM_EH_BADHELLO		-107	/* HELLO message for wrong server */

#define RLM_EH_BADPRIVKEY	-108	/* Error in private key */
#define RLM_EH_SIGERROR		-109	/* Error signing authorization */
#define RLM_EH_INTERNAL		-110	/* Internal error */
	
#define RLM_EH_CONN_REFUSED 	-111	/* Connection refused at server */
#define RLM_EH_NOSERVER		-112	/* No server to connect to */
#define RLM_EH_BADHANDSHAKE 	-113	/* Bad communications handshake */
#define RLM_EH_CANTGETETHER 	-114	/* Can't get ethernet address */
					/* system call failures */
#define RLM_EH_MALLOC		-115
#define RLM_EH_BIND		-116	/* bind() error */
#define RLM_EH_SOCKET		-117	/* socket() error */

#define RLM_EH_BADPUBKEY	-118	/* Error in public key */
#define RLM_EH_AUTHFAIL		-119	/* Authentication failed */
#define RLM_EH_WRITE_LF		-120	/* Can't write temp license file */
#define RLM_EH_NO_REPORTLOG 	-121	/* No reportlog file on this server */
#define RLM_EH_DUP_ISV_HID	-122	/* ISV-defined hostid already registered */
#define RLM_EH_BADPARAM		-123	/* Bad parameter passed to RLM function */
/*
 *	BADPARAM/INTERNAL sub-errors (in syserr)
 */
#define RLM_ACT_BP_NOLIC	-1
#define RLM_ACT_BP_NOURL	-2
#define RLM_ACT_BP_NLKEY	-3	/* Newline in activation key */
#define RLM_ACT_BP_NLXTRA	-4	/* Newline in extra parameter */
#define RLM_ACT_BP_TOOMUCH	-5	/* Too much data to send */
#define RLM_ACT_BP_ILLXTRA	-6	/* Illegal character in extra data */
#define RLM_CO_BADCOUNT		-7	/* bad count for checkout: <= 0 */
#define RLM_DD_BADDATE		-8	/* exp date <= 0 for detached demo */
#define RLM_ILL_CHAR_HOSTID	-9	/* Illegal char in hostid */
#define RLM_REHOST_HOSTID_FMT	-10	/* Bad format for rehostable hostid */
#define RLM_REHOST_NO_ROOT	-11	/* No isv-specified root dir */
#define RLM_REHOST_NO_TOP	-12	/* No/bad top-level hostid file */
#define RLM_RLMINFO_NO_COMM	-13	/* No comm structs in rlm_rlminfo() */
#define RLM_ISVINFO_NO_COMM	-14	/* No comm structs in rlm_isvinfo() */
#define RLM_POOLINFO_NO_COMM	-15	/* No comm structs in rlm_poolinfo() */
#define RLM_USERLIST_NO_COMM	-16	/* No comm structs in rlm_userlist() */
#define RLM_DD_TEMPLATE		-17	
			/* Bad template license passed to rlm_detached_demo() */
#define RLM_BAD_NAME		-18	/* Bad name to isv_cfg_set_name() */
#define RLM_NO_ISV_HOSTID	-19	/* No isv-defined hostid for compare routine */
#define RLM_ISV_HOSTID_KEYWORD	-20	/* isv-defined hostid keyword missing or too long */
#define RLM_ISV_HOSTID_TYPE	-21	/* isv-defined hostid type < min */
#define RLM_SIGN_NOSTART	-22	/* No start/issued for replace lic */
#define RLM_SIGN_BADTYPE	-23	/* unknown license type for signing */
#define RLM_REHOST_TOOMUCHDATA	-24	/* Too much data in rehost hostid */
#define RLM_REHOST_WRONGDATA	-25	/* Wrong amt of data in rehost hostid */
#define RLM_ACT_HOSTID_TOOLONG	-26	/* Hostid list too long */
#define RLM_CO_NOPRODUCT	-27	/* No product or version in checkout */
#define RLM_INT_OPENFILE	-28	/* isv_get_isv: can't open file */
#define RLM_INT_DATALEN		-29	/* isv_get_isv: data length wrong */
#define RLM_INT_DATAREAD	-30	/* isv_get_isv: data read error */
#define RLM_INT_KEYREAD		-31	/* isv_get_isv: key read error */
#define RLM_PATH_TOOLONG	-32	/* rlm_init(): path too long */
#define RLM_REVOKE_NO_PROD	-33	/* rlm_revoke(): no product name */

#define RLM_BADPARAM_LAST	-33	/* Last badparam sub-error */

#define RLM_EH_ROAMWRITEERR	-124	/* Roam File write error */
#define RLM_EH_ROAMREADERR	-125	/* Roam File read error */
#define RLM_EH_HANDLER_INSTALLED -126	/* heartbeat handler already installed */
#define RLM_EH_CANTCREATLOCK -127	/* Cannot create 'single' lockfile */
#define RLM_EH_CANTOPENLOCK -128	/* Cannot open 'single' lockfile */
#define RLM_EH_CANTSETLOCK -129		/* Cannot set lock on 'single' */
#define RLM_EH_BADRLMLIC -130		/* Bad/missing/expired RLM license */
#define RLM_EH_BADHOST	-131		/* Bad hostname in LF/port@host */
#define RLM_EH_CANTCONNECT_URL -132	/* Cannot connect to specified URL */
#define RLM_EH_OP_NOT_ALLOWED  -133	/* Operation not allowed on server */
#define RLM_EH_ACT_BADSTAT     -134	/* Bad status from activation binary */
#define RLM_EH_ACT_BADLICKEY   -135	/* Bad license key in 
							activation binary */
#define RLM_EH_BAD_HTTP	       -136	/* Bad HTTP transaction */
#define RLM_EH_DEMOEXISTS      -137	/* Demo already created */
#define RLM_EH_DEMOWRITEERR    -138	/* Demo file write error */
#define RLM_EH_NO_DEMO_LIC     -139	/* No "rlm_demo" license available */
#define RLM_EH_NO_RLM_PLATFORM -140	/* RLM unlicensed on this platform */
#define RLM_EH_EVAL_EXPIRED    -141	/* RLM eval expired */
#define RLM_EH_SERVER_REJECT   -142	/* Server rejected by client */
#define RLM_EH_UNLICENSED      -143	/* Unlicensed RLM option */
#define RLM_EH_SEMAPHORE_FAILURE -144	/* Semaphore initialization failure */
#define RLM_EH_ACT_OLDSERVER	-145	/* Activation server too old */
#define RLM_EH_BAD_LIC_LINE	-146	/* Invalid license line in LF */
#define RLM_EH_BAD_SERVER_HOSTID -147	/* Invalid hostid on SERVER line */
#define RLM_EH_NO_REHOST_TOP_DIR -148	/* No rehostable hostid top-level dir */
#define RLM_EH_CANT_GET_REHOST	-149	/* Cannot get rehost hostid */
#define RLM_EH_CANT_DEL_REHOST	-150	/* Cannot delete rehost hostid */
#define RLM_EH_CANT_CREATE_REHOST -151 	/* Cannot create rehostable hostid */
#define RLM_EH_REHOST_TOP_DIR_EXISTS -152 /* Rehostable top dir exists */
#define RLM_EH_REHOST_EXISTS -153 	/* Rehostable hostid exists */
#define RLM_EH_NO_FULFILLMENTS -154 	/* No fulfillments to revoke */
#define RLM_EH_METER_READERR -155	/* Meter read error */
#define RLM_EH_METER_WRITEERR  -156	/* Meter write error */
#define RLM_EH_METER_BADINCREMENT -157	/* Bad meter increment command */
#define RLM_EH_METER_NO_COUNTER -158	/* Can't find counter in meter */
#define RLM_EH_ACT_UNLICENSED	-159	/* Activation Unlicensed */
#define RLM_EH_ACTPRO_UNLICENSED -160	/* Activation Pro Unlicensed */
#define RLM_EH_SERVER_REQUIRED -161	/* Counted license requires server */
#define RLM_EH_DATE_REQUIRED -162	/* REPLACE license requires date */
#define RLM_EH_NO_METER_UPGRADE -163	/* METERED licenses can't be UPGRADED */
#define RLM_EH_NO_CLIENT -164		/* disconnected client data can't be found */
#define RLM_EH_NO_DISCONN -165		/* op not permitted on disconn handle */
#define RLM_EH_NO_FILES	-166		/* Too many open files */
#define RLM_EH_NO_BROADCAST_RESP -167	/* No response from broadcast */
#define RLM_EH_NO_BROADCAST_HOST -168	/* broadcast didn't return hostname */
#define RLM_EH_SERVER_TOO_OLD -169	/* Server too old to support this */
#define RLM_EH_BADLIC_FROM_SERVER -170	/* License from server doesn't */
							/* authenticate */
#define RLM_EH_NO_LIC_FROM_SERVER -171	/* No License returned from server */
#define RLM_EH_CACHEWRITEERR	-172	/* Client Cache File write error */
#define RLM_EH_CACHEREADERR	-173	/* Client Cache File read error */
#define RLM_EH_LIC_WITH_NEW_KEYWORDS -174 /* License returned from server has keywords I don't understand */
#define RLM_EH_NO_ISV 		-175	/* Unknown ISV name */
#define RLM_EH_NO_CUSTOMER 	-176	/* Unknown Customer name */
#define RLM_EH_NO_SQL 		-177	/* Cannot open MySQL database */
#define RLM_EH_ONLY_LOCAL_CMDS 	-178	/* Only local command-line cmds allowed */
#define RLM_EH_SERVER_TIMEOUT 	-179	/* Server timeout on read */
#define RLM_EH_NONE_SIGNED	-180	/* rlmsign did not sign any licenses */
#define RLM_EH_DUP_XFER		-181	/* Duplicate disconnected transfer */

#define RLM_EH_MAX_ERRS 81

/*
 *	rlm_checkout() errors - returned by rlm_license_stat(license)
 */
#define RLM_EL_NOPRODUCT 	-1	/* No authorization for product */
#define RLM_EL_NOTME		-2	/* Authorization is for another ISV */
#define RLM_EL_EXPIRED		-3	/* Authorization has expired */
#define RLM_EL_NOTTHISHOST 	-4	/* Wrong host for authorization */
#define RLM_EL_BADKEY		-5	/* Bad key in authorization */
#define RLM_EL_BADVER		-6	/* Requested version not supported */
#define RLM_EL_BADDATE		-7	/* bad date format - not permanent or 
								dd-mm-yy */
#define RLM_EL_TOOMANY		-8	/* checkout request for too many 
								licenses */
#define RLM_EL_NOAUTH		-9	/* No license auth supplied to call */
#define RLM_EL_ON_EXC_ALL 	-10	/* On excludeall list */
#define RLM_EL_ON_EXC		-11	/* On feature exclude list */
#define RLM_EL_NOT_INC_ALL 	-12	/* Not on the includeall list */
#define RLM_EL_NOT_INC		-13	/* Not on the feature include list */
#define RLM_EL_OVER_MAX		-14	/* Request would go over license MAX */
#define RLM_EL_REMOVED		-15	/* License (rlm)removed by server */
#define RLM_EL_SERVER_BADRESP 	-16	/* Unexpected response from server */
#define RLM_EL_COMM_ERROR	-17	/* Error communicating with server */
#define RLM_EL_NO_SERV_SUPP	-18	/* License server doesn't support this */
#define RLM_EL_NOHANDLE   	-19	/* No license handle */
#define RLM_EL_SERVER_DOWN  	-20	/* Server closed connection */
#define RLM_EL_NO_HEARTBEAT 	-21	/* No heartbeat response received */
#define RLM_EL_ALLINUSE		-22	/* All licenses in use */
#define RLM_EL_NOHOSTID		-23	/* No hostid on uncounted license */
#define RLM_EL_TIMEDOUT		-24	/* License timed out by server */
#define RLM_EL_INQUEUE		-25	/* In queue for license */
#define RLM_EL_SYNTAX		-26	/* License syntax error */
#define RLM_EL_ROAM_TOOLONG	-27	/* Roam time exceeds maximum */
#define RLM_EL_NO_SERV_HANDLE	-28	/* Server does not know this handle */
#define RLM_EL_ON_EXC_ROAM 	-29	/* On roam exclude list */
#define RLM_EL_NOT_INC_ROAM	-30	/* Not on roam include list */
#define RLM_EL_TOOMANY_ROAMING	-31	/* Too many licenses roaming */
#define RLM_EL_WILL_EXPIRE	-32	/* License expires before roam ends */
#define RLM_EL_ROAMFILEERR	-33	/* Problem with roam file */
#define RLM_EL_RLM_ROAM_ERR	-34	/* Cannot checkout rlm_roam license */
#define RLM_EL_WRONG_PLATFORM	-35	/* Wrong platform for client */
#define RLM_EL_WRONG_TZ		-36	/* Wrong timezone for client */
#define RLM_EL_NOT_STARTED	-37	/* License start date not reached */
#define RLM_EL_CANT_GET_DATE	-38	/* time() failure */
#define RLM_EL_OVERSOFT		-39	/* Over license soft limit */
#define RLM_EL_WINDBACK		-40	/* Clock setback detected */
#define RLM_EL_BADPARAM		-41	/* Bad parameter to checkout() call */
#define RLM_EL_NOROAM_FAILOVER	-42	/* Roam operations not permitted on
					   failover servers */
#define RLM_EL_BADHOST		-43	/* Bad hostname in LF/port@host */
#define RLM_EL_APP_INACTIVE	-44	/* Application is inactive */
#define RLM_EL_NOT_NAMED_USER	-45	/* Not a named user */
#define RLM_EL_TS_DISABLED	-46	/* Terminal Server disabled */
#define RLM_EL_VM_DISABLED	-47	/* Virtual Machines disabled */
#define RLM_EL_PORTABLE_REMOVED	-48	/* Portable hostid removed */
#define RLM_EL_DEMOEXP		-49	/* Demo license has expired */
#define RLM_EL_FAILED_BACK_UP	-50	/* Failed host back up */
#define RLM_EL_SERVER_LOST_XFER	-51	/* Server lost it's transferred license */
#define RLM_EL_BAD_PASSWORD	-52	/* Incorrect password for product */
					/* Note: RLM_EL_BAD_PASSWORD is an
					   internal error and won't ever be 
					   returned to the client - if the 
					   license password is bad, the client
					   will receive RLM_EL_NO_SERV_SUPP */
#define RLM_EL_METER_NO_SERVER	-53	/* Metered licenses require a server */
#define RLM_EL_METER_NOCOUNT	-54	/* Not enough count for metered lic */
#define RLM_EL_NOROAM_TRANSIENT	-55	/* Roam operations not permitted on
					   servers with transient hostids */
#define RLM_EL_CANTRECONNECT	-56	/* Cannot reconnect to server */
#define RLM_EL_NONE_CANROAM	-57	/* None of these licenses can roam */
#define RLM_EL_SERVER_TOO_OLD	-58	/* Server too old for operation */
#define RLM_EL_SERVER_REJECT	-59	/* Server rejected client */
#define RLM_EL_REQ_OPT_MISSING	-60	/* Requested option not present */
#define RLM_EL_NO_DYNRES	-61	/* Reclaim can't find dynamic res */
#define RLM_EL_RECONN_INFO_BAD	-62	/* Reconnection info invalid */
#define RLM_EL_ALREADY_ROAMING	-63	/* Licenses are already roaming */
#define RLM_EL_BAD_EXTEND_FMT	-64	/* Bad format for RLM_ROAM_EXTEND */
#define RLM_EL_BAD_EXTEND_CODE	-65	/* Bad extend code for roam extend */
#define RLM_EL_NO_ROAM_TO_EXTEND -66	/* No roaming license to extend */

#define RLM_EL_MAX_ERRS 66

/*
 *	Activation errors
 */

#define RLM_ACT_ERR_FIRST	 1001
#define RLM_ACT_BADPARAM	-1001	/* Missing or bad sig for disconnected
					   revoke (unused prior to 11.1) */
#define RLM_ACT_NO_KEY		-1002	
#define RLM_ACT_NO_PROD		-1003	/* No product definition */
#define RLM_ACT_CANT_WRITE_KEYS -1004	/* Can't write keyf table */
#define RLM_ACT_KEY_USED 	-1005	/* Activation key already used*/
#define RLM_ACT_BAD_HOSTID	-1006	/* Missing hostid */
#define RLM_ACT_BAD_HOSTID_TYPE	-1007	/* Invalid hostid type */
#define RLM_ACT_BAD_HTTP	-1008	/* Bad HTTP transaction - 
							UNUSED after v3.0BL4 */
#define RLM_ACT_CANTLOCK	-1009	/* Can't lock activation DB (file-based activation only) */
#define RLM_ACT_CANTREAD_DB	-1010	/* Can't read activation DB */
#define RLM_ACT_CANT_WRITE_FULFILL -1011 /* Can't write licf table */
#define RLM_ACT_CLIENT_TIME_BAD -1012	/* Clock incorrect on client */
#define RLM_ACT_BAD_REDIRECT	-1013	/* Bad redirect from server */
#define RLM_ACT_TOOMANY_HOSTID_CHANGES	-1014	/* Too many hostid changes */
					/*  for Refresh activation */
#define RLM_ACT_BLACKLISTED	-1015	/* Domain on blacklist */
#define RLM_ACT_NOT_WHITELISTED	-1016	/* Domain not on whitelist */
#define RLM_ACT_KEY_EXPIRED	-1017	/* Activation key expired */
#define RLM_ACT_NO_PERMISSION	-1018	/* HTTP request denied */
#define RLM_ACT_SERVER_ERROR	-1019	/* HTTP internal server error */
#define RLM_ACT_BAD_GENERATOR	-1020	/* Bad/missing generator file */
#define RLM_ACT_NO_KEY_MATCH	-1021	/* No matching key in DB */
#define RLM_ACT_NO_AUTH_SUPPLIED -1022	/* No proxy auth supplied */
#define RLM_ACT_PROXY_AUTH_FAILED -1023	/* proxy auth failed */
#define RLM_ACT_NO_BASIC_AUTH	-1024	/* No basic authentication */
#define RLM_ACT_GEN_UNLICENSED   -1025	/* Activation generator unlicensed */
#define RLM_ACT_DB_READERR	-1026	/* Activtion DB read error (MySQL) */
#define RLM_ACT_GEN_PARAM_ERR	-1027	/* Generating license - bad parameter */
#define RLM_ACT_UNSUPPORTED_CMD	-1028	/* Unsupported command to generator */
#define RLM_ACT_REVOKE_TOOLATE	-1029	/* Revoke command after expiration */
#define RLM_ACT_KEY_DISABLED	-1030	/* Activation key disabled */
#define RLM_ACT_KEY_NO_HOSTID	-1031  /* Key not fulfilled on this hostid */
#define RLM_ACT_KEY_HOSTID_REVOKED -1032 /* Key revoked on this hostid */
#define RLM_ACT_NO_FULFILLMENTS	-1033	/* No fulfillments to remove */
#define RLM_ACT_LICENSE_TOOBIG	-1034	/* Generated license too long */
#define RLM_ACT_NO_REHOST	-1035	/* Counted licenses can't be rehostable */
#define RLM_ACT_BAD_URL		-1036	/* License Generator not found on server */
#define RLM_ACT_NO_LICENSES	-1037	/* No licenses found (rlm cloud control) */
#define RLM_ACT_NO_CLEAR	-1038	/* Unencrypted requests not allowed */
#define RLM_ACT_BAD_KEY		-1039	/* Bad activation key (illegal char) */
#define RCC_CANT_WRITE_FULFILL	-1040	/* rcc: Can't write licf table */
#define RCC_PORTAL_CANT_WRITE_FULFILL -1041 /* rcc: Can't write licf table */
#define RLM_ACT_KEY_TOOMANY	-1042 /* Insufficient count left on key */
#define RLM_ACT_SUB_BADTYPE	-1043 /* Subscription license not NL/Single */
#define RLM_ACT_ERR_LAST	43

#define RLM_ACT_ERR(x) ((x <= -RLM_ACT_ERR_FIRST) && \
			(x > -(RLM_ACT_ERR_FIRST+RLM_ACT_ERR_LAST)))

/*
 *	Function/definitions to update an RLM license authorization
 *	Used to extend ISV servers for external license manager
 *	transfers only.
 */


#define RLM_IX_CONTRACT 2
#define RLM_IX_COUNT 3
#define RLM_IX_COUNTFLAG 4
#define RLM_IX_CUSTOMER 5
#define RLM_IX_DISABLE 6
#define RLM_IX_EXP 7
#define RLM_IX_HOLD 8
#define RLM_IX_HOSTID_STRING 9
#define RLM_IX_ISSUED 10
#define RLM_IX_ISSUER 11
#define RLM_IX_LIC_OPTS 12
#define RLM_IX_LINE_ITEM 13
#define RLM_IX_MAX_ROAM 14
#define RLM_IX_MAX_ROAM_COUNT 27
#define RLM_IX_MAX_SHARE 15
#define RLM_IX_MIN_CHECKOUT 16
#define RLM_IX_MIN_REMOVE 17
#define RLM_IX_MIN_TIMEOUT 18
#define RLM_IX_PLATFORMS 19
#define RLM_IX_PRODUCT 20
#define RLM_IX_SOFT_LIMIT 21
#define RLM_IX_SHARE 22
#define RLM_IX_START 23
#define RLM_IX_TIMEZONES 24
#define RLM_IX_TYPE 25
#define RLM_IX_VER 26
	/* 27 used - MAX_ROAM_COUNT */
#define RLM_IX_CLIENT_CACHE 28

extern void rlm_ix_update_auth(void *ls, void *auth, int which, int ival, 
							char *cptr);

extern void rlm_ix_enable( char *lm_name,
			   void xfer(void *, void *), 
			   void xfer_done(void *, void *, void *), 
			   int open(void *, char *, int, char *, int, char *,
							void **, int *),
			   int checkout(void *, void *, char *, char *,
								int, void **),
			   void fillin(void *, void *, void *, void *, char *, 
									int),
			   int check_auth(void *, char *, void *, void *),
			   int update_status(void *, char *, int, void *,int *),
			   int heartbeat(void *, void *),
			   int checkin(void *, void *),
			   int close(void *));

extern void rlm_ix_transfer(void *, void *);
extern void rlm_ix_done_xfer(void *, void *, void *);
extern void rlm_ix_log(void *, char *);

/*
 *	End of ISV server license transfer extensions
 */

/*
 *	CRYPTO_cleanup_all_ex_data is now rlmssl_CRYPTO_cleanup_all_ex_data
 *	in the client library to avoid name collisions with other OpenSSL
 *	libraries in ISV products.
 */
#define CRYPTO_cleanup_all_ex_data rlmssl_CRYPTO_cleanup_all_ex_data

#ifdef __cplusplus
}
#endif

#endif /* RLM_LICENSE_H_INCLUDED */

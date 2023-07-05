namespace com.sap.learning.katie.parentcodemanagement;

context types {

    // Workaround https://issues.wdf.sap.corp/browse/HANADB-689
    type xxx_full_name                           : String(128);
    // Workaround https://issues.wdf.sap.corp/browse/HANADB-700
    type xxx_days                                : String(10);
    // https://issues.wdf.sap.corp/browse/HANADB-1337
    type xxx_hours                               : Integer;
    type xxx_mins                                : Integer;
    // user related
    type first_name                              : String(40); // length taken from ABAP system
    type last_name                               : String(40); // length taken from ABAP system
    type display_name                            : String(80); // length taken from ABAP system
    type email_address                           : String(241); // length taken from ABAP system
    type phone                                   : String(30); // length taken from ABAP system
    type company_code                            : String(4); // length taken from ABAP system
    type cost_center_id                          : String(10); // length taken from ABAP system
    type cost_center_name                        : String(40); // length taken from ABAP system

    // guessed types used where we do not know about data length
    type guessed30                               : hana.VARCHAR(30);
    type year_only                               : hana.SMALLINT; // 0-9999

    // organization related types
    type organization_name                       : String(40);
    type service_name                            : String(40);
    // process related types
    type process_status_value                    : String(180);
    type process_status_name                     : String(60);
    type process_status_list_name                : String(40);
    type task_target_date                        : String(5); // "Start" or "End", used in T_PROC_IF_DATE_MAPPING
    type voucher_type                            : String(20); // 'Posting Voucher'/'Correction Voucher'/'Change Request' defined in T_VALUE_LIST
    type voucher_status                          : String(15); // 'New'/'Exported'/'Imported'/'Canceled'/'Accepted'
    type voucher_scenario                        : String(30); // enable different rules to be processed triggered by "accept" button
    type mapping_direction                       : String(30); // values: 'From Product to Milestone' / 'From Milestone to Product'

    // defined types
    type abcd                                    : String(1);
    type id                                      : hana.VARCHAR(32);
    type title                                   : String(100);
    type description                             : String(512);
    type budgeting_period                        : String(6); // "2016_2"
    type boolean                                 : String(5); // "true" or "false"
    type userid                                  : String(12);
    type language                                : String(4); // RFC 5646, RFC 4647, combination of ISO 639-1 and  ISO 3166‑1 "en-US"
    type url                                     : String(512);
    type percent_int                             : hana.TINYINT; // values between 0 and 100
    type hours_per_day                           : hana.TINYINT; // values between 0 and 24 (or between 0 and 8 for business days)
    type unit                                    : String(20); // to define units for display, may contain comma seperated list of units
    type role                                    : String(40); // Business Role
    type role_scope                              : String(20); // 'Process', 'Organization', 'Cross-Organization'
    type permission                              : String(100); // the permission assigned to a role
    type curr_amount                             : Decimal(15, 2); // 15 digit including decimal dot and two digits after, allways EURO
    type duration                                : Decimal(15, 2); // 15 digit including decimal dot and two digits after, allways HOURS
    type tagging                                 : String(512);
    type snapshot                                : String(32); // Snapshot identifier (named or simply timestamp 2016-07-21 16:56:55:000) or mstone_report_name_id
    type mstone_type                             : String(8); // one of: Task, Group
    type mstone_status                           : String(20);
    type mstone_report_name                      : String(40); // Identifier for a task as milestone
    type authorization                           : String(40); // authorization information for data or value list entries
    type cost_schema_id                          : String(70); // product_types.(cp_method, production_type, del_type) + language = 65
    type io_number                               : String(12);
    type process_interface                       : String(10);
    type translation_review_preference           : String(10);
    type mstone_date_mapping_type                : String(10);
    type production_priority                     : String(5);
    type nnc_days                                : Decimal(15, 2);
    type assigned_vendor                         : String(50);
    // Direct Costs related
    type cost_category                           : String(8); // internal, external


    // Product Types
    // type deliverable_type: String(40);   // will contain the name of the product table like T_ENABLEMENT_PRODUCT
    type course_code                             : String(13);
    type collection                              : String(4);
    type revision                                : String(3); // UI representation with leading zeros '000' - '999'
    type course_id                               : String(24); // (usually) composed of course_code(10), collection(2), revision(3) and language(2)
    type fdl_line                                : Integer;
    type value_list                              : array of String(30);
    type del_type                                : String(20); // delivery type
    type deliverable_type                        : String(20); // deliverable type
    type solution                                : String(50);
    type edu_webshop_release                     : String(30);
    type ts_landscape                            : String(40);
    type ts_landscape_id                         : String(40);
    type course_duration                         : Integer; // always in minutes
    type production_type                         : String(30);
    type translation_type                        : String(40);
    type pricing_period                          : String(10);
    type cp_method                               : String(20);
    type budget_period                           : String(4); // year
    type portfolio_dimension                     : String(50);
    type spotlight_topic                         : String(50);
    type json_drop                               : LargeString;
    type lifecycle_status                        : String(50);
    type portfolio_comment                       : String(1024);
    type price_list                              : String(10);
    type hml_priority                            : String(6); // "High", "Medium", "Low"
    type production_stream_name                  : String(50);
    type production_status                       : String(50);
    type cdw_cluster                             : String(30);
    type recommended_sme                         : String(256);
    type system_testing_method                   : String(2);
    type development_landscape_status            : String(2);
    type outline_number                          : Integer;


    // The deliverable is defined as the base product,
    // of which multiple versions.revisions.repairs might exist
    // The deliverable is defined as language specific


    // A delivery is the shipment of a new product version.revision.repair
    // type delivery {
    //     PROCESSCONFIGRATION: association [0..1] TO process_conf.T_PROCESSCONFIGUATION { GUID };
    //    DESCRIPTION: types.description;
    // };

    // from value lists
    type tablename                               : String(120);
    type fieldname                               : String(60);
    type int_lfdnr                               : hana.SMALLINT;
    type str_value                               : String(50);
    type valuedesc                               : String(110);
    // variants
    type variant_name                            : String(50);
    type data_type_name                          : String(40);
    type sort_direction                          : String(10);
    type filter_value                            : String(256);
    type size                                    : String(12);
    // bookings
    type booking_type                            : String(50);
    type booking_num                             : String(20);
    // alerts
    type alert_category                          : String(50);
    type alert_status                            : String(50);
    type alert_comment                           : String(1024);
    // type resolve_comment: String(1024);

    type production_cluster_name                 : String(60);
    // Training System Q-Gate & ZNAC
    type qgate_method                            : String(50);
    type maximum_students                        : Integer;
    type ecatt_name                              : String(45);
    type ecatt_system                            : String(10);
    type frontend_information                    : String(100);
    type znac_processor                          : String(50);
    type memory_usage                            : Integer;
    type note_text                               : LargeString;
    //tiles
    type tile_id                                 : Integer;
    type tile_type                               : Integer; // binary encoded storage of multiple types
    type ppms_product                            : String(30);
    type ppms_object_number                      : String(20);
    type ppms_product_line                       : String(100);
    type ppms_product_category                   : String(50);
    type portfolio_category                      : String(50);
    //lj's
    type lj_id                                   : Integer;
    type lj_topic                                : Integer;
    type lj_scenario                             : String(60);
    type lj_subtopic_id                          : Integer;
    type lj_subtopic_title                       : String(256);
    type help_portal_status                      : String(40);
    type help_portal_version                     : String(40);
    type learner_role                            : Integer;
    type attribute26                             : String(24);
    type target_platform                         : String(40);
    type material_status                         : String(40);
    type delivery_method                         : String(40);
    type reporting_type                          : String(30);
    type modality                                : String(40);
    type target_platform_id                      : String(32);
    type target_platform_guid                    : String(36);
    type material_attributes_list                : String(256);
    type opportunity_number                      : String(9);
    type order_status                            : String(30); // "Order in Scoping", "Order with Education Deal Desk", "Order in Delivery", "Order Completed", "Order Canceled"
    type order_form_signed                       : String(5); // "true", "false"
    type invoicing_type                          : String(8); // "By Event", "By Order"
    type cms_case_number                         : String(10);
    type customer_contact_information            : String(5000);
    type customer_account_number                 : String(10);
    type customer_name                           : String(100);
    type ilp_event_id                            : String(8);
    type training_type                           : String(12); // "Standard" , "Non-standard"
    type course_type                             : String(8);
    type event_status                            : String(16); // "In Backlog" , "In Forecast" , "Completed" , "Canceled"
    type event_duraction                         : Integer; // in days
    type event_duration                          : Integer; // in days
    type dates_in_discussion                     : String(255);
    type instructor_booking_status               : String(11); // "N/A" , "Hardbooking" , "Softbooking"
    type classroom_location                      : String(20); // "N/A" , "Onsite" , "@SAP" , "VLC" , "Third Party Location"
    type third_party_classroom_location          : String(1000);
    type third_party_classroom                   : String(26); // "No" , "Yes with Hardware needed" , "Yes with Hardware included"
    type purchase_order                          : String(10);
    type hardware_booked                         : String(3); // "N/A" , "No" , "Yes"
    type hardware_booked_ref                     : String(100);
    type number_of_students                      : Integer;
    type invoice_number                          : String(30);
    type event_price                             : Decimal(15, 2);
    type currency                                : String(3);
    type material_traking_number                 : String(20);
    type link_to_file                            : String(255);
    type training_system_assigned                : String(50);
    type ilp_course_location_code                : String(8);
    type ilp_course_location                     : String(60);
    type ilp_company_code                        : String(4);
    type ilp_company_name                        : String(40);
    type business_type                           : String(19);
    type long_url                                : String(2000);
    type bundle_type                             : String(40);
    type long_description                        : String(1024);
    type mail_template                           : LargeString;
    type file_name                               : String(256);
    //HANADB-5502
    type payment_method                          : String(30);
    type po_p_card_number                        : String(30);
    //eppm
    type bucket_guid                             : String(36);
    type eppm_attr                               : String(5);
    type eppm_text                               : String(60);
    type eppm_url                                : String(1024);
    type eppm_short_id                           : String(10);
    type eppm_id                                 : String(20);
    type eppm_long_id                            : String(40);
    type eppm_name                               : String(50);
    type eppm_long_name                          : String(60);
    type ppms_product_name                       : String(80);
    type ppms_product_key                        : String(80);
    type development_unit                        : String(34);
    type development_unit_text                   : String(40);
    type bucket_id                               : String(24);
    type horizon_name                            : String(20);
    type rtc_id                                  : String(5);
    type eepm_long_id                            : String(40);
    //HANADB-5297
    type additional_course_codes_and_collections : String(100);
    type instructor_e_mail                       : String(50);
    type onsite_location                         : String(2000);
    //HANADB-5585
    type planning_tier                           : String(30);
    type investment_level                        : String(10);
    //HANADB-5618
    type deployment_request                      : String(30);
    type classification                          : String(30);
    type material_course_code                    : String(300);
    type item_type                               : String(30);
    //shared cost/finance report
    type cost_type                               : String(10);
    type category                                : String(15);
    type month_only                              : hana.SMALLINT;
    type date_only                               : Date;
    //HANADB-6006
    type order_value                             : Decimal(15, 2);
    //HANADB-6139
    type discount                                : Decimal(7, 5);
    //HANADB-6155, changed in HANADB-6456
    type material_language                       : String(4);
    //HANADB-5902
    type vsoe_midpoint                           : Decimal(15, 2);
    //HANADB-5900
    type regions                                 : String(15);
    //HANADB-6522
    type solution_enablement_report              : String(50);
    //HANADB-6550
    type mail_format                             : String(40);
    type mail_subject                            : String(256);
    //HANADB-6776
    type sme_duration                            : Integer; // always in days
    type mel                                     : String(3);
    //HANADB-6616
    type delivery_platform                       : String(40);
    //HANADB-6880
    type mel_cost_type                           : String(30);
    //HANADB-7031
    type exception_course                        : String(3); // " ", "Yes", "No"

    //HANADB-6989
    type cancellation_reason                     : String(40);
    type cancellation_comment                    : String(100);
    //HANADB-7261
    type development_landscape_alias_name        : String(50);
    //HANADB-7455
    type manual_course_code                      : String(20);
    type manual_collection                       : String(20);
    //HANADB-7468
    type ts_sysorder_ticket                      : String(150);
    //HANADB-7520
    type nnch_mins                               : Integer;
    type nnch_units                              : Integer;
    //HANADB-7506
    type eppm_solution_area                      : String(60);
    type eppm_subsolution_area                   : String(60);
    //HANADB-7787
    type customer_contact_email                  : String(50);
    //KATIE-122
    type rrm_ready                               : String(30);
    //KATIE-8420
    type parent_code_type                        : String(20);
    type target_audience_role                    : String(30);
    type certification_level                     : String(12);
    type creadly_template_id                     : String(36);
};

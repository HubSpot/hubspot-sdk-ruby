# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Cms
      class Pages
        class WebsitePages
          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Cms::Pages::WebsitePageCreateParams} for more details.
          #
          # Create a new website page.
          #
          # @overload create(id:, ab_status:, ab_test_id:, archived_at:, archived_in_dashboard:, attached_stylesheets:, author_name:, campaign:, category_id:, content_group_id:, content_type_category:, created:, created_by_id:, currently_published:, current_state:, domain:, dynamic_page_data_source_id:, dynamic_page_data_source_type:, dynamic_page_hub_db_table_id:, enable_domain_stylesheets:, enable_layout_stylesheets:, featured_image:, featured_image_alt_text:, folder_id:, footer_html:, head_html:, html_title:, include_default_custom_css:, language:, layout_sections:, link_rel_canonical_url:, mab_experiment_id:, meta_description:, name:, page_expiry_date:, page_expiry_enabled:, page_expiry_redirect_id:, page_expiry_redirect_url:, page_redirected:, password:, public_access_rules:, public_access_rules_enabled:, publish_date:, publish_immediately:, slug:, state:, subcategory:, template_path:, theme_settings_values:, translated_from_id:, translations:, updated:, updated_by_id:, url:, use_featured_image:, widget_containers:, widgets:, request_options: {})
          #
          # @param id [String] The unique ID of the page.
          #
          # @param ab_status [Symbol, HubSpotSDK::Models::Cms::PageData::AbStatus] The status of the AB test associated with this page, if applicable
          #
          # @param ab_test_id [String] The ID of the AB test associated with this page, if applicable
          #
          # @param archived_at [Time] The timestamp (ISO8601 format) when this page was deleted.
          #
          # @param archived_in_dashboard [Boolean] If True, the page will not show up in your dashboard, although the page could st
          #
          # @param attached_stylesheets [Array<Hash{Symbol=>Object}>] List of stylesheets to attach to this page. These stylesheets are attached to ju
          #
          # @param author_name [String] The name of the user that updated this page.
          #
          # @param campaign [String] The GUID of the marketing campaign this page is a part of.
          #
          # @param category_id [Integer] ID of the type of object this is. Should always .
          #
          # @param content_group_id [String] The unique identifier for the content group associated with the page.
          #
          # @param content_type_category [Symbol, HubSpotSDK::Models::Cms::PageData::ContentTypeCategory] An ENUM descibing the type of this object. Should be either LANDING_PAGE or SITE
          #
          # @param created [Time] The timestamp indicating when the page was created.
          #
          # @param created_by_id [String] The ID of the user that created this page.
          #
          # @param currently_published [Boolean] Indicates whether the page is currently published.
          #
          # @param current_state [Symbol, HubSpotSDK::Models::Cms::PageData::CurrentState] A generated ENUM descibing the current state of this page.
          #
          # @param domain [String] The domain this page will resolve to. If null, the page will default to the prim
          #
          # @param dynamic_page_data_source_id [String] The identifier for the data source used by the dynamic page.
          #
          # @param dynamic_page_data_source_type [Integer] The type of data source used by the dynamic page.
          #
          # @param dynamic_page_hub_db_table_id [String] The ID of the HubDB table this page references, if applicable
          #
          # @param enable_domain_stylesheets [Boolean] Boolean to determine whether or not the styles from the template should be appli
          #
          # @param enable_layout_stylesheets [Boolean] Boolean to determine whether or not the styles from the template should be appli
          #
          # @param featured_image [String] The featuredImage of this page.
          #
          # @param featured_image_alt_text [String] Alt Text of the featuredImage.
          #
          # @param folder_id [String] The ID of the associated folder this landing page is organized under in the app
          #
          # @param footer_html [String] Custom HTML for embed codes, javascript that should be placed before the </body>
          #
          # @param head_html [String] Custom HTML for embed codes, javascript, etc. that goes in the <head> tag of the
          #
          # @param html_title [String] The html title of this page.
          #
          # @param include_default_custom_css [Boolean] Boolean to determine whether or not the Primary CSS Files should be applied.
          #
          # @param language [Symbol, HubSpotSDK::Models::Cms::PageData::Language] The explicitly defined ISO 639 language code of the page. If null, the page will
          #
          # @param layout_sections [Hash{Symbol=>HubSpotSDK::Models::Cms::LayoutSection}] A structure detailing the layout sections of the page.
          #
          # @param link_rel_canonical_url [String] Optional override to set the URL to be used in the rel=canonical link tag on the
          #
          # @param mab_experiment_id [String] The ID of the MAB test (or dynamic test) associated with this page, if applicabl
          #
          # @param meta_description [String] A description that goes in <meta> tag on the page.
          #
          # @param name [String] The internal name of the page.
          #
          # @param page_expiry_date [Integer] The date at which this page should expire and begin redirecting to another url o
          #
          # @param page_expiry_enabled [Boolean] Boolean describing if the page expiration feature is enabled for this page
          #
          # @param page_expiry_redirect_id [Integer] The ID of another page this page's url should redirect to once this page expires
          #
          # @param page_expiry_redirect_url [String] The URL this page's url should redirect to once this page expires. Should only s
          #
          # @param page_redirected [Boolean] A generated Boolean describing whether or not this page is currently expired and
          #
          # @param password [String] Set this to create a password protected page. Entering the password will be requ
          #
          # @param public_access_rules [Array<Object>] Rules for require member registration to access private content.
          #
          # @param public_access_rules_enabled [Boolean] Boolean to determine whether or not to respect publicAccessRules.
          #
          # @param publish_date [Time] The date (ISO8601 format) the page is to be published at.
          #
          # @param publish_immediately [Boolean] Set this to true if you want to be published immediately when the schedule publi
          #
          # @param slug [String] The path of the this page. This field is appended to the domain to construct the
          #
          # @param state [String] An ENUM descibing the current state of this page.
          #
          # @param subcategory [String] Details the type of page this is. Should always be landing_page or site_page
          #
          # @param template_path [String] String detailing the path of the template used for this page.
          #
          # @param theme_settings_values [Hash{Symbol=>Object}] A collection of settings specific to the theme applied to the page.
          #
          # @param translated_from_id [String] ID of the primary page this object was translated from.
          #
          # @param translations [Hash{Symbol=>HubSpotSDK::Models::Cms::ContentLanguageVariation}] A map of translations for the page, each associated with a specific language var
          #
          # @param updated [Time] The timestamp indicating when the page was last updated.
          #
          # @param updated_by_id [String] The ID of the user that updated this page.
          #
          # @param url [String] A generated field representing the URL of this page.
          #
          # @param use_featured_image [Boolean] Boolean to determine if this page should use a featuredImage.
          #
          # @param widget_containers [Hash{Symbol=>Object}] A data structure containing the data for all the modules inside the containers f
          #
          # @param widgets [Hash{Symbol=>Object}] A data structure containing the data for all the modules for this page.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Cms::PageData]
          #
          # @see HubSpotSDK::Models::Cms::Pages::WebsitePageCreateParams
          def create(params)
            parsed, options = HubSpotSDK::Cms::Pages::WebsitePageCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/pages/2026-03/site-pages",
              headers: {"content-type" => "*/*"},
              body: parsed,
              model: HubSpotSDK::Cms::PageData,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Cms::Pages::WebsitePageUpdateParams} for more details.
          #
          # Partially updates a single website page, specified by its ID. You only need to
          # specify the column values that you are modifying.
          #
          # @overload update(object_id_, id:, ab_status:, ab_test_id:, archived_at:, archived_in_dashboard:, attached_stylesheets:, author_name:, campaign:, category_id:, content_group_id:, content_type_category:, created:, created_by_id:, currently_published:, current_state:, domain:, dynamic_page_data_source_id:, dynamic_page_data_source_type:, dynamic_page_hub_db_table_id:, enable_domain_stylesheets:, enable_layout_stylesheets:, featured_image:, featured_image_alt_text:, folder_id:, footer_html:, head_html:, html_title:, include_default_custom_css:, language:, layout_sections:, link_rel_canonical_url:, mab_experiment_id:, meta_description:, name:, page_expiry_date:, page_expiry_enabled:, page_expiry_redirect_id:, page_expiry_redirect_url:, page_redirected:, password:, public_access_rules:, public_access_rules_enabled:, publish_date:, publish_immediately:, slug:, state:, subcategory:, template_path:, theme_settings_values:, translated_from_id:, translations:, updated:, updated_by_id:, url:, use_featured_image:, widget_containers:, widgets:, archived: nil, request_options: {})
          #
          # @param object_id_ [String] Path param
          #
          # @param id [String] Body param: The unique ID of the page.
          #
          # @param ab_status [Symbol, HubSpotSDK::Models::Cms::PageData::AbStatus] Body param: The status of the AB test associated with this page, if applicable
          #
          # @param ab_test_id [String] Body param: The ID of the AB test associated with this page, if applicable
          #
          # @param archived_at [Time] Body param: The timestamp (ISO8601 format) when this page was deleted.
          #
          # @param archived_in_dashboard [Boolean] Body param: If True, the page will not show up in your dashboard, although the p
          #
          # @param attached_stylesheets [Array<Hash{Symbol=>Object}>] Body param: List of stylesheets to attach to this page. These stylesheets are at
          #
          # @param author_name [String] Body param: The name of the user that updated this page.
          #
          # @param campaign [String] Body param: The GUID of the marketing campaign this page is a part of.
          #
          # @param category_id [Integer] Body param: ID of the type of object this is. Should always .
          #
          # @param content_group_id [String] Body param: The unique identifier for the content group associated with the page
          #
          # @param content_type_category [Symbol, HubSpotSDK::Models::Cms::PageData::ContentTypeCategory] Body param: An ENUM descibing the type of this object. Should be either
          # LANDING\_
          #
          # @param created [Time] Body param: The timestamp indicating when the page was created.
          #
          # @param created_by_id [String] Body param: The ID of the user that created this page.
          #
          # @param currently_published [Boolean] Body param: Indicates whether the page is currently published.
          #
          # @param current_state [Symbol, HubSpotSDK::Models::Cms::PageData::CurrentState] Body param: A generated ENUM descibing the current state of this page.
          #
          # @param domain [String] Body param: The domain this page will resolve to. If null, the page will default
          #
          # @param dynamic_page_data_source_id [String] Body param: The identifier for the data source used by the dynamic page.
          #
          # @param dynamic_page_data_source_type [Integer] Body param: The type of data source used by the dynamic page.
          #
          # @param dynamic_page_hub_db_table_id [String] Body param: The ID of the HubDB table this page references, if applicable
          #
          # @param enable_domain_stylesheets [Boolean] Body param: Boolean to determine whether or not the styles from the template sho
          #
          # @param enable_layout_stylesheets [Boolean] Body param: Boolean to determine whether or not the styles from the template sho
          #
          # @param featured_image [String] Body param: The featuredImage of this page.
          #
          # @param featured_image_alt_text [String] Body param: Alt Text of the featuredImage.
          #
          # @param folder_id [String] Body param: The ID of the associated folder this landing page is organized under
          #
          # @param footer_html [String] Body param: Custom HTML for embed codes, javascript that should be placed before
          #
          # @param head_html [String] Body param: Custom HTML for embed codes, javascript, etc. that goes in the <head
          #
          # @param html_title [String] Body param: The html title of this page.
          #
          # @param include_default_custom_css [Boolean] Body param: Boolean to determine whether or not the Primary CSS Files should be
          #
          # @param language [Symbol, HubSpotSDK::Models::Cms::PageData::Language] Body param: The explicitly defined ISO 639 language code of the page. If null, t
          #
          # @param layout_sections [Hash{Symbol=>HubSpotSDK::Models::Cms::LayoutSection}] Body param: A structure detailing the layout sections of the page.
          #
          # @param link_rel_canonical_url [String] Body param: Optional override to set the URL to be used in the rel=canonical lin
          #
          # @param mab_experiment_id [String] Body param: The ID of the MAB test (or dynamic test) associated with this page,
          #
          # @param meta_description [String] Body param: A description that goes in <meta> tag on the page.
          #
          # @param name [String] Body param: The internal name of the page.
          #
          # @param page_expiry_date [Integer] Body param: The date at which this page should expire and begin redirecting to a
          #
          # @param page_expiry_enabled [Boolean] Body param: Boolean describing if the page expiration feature is enabled for thi
          #
          # @param page_expiry_redirect_id [Integer] Body param: The ID of another page this page's url should redirect to once this
          #
          # @param page_expiry_redirect_url [String] Body param: The URL this page's url should redirect to once this page expires. S
          #
          # @param page_redirected [Boolean] Body param: A generated Boolean describing whether or not this page is currently
          #
          # @param password [String] Body param: Set this to create a password protected page. Entering the password
          #
          # @param public_access_rules [Array<Object>] Body param: Rules for require member registration to access private content.
          #
          # @param public_access_rules_enabled [Boolean] Body param: Boolean to determine whether or not to respect publicAccessRules.
          #
          # @param publish_date [Time] Body param: The date (ISO8601 format) the page is to be published at.
          #
          # @param publish_immediately [Boolean] Body param: Set this to true if you want to be published immediately when the sc
          #
          # @param slug [String] Body param: The path of the this page. This field is appended to the domain to c
          #
          # @param state [String] Body param: An ENUM descibing the current state of this page.
          #
          # @param subcategory [String] Body param: Details the type of page this is. Should always be landing_page or s
          #
          # @param template_path [String] Body param: String detailing the path of the template used for this page.
          #
          # @param theme_settings_values [Hash{Symbol=>Object}] Body param: A collection of settings specific to the theme applied to the page.
          #
          # @param translated_from_id [String] Body param: ID of the primary page this object was translated from.
          #
          # @param translations [Hash{Symbol=>HubSpotSDK::Models::Cms::ContentLanguageVariation}] Body param: A map of translations for the page, each associated with a specific
          #
          # @param updated [Time] Body param: The timestamp indicating when the page was last updated.
          #
          # @param updated_by_id [String] Body param: The ID of the user that updated this page.
          #
          # @param url [String] Body param: A generated field representing the URL of this page.
          #
          # @param use_featured_image [Boolean] Body param: Boolean to determine if this page should use a featuredImage.
          #
          # @param widget_containers [Hash{Symbol=>Object}] Body param: A data structure containing the data for all the modules inside the
          #
          # @param widgets [Hash{Symbol=>Object}] Body param: A data structure containing the data for all the modules for this pa
          #
          # @param archived [Boolean] Query param: Whether to return only results that have been archived.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Cms::PageData]
          #
          # @see HubSpotSDK::Models::Cms::Pages::WebsitePageUpdateParams
          def update(object_id_, params)
            query_params = [:archived]
            parsed, options = HubSpotSDK::Cms::Pages::WebsitePageUpdateParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :patch,
              path: ["cms/pages/2026-03/site-pages/%1$s", object_id_],
              query: query,
              headers: {"content-type" => "*/*"},
              body: parsed.except(*query_params),
              model: HubSpotSDK::Cms::PageData,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Cms::Pages::WebsitePageListParams} for more details.
          #
          # Retrieve all website pages. Supports paging and filtering. This method would be
          # useful for an integration that examined these models and used an external
          # service to suggest edits.
          #
          # @overload list(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
          #
          # @param after [String] The paging cursor token of the last successfully read resource will be returned
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param created_after [Time] Filter pages created after a specific date and time.
          #
          # @param created_at [Time] Filter pages by the exact creation timestamp. Format is date-time.
          #
          # @param created_before [Time] Filter pages created before a specific date-time.
          #
          # @param limit [Integer] The maximum number of results to display per page.
          #
          # @param property [String] Specify properties to include in the response.
          #
          # @param sort [Array<String>] Specify the order of results. Accepts an array of field names to sort by.
          #
          # @param updated_after [Time] Filter pages updated after the specified date-time.
          #
          # @param updated_at [Time] Filter pages by their exact update timestamp in ISO 8601 format.
          #
          # @param updated_before [Time] Filter pages updated before a specific date and time. Format should be date-time
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Internal::Page<HubSpotSDK::Models::Cms::PageData>]
          #
          # @see HubSpotSDK::Models::Cms::Pages::WebsitePageListParams
          def list(params = {})
            parsed, options = HubSpotSDK::Cms::Pages::WebsitePageListParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "cms/pages/2026-03/site-pages",
              query: query.transform_keys(
                created_after: "createdAfter",
                created_at: "createdAt",
                created_before: "createdBefore",
                updated_after: "updatedAfter",
                updated_at: "updatedAt",
                updated_before: "updatedBefore"
              ),
              page: HubSpotSDK::Internal::Page,
              model: HubSpotSDK::Cms::PageData,
              options: options
            )
          end

          # Delete a website page, specified by its ID.
          #
          # @overload delete(object_id_, archived: nil, request_options: {})
          #
          # @param object_id_ [String]
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubSpotSDK::Models::Cms::Pages::WebsitePageDeleteParams
          def delete(object_id_, params = {})
            parsed, options = HubSpotSDK::Cms::Pages::WebsitePageDeleteParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :delete,
              path: ["cms/pages/2026-03/site-pages/%1$s", object_id_],
              query: query,
              model: NilClass,
              options: options
            )
          end

          # Create a copy of an existing website page.
          #
          # @overload clone_(id:, clone_name: nil, request_options: {})
          #
          # @param id [String] ID of the object to be cloned.
          #
          # @param clone_name [String] Name of the cloned object.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Cms::PageData]
          #
          # @see HubSpotSDK::Models::Cms::Pages::WebsitePageCloneParams
          def clone_(params)
            parsed, options = HubSpotSDK::Cms::Pages::WebsitePageCloneParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/pages/2026-03/site-pages/clone",
              headers: {"content-type" => "*/*"},
              body: parsed,
              model: HubSpotSDK::Cms::PageData,
              options: options
            )
          end

          # Retrieve a website page by its ID.
          #
          # @overload get(object_id_, archived: nil, property: nil, request_options: {})
          #
          # @param object_id_ [String] The unique identifier of the site page to retrieve.
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param property [String]
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Cms::PageData]
          #
          # @see HubSpotSDK::Models::Cms::Pages::WebsitePageGetParams
          def get(object_id_, params = {})
            parsed, options = HubSpotSDK::Cms::Pages::WebsitePageGetParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["cms/pages/2026-03/site-pages/%1$s", object_id_],
              query: query,
              model: HubSpotSDK::Cms::PageData,
              options: options
            )
          end

          # Retrieve the full draft version of a website page, specified by its ID.
          #
          # @overload get_draft(object_id_, request_options: {})
          #
          # @param object_id_ [String]
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Cms::PageData]
          #
          # @see HubSpotSDK::Models::Cms::Pages::WebsitePageGetDraftParams
          def get_draft(object_id_, params = {})
            @client.request(
              method: :get,
              path: ["cms/pages/2026-03/site-pages/%1$s/draft", object_id_],
              model: HubSpotSDK::Cms::PageData,
              options: params[:request_options]
            )
          end

          # Take any changes from the draft version of the website page and apply them to
          # the live version.
          #
          # @overload publish_draft(object_id_, request_options: {})
          #
          # @param object_id_ [String]
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubSpotSDK::Models::Cms::Pages::WebsitePagePublishDraftParams
          def publish_draft(object_id_, params = {})
            @client.request(
              method: :post,
              path: ["cms/pages/2026-03/site-pages/%1$s/draft/push-live", object_id_],
              model: NilClass,
              options: params[:request_options]
            )
          end

          # Schedule a website page to published at a future time.
          #
          # @overload schedule(id:, publish_date:, request_options: {})
          #
          # @param id [String] The ID of the object to be scheduled.
          #
          # @param publish_date [Time] The date the object should transition from scheduled to published.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubSpotSDK::Models::Cms::Pages::WebsitePageScheduleParams
          def schedule(params)
            parsed, options = HubSpotSDK::Cms::Pages::WebsitePageScheduleParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/pages/2026-03/site-pages/schedule",
              headers: {"content-type" => "*/*"},
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Set a landing page as the primary language of a multi-language group.
          #
          # @overload set_new_lang_primary(id:, request_options: {})
          #
          # @param id [String] ID of object to set as primary in multi-language group.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubSpotSDK::Models::Cms::Pages::WebsitePageSetNewLangPrimaryParams
          def set_new_lang_primary(params)
            parsed, options = HubSpotSDK::Cms::Pages::WebsitePageSetNewLangPrimaryParams.dump_request(params)
            @client.request(
              method: :put,
              path: "cms/pages/2026-03/landing-pages/multi-language/set-new-lang-primary",
              headers: {"content-type" => "*/*"},
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Cms::Pages::WebsitePageUpdateDraftParams} for more details.
          #
          # Partially update the draft version of a website page, specified by page ID. You
          # only need to specify the values for the details that you're modifying.
          #
          # @overload update_draft(object_id_, id:, ab_status:, ab_test_id:, archived_at:, archived_in_dashboard:, attached_stylesheets:, author_name:, campaign:, category_id:, content_group_id:, content_type_category:, created:, created_by_id:, currently_published:, current_state:, domain:, dynamic_page_data_source_id:, dynamic_page_data_source_type:, dynamic_page_hub_db_table_id:, enable_domain_stylesheets:, enable_layout_stylesheets:, featured_image:, featured_image_alt_text:, folder_id:, footer_html:, head_html:, html_title:, include_default_custom_css:, language:, layout_sections:, link_rel_canonical_url:, mab_experiment_id:, meta_description:, name:, page_expiry_date:, page_expiry_enabled:, page_expiry_redirect_id:, page_expiry_redirect_url:, page_redirected:, password:, public_access_rules:, public_access_rules_enabled:, publish_date:, publish_immediately:, slug:, state:, subcategory:, template_path:, theme_settings_values:, translated_from_id:, translations:, updated:, updated_by_id:, url:, use_featured_image:, widget_containers:, widgets:, request_options: {})
          #
          # @param object_id_ [String]
          #
          # @param id [String] The unique ID of the page.
          #
          # @param ab_status [Symbol, HubSpotSDK::Models::Cms::PageData::AbStatus] The status of the AB test associated with this page, if applicable
          #
          # @param ab_test_id [String] The ID of the AB test associated with this page, if applicable
          #
          # @param archived_at [Time] The timestamp (ISO8601 format) when this page was deleted.
          #
          # @param archived_in_dashboard [Boolean] If True, the page will not show up in your dashboard, although the page could st
          #
          # @param attached_stylesheets [Array<Hash{Symbol=>Object}>] List of stylesheets to attach to this page. These stylesheets are attached to ju
          #
          # @param author_name [String] The name of the user that updated this page.
          #
          # @param campaign [String] The GUID of the marketing campaign this page is a part of.
          #
          # @param category_id [Integer] ID of the type of object this is. Should always .
          #
          # @param content_group_id [String] The unique identifier for the content group associated with the page.
          #
          # @param content_type_category [Symbol, HubSpotSDK::Models::Cms::PageData::ContentTypeCategory] An ENUM descibing the type of this object. Should be either LANDING_PAGE or SITE
          #
          # @param created [Time] The timestamp indicating when the page was created.
          #
          # @param created_by_id [String] The ID of the user that created this page.
          #
          # @param currently_published [Boolean] Indicates whether the page is currently published.
          #
          # @param current_state [Symbol, HubSpotSDK::Models::Cms::PageData::CurrentState] A generated ENUM descibing the current state of this page.
          #
          # @param domain [String] The domain this page will resolve to. If null, the page will default to the prim
          #
          # @param dynamic_page_data_source_id [String] The identifier for the data source used by the dynamic page.
          #
          # @param dynamic_page_data_source_type [Integer] The type of data source used by the dynamic page.
          #
          # @param dynamic_page_hub_db_table_id [String] The ID of the HubDB table this page references, if applicable
          #
          # @param enable_domain_stylesheets [Boolean] Boolean to determine whether or not the styles from the template should be appli
          #
          # @param enable_layout_stylesheets [Boolean] Boolean to determine whether or not the styles from the template should be appli
          #
          # @param featured_image [String] The featuredImage of this page.
          #
          # @param featured_image_alt_text [String] Alt Text of the featuredImage.
          #
          # @param folder_id [String] The ID of the associated folder this landing page is organized under in the app
          #
          # @param footer_html [String] Custom HTML for embed codes, javascript that should be placed before the </body>
          #
          # @param head_html [String] Custom HTML for embed codes, javascript, etc. that goes in the <head> tag of the
          #
          # @param html_title [String] The html title of this page.
          #
          # @param include_default_custom_css [Boolean] Boolean to determine whether or not the Primary CSS Files should be applied.
          #
          # @param language [Symbol, HubSpotSDK::Models::Cms::PageData::Language] The explicitly defined ISO 639 language code of the page. If null, the page will
          #
          # @param layout_sections [Hash{Symbol=>HubSpotSDK::Models::Cms::LayoutSection}] A structure detailing the layout sections of the page.
          #
          # @param link_rel_canonical_url [String] Optional override to set the URL to be used in the rel=canonical link tag on the
          #
          # @param mab_experiment_id [String] The ID of the MAB test (or dynamic test) associated with this page, if applicabl
          #
          # @param meta_description [String] A description that goes in <meta> tag on the page.
          #
          # @param name [String] The internal name of the page.
          #
          # @param page_expiry_date [Integer] The date at which this page should expire and begin redirecting to another url o
          #
          # @param page_expiry_enabled [Boolean] Boolean describing if the page expiration feature is enabled for this page
          #
          # @param page_expiry_redirect_id [Integer] The ID of another page this page's url should redirect to once this page expires
          #
          # @param page_expiry_redirect_url [String] The URL this page's url should redirect to once this page expires. Should only s
          #
          # @param page_redirected [Boolean] A generated Boolean describing whether or not this page is currently expired and
          #
          # @param password [String] Set this to create a password protected page. Entering the password will be requ
          #
          # @param public_access_rules [Array<Object>] Rules for require member registration to access private content.
          #
          # @param public_access_rules_enabled [Boolean] Boolean to determine whether or not to respect publicAccessRules.
          #
          # @param publish_date [Time] The date (ISO8601 format) the page is to be published at.
          #
          # @param publish_immediately [Boolean] Set this to true if you want to be published immediately when the schedule publi
          #
          # @param slug [String] The path of the this page. This field is appended to the domain to construct the
          #
          # @param state [String] An ENUM descibing the current state of this page.
          #
          # @param subcategory [String] Details the type of page this is. Should always be landing_page or site_page
          #
          # @param template_path [String] String detailing the path of the template used for this page.
          #
          # @param theme_settings_values [Hash{Symbol=>Object}] A collection of settings specific to the theme applied to the page.
          #
          # @param translated_from_id [String] ID of the primary page this object was translated from.
          #
          # @param translations [Hash{Symbol=>HubSpotSDK::Models::Cms::ContentLanguageVariation}] A map of translations for the page, each associated with a specific language var
          #
          # @param updated [Time] The timestamp indicating when the page was last updated.
          #
          # @param updated_by_id [String] The ID of the user that updated this page.
          #
          # @param url [String] A generated field representing the URL of this page.
          #
          # @param use_featured_image [Boolean] Boolean to determine if this page should use a featuredImage.
          #
          # @param widget_containers [Hash{Symbol=>Object}] A data structure containing the data for all the modules inside the containers f
          #
          # @param widgets [Hash{Symbol=>Object}] A data structure containing the data for all the modules for this page.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Cms::PageData]
          #
          # @see HubSpotSDK::Models::Cms::Pages::WebsitePageUpdateDraftParams
          def update_draft(object_id_, params)
            parsed, options = HubSpotSDK::Cms::Pages::WebsitePageUpdateDraftParams.dump_request(params)
            @client.request(
              method: :patch,
              path: ["cms/pages/2026-03/site-pages/%1$s/draft", object_id_],
              headers: {"content-type" => "*/*"},
              body: parsed,
              model: HubSpotSDK::Cms::PageData,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubSpotSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end

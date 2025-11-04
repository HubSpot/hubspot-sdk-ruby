# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class Pages
        class SitePages
          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Pages::SitePageCreateParams} for more details.
          #
          # Create a new Site Page
          #
          # @overload create(id:, ab_status:, ab_test_id:, archived_at:, archived_in_dashboard:, attached_stylesheets:, author_name:, campaign:, category_id:, content_group_id:, content_type_category:, created:, created_by_id:, currently_published:, current_state:, domain:, dynamic_page_data_source_id:, dynamic_page_data_source_type:, dynamic_page_hub_db_table_id:, enable_domain_stylesheets:, enable_layout_stylesheets:, featured_image:, featured_image_alt_text:, folder_id:, footer_html:, head_html:, html_title:, include_default_custom_css:, language:, layout_sections:, link_rel_canonical_url:, mab_experiment_id:, meta_description:, name:, page_expiry_date:, page_expiry_enabled:, page_expiry_redirect_id:, page_expiry_redirect_url:, page_redirected:, password:, public_access_rules:, public_access_rules_enabled:, publish_date:, publish_immediately:, slug:, state:, subcategory:, template_path:, theme_settings_values:, translated_from_id:, translations:, updated:, updated_by_id:, url:, use_featured_image:, widget_containers:, widgets:, request_options: {})
          #
          # @param id [String] The unique ID of the page.
          #
          # @param ab_status [Symbol, HubspotSDK::Models::Cms::Page::AbStatus] The status of the AB test associated with this page, if applicable
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
          # @param content_group_id [String]
          #
          # @param content_type_category [Symbol, HubspotSDK::Models::Cms::Page::ContentTypeCategory] An ENUM descibing the type of this object. Should be either LANDING_PAGE or SITE
          #
          # @param created [Time]
          #
          # @param created_by_id [String] The ID of the user that created this page.
          #
          # @param currently_published [Boolean]
          #
          # @param current_state [Symbol, HubspotSDK::Models::Cms::Page::CurrentState] A generated ENUM descibing the current state of this page.
          #
          # @param domain [String] The domain this page will resolve to. If null, the page will default to the prim
          #
          # @param dynamic_page_data_source_id [String]
          #
          # @param dynamic_page_data_source_type [Integer]
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
          # @param language [Symbol, HubspotSDK::Models::Cms::Page::Language] The explicitly defined ISO 639 language code of the page. If null, the page will
          #
          # @param layout_sections [Hash{Symbol=>HubspotSDK::Models::Cms::LayoutSection}]
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
          # @param theme_settings_values [Hash{Symbol=>Object}]
          #
          # @param translated_from_id [String] ID of the primary page this object was translated from.
          #
          # @param translations [Hash{Symbol=>HubspotSDK::Models::Cms::PagesContentLanguageVariation}]
          #
          # @param updated [Time]
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
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Pages::SitePageCreateParams
          def create(params)
            parsed, options = HubspotSDK::Cms::Pages::SitePageCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/pages/site-pages",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Pages::SitePageUpdateParams} for more details.
          #
          # Sparse updates a single Site Page object identified by the id in the path. You
          # only need to specify the column values that you are modifying.
          #
          # @overload update(object_id_, id:, ab_status:, ab_test_id:, archived_at:, archived_in_dashboard:, attached_stylesheets:, author_name:, campaign:, category_id:, content_group_id:, content_type_category:, created:, created_by_id:, currently_published:, current_state:, domain:, dynamic_page_data_source_id:, dynamic_page_data_source_type:, dynamic_page_hub_db_table_id:, enable_domain_stylesheets:, enable_layout_stylesheets:, featured_image:, featured_image_alt_text:, folder_id:, footer_html:, head_html:, html_title:, include_default_custom_css:, language:, layout_sections:, link_rel_canonical_url:, mab_experiment_id:, meta_description:, name:, page_expiry_date:, page_expiry_enabled:, page_expiry_redirect_id:, page_expiry_redirect_url:, page_redirected:, password:, public_access_rules:, public_access_rules_enabled:, publish_date:, publish_immediately:, slug:, state:, subcategory:, template_path:, theme_settings_values:, translated_from_id:, translations:, updated:, updated_by_id:, url:, use_featured_image:, widget_containers:, widgets:, archived: nil, request_options: {})
          #
          # @param object_id_ [String] Path param: The Site Page id.
          #
          # @param id [String] Body param: The unique ID of the page.
          #
          # @param ab_status [Symbol, HubspotSDK::Models::Cms::Page::AbStatus] Body param: The status of the AB test associated with this page, if applicable
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
          # @param content_group_id [String] Body param:
          #
          # @param content_type_category [Symbol, HubspotSDK::Models::Cms::Page::ContentTypeCategory] Body param: An ENUM descibing the type of this object. Should be either
          # LANDING\_
          #
          # @param created [Time] Body param:
          #
          # @param created_by_id [String] Body param: The ID of the user that created this page.
          #
          # @param currently_published [Boolean] Body param:
          #
          # @param current_state [Symbol, HubspotSDK::Models::Cms::Page::CurrentState] Body param: A generated ENUM descibing the current state of this page.
          #
          # @param domain [String] Body param: The domain this page will resolve to. If null, the page will default
          #
          # @param dynamic_page_data_source_id [String] Body param:
          #
          # @param dynamic_page_data_source_type [Integer] Body param:
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
          # @param language [Symbol, HubspotSDK::Models::Cms::Page::Language] Body param: The explicitly defined ISO 639 language code of the page. If null, t
          #
          # @param layout_sections [Hash{Symbol=>HubspotSDK::Models::Cms::LayoutSection}] Body param:
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
          # @param theme_settings_values [Hash{Symbol=>Object}] Body param:
          #
          # @param translated_from_id [String] Body param: ID of the primary page this object was translated from.
          #
          # @param translations [Hash{Symbol=>HubspotSDK::Models::Cms::PagesContentLanguageVariation}] Body param:
          #
          # @param updated [Time] Body param:
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
          # @param archived [Boolean] Query param: Specifies whether to update deleted Site Pages. Defaults to `false`
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Page]
          #
          # @see HubspotSDK::Models::Cms::Pages::SitePageUpdateParams
          def update(object_id_, params)
            parsed, options = HubspotSDK::Cms::Pages::SitePageUpdateParams.dump_request(params)
            query_params = [:archived]
            @client.request(
              method: :patch,
              path: ["cms/v3/pages/site-pages/%1$s", object_id_],
              query: parsed.slice(*query_params),
              body: parsed.except(*query_params),
              model: HubspotSDK::Cms::Page,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Pages::SitePageListParams} for more details.
          #
          # Get the list of site pages. Supports paging and filtering. This method would be
          # useful for an integration that examined these models and used an external
          # service to suggest edits.
          #
          # @overload list(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
          #
          # @param after [String] The cursor token value to get the next set of results. You can get this from the
          #
          # @param archived [Boolean] Specifies whether to return deleted Site Pages. Defaults to `false`.
          #
          # @param created_after [Time] Only return Site Pages created after the specified time.
          #
          # @param created_at [Time] Only return Site Pages created at exactly the specified time.
          #
          # @param created_before [Time] Only return Site Pages created before the specified time.
          #
          # @param limit [Integer] The maximum number of results to return. Default is 100.
          #
          # @param property [String]
          #
          # @param sort [Array<String>] Specifies which fields to use for sorting results. Valid fields are `name`, `cre
          #
          # @param updated_after [Time] Only return Site Pages last updated after the specified time.
          #
          # @param updated_at [Time] Only return Site Pages last updated at exactly the specified time.
          #
          # @param updated_before [Time] Only return Site Pages last updated before the specified time.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Cms::Page>]
          #
          # @see HubspotSDK::Models::Cms::Pages::SitePageListParams
          def list(params = {})
            parsed, options = HubspotSDK::Cms::Pages::SitePageListParams.dump_request(params)
            @client.request(
              method: :get,
              path: "cms/v3/pages/site-pages",
              query: parsed.transform_keys(
                created_after: "createdAfter",
                created_at: "createdAt",
                created_before: "createdBefore",
                updated_after: "updatedAfter",
                updated_at: "updatedAt",
                updated_before: "updatedBefore"
              ),
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Cms::Page,
              options: options
            )
          end

          # Delete the Site Page object identified by the id in the path.
          #
          # @overload delete(object_id_, archived: nil, request_options: {})
          #
          # @param object_id_ [String] The Site Page id.
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Pages::SitePageDeleteParams
          def delete(object_id_, params = {})
            parsed, options = HubspotSDK::Cms::Pages::SitePageDeleteParams.dump_request(params)
            @client.request(
              method: :delete,
              path: ["cms/v3/pages/site-pages/%1$s", object_id_],
              query: parsed,
              model: NilClass,
              options: options
            )
          end

          # Attach a site page to a multi-language group.
          #
          # @overload attach_to_lang_group(id:, language:, primary_id:, primary_language: nil, request_options: {})
          #
          # @param id [String] ID of the object to add to a multi-language group.
          #
          # @param language [String] Designated language of the object to add to a multi-language group.
          #
          # @param primary_id [String] ID of primary language object in multi-language group.
          #
          # @param primary_language [String] Primary language of the multi-language group.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Pages::SitePageAttachToLangGroupParams
          def attach_to_lang_group(params)
            parsed, options = HubspotSDK::Cms::Pages::SitePageAttachToLangGroupParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/pages/site-pages/multi-language/attach-to-lang-group",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Clone a Site Page
          #
          # @overload clone_(id:, clone_name: nil, request_options: {})
          #
          # @param id [String] ID of the object to be cloned.
          #
          # @param clone_name [String] Name of the cloned object.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Page]
          #
          # @see HubspotSDK::Models::Cms::Pages::SitePageCloneParams
          def clone_(params)
            parsed, options = HubspotSDK::Cms::Pages::SitePageCloneParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/pages/site-pages/clone",
              body: parsed,
              model: HubspotSDK::Cms::Page,
              options: options
            )
          end

          # Create a new A/B test variation based on the information provided in the request
          # body.
          #
          # @overload create_ab_test_variation(content_id:, variation_name:, request_options: {})
          #
          # @param content_id [String] ID of the object to test.
          #
          # @param variation_name [String] Name of A/B test variation.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Page]
          #
          # @see HubspotSDK::Models::Cms::Pages::SitePageCreateAbTestVariationParams
          def create_ab_test_variation(params)
            parsed, options = HubspotSDK::Cms::Pages::SitePageCreateAbTestVariationParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/pages/site-pages/ab-test/create-variation",
              body: parsed,
              model: HubspotSDK::Cms::Page,
              options: options
            )
          end

          # Create the Site Page objects detailed in the request body.
          #
          # @overload create_batch(inputs:, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::Cms::Page>] Pages to input.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::BatchResponsePage]
          #
          # @see HubspotSDK::Models::Cms::Pages::SitePageCreateBatchParams
          def create_batch(params)
            parsed, options = HubspotSDK::Cms::Pages::SitePageCreateBatchParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/pages/site-pages/batch/create",
              body: parsed,
              model: HubspotSDK::Cms::BatchResponsePage,
              options: options
            )
          end

          # Create a new language variation from an existing site page
          #
          # @overload create_language_variation(id:, language: nil, primary_language: nil, request_options: {})
          #
          # @param id [String] ID of content to clone.
          #
          # @param language [String] Target language of new variant.
          #
          # @param primary_language [String] Language of primary content to clone.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Page]
          #
          # @see HubspotSDK::Models::Cms::Pages::SitePageCreateLanguageVariationParams
          def create_language_variation(params)
            parsed, options = HubspotSDK::Cms::Pages::SitePageCreateLanguageVariationParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/pages/site-pages/multi-language/create-language-variation",
              body: parsed,
              model: HubspotSDK::Cms::Page,
              options: options
            )
          end

          # Delete the Site Page objects identified in the request body. Note: This is not
          # the same as the dashboard `archive` function. To perform a dashboard `archive`
          # send an normal update with the `archivedInDashboard` field set to true.
          #
          # @overload delete_batch(inputs:, request_options: {})
          #
          # @param inputs [Array<String>] Strings to input.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Pages::SitePageDeleteBatchParams
          def delete_batch(params)
            parsed, options = HubspotSDK::Cms::Pages::SitePageDeleteBatchParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/pages/site-pages/batch/archive",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Detach a site page from a multi-language group.
          #
          # @overload detach_from_lang_group(id:, request_options: {})
          #
          # @param id [String] ID of the object to remove from a multi-language group.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Pages::SitePageDetachFromLangGroupParams
          def detach_from_lang_group(params)
            parsed, options = HubspotSDK::Cms::Pages::SitePageDetachFromLangGroupParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/pages/site-pages/multi-language/detach-from-lang-group",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # End an active A/B test and designate a winner.
          #
          # @overload end_ab_test(ab_test_id:, winner_id:, request_options: {})
          #
          # @param ab_test_id [String] ID of the test to end.
          #
          # @param winner_id [String] ID of the object to designate as the test winner.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Pages::SitePageEndAbTestParams
          def end_ab_test(params)
            parsed, options = HubspotSDK::Cms::Pages::SitePageEndAbTestParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/pages/site-pages/ab-test/end",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Retrieve the Site Page object identified by the id in the path.
          #
          # @overload get(object_id_, archived: nil, property: nil, request_options: {})
          #
          # @param object_id_ [String] The Site Page id.
          #
          # @param archived [Boolean] Specifies whether to return deleted Site Pages. Defaults to `false`.
          #
          # @param property [String]
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Page]
          #
          # @see HubspotSDK::Models::Cms::Pages::SitePageGetParams
          def get(object_id_, params = {})
            parsed, options = HubspotSDK::Cms::Pages::SitePageGetParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["cms/v3/pages/site-pages/%1$s", object_id_],
              query: parsed,
              model: HubspotSDK::Cms::Page,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Pages::SitePageGetBatchParams} for more details.
          #
          # Retrieve the Site Page objects identified in the request body.
          #
          # @overload get_batch(inputs:, archived: nil, request_options: {})
          #
          # @param inputs [Array<String>] Body param: Strings to input.
          #
          # @param archived [Boolean] Query param: Specifies whether to return deleted Site Pages. Defaults to `false`
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::BatchResponsePage]
          #
          # @see HubspotSDK::Models::Cms::Pages::SitePageGetBatchParams
          def get_batch(params)
            parsed, options = HubspotSDK::Cms::Pages::SitePageGetBatchParams.dump_request(params)
            query_params = [:archived]
            @client.request(
              method: :post,
              path: "cms/v3/pages/site-pages/batch/read",
              query: parsed.slice(*query_params),
              body: parsed.except(*query_params),
              model: HubspotSDK::Cms::BatchResponsePage,
              options: options
            )
          end

          # Retrieve the full draft version of the Site Page.
          #
          # @overload get_draft(object_id_, request_options: {})
          #
          # @param object_id_ [String] The Site Page id.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Page]
          #
          # @see HubspotSDK::Models::Cms::Pages::SitePageGetDraftParams
          def get_draft(object_id_, params = {})
            @client.request(
              method: :get,
              path: ["cms/v3/pages/site-pages/%1$s/draft", object_id_],
              model: HubspotSDK::Cms::Page,
              options: params[:request_options]
            )
          end

          # Retrieves a previous version of a Site Page
          #
          # @overload get_revision(revision_id, object_id_:, request_options: {})
          #
          # @param revision_id [String] The Site Page version id.
          #
          # @param object_id_ [String] The Site Page id.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::VersionPage]
          #
          # @see HubspotSDK::Models::Cms::Pages::SitePageGetRevisionParams
          def get_revision(revision_id, params)
            parsed, options = HubspotSDK::Cms::Pages::SitePageGetRevisionParams.dump_request(params)
            object_id_ =
              parsed.delete(:object_id_) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["cms/v3/pages/site-pages/%1$s/revisions/%2$s", object_id_, revision_id],
              model: HubspotSDK::Cms::VersionPage,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Pages::SitePageListRevisionsParams} for more details.
          #
          # Retrieves all the previous versions of a Site Page.
          #
          # @overload list_revisions(object_id_, after: nil, before: nil, limit: nil, request_options: {})
          #
          # @param object_id_ [String] The Site Page id.
          #
          # @param after [String] The cursor token value to get the next set of results. You can get this from the
          #
          # @param before [String]
          #
          # @param limit [Integer] The maximum number of results to return. Default is 100.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Cms::VersionPage>]
          #
          # @see HubspotSDK::Models::Cms::Pages::SitePageListRevisionsParams
          def list_revisions(object_id_, params = {})
            parsed, options = HubspotSDK::Cms::Pages::SitePageListRevisionsParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["cms/v3/pages/site-pages/%1$s/revisions", object_id_],
              query: parsed,
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Cms::VersionPage,
              options: options
            )
          end

          # Take any changes from the draft version of the Site Page and apply them to the
          # live version.
          #
          # @overload publish_draft(object_id_, request_options: {})
          #
          # @param object_id_ [String] The id of the Site Page for which it's draft will be pushed live.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Pages::SitePagePublishDraftParams
          def publish_draft(object_id_, params = {})
            @client.request(
              method: :post,
              path: ["cms/v3/pages/site-pages/%1$s/draft/push-live", object_id_],
              model: NilClass,
              options: params[:request_options]
            )
          end

          # Rerun a previous A/B test.
          #
          # @overload rerun_ab_test(ab_test_id:, variation_id:, request_options: {})
          #
          # @param ab_test_id [String] ID of the test to rerun.
          #
          # @param variation_id [String] ID of the object to reactivate as a test variation.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Pages::SitePageRerunAbTestParams
          def rerun_ab_test(params)
            parsed, options = HubspotSDK::Cms::Pages::SitePageRerunAbTestParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/pages/site-pages/ab-test/rerun",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Discards any edits and resets the draft to the live version.
          #
          # @overload reset_draft(object_id_, request_options: {})
          #
          # @param object_id_ [String] The id of the Site Page for which it's draft will be reset.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Pages::SitePageResetDraftParams
          def reset_draft(object_id_, params = {})
            @client.request(
              method: :post,
              path: ["cms/v3/pages/site-pages/%1$s/draft/reset", object_id_],
              model: NilClass,
              options: params[:request_options]
            )
          end

          # Takes a specified version of a Site Page and restores it.
          #
          # @overload restore_revision(revision_id, object_id_:, request_options: {})
          #
          # @param revision_id [String] The Site Page version id to restore.
          #
          # @param object_id_ [String] The Site Page id.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Page]
          #
          # @see HubspotSDK::Models::Cms::Pages::SitePageRestoreRevisionParams
          def restore_revision(revision_id, params)
            parsed, options = HubspotSDK::Cms::Pages::SitePageRestoreRevisionParams.dump_request(params)
            object_id_ =
              parsed.delete(:object_id_) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["cms/v3/pages/site-pages/%1$s/revisions/%2$s/restore", object_id_, revision_id],
              model: HubspotSDK::Cms::Page,
              options: options
            )
          end

          # Takes a specified version of a Site Page, sets it as the new draft version of
          # the Site Page.
          #
          # @overload restore_revision_to_draft(revision_id, object_id_:, request_options: {})
          #
          # @param revision_id [Integer] The Site Page version id to restore.
          #
          # @param object_id_ [String] The Site Page id.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Page]
          #
          # @see HubspotSDK::Models::Cms::Pages::SitePageRestoreRevisionToDraftParams
          def restore_revision_to_draft(revision_id, params)
            parsed, options = HubspotSDK::Cms::Pages::SitePageRestoreRevisionToDraftParams.dump_request(params)
            object_id_ =
              parsed.delete(:object_id_) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["cms/v3/pages/site-pages/%1$s/revisions/%2$s/restore-to-draft", object_id_, revision_id],
              model: HubspotSDK::Cms::Page,
              options: options
            )
          end

          # Schedule a Site Page to be Published
          #
          # @overload schedule(id:, publish_date:, request_options: {})
          #
          # @param id [String] The ID of the object to be scheduled.
          #
          # @param publish_date [Time] The date the object should transition from scheduled to published.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Pages::SitePageScheduleParams
          def schedule(params)
            parsed, options = HubspotSDK::Cms::Pages::SitePageScheduleParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/pages/site-pages/schedule",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Set a site page as the primary language of a multi-language group.
          #
          # @overload set_new_lang_primary(id:, request_options: {})
          #
          # @param id [String] ID of object to set as primary in multi-language group.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Pages::SitePageSetNewLangPrimaryParams
          def set_new_lang_primary(params)
            parsed, options = HubspotSDK::Cms::Pages::SitePageSetNewLangPrimaryParams.dump_request(params)
            @client.request(
              method: :put,
              path: "cms/v3/pages/site-pages/multi-language/set-new-lang-primary",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Pages::SitePageUpdateBatchParams} for more details.
          #
          # Update the Site Page objects identified in the request body.
          #
          # @overload update_batch(inputs:, archived: nil, request_options: {})
          #
          # @param inputs [Array<Object>] Body param: JSON nodes to input.
          #
          # @param archived [Boolean] Query param: Specifies whether to update deleted Site Pages. Defaults to `false`
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::BatchResponsePage]
          #
          # @see HubspotSDK::Models::Cms::Pages::SitePageUpdateBatchParams
          def update_batch(params)
            parsed, options = HubspotSDK::Cms::Pages::SitePageUpdateBatchParams.dump_request(params)
            query_params = [:archived]
            @client.request(
              method: :post,
              path: "cms/v3/pages/site-pages/batch/update",
              query: parsed.slice(*query_params),
              body: parsed.except(*query_params),
              model: HubspotSDK::Cms::BatchResponsePage,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Pages::SitePageUpdateDraftParams} for more details.
          #
          # Sparse updates the draft version of a single Site Page object identified by the
          # id in the path. You only need to specify the column values that you are
          # modifying.
          #
          # @overload update_draft(object_id_, id:, ab_status:, ab_test_id:, archived_at:, archived_in_dashboard:, attached_stylesheets:, author_name:, campaign:, category_id:, content_group_id:, content_type_category:, created:, created_by_id:, currently_published:, current_state:, domain:, dynamic_page_data_source_id:, dynamic_page_data_source_type:, dynamic_page_hub_db_table_id:, enable_domain_stylesheets:, enable_layout_stylesheets:, featured_image:, featured_image_alt_text:, folder_id:, footer_html:, head_html:, html_title:, include_default_custom_css:, language:, layout_sections:, link_rel_canonical_url:, mab_experiment_id:, meta_description:, name:, page_expiry_date:, page_expiry_enabled:, page_expiry_redirect_id:, page_expiry_redirect_url:, page_redirected:, password:, public_access_rules:, public_access_rules_enabled:, publish_date:, publish_immediately:, slug:, state:, subcategory:, template_path:, theme_settings_values:, translated_from_id:, translations:, updated:, updated_by_id:, url:, use_featured_image:, widget_containers:, widgets:, request_options: {})
          #
          # @param object_id_ [String] The Site Page id.
          #
          # @param id [String] The unique ID of the page.
          #
          # @param ab_status [Symbol, HubspotSDK::Models::Cms::Page::AbStatus] The status of the AB test associated with this page, if applicable
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
          # @param content_group_id [String]
          #
          # @param content_type_category [Symbol, HubspotSDK::Models::Cms::Page::ContentTypeCategory] An ENUM descibing the type of this object. Should be either LANDING_PAGE or SITE
          #
          # @param created [Time]
          #
          # @param created_by_id [String] The ID of the user that created this page.
          #
          # @param currently_published [Boolean]
          #
          # @param current_state [Symbol, HubspotSDK::Models::Cms::Page::CurrentState] A generated ENUM descibing the current state of this page.
          #
          # @param domain [String] The domain this page will resolve to. If null, the page will default to the prim
          #
          # @param dynamic_page_data_source_id [String]
          #
          # @param dynamic_page_data_source_type [Integer]
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
          # @param language [Symbol, HubspotSDK::Models::Cms::Page::Language] The explicitly defined ISO 639 language code of the page. If null, the page will
          #
          # @param layout_sections [Hash{Symbol=>HubspotSDK::Models::Cms::LayoutSection}]
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
          # @param theme_settings_values [Hash{Symbol=>Object}]
          #
          # @param translated_from_id [String] ID of the primary page this object was translated from.
          #
          # @param translations [Hash{Symbol=>HubspotSDK::Models::Cms::PagesContentLanguageVariation}]
          #
          # @param updated [Time]
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
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Page]
          #
          # @see HubspotSDK::Models::Cms::Pages::SitePageUpdateDraftParams
          def update_draft(object_id_, params)
            parsed, options = HubspotSDK::Cms::Pages::SitePageUpdateDraftParams.dump_request(params)
            @client.request(
              method: :patch,
              path: ["cms/v3/pages/site-pages/%1$s/draft", object_id_],
              body: parsed,
              model: HubspotSDK::Cms::Page,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Pages::SitePageUpdateLanguagesParams} for more
          # details.
          #
          # Explicitly set new languages for each site page in a multi-language group.
          #
          # @overload update_languages(languages:, primary_id:, request_options: {})
          #
          # @param languages [Hash{Symbol=>String}] Map of object IDs to associated languages of object in the multi-language group.
          #
          # @param primary_id [String] ID of the primary object in the multi-language group.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Pages::SitePageUpdateLanguagesParams
          def update_languages(params)
            parsed, options = HubspotSDK::Cms::Pages::SitePageUpdateLanguagesParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/pages/site-pages/multi-language/update-languages",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubspotSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end

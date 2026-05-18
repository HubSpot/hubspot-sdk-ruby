# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Cms
      class Pages
        class SitePages
          class Draft
            # Retrieve the full draft version of a website page, specified by its ID.
            #
            # @overload get_draft(object_id_, request_options: {})
            #
            # @param object_id_ [String]
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Cms::PagesPage]
            #
            # @see HubSpotSDK::Models::Cms::Pages::SitePages::DraftGetDraftParams
            def get_draft(object_id_, params = {})
              @client.request(
                method: :get,
                path: ["cms/pages/2026-03/site-pages/%1$s/draft", object_id_],
                model: HubSpotSDK::Cms::PagesPage,
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
            # @see HubSpotSDK::Models::Cms::Pages::SitePages::DraftPublishDraftParams
            def publish_draft(object_id_, params = {})
              @client.request(
                method: :post,
                path: ["cms/pages/2026-03/site-pages/%1$s/draft/push-live", object_id_],
                model: NilClass,
                options: params[:request_options]
              )
            end

            # Discards any edits and resets the draft to match the live version.
            #
            # @overload reset_site_page_draft(object_id_, request_options: {})
            #
            # @param object_id_ [String]
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see HubSpotSDK::Models::Cms::Pages::SitePages::DraftResetSitePageDraftParams
            def reset_site_page_draft(object_id_, params = {})
              @client.request(
                method: :post,
                path: ["cms/pages/2026-03/site-pages/%1$s/draft/reset", object_id_],
                model: NilClass,
                options: params[:request_options]
              )
            end

            # Some parameter documentations has been truncated, see
            # {HubSpotSDK::Models::Cms::Pages::SitePages::DraftUpdateDraftParams} for more
            # details.
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
            # @param ab_status [Symbol, HubSpotSDK::Models::Cms::PagesPage::AbStatus] The status of the AB test associated with this page, if applicable
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
            # @param content_type_category [Symbol, HubSpotSDK::Models::Cms::PagesPage::ContentTypeCategory] An ENUM descibing the type of this object. Should be either LANDING_PAGE or SITE
            #
            # @param created [Time] The timestamp indicating when the page was created.
            #
            # @param created_by_id [String] The ID of the user that created this page.
            #
            # @param currently_published [Boolean] Indicates whether the page is currently published.
            #
            # @param current_state [Symbol, HubSpotSDK::Models::Cms::PagesPage::CurrentState] A generated ENUM descibing the current state of this page.
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
            # @param language [Symbol, HubSpotSDK::Models::Cms::PagesPage::Language] The explicitly defined ISO 639 language code of the page. If null, the page will
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
            # @return [HubSpotSDK::Models::Cms::PagesPage]
            #
            # @see HubSpotSDK::Models::Cms::Pages::SitePages::DraftUpdateDraftParams
            def update_draft(object_id_, params)
              parsed, options = HubSpotSDK::Cms::Pages::SitePages::DraftUpdateDraftParams.dump_request(params)
              @client.request(
                method: :patch,
                path: ["cms/pages/2026-03/site-pages/%1$s/draft", object_id_],
                headers: {"content-type" => "*/*"},
                body: parsed,
                model: HubSpotSDK::Cms::PagesPage,
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
end

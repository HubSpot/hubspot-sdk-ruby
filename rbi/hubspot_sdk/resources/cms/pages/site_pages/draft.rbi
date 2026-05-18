# typed: strong

module HubSpotSDK
  module Resources
    class Cms
      class Pages
        class SitePages
          class Draft
            # Retrieve the full draft version of a website page, specified by its ID.
            sig do
              params(
                object_id_: String,
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).returns(HubSpotSDK::Cms::PagesPage)
            end
            def get_draft(object_id_, request_options: {})
            end

            # Take any changes from the draft version of the website page and apply them to
            # the live version.
            sig do
              params(
                object_id_: String,
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).void
            end
            def publish_draft(object_id_, request_options: {})
            end

            # Discards any edits and resets the draft to match the live version.
            sig do
              params(
                object_id_: String,
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).void
            end
            def reset_site_page_draft(object_id_, request_options: {})
            end

            # Partially update the draft version of a website page, specified by page ID. You
            # only need to specify the values for the details that you're modifying.
            sig do
              params(
                object_id_: String,
                id: String,
                ab_status: HubSpotSDK::Cms::PagesPage::AbStatus::OrSymbol,
                ab_test_id: String,
                archived_at: Time,
                archived_in_dashboard: T::Boolean,
                attached_stylesheets: T::Array[T::Hash[Symbol, T.anything]],
                author_name: String,
                campaign: String,
                category_id: Integer,
                content_group_id: String,
                content_type_category:
                  HubSpotSDK::Cms::PagesPage::ContentTypeCategory::OrSymbol,
                created: Time,
                created_by_id: String,
                currently_published: T::Boolean,
                current_state:
                  HubSpotSDK::Cms::PagesPage::CurrentState::OrSymbol,
                domain: String,
                dynamic_page_data_source_id: String,
                dynamic_page_data_source_type: Integer,
                dynamic_page_hub_db_table_id: String,
                enable_domain_stylesheets: T::Boolean,
                enable_layout_stylesheets: T::Boolean,
                featured_image: String,
                featured_image_alt_text: String,
                folder_id: String,
                footer_html: String,
                head_html: String,
                html_title: String,
                include_default_custom_css: T::Boolean,
                language: HubSpotSDK::Cms::PagesPage::Language::OrSymbol,
                layout_sections:
                  T::Hash[Symbol, HubSpotSDK::Cms::LayoutSection::OrHash],
                link_rel_canonical_url: String,
                mab_experiment_id: String,
                meta_description: String,
                name: String,
                page_expiry_date: Integer,
                page_expiry_enabled: T::Boolean,
                page_expiry_redirect_id: Integer,
                page_expiry_redirect_url: String,
                page_redirected: T::Boolean,
                password: String,
                public_access_rules: T::Array[T.anything],
                public_access_rules_enabled: T::Boolean,
                publish_date: Time,
                publish_immediately: T::Boolean,
                slug: String,
                state: String,
                subcategory: String,
                template_path: String,
                theme_settings_values: T::Hash[Symbol, T.anything],
                translated_from_id: String,
                translations:
                  T::Hash[
                    Symbol,
                    HubSpotSDK::Cms::ContentLanguageVariation::OrHash
                  ],
                updated: Time,
                updated_by_id: String,
                url: String,
                use_featured_image: T::Boolean,
                widget_containers: T::Hash[Symbol, T.anything],
                widgets: T::Hash[Symbol, T.anything],
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).returns(HubSpotSDK::Cms::PagesPage)
            end
            def update_draft(
              object_id_,
              # The unique ID of the page.
              id:,
              # The status of the AB test associated with this page, if applicable
              ab_status:,
              # The ID of the AB test associated with this page, if applicable
              ab_test_id:,
              # The timestamp (ISO8601 format) when this page was deleted.
              archived_at:,
              # If True, the page will not show up in your dashboard, although the page could
              # still be live.
              archived_in_dashboard:,
              # List of stylesheets to attach to this page. These stylesheets are attached to
              # just this page. Order of precedence is bottom to top, just like in the HTML.
              attached_stylesheets:,
              # The name of the user that updated this page.
              author_name:,
              # The GUID of the marketing campaign this page is a part of.
              campaign:,
              # ID of the type of object this is. Should always .
              category_id:,
              # The unique identifier for the content group associated with the page.
              content_group_id:,
              # An ENUM descibing the type of this object. Should be either LANDING_PAGE or
              # SITE_PAGE.
              content_type_category:,
              # The timestamp indicating when the page was created.
              created:,
              # The ID of the user that created this page.
              created_by_id:,
              # Indicates whether the page is currently published.
              currently_published:,
              # A generated ENUM descibing the current state of this page.
              current_state:,
              # The domain this page will resolve to. If null, the page will default to the
              # primary domain for this content type.
              domain:,
              # The identifier for the data source used by the dynamic page.
              dynamic_page_data_source_id:,
              # The type of data source used by the dynamic page.
              dynamic_page_data_source_type:,
              # The ID of the HubDB table this page references, if applicable
              dynamic_page_hub_db_table_id:,
              # Boolean to determine whether or not the styles from the template should be
              # applied.
              enable_domain_stylesheets:,
              # Boolean to determine whether or not the styles from the template should be
              # applied.
              enable_layout_stylesheets:,
              # The featuredImage of this page.
              featured_image:,
              # Alt Text of the featuredImage.
              featured_image_alt_text:,
              # The ID of the associated folder this landing page is organized under in the app
              # dashboard.
              folder_id:,
              # Custom HTML for embed codes, javascript that should be placed before the </body>
              # tag of the page.
              footer_html:,
              # Custom HTML for embed codes, javascript, etc. that goes in the <head> tag of the
              # page.
              head_html:,
              # The html title of this page.
              html_title:,
              # Boolean to determine whether or not the Primary CSS Files should be applied.
              include_default_custom_css:,
              # The explicitly defined ISO 639 language code of the page. If null, the page will
              # default to the language of the Domain.
              language:,
              # A structure detailing the layout sections of the page.
              layout_sections:,
              # Optional override to set the URL to be used in the rel=canonical link tag on the
              # page.
              link_rel_canonical_url:,
              # The ID of the MAB test (or dynamic test) associated with this page, if
              # applicable
              mab_experiment_id:,
              # A description that goes in <meta> tag on the page.
              meta_description:,
              # The internal name of the page.
              name:,
              # The date at which this page should expire and begin redirecting to another url
              # or page.
              page_expiry_date:,
              # Boolean describing if the page expiration feature is enabled for this page
              page_expiry_enabled:,
              # The ID of another page this page's url should redirect to once this page
              # expires. Should only set this or pageExpiryRedirectUrl.
              page_expiry_redirect_id:,
              # The URL this page's url should redirect to once this page expires. Should only
              # set this or pageExpiryRedirectId.
              page_expiry_redirect_url:,
              # A generated Boolean describing whether or not this page is currently expired and
              # being redirected.
              page_redirected:,
              # Set this to create a password protected page. Entering the password will be
              # required to view the page.
              password:,
              # Rules for require member registration to access private content.
              public_access_rules:,
              # Boolean to determine whether or not to respect publicAccessRules.
              public_access_rules_enabled:,
              # The date (ISO8601 format) the page is to be published at.
              publish_date:,
              # Set this to true if you want to be published immediately when the schedule
              # publish endpoint is called, and to ignore the publish_date setting.
              publish_immediately:,
              # The path of the this page. This field is appended to the domain to construct the
              # url of this page.
              slug:,
              # An ENUM descibing the current state of this page.
              state:,
              # Details the type of page this is. Should always be landing_page or site_page
              subcategory:,
              # String detailing the path of the template used for this page.
              template_path:,
              # A collection of settings specific to the theme applied to the page.
              theme_settings_values:,
              # ID of the primary page this object was translated from.
              translated_from_id:,
              # A map of translations for the page, each associated with a specific language
              # variation.
              translations:,
              # The timestamp indicating when the page was last updated.
              updated:,
              # The ID of the user that updated this page.
              updated_by_id:,
              # A generated field representing the URL of this page.
              url:,
              # Boolean to determine if this page should use a featuredImage.
              use_featured_image:,
              # A data structure containing the data for all the modules inside the containers
              # for this page. This will only be populated if the page has widget containers.
              widget_containers:,
              # A data structure containing the data for all the modules for this page.
              widgets:,
              request_options: {}
            )
            end

            # @api private
            sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
            def self.new(client:)
            end
          end
        end
      end
    end
  end
end

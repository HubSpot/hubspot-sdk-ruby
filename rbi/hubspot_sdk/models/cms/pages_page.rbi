# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class PagesPage < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Cms::PagesPage, HubSpotSDK::Internal::AnyHash)
          end

        # The unique ID of the page.
        sig { returns(String) }
        attr_accessor :id

        # The status of the AB test associated with this page, if applicable
        sig { returns(HubSpotSDK::Cms::PagesPage::AbStatus::OrSymbol) }
        attr_accessor :ab_status

        # The ID of the AB test associated with this page, if applicable
        sig { returns(String) }
        attr_accessor :ab_test_id

        # The timestamp (ISO8601 format) when this page was deleted.
        sig { returns(Time) }
        attr_accessor :archived_at

        # If True, the page will not show up in your dashboard, although the page could
        # still be live.
        sig { returns(T::Boolean) }
        attr_accessor :archived_in_dashboard

        # List of stylesheets to attach to this page. These stylesheets are attached to
        # just this page. Order of precedence is bottom to top, just like in the HTML.
        sig { returns(T::Array[T::Hash[Symbol, T.anything]]) }
        attr_accessor :attached_stylesheets

        # The name of the user that updated this page.
        sig { returns(String) }
        attr_accessor :author_name

        # The GUID of the marketing campaign this page is a part of.
        sig { returns(String) }
        attr_accessor :campaign

        # ID of the type of object this is. Should always .
        sig { returns(Integer) }
        attr_accessor :category_id

        # The unique identifier for the content group associated with the page.
        sig { returns(String) }
        attr_accessor :content_group_id

        # An ENUM descibing the type of this object. Should be either LANDING_PAGE or
        # SITE_PAGE.
        sig do
          returns(HubSpotSDK::Cms::PagesPage::ContentTypeCategory::OrSymbol)
        end
        attr_accessor :content_type_category

        # The timestamp indicating when the page was created.
        sig { returns(Time) }
        attr_accessor :created

        # The ID of the user that created this page.
        sig { returns(String) }
        attr_accessor :created_by_id

        # Indicates whether the page is currently published.
        sig { returns(T::Boolean) }
        attr_accessor :currently_published

        # A generated ENUM descibing the current state of this page.
        sig { returns(HubSpotSDK::Cms::PagesPage::CurrentState::OrSymbol) }
        attr_accessor :current_state

        # The domain this page will resolve to. If null, the page will default to the
        # primary domain for this content type.
        sig { returns(String) }
        attr_accessor :domain

        # The identifier for the data source used by the dynamic page.
        sig { returns(String) }
        attr_accessor :dynamic_page_data_source_id

        # The type of data source used by the dynamic page.
        sig { returns(Integer) }
        attr_accessor :dynamic_page_data_source_type

        # The ID of the HubDB table this page references, if applicable
        sig { returns(String) }
        attr_accessor :dynamic_page_hub_db_table_id

        # Boolean to determine whether or not the styles from the template should be
        # applied.
        sig { returns(T::Boolean) }
        attr_accessor :enable_domain_stylesheets

        # Boolean to determine whether or not the styles from the template should be
        # applied.
        sig { returns(T::Boolean) }
        attr_accessor :enable_layout_stylesheets

        # The featuredImage of this page.
        sig { returns(String) }
        attr_accessor :featured_image

        # Alt Text of the featuredImage.
        sig { returns(String) }
        attr_accessor :featured_image_alt_text

        # The ID of the associated folder this landing page is organized under in the app
        # dashboard.
        sig { returns(String) }
        attr_accessor :folder_id

        # Custom HTML for embed codes, javascript that should be placed before the </body>
        # tag of the page.
        sig { returns(String) }
        attr_accessor :footer_html

        # Custom HTML for embed codes, javascript, etc. that goes in the <head> tag of the
        # page.
        sig { returns(String) }
        attr_accessor :head_html

        # The html title of this page.
        sig { returns(String) }
        attr_accessor :html_title

        # Boolean to determine whether or not the Primary CSS Files should be applied.
        sig { returns(T::Boolean) }
        attr_accessor :include_default_custom_css

        # The explicitly defined ISO 639 language code of the page. If null, the page will
        # default to the language of the Domain.
        sig { returns(HubSpotSDK::Cms::PagesPage::Language::OrSymbol) }
        attr_accessor :language

        # A structure detailing the layout sections of the page.
        sig { returns(T::Hash[Symbol, HubSpotSDK::Cms::LayoutSection]) }
        attr_accessor :layout_sections

        # Optional override to set the URL to be used in the rel=canonical link tag on the
        # page.
        sig { returns(String) }
        attr_accessor :link_rel_canonical_url

        # The ID of the MAB test (or dynamic test) associated with this page, if
        # applicable
        sig { returns(String) }
        attr_accessor :mab_experiment_id

        # A description that goes in <meta> tag on the page.
        sig { returns(String) }
        attr_accessor :meta_description

        # The internal name of the page.
        sig { returns(String) }
        attr_accessor :name

        # The date at which this page should expire and begin redirecting to another url
        # or page.
        sig { returns(Integer) }
        attr_accessor :page_expiry_date

        # Boolean describing if the page expiration feature is enabled for this page
        sig { returns(T::Boolean) }
        attr_accessor :page_expiry_enabled

        # The ID of another page this page's url should redirect to once this page
        # expires. Should only set this or pageExpiryRedirectUrl.
        sig { returns(Integer) }
        attr_accessor :page_expiry_redirect_id

        # The URL this page's url should redirect to once this page expires. Should only
        # set this or pageExpiryRedirectId.
        sig { returns(String) }
        attr_accessor :page_expiry_redirect_url

        # A generated Boolean describing whether or not this page is currently expired and
        # being redirected.
        sig { returns(T::Boolean) }
        attr_accessor :page_redirected

        # Set this to create a password protected page. Entering the password will be
        # required to view the page.
        sig { returns(String) }
        attr_accessor :password

        # Rules for require member registration to access private content.
        sig { returns(T::Array[T.anything]) }
        attr_accessor :public_access_rules

        # Boolean to determine whether or not to respect publicAccessRules.
        sig { returns(T::Boolean) }
        attr_accessor :public_access_rules_enabled

        # The date (ISO8601 format) the page is to be published at.
        sig { returns(Time) }
        attr_accessor :publish_date

        # Set this to true if you want to be published immediately when the schedule
        # publish endpoint is called, and to ignore the publish_date setting.
        sig { returns(T::Boolean) }
        attr_accessor :publish_immediately

        # The path of the this page. This field is appended to the domain to construct the
        # url of this page.
        sig { returns(String) }
        attr_accessor :slug

        # An ENUM descibing the current state of this page.
        sig { returns(String) }
        attr_accessor :state

        # Details the type of page this is. Should always be landing_page or site_page
        sig { returns(String) }
        attr_accessor :subcategory

        # String detailing the path of the template used for this page.
        sig { returns(String) }
        attr_accessor :template_path

        # A collection of settings specific to the theme applied to the page.
        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :theme_settings_values

        # ID of the primary page this object was translated from.
        sig { returns(String) }
        attr_accessor :translated_from_id

        # A map of translations for the page, each associated with a specific language
        # variation.
        sig do
          returns(T::Hash[Symbol, HubSpotSDK::Cms::ContentLanguageVariation])
        end
        attr_accessor :translations

        # The timestamp indicating when the page was last updated.
        sig { returns(Time) }
        attr_accessor :updated

        # The ID of the user that updated this page.
        sig { returns(String) }
        attr_accessor :updated_by_id

        # A generated field representing the URL of this page.
        sig { returns(String) }
        attr_accessor :url

        # Boolean to determine if this page should use a featuredImage.
        sig { returns(T::Boolean) }
        attr_accessor :use_featured_image

        # A data structure containing the data for all the modules inside the containers
        # for this page. This will only be populated if the page has widget containers.
        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :widget_containers

        # A data structure containing the data for all the modules for this page.
        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :widgets

        sig do
          params(
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
            current_state: HubSpotSDK::Cms::PagesPage::CurrentState::OrSymbol,
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
            widgets: T::Hash[Symbol, T.anything]
          ).returns(T.attached_class)
        end
        def self.new(
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
          widgets:
        )
        end

        sig do
          override.returns(
            {
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
              current_state: HubSpotSDK::Cms::PagesPage::CurrentState::OrSymbol,
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
              layout_sections: T::Hash[Symbol, HubSpotSDK::Cms::LayoutSection],
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
                T::Hash[Symbol, HubSpotSDK::Cms::ContentLanguageVariation],
              updated: Time,
              updated_by_id: String,
              url: String,
              use_featured_image: T::Boolean,
              widget_containers: T::Hash[Symbol, T.anything],
              widgets: T::Hash[Symbol, T.anything]
            }
          )
        end
        def to_hash
        end

        # The status of the AB test associated with this page, if applicable
        module AbStatus
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HubSpotSDK::Cms::PagesPage::AbStatus) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUTOMATED_LOSER_VARIANT =
            T.let(
              :automated_loser_variant,
              HubSpotSDK::Cms::PagesPage::AbStatus::TaggedSymbol
            )
          AUTOMATED_MASTER =
            T.let(
              :automated_master,
              HubSpotSDK::Cms::PagesPage::AbStatus::TaggedSymbol
            )
          AUTOMATED_VARIANT =
            T.let(
              :automated_variant,
              HubSpotSDK::Cms::PagesPage::AbStatus::TaggedSymbol
            )
          LOSER_VARIANT =
            T.let(
              :loser_variant,
              HubSpotSDK::Cms::PagesPage::AbStatus::TaggedSymbol
            )
          MAB_MASTER =
            T.let(
              :mab_master,
              HubSpotSDK::Cms::PagesPage::AbStatus::TaggedSymbol
            )
          MAB_VARIANT =
            T.let(
              :mab_variant,
              HubSpotSDK::Cms::PagesPage::AbStatus::TaggedSymbol
            )
          MASTER =
            T.let(:master, HubSpotSDK::Cms::PagesPage::AbStatus::TaggedSymbol)
          VARIANT =
            T.let(:variant, HubSpotSDK::Cms::PagesPage::AbStatus::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubSpotSDK::Cms::PagesPage::AbStatus::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # An ENUM descibing the type of this object. Should be either LANDING_PAGE or
        # SITE_PAGE.
        module ContentTypeCategory
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::PagesPage::ContentTypeCategory)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONTENT_TYPE_CATEGORY_0 =
            T.let(
              :"0",
              HubSpotSDK::Cms::PagesPage::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_1 =
            T.let(
              :"1",
              HubSpotSDK::Cms::PagesPage::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_10 =
            T.let(
              :"10",
              HubSpotSDK::Cms::PagesPage::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_11 =
            T.let(
              :"11",
              HubSpotSDK::Cms::PagesPage::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_12 =
            T.let(
              :"12",
              HubSpotSDK::Cms::PagesPage::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_13 =
            T.let(
              :"13",
              HubSpotSDK::Cms::PagesPage::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_14 =
            T.let(
              :"14",
              HubSpotSDK::Cms::PagesPage::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_15 =
            T.let(
              :"15",
              HubSpotSDK::Cms::PagesPage::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_16 =
            T.let(
              :"16",
              HubSpotSDK::Cms::PagesPage::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_17 =
            T.let(
              :"17",
              HubSpotSDK::Cms::PagesPage::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_18 =
            T.let(
              :"18",
              HubSpotSDK::Cms::PagesPage::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_19 =
            T.let(
              :"19",
              HubSpotSDK::Cms::PagesPage::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_2 =
            T.let(
              :"2",
              HubSpotSDK::Cms::PagesPage::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_20 =
            T.let(
              :"20",
              HubSpotSDK::Cms::PagesPage::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_21 =
            T.let(
              :"21",
              HubSpotSDK::Cms::PagesPage::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_22 =
            T.let(
              :"22",
              HubSpotSDK::Cms::PagesPage::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_3 =
            T.let(
              :"3",
              HubSpotSDK::Cms::PagesPage::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_4 =
            T.let(
              :"4",
              HubSpotSDK::Cms::PagesPage::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_5 =
            T.let(
              :"5",
              HubSpotSDK::Cms::PagesPage::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_6 =
            T.let(
              :"6",
              HubSpotSDK::Cms::PagesPage::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_7 =
            T.let(
              :"7",
              HubSpotSDK::Cms::PagesPage::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_8 =
            T.let(
              :"8",
              HubSpotSDK::Cms::PagesPage::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_9 =
            T.let(
              :"9",
              HubSpotSDK::Cms::PagesPage::ContentTypeCategory::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::PagesPage::ContentTypeCategory::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # A generated ENUM descibing the current state of this page.
        module CurrentState
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::PagesPage::CurrentState)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AGENT_GENERATED =
            T.let(
              :AGENT_GENERATED,
              HubSpotSDK::Cms::PagesPage::CurrentState::TaggedSymbol
            )
          AUTOMATED =
            T.let(
              :AUTOMATED,
              HubSpotSDK::Cms::PagesPage::CurrentState::TaggedSymbol
            )
          AUTOMATED_AB =
            T.let(
              :AUTOMATED_AB,
              HubSpotSDK::Cms::PagesPage::CurrentState::TaggedSymbol
            )
          AUTOMATED_AB_VARIANT =
            T.let(
              :AUTOMATED_AB_VARIANT,
              HubSpotSDK::Cms::PagesPage::CurrentState::TaggedSymbol
            )
          AUTOMATED_DRAFT =
            T.let(
              :AUTOMATED_DRAFT,
              HubSpotSDK::Cms::PagesPage::CurrentState::TaggedSymbol
            )
          AUTOMATED_DRAFT_AB =
            T.let(
              :AUTOMATED_DRAFT_AB,
              HubSpotSDK::Cms::PagesPage::CurrentState::TaggedSymbol
            )
          AUTOMATED_DRAFT_ABVARIANT =
            T.let(
              :AUTOMATED_DRAFT_ABVARIANT,
              HubSpotSDK::Cms::PagesPage::CurrentState::TaggedSymbol
            )
          AUTOMATED_FOR_FORM =
            T.let(
              :AUTOMATED_FOR_FORM,
              HubSpotSDK::Cms::PagesPage::CurrentState::TaggedSymbol
            )
          AUTOMATED_FOR_FORM_BUFFER =
            T.let(
              :AUTOMATED_FOR_FORM_BUFFER,
              HubSpotSDK::Cms::PagesPage::CurrentState::TaggedSymbol
            )
          AUTOMATED_FOR_FORM_DRAFT =
            T.let(
              :AUTOMATED_FOR_FORM_DRAFT,
              HubSpotSDK::Cms::PagesPage::CurrentState::TaggedSymbol
            )
          AUTOMATED_FOR_FORM_LEGACY =
            T.let(
              :AUTOMATED_FOR_FORM_LEGACY,
              HubSpotSDK::Cms::PagesPage::CurrentState::TaggedSymbol
            )
          AUTOMATED_LOSER_ABVARIANT =
            T.let(
              :AUTOMATED_LOSER_ABVARIANT,
              HubSpotSDK::Cms::PagesPage::CurrentState::TaggedSymbol
            )
          AUTOMATED_SENDING =
            T.let(
              :AUTOMATED_SENDING,
              HubSpotSDK::Cms::PagesPage::CurrentState::TaggedSymbol
            )
          BLOG_EMAIL_DRAFT =
            T.let(
              :BLOG_EMAIL_DRAFT,
              HubSpotSDK::Cms::PagesPage::CurrentState::TaggedSymbol
            )
          BLOG_EMAIL_PUBLISHED =
            T.let(
              :BLOG_EMAIL_PUBLISHED,
              HubSpotSDK::Cms::PagesPage::CurrentState::TaggedSymbol
            )
          DRAFT =
            T.let(
              :DRAFT,
              HubSpotSDK::Cms::PagesPage::CurrentState::TaggedSymbol
            )
          DRAFT_AB =
            T.let(
              :DRAFT_AB,
              HubSpotSDK::Cms::PagesPage::CurrentState::TaggedSymbol
            )
          DRAFT_AB_VARIANT =
            T.let(
              :DRAFT_AB_VARIANT,
              HubSpotSDK::Cms::PagesPage::CurrentState::TaggedSymbol
            )
          ERROR =
            T.let(
              :ERROR,
              HubSpotSDK::Cms::PagesPage::CurrentState::TaggedSymbol
            )
          LOSER_AB_VARIANT =
            T.let(
              :LOSER_AB_VARIANT,
              HubSpotSDK::Cms::PagesPage::CurrentState::TaggedSymbol
            )
          PAGE_STUB =
            T.let(
              :PAGE_STUB,
              HubSpotSDK::Cms::PagesPage::CurrentState::TaggedSymbol
            )
          PRE_PROCESSING =
            T.let(
              :PRE_PROCESSING,
              HubSpotSDK::Cms::PagesPage::CurrentState::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubSpotSDK::Cms::PagesPage::CurrentState::TaggedSymbol
            )
          PUBLISHED =
            T.let(
              :PUBLISHED,
              HubSpotSDK::Cms::PagesPage::CurrentState::TaggedSymbol
            )
          PUBLISHED_AB =
            T.let(
              :PUBLISHED_AB,
              HubSpotSDK::Cms::PagesPage::CurrentState::TaggedSymbol
            )
          PUBLISHED_AB_VARIANT =
            T.let(
              :PUBLISHED_AB_VARIANT,
              HubSpotSDK::Cms::PagesPage::CurrentState::TaggedSymbol
            )
          PUBLISHED_OR_SCHEDULED =
            T.let(
              :PUBLISHED_OR_SCHEDULED,
              HubSpotSDK::Cms::PagesPage::CurrentState::TaggedSymbol
            )
          RSS_TO_EMAIL_DRAFT =
            T.let(
              :RSS_TO_EMAIL_DRAFT,
              HubSpotSDK::Cms::PagesPage::CurrentState::TaggedSymbol
            )
          RSS_TO_EMAIL_PUBLISHED =
            T.let(
              :RSS_TO_EMAIL_PUBLISHED,
              HubSpotSDK::Cms::PagesPage::CurrentState::TaggedSymbol
            )
          SCHEDULED =
            T.let(
              :SCHEDULED,
              HubSpotSDK::Cms::PagesPage::CurrentState::TaggedSymbol
            )
          SCHEDULED_AB =
            T.let(
              :SCHEDULED_AB,
              HubSpotSDK::Cms::PagesPage::CurrentState::TaggedSymbol
            )
          SCHEDULED_OR_PUBLISHED =
            T.let(
              :SCHEDULED_OR_PUBLISHED,
              HubSpotSDK::Cms::PagesPage::CurrentState::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubSpotSDK::Cms::PagesPage::CurrentState::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # The explicitly defined ISO 639 language code of the page. If null, the page will
        # default to the language of the Domain.
        module Language
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HubSpotSDK::Cms::PagesPage::Language) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AA = T.let(:aa, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AB = T.let(:ab, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AE = T.let(:ae, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AF = T.let(:af, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AF_NA =
            T.let(:"af-na", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AF_ZA =
            T.let(:"af-za", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AGQ = T.let(:agq, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AGQ_CM =
            T.let(:"agq-cm", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AK = T.let(:ak, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AK_GH =
            T.let(:"ak-gh", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AM = T.let(:am, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AM_ET =
            T.let(:"am-et", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AN = T.let(:an, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ANN = T.let(:ann, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ANN_NG =
            T.let(:"ann-ng", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AR = T.let(:ar, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AR_001 =
            T.let(:"ar-001", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AR_AE =
            T.let(:"ar-ae", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AR_BH =
            T.let(:"ar-bh", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AR_DJ =
            T.let(:"ar-dj", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AR_DZ =
            T.let(:"ar-dz", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AR_EG =
            T.let(:"ar-eg", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AR_EH =
            T.let(:"ar-eh", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AR_ER =
            T.let(:"ar-er", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AR_IL =
            T.let(:"ar-il", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AR_IQ =
            T.let(:"ar-iq", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AR_JO =
            T.let(:"ar-jo", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AR_KM =
            T.let(:"ar-km", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AR_KW =
            T.let(:"ar-kw", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AR_LB =
            T.let(:"ar-lb", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AR_LY =
            T.let(:"ar-ly", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AR_MA =
            T.let(:"ar-ma", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AR_MR =
            T.let(:"ar-mr", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AR_OM =
            T.let(:"ar-om", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AR_PS =
            T.let(:"ar-ps", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AR_QA =
            T.let(:"ar-qa", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AR_SA =
            T.let(:"ar-sa", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AR_SD =
            T.let(:"ar-sd", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AR_SO =
            T.let(:"ar-so", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AR_SS =
            T.let(:"ar-ss", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AR_SY =
            T.let(:"ar-sy", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AR_TD =
            T.let(:"ar-td", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AR_TN =
            T.let(:"ar-tn", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AR_YE =
            T.let(:"ar-ye", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AS = T.let(:as, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AS_IN =
            T.let(:"as-in", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ASA = T.let(:asa, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ASA_TZ =
            T.let(:"asa-tz", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AST = T.let(:ast, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AST_ES =
            T.let(:"ast-es", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AV = T.let(:av, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AY = T.let(:ay, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AZ = T.let(:az, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          AZ_AZ =
            T.let(:"az-az", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          BA = T.let(:ba, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          BAS = T.let(:bas, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          BAS_CM =
            T.let(:"bas-cm", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          BE = T.let(:be, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          BE_BY =
            T.let(:"be-by", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          BEM = T.let(:bem, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          BEM_ZM =
            T.let(:"bem-zm", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          BEZ = T.let(:bez, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          BEZ_TZ =
            T.let(:"bez-tz", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          BG = T.let(:bg, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          BG_BG =
            T.let(:"bg-bg", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          BGC = T.let(:bgc, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          BGC_IN =
            T.let(:"bgc-in", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          BHO = T.let(:bho, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          BHO_IN =
            T.let(:"bho-in", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          BI = T.let(:bi, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          BM = T.let(:bm, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          BM_ML =
            T.let(:"bm-ml", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          BN = T.let(:bn, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          BN_BD =
            T.let(:"bn-bd", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          BN_IN =
            T.let(:"bn-in", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          BO = T.let(:bo, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          BO_CN =
            T.let(:"bo-cn", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          BO_IN =
            T.let(:"bo-in", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          BR = T.let(:br, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          BR_FR =
            T.let(:"br-fr", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          BRX = T.let(:brx, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          BRX_IN =
            T.let(:"brx-in", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          BS = T.let(:bs, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          BS_BA =
            T.let(:"bs-ba", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          CA = T.let(:ca, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          CA_AD =
            T.let(:"ca-ad", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          CA_ES =
            T.let(:"ca-es", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          CA_FR =
            T.let(:"ca-fr", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          CA_IT =
            T.let(:"ca-it", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          CCP = T.let(:ccp, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          CCP_BD =
            T.let(:"ccp-bd", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          CCP_IN =
            T.let(:"ccp-in", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          CE = T.let(:ce, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          CE_RU =
            T.let(:"ce-ru", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          CEB = T.let(:ceb, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          CEB_PH =
            T.let(:"ceb-ph", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          CGG = T.let(:cgg, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          CGG_UG =
            T.let(:"cgg-ug", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          CH = T.let(:ch, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          CHR = T.let(:chr, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          CHR_US =
            T.let(:"chr-us", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          CKB = T.let(:ckb, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          CKB_IQ =
            T.let(:"ckb-iq", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          CKB_IR =
            T.let(:"ckb-ir", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          CO = T.let(:co, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          CR = T.let(:cr, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          CS = T.let(:cs, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          CS_CZ =
            T.let(:"cs-cz", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          CU = T.let(:cu, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          CU_RU =
            T.let(:"cu-ru", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          CV = T.let(:cv, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          CV_RU =
            T.let(:"cv-ru", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          CY = T.let(:cy, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          CY_GB =
            T.let(:"cy-gb", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          DA = T.let(:da, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          DA_DK =
            T.let(:"da-dk", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          DA_GL =
            T.let(:"da-gl", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          DAV = T.let(:dav, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          DAV_KE =
            T.let(:"dav-ke", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          DE = T.let(:de, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          DE_AT =
            T.let(:"de-at", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          DE_BE =
            T.let(:"de-be", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          DE_CH =
            T.let(:"de-ch", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          DE_DE =
            T.let(:"de-de", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          DE_GR =
            T.let(:"de-gr", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          DE_IT =
            T.let(:"de-it", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          DE_LI =
            T.let(:"de-li", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          DE_LU =
            T.let(:"de-lu", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          DJE = T.let(:dje, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          DJE_NE =
            T.let(:"dje-ne", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          DOI = T.let(:doi, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          DOI_IN =
            T.let(:"doi-in", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          DSB = T.let(:dsb, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          DSB_DE =
            T.let(:"dsb-de", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          DUA = T.let(:dua, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          DUA_CM =
            T.let(:"dua-cm", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          DV = T.let(:dv, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          DYO = T.let(:dyo, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          DYO_SN =
            T.let(:"dyo-sn", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          DZ = T.let(:dz, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          DZ_BT =
            T.let(:"dz-bt", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EBU = T.let(:ebu, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EBU_KE =
            T.let(:"ebu-ke", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EE = T.let(:ee, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EE_GH =
            T.let(:"ee-gh", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EE_TG =
            T.let(:"ee-tg", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EL = T.let(:el, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EL_CY =
            T.let(:"el-cy", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EL_GR =
            T.let(:"el-gr", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN = T.let(:en, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_001 =
            T.let(:"en-001", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_150 =
            T.let(:"en-150", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_AE =
            T.let(:"en-ae", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_AG =
            T.let(:"en-ag", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_AI =
            T.let(:"en-ai", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_AS =
            T.let(:"en-as", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_AT =
            T.let(:"en-at", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_AU =
            T.let(:"en-au", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_BB =
            T.let(:"en-bb", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_BE =
            T.let(:"en-be", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_BI =
            T.let(:"en-bi", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_BM =
            T.let(:"en-bm", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_BS =
            T.let(:"en-bs", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_BW =
            T.let(:"en-bw", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_BZ =
            T.let(:"en-bz", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_CA =
            T.let(:"en-ca", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_CC =
            T.let(:"en-cc", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_CH =
            T.let(:"en-ch", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_CK =
            T.let(:"en-ck", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_CM =
            T.let(:"en-cm", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_CN =
            T.let(:"en-cn", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_CX =
            T.let(:"en-cx", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_CY =
            T.let(:"en-cy", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_DE =
            T.let(:"en-de", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_DG =
            T.let(:"en-dg", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_DK =
            T.let(:"en-dk", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_DM =
            T.let(:"en-dm", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_EE =
            T.let(:"en-ee", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_EG =
            T.let(:"en-eg", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_ER =
            T.let(:"en-er", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_ES =
            T.let(:"en-es", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_FI =
            T.let(:"en-fi", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_FJ =
            T.let(:"en-fj", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_FK =
            T.let(:"en-fk", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_FM =
            T.let(:"en-fm", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_FR =
            T.let(:"en-fr", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_GB =
            T.let(:"en-gb", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_GD =
            T.let(:"en-gd", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_GG =
            T.let(:"en-gg", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_GH =
            T.let(:"en-gh", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_GI =
            T.let(:"en-gi", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_GM =
            T.let(:"en-gm", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_GU =
            T.let(:"en-gu", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_GY =
            T.let(:"en-gy", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_HK =
            T.let(:"en-hk", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_ID =
            T.let(:"en-id", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_IE =
            T.let(:"en-ie", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_IL =
            T.let(:"en-il", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_IM =
            T.let(:"en-im", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_IN =
            T.let(:"en-in", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_IO =
            T.let(:"en-io", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_JE =
            T.let(:"en-je", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_JM =
            T.let(:"en-jm", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_KE =
            T.let(:"en-ke", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_KI =
            T.let(:"en-ki", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_KN =
            T.let(:"en-kn", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_KY =
            T.let(:"en-ky", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_LC =
            T.let(:"en-lc", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_LR =
            T.let(:"en-lr", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_LS =
            T.let(:"en-ls", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_LU =
            T.let(:"en-lu", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_MG =
            T.let(:"en-mg", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_MH =
            T.let(:"en-mh", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_MO =
            T.let(:"en-mo", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_MP =
            T.let(:"en-mp", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_MS =
            T.let(:"en-ms", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_MT =
            T.let(:"en-mt", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_MU =
            T.let(:"en-mu", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_MV =
            T.let(:"en-mv", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_MW =
            T.let(:"en-mw", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_MX =
            T.let(:"en-mx", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_MY =
            T.let(:"en-my", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_NA =
            T.let(:"en-na", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_NF =
            T.let(:"en-nf", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_NG =
            T.let(:"en-ng", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_NL =
            T.let(:"en-nl", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_NR =
            T.let(:"en-nr", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_NU =
            T.let(:"en-nu", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_NZ =
            T.let(:"en-nz", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_PG =
            T.let(:"en-pg", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_PH =
            T.let(:"en-ph", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_PK =
            T.let(:"en-pk", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_PN =
            T.let(:"en-pn", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_PR =
            T.let(:"en-pr", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_PT =
            T.let(:"en-pt", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_PW =
            T.let(:"en-pw", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_RW =
            T.let(:"en-rw", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_SB =
            T.let(:"en-sb", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_SC =
            T.let(:"en-sc", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_SD =
            T.let(:"en-sd", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_SE =
            T.let(:"en-se", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_SG =
            T.let(:"en-sg", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_SH =
            T.let(:"en-sh", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_SI =
            T.let(:"en-si", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_SL =
            T.let(:"en-sl", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_SS =
            T.let(:"en-ss", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_SX =
            T.let(:"en-sx", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_SZ =
            T.let(:"en-sz", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_TC =
            T.let(:"en-tc", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_TH =
            T.let(:"en-th", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_TK =
            T.let(:"en-tk", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_TN =
            T.let(:"en-tn", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_TO =
            T.let(:"en-to", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_TT =
            T.let(:"en-tt", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_TV =
            T.let(:"en-tv", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_TZ =
            T.let(:"en-tz", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_UG =
            T.let(:"en-ug", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_UM =
            T.let(:"en-um", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_US =
            T.let(:"en-us", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_VC =
            T.let(:"en-vc", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_VG =
            T.let(:"en-vg", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_VI =
            T.let(:"en-vi", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_VN =
            T.let(:"en-vn", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_VU =
            T.let(:"en-vu", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_WS =
            T.let(:"en-ws", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_ZA =
            T.let(:"en-za", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_ZM =
            T.let(:"en-zm", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EN_ZW =
            T.let(:"en-zw", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EO = T.let(:eo, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EO_001 =
            T.let(:"eo-001", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ES = T.let(:es, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ES_419 =
            T.let(:"es-419", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ES_AR =
            T.let(:"es-ar", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ES_BO =
            T.let(:"es-bo", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ES_BR =
            T.let(:"es-br", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ES_BZ =
            T.let(:"es-bz", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ES_CL =
            T.let(:"es-cl", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ES_CO =
            T.let(:"es-co", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ES_CR =
            T.let(:"es-cr", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ES_CU =
            T.let(:"es-cu", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ES_DO =
            T.let(:"es-do", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ES_EA =
            T.let(:"es-ea", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ES_EC =
            T.let(:"es-ec", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ES_ES =
            T.let(:"es-es", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ES_GQ =
            T.let(:"es-gq", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ES_GT =
            T.let(:"es-gt", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ES_HN =
            T.let(:"es-hn", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ES_IC =
            T.let(:"es-ic", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ES_MX =
            T.let(:"es-mx", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ES_NI =
            T.let(:"es-ni", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ES_PA =
            T.let(:"es-pa", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ES_PE =
            T.let(:"es-pe", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ES_PH =
            T.let(:"es-ph", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ES_PR =
            T.let(:"es-pr", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ES_PY =
            T.let(:"es-py", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ES_SV =
            T.let(:"es-sv", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ES_US =
            T.let(:"es-us", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ES_UY =
            T.let(:"es-uy", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ES_VE =
            T.let(:"es-ve", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ET = T.let(:et, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ET_EE =
            T.let(:"et-ee", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EU = T.let(:eu, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EU_ES =
            T.let(:"eu-es", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EWO = T.let(:ewo, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          EWO_CM =
            T.let(:"ewo-cm", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FA = T.let(:fa, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FA_AF =
            T.let(:"fa-af", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FA_IR =
            T.let(:"fa-ir", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FF = T.let(:ff, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FF_BF =
            T.let(:"ff-bf", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FF_CM =
            T.let(:"ff-cm", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FF_GH =
            T.let(:"ff-gh", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FF_GM =
            T.let(:"ff-gm", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FF_GN =
            T.let(:"ff-gn", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FF_GW =
            T.let(:"ff-gw", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FF_LR =
            T.let(:"ff-lr", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FF_MR =
            T.let(:"ff-mr", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FF_NE =
            T.let(:"ff-ne", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FF_NG =
            T.let(:"ff-ng", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FF_SL =
            T.let(:"ff-sl", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FF_SN =
            T.let(:"ff-sn", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FI = T.let(:fi, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FI_FI =
            T.let(:"fi-fi", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FIL = T.let(:fil, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FIL_PH =
            T.let(:"fil-ph", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FJ = T.let(:fj, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FO = T.let(:fo, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FO_DK =
            T.let(:"fo-dk", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FO_FO =
            T.let(:"fo-fo", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR = T.let(:fr, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_BE =
            T.let(:"fr-be", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_BF =
            T.let(:"fr-bf", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_BI =
            T.let(:"fr-bi", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_BJ =
            T.let(:"fr-bj", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_BL =
            T.let(:"fr-bl", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_CA =
            T.let(:"fr-ca", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_CD =
            T.let(:"fr-cd", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_CF =
            T.let(:"fr-cf", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_CG =
            T.let(:"fr-cg", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_CH =
            T.let(:"fr-ch", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_CI =
            T.let(:"fr-ci", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_CM =
            T.let(:"fr-cm", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_DJ =
            T.let(:"fr-dj", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_DZ =
            T.let(:"fr-dz", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_FR =
            T.let(:"fr-fr", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_GA =
            T.let(:"fr-ga", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_GF =
            T.let(:"fr-gf", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_GN =
            T.let(:"fr-gn", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_GP =
            T.let(:"fr-gp", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_GQ =
            T.let(:"fr-gq", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_HT =
            T.let(:"fr-ht", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_KM =
            T.let(:"fr-km", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_LU =
            T.let(:"fr-lu", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_MA =
            T.let(:"fr-ma", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_MC =
            T.let(:"fr-mc", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_MF =
            T.let(:"fr-mf", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_MG =
            T.let(:"fr-mg", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_ML =
            T.let(:"fr-ml", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_MQ =
            T.let(:"fr-mq", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_MR =
            T.let(:"fr-mr", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_MU =
            T.let(:"fr-mu", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_NC =
            T.let(:"fr-nc", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_NE =
            T.let(:"fr-ne", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_PF =
            T.let(:"fr-pf", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_PM =
            T.let(:"fr-pm", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_RE =
            T.let(:"fr-re", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_RW =
            T.let(:"fr-rw", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_SC =
            T.let(:"fr-sc", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_SN =
            T.let(:"fr-sn", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_SY =
            T.let(:"fr-sy", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_TD =
            T.let(:"fr-td", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_TG =
            T.let(:"fr-tg", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_TN =
            T.let(:"fr-tn", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_VU =
            T.let(:"fr-vu", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_WF =
            T.let(:"fr-wf", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FR_YT =
            T.let(:"fr-yt", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FRR = T.let(:frr, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FRR_DE =
            T.let(:"frr-de", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FUR = T.let(:fur, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FUR_IT =
            T.let(:"fur-it", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FY = T.let(:fy, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          FY_NL =
            T.let(:"fy-nl", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          GA = T.let(:ga, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          GA_GB =
            T.let(:"ga-gb", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          GA_IE =
            T.let(:"ga-ie", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          GD = T.let(:gd, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          GD_GB =
            T.let(:"gd-gb", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          GL = T.let(:gl, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          GL_ES =
            T.let(:"gl-es", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          GN = T.let(:gn, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          GSW = T.let(:gsw, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          GSW_CH =
            T.let(:"gsw-ch", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          GSW_FR =
            T.let(:"gsw-fr", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          GSW_LI =
            T.let(:"gsw-li", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          GU = T.let(:gu, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          GU_IN =
            T.let(:"gu-in", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          GUZ = T.let(:guz, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          GUZ_KE =
            T.let(:"guz-ke", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          GV = T.let(:gv, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          GV_IM =
            T.let(:"gv-im", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          HA = T.let(:ha, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          HA_GH =
            T.let(:"ha-gh", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          HA_NE =
            T.let(:"ha-ne", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          HA_NG =
            T.let(:"ha-ng", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          HAW = T.let(:haw, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          HAW_US =
            T.let(:"haw-us", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          HE = T.let(:he, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          HE_IL =
            T.let(:"he-il", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          HI = T.let(:hi, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          HI_IN =
            T.let(:"hi-in", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          HMN = T.let(:hmn, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          HO = T.let(:ho, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          HR = T.let(:hr, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          HR_BA =
            T.let(:"hr-ba", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          HR_HR =
            T.let(:"hr-hr", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          HSB = T.let(:hsb, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          HSB_DE =
            T.let(:"hsb-de", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          HT = T.let(:ht, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          HU = T.let(:hu, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          HU_HU =
            T.let(:"hu-hu", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          HY = T.let(:hy, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          HY_AM =
            T.let(:"hy-am", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          HZ = T.let(:hz, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          IA = T.let(:ia, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          IA_001 =
            T.let(:"ia-001", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ID = T.let(:id, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ID_ID =
            T.let(:"id-id", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          IE = T.let(:ie, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          IG = T.let(:ig, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          IG_NG =
            T.let(:"ig-ng", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          II = T.let(:ii, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          II_CN =
            T.let(:"ii-cn", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          IK = T.let(:ik, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          IO = T.let(:io, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          IS = T.let(:is, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          IS_IS =
            T.let(:"is-is", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          IT = T.let(:it, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          IT_CH =
            T.let(:"it-ch", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          IT_IT =
            T.let(:"it-it", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          IT_SM =
            T.let(:"it-sm", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          IT_VA =
            T.let(:"it-va", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          IU = T.let(:iu, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          JA = T.let(:ja, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          JA_JP =
            T.let(:"ja-jp", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          JGO = T.let(:jgo, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          JGO_CM =
            T.let(:"jgo-cm", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          JMC = T.let(:jmc, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          JMC_TZ =
            T.let(:"jmc-tz", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          JV = T.let(:jv, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          JV_ID =
            T.let(:"jv-id", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KA = T.let(:ka, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KA_GE =
            T.let(:"ka-ge", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KAB = T.let(:kab, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KAB_DZ =
            T.let(:"kab-dz", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KAM = T.let(:kam, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KAM_KE =
            T.let(:"kam-ke", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KAR = T.let(:kar, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KDE = T.let(:kde, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KDE_TZ =
            T.let(:"kde-tz", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KEA = T.let(:kea, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KEA_CV =
            T.let(:"kea-cv", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KG = T.let(:kg, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KGP = T.let(:kgp, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KGP_BR =
            T.let(:"kgp-br", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KH = T.let(:kh, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KHQ = T.let(:khq, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KHQ_ML =
            T.let(:"khq-ml", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KI = T.let(:ki, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KI_KE =
            T.let(:"ki-ke", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KJ = T.let(:kj, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KK = T.let(:kk, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KK_KZ =
            T.let(:"kk-kz", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KKJ = T.let(:kkj, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KKJ_CM =
            T.let(:"kkj-cm", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KL = T.let(:kl, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KL_GL =
            T.let(:"kl-gl", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KLN = T.let(:kln, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KLN_KE =
            T.let(:"kln-ke", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KM = T.let(:km, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KM_KH =
            T.let(:"km-kh", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KN = T.let(:kn, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KN_IN =
            T.let(:"kn-in", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KO = T.let(:ko, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KO_KP =
            T.let(:"ko-kp", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KO_KR =
            T.let(:"ko-kr", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KOK = T.let(:kok, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KOK_IN =
            T.let(:"kok-in", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KR = T.let(:kr, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KS = T.let(:ks, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KS_IN =
            T.let(:"ks-in", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KSB = T.let(:ksb, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KSB_TZ =
            T.let(:"ksb-tz", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KSF = T.let(:ksf, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KSF_CM =
            T.let(:"ksf-cm", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KSH = T.let(:ksh, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KSH_DE =
            T.let(:"ksh-de", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KU = T.let(:ku, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KU_TR =
            T.let(:"ku-tr", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KV = T.let(:kv, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KW = T.let(:kw, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KW_GB =
            T.let(:"kw-gb", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KY = T.let(:ky, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          KY_KG =
            T.let(:"ky-kg", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          LA = T.let(:la, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          LAG = T.let(:lag, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          LAG_TZ =
            T.let(:"lag-tz", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          LB = T.let(:lb, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          LB_LU =
            T.let(:"lb-lu", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          LG = T.let(:lg, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          LG_UG =
            T.let(:"lg-ug", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          LI = T.let(:li, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          LKT = T.let(:lkt, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          LKT_US =
            T.let(:"lkt-us", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          LN = T.let(:ln, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          LN_AO =
            T.let(:"ln-ao", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          LN_CD =
            T.let(:"ln-cd", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          LN_CF =
            T.let(:"ln-cf", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          LN_CG =
            T.let(:"ln-cg", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          LO = T.let(:lo, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          LO_LA =
            T.let(:"lo-la", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          LRC = T.let(:lrc, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          LRC_IQ =
            T.let(:"lrc-iq", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          LRC_IR =
            T.let(:"lrc-ir", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          LT = T.let(:lt, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          LT_LT =
            T.let(:"lt-lt", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          LU = T.let(:lu, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          LU_CD =
            T.let(:"lu-cd", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          LUO = T.let(:luo, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          LUO_KE =
            T.let(:"luo-ke", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          LUY = T.let(:luy, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          LUY_KE =
            T.let(:"luy-ke", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          LV = T.let(:lv, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          LV_LV =
            T.let(:"lv-lv", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MAI = T.let(:mai, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MAI_IN =
            T.let(:"mai-in", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MAS = T.let(:mas, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MAS_KE =
            T.let(:"mas-ke", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MAS_TZ =
            T.let(:"mas-tz", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MDF = T.let(:mdf, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MDF_RU =
            T.let(:"mdf-ru", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MER = T.let(:mer, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MER_KE =
            T.let(:"mer-ke", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MFE = T.let(:mfe, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MFE_MU =
            T.let(:"mfe-mu", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MG = T.let(:mg, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MG_MG =
            T.let(:"mg-mg", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MGH = T.let(:mgh, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MGH_MZ =
            T.let(:"mgh-mz", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MGO = T.let(:mgo, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MGO_CM =
            T.let(:"mgo-cm", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MH = T.let(:mh, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MI = T.let(:mi, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MI_NZ =
            T.let(:"mi-nz", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MK = T.let(:mk, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MK_MK =
            T.let(:"mk-mk", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ML = T.let(:ml, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ML_IN =
            T.let(:"ml-in", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MN = T.let(:mn, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MN_MN =
            T.let(:"mn-mn", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MNI = T.let(:mni, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MNI_IN =
            T.let(:"mni-in", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MR = T.let(:mr, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MR_IN =
            T.let(:"mr-in", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MS = T.let(:ms, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MS_BN =
            T.let(:"ms-bn", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MS_ID =
            T.let(:"ms-id", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MS_MY =
            T.let(:"ms-my", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MS_SG =
            T.let(:"ms-sg", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MT = T.let(:mt, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MT_MT =
            T.let(:"mt-mt", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MUA = T.let(:mua, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MUA_CM =
            T.let(:"mua-cm", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MY = T.let(:my, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MY_MM =
            T.let(:"my-mm", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MZN = T.let(:mzn, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          MZN_IR =
            T.let(:"mzn-ir", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NA = T.let(:na, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NAQ = T.let(:naq, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NAQ_NA =
            T.let(:"naq-na", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NB = T.let(:nb, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NB_NO =
            T.let(:"nb-no", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NB_SJ =
            T.let(:"nb-sj", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ND = T.let(:nd, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ND_ZW =
            T.let(:"nd-zw", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NDS = T.let(:nds, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NDS_DE =
            T.let(:"nds-de", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NDS_NL =
            T.let(:"nds-nl", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NE = T.let(:ne, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NE_IN =
            T.let(:"ne-in", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NE_NP =
            T.let(:"ne-np", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NG = T.let(:ng, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NL = T.let(:nl, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NL_AW =
            T.let(:"nl-aw", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NL_BE =
            T.let(:"nl-be", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NL_BQ =
            T.let(:"nl-bq", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NL_CH =
            T.let(:"nl-ch", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NL_CW =
            T.let(:"nl-cw", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NL_LU =
            T.let(:"nl-lu", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NL_NL =
            T.let(:"nl-nl", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NL_SR =
            T.let(:"nl-sr", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NL_SX =
            T.let(:"nl-sx", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NMG = T.let(:nmg, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NMG_CM =
            T.let(:"nmg-cm", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NN = T.let(:nn, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NN_NO =
            T.let(:"nn-no", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NNH = T.let(:nnh, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NNH_CM =
            T.let(:"nnh-cm", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NO = T.let(:no, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NO_NO =
            T.let(:"no-no", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NR = T.let(:nr, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NUS = T.let(:nus, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NUS_SS =
            T.let(:"nus-ss", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NV = T.let(:nv, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NY = T.let(:ny, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NYN = T.let(:nyn, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          NYN_UG =
            T.let(:"nyn-ug", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          OC = T.let(:oc, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          OC_ES =
            T.let(:"oc-es", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          OC_FR =
            T.let(:"oc-fr", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          OJ = T.let(:oj, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          OM = T.let(:om, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          OM_ET =
            T.let(:"om-et", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          OM_KE =
            T.let(:"om-ke", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          OR = T.let(:or, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          OR_IN =
            T.let(:"or-in", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          OS = T.let(:os, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          OS_GE =
            T.let(:"os-ge", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          OS_RU =
            T.let(:"os-ru", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          PA = T.let(:pa, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          PA_IN =
            T.let(:"pa-in", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          PA_PK =
            T.let(:"pa-pk", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          PCM = T.let(:pcm, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          PCM_NG =
            T.let(:"pcm-ng", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          PI = T.let(:pi, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          PIS = T.let(:pis, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          PIS_SB =
            T.let(:"pis-sb", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          PL = T.let(:pl, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          PL_PL =
            T.let(:"pl-pl", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          PRG = T.let(:prg, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          PRG_001 =
            T.let(
              :"prg-001",
              HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol
            )
          PS = T.let(:ps, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          PS_AF =
            T.let(:"ps-af", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          PS_PK =
            T.let(:"ps-pk", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          PT = T.let(:pt, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          PT_AO =
            T.let(:"pt-ao", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          PT_BR =
            T.let(:"pt-br", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          PT_CH =
            T.let(:"pt-ch", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          PT_CV =
            T.let(:"pt-cv", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          PT_GQ =
            T.let(:"pt-gq", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          PT_GW =
            T.let(:"pt-gw", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          PT_LU =
            T.let(:"pt-lu", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          PT_MO =
            T.let(:"pt-mo", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          PT_MZ =
            T.let(:"pt-mz", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          PT_PT =
            T.let(:"pt-pt", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          PT_ST =
            T.let(:"pt-st", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          PT_TL =
            T.let(:"pt-tl", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          QU = T.let(:qu, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          QU_BO =
            T.let(:"qu-bo", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          QU_EC =
            T.let(:"qu-ec", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          QU_PE =
            T.let(:"qu-pe", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          RAJ = T.let(:raj, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          RAJ_IN =
            T.let(:"raj-in", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          RM = T.let(:rm, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          RM_CH =
            T.let(:"rm-ch", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          RN = T.let(:rn, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          RN_BI =
            T.let(:"rn-bi", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          RO = T.let(:ro, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          RO_MD =
            T.let(:"ro-md", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          RO_RO =
            T.let(:"ro-ro", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ROF = T.let(:rof, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ROF_TZ =
            T.let(:"rof-tz", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          RU = T.let(:ru, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          RU_BY =
            T.let(:"ru-by", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          RU_KG =
            T.let(:"ru-kg", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          RU_KZ =
            T.let(:"ru-kz", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          RU_MD =
            T.let(:"ru-md", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          RU_RU =
            T.let(:"ru-ru", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          RU_UA =
            T.let(:"ru-ua", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          RW = T.let(:rw, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          RW_RW =
            T.let(:"rw-rw", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          RWK = T.let(:rwk, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          RWK_TZ =
            T.let(:"rwk-tz", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SA = T.let(:sa, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SA_IN =
            T.let(:"sa-in", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SAH = T.let(:sah, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SAH_RU =
            T.let(:"sah-ru", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SAQ = T.let(:saq, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SAQ_KE =
            T.let(:"saq-ke", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SAT = T.let(:sat, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SAT_IN =
            T.let(:"sat-in", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SBP = T.let(:sbp, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SBP_TZ =
            T.let(:"sbp-tz", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SC = T.let(:sc, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SC_IT =
            T.let(:"sc-it", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SD = T.let(:sd, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SD_IN =
            T.let(:"sd-in", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SD_PK =
            T.let(:"sd-pk", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SE = T.let(:se, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SE_FI =
            T.let(:"se-fi", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SE_NO =
            T.let(:"se-no", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SE_SE =
            T.let(:"se-se", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SEH = T.let(:seh, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SEH_MZ =
            T.let(:"seh-mz", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SES = T.let(:ses, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SES_ML =
            T.let(:"ses-ml", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SG = T.let(:sg, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SG_CF =
            T.let(:"sg-cf", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SHI = T.let(:shi, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SHI_MA =
            T.let(:"shi-ma", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SI = T.let(:si, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SI_LK =
            T.let(:"si-lk", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SK = T.let(:sk, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SK_SK =
            T.let(:"sk-sk", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SL = T.let(:sl, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SL_SI =
            T.let(:"sl-si", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SM = T.let(:sm, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SMN = T.let(:smn, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SMN_FI =
            T.let(:"smn-fi", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SMS = T.let(:sms, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SMS_FI =
            T.let(:"sms-fi", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SN = T.let(:sn, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SN_ZW =
            T.let(:"sn-zw", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SO = T.let(:so, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SO_DJ =
            T.let(:"so-dj", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SO_ET =
            T.let(:"so-et", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SO_KE =
            T.let(:"so-ke", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SO_SO =
            T.let(:"so-so", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SQ = T.let(:sq, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SQ_AL =
            T.let(:"sq-al", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SQ_MK =
            T.let(:"sq-mk", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SQ_XK =
            T.let(:"sq-xk", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SR = T.let(:sr, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SR_BA =
            T.let(:"sr-ba", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SR_CS =
            T.let(:"sr-cs", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SR_ME =
            T.let(:"sr-me", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SR_RS =
            T.let(:"sr-rs", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SR_XK =
            T.let(:"sr-xk", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SS = T.let(:ss, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ST = T.let(:st, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SU = T.let(:su, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SU_ID =
            T.let(:"su-id", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SV = T.let(:sv, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SV_AX =
            T.let(:"sv-ax", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SV_FI =
            T.let(:"sv-fi", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SV_SE =
            T.let(:"sv-se", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SW = T.let(:sw, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SW_CD =
            T.let(:"sw-cd", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SW_KE =
            T.let(:"sw-ke", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SW_TZ =
            T.let(:"sw-tz", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SW_UG =
            T.let(:"sw-ug", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          SY = T.let(:sy, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TA = T.let(:ta, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TA_IN =
            T.let(:"ta-in", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TA_LK =
            T.let(:"ta-lk", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TA_MY =
            T.let(:"ta-my", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TA_SG =
            T.let(:"ta-sg", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TE = T.let(:te, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TE_IN =
            T.let(:"te-in", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TEO = T.let(:teo, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TEO_KE =
            T.let(:"teo-ke", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TEO_UG =
            T.let(:"teo-ug", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TG = T.let(:tg, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TG_TJ =
            T.let(:"tg-tj", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TH = T.let(:th, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TH_TH =
            T.let(:"th-th", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TI = T.let(:ti, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TI_ER =
            T.let(:"ti-er", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TI_ET =
            T.let(:"ti-et", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TK = T.let(:tk, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TK_TM =
            T.let(:"tk-tm", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TL = T.let(:tl, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TN = T.let(:tn, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TO = T.let(:to, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TO_TO =
            T.let(:"to-to", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TOK = T.let(:tok, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TOK_001 =
            T.let(
              :"tok-001",
              HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol
            )
          TR = T.let(:tr, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TR_CY =
            T.let(:"tr-cy", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TR_TR =
            T.let(:"tr-tr", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TS = T.let(:ts, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TT = T.let(:tt, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TT_RU =
            T.let(:"tt-ru", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TW = T.let(:tw, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TWQ = T.let(:twq, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TWQ_NE =
            T.let(:"twq-ne", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TY = T.let(:ty, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TZM = T.let(:tzm, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          TZM_MA =
            T.let(:"tzm-ma", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          UG = T.let(:ug, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          UG_CN =
            T.let(:"ug-cn", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          UK = T.let(:uk, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          UK_UA =
            T.let(:"uk-ua", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          UR = T.let(:ur, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          UR_IN =
            T.let(:"ur-in", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          UR_PK =
            T.let(:"ur-pk", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          UZ = T.let(:uz, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          UZ_AF =
            T.let(:"uz-af", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          UZ_UZ =
            T.let(:"uz-uz", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          VAI = T.let(:vai, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          VAI_LR =
            T.let(:"vai-lr", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          VE = T.let(:ve, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          VI = T.let(:vi, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          VI_VN =
            T.let(:"vi-vn", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          VO = T.let(:vo, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          VO_001 =
            T.let(:"vo-001", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          VUN = T.let(:vun, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          VUN_TZ =
            T.let(:"vun-tz", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          WA = T.let(:wa, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          WAE = T.let(:wae, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          WAE_CH =
            T.let(:"wae-ch", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          WO = T.let(:wo, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          WO_SN =
            T.let(:"wo-sn", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          XH = T.let(:xh, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          XH_ZA =
            T.let(:"xh-za", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          XOG = T.let(:xog, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          XOG_UG =
            T.let(:"xog-ug", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          YAV = T.let(:yav, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          YAV_CM =
            T.let(:"yav-cm", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          YI = T.let(:yi, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          YI_001 =
            T.let(:"yi-001", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          YO = T.let(:yo, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          YO_BJ =
            T.let(:"yo-bj", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          YO_NG =
            T.let(:"yo-ng", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          YRL = T.let(:yrl, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          YRL_BR =
            T.let(:"yrl-br", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          YRL_CO =
            T.let(:"yrl-co", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          YRL_VE =
            T.let(:"yrl-ve", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          YUE = T.let(:yue, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          YUE_CN =
            T.let(:"yue-cn", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          YUE_HK =
            T.let(:"yue-hk", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ZA = T.let(:za, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ZGH = T.let(:zgh, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ZGH_MA =
            T.let(:"zgh-ma", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ZH = T.let(:zh, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ZH_CN =
            T.let(:"zh-cn", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ZH_HANS =
            T.let(
              :"zh-hans",
              HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol
            )
          ZH_HANT =
            T.let(
              :"zh-hant",
              HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol
            )
          ZH_HK =
            T.let(:"zh-hk", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ZH_MO =
            T.let(:"zh-mo", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ZH_SG =
            T.let(:"zh-sg", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ZH_TW =
            T.let(:"zh-tw", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ZU = T.let(:zu, HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)
          ZU_ZA =
            T.let(:"zu-za", HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubSpotSDK::Cms::PagesPage::Language::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end

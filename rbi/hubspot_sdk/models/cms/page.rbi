# typed: strong

module HubspotSDK
  module Models
    module Cms
      class Page < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::Page, HubspotSDK::Internal::AnyHash)
          end

        # The unique ID of the page.
        sig { returns(String) }
        attr_accessor :id

        # The status of the AB test associated with this page, if applicable
        sig { returns(HubspotSDK::Cms::Page::AbStatus::OrSymbol) }
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
        sig { returns(HubspotSDK::Cms::Page::ContentTypeCategory::OrSymbol) }
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
        sig { returns(HubspotSDK::Cms::Page::CurrentState::OrSymbol) }
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
        sig { returns(HubspotSDK::Cms::Page::Language::OrSymbol) }
        attr_accessor :language

        # A structure detailing the layout sections of the page.
        sig { returns(T::Hash[Symbol, HubspotSDK::Cms::LayoutSection]) }
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
          returns(T::Hash[Symbol, HubspotSDK::Cms::ContentLanguageVariation])
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
            ab_status: HubspotSDK::Cms::Page::AbStatus::OrSymbol,
            ab_test_id: String,
            archived_at: Time,
            archived_in_dashboard: T::Boolean,
            attached_stylesheets: T::Array[T::Hash[Symbol, T.anything]],
            author_name: String,
            campaign: String,
            category_id: Integer,
            content_group_id: String,
            content_type_category:
              HubspotSDK::Cms::Page::ContentTypeCategory::OrSymbol,
            created: Time,
            created_by_id: String,
            currently_published: T::Boolean,
            current_state: HubspotSDK::Cms::Page::CurrentState::OrSymbol,
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
            language: HubspotSDK::Cms::Page::Language::OrSymbol,
            layout_sections:
              T::Hash[Symbol, HubspotSDK::Cms::LayoutSection::OrHash],
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
                HubspotSDK::Cms::ContentLanguageVariation::OrHash
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
              ab_status: HubspotSDK::Cms::Page::AbStatus::OrSymbol,
              ab_test_id: String,
              archived_at: Time,
              archived_in_dashboard: T::Boolean,
              attached_stylesheets: T::Array[T::Hash[Symbol, T.anything]],
              author_name: String,
              campaign: String,
              category_id: Integer,
              content_group_id: String,
              content_type_category:
                HubspotSDK::Cms::Page::ContentTypeCategory::OrSymbol,
              created: Time,
              created_by_id: String,
              currently_published: T::Boolean,
              current_state: HubspotSDK::Cms::Page::CurrentState::OrSymbol,
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
              language: HubspotSDK::Cms::Page::Language::OrSymbol,
              layout_sections: T::Hash[Symbol, HubspotSDK::Cms::LayoutSection],
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
                T::Hash[Symbol, HubspotSDK::Cms::ContentLanguageVariation],
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
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HubspotSDK::Cms::Page::AbStatus) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUTOMATED_LOSER_VARIANT =
            T.let(
              :automated_loser_variant,
              HubspotSDK::Cms::Page::AbStatus::TaggedSymbol
            )
          AUTOMATED_MASTER =
            T.let(
              :automated_master,
              HubspotSDK::Cms::Page::AbStatus::TaggedSymbol
            )
          AUTOMATED_VARIANT =
            T.let(
              :automated_variant,
              HubspotSDK::Cms::Page::AbStatus::TaggedSymbol
            )
          LOSER_VARIANT =
            T.let(:loser_variant, HubspotSDK::Cms::Page::AbStatus::TaggedSymbol)
          MAB_MASTER =
            T.let(:mab_master, HubspotSDK::Cms::Page::AbStatus::TaggedSymbol)
          MAB_VARIANT =
            T.let(:mab_variant, HubspotSDK::Cms::Page::AbStatus::TaggedSymbol)
          MASTER = T.let(:master, HubspotSDK::Cms::Page::AbStatus::TaggedSymbol)
          VARIANT =
            T.let(:variant, HubspotSDK::Cms::Page::AbStatus::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::Page::AbStatus::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # An ENUM descibing the type of this object. Should be either LANDING_PAGE or
        # SITE_PAGE.
        module ContentTypeCategory
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::Page::ContentTypeCategory)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONTENT_TYPE_CATEGORY_0 =
            T.let(
              :"0",
              HubspotSDK::Cms::Page::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_1 =
            T.let(
              :"1",
              HubspotSDK::Cms::Page::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_10 =
            T.let(
              :"10",
              HubspotSDK::Cms::Page::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_11 =
            T.let(
              :"11",
              HubspotSDK::Cms::Page::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_12 =
            T.let(
              :"12",
              HubspotSDK::Cms::Page::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_13 =
            T.let(
              :"13",
              HubspotSDK::Cms::Page::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_14 =
            T.let(
              :"14",
              HubspotSDK::Cms::Page::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_15 =
            T.let(
              :"15",
              HubspotSDK::Cms::Page::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_16 =
            T.let(
              :"16",
              HubspotSDK::Cms::Page::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_17 =
            T.let(
              :"17",
              HubspotSDK::Cms::Page::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_18 =
            T.let(
              :"18",
              HubspotSDK::Cms::Page::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_19 =
            T.let(
              :"19",
              HubspotSDK::Cms::Page::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_2 =
            T.let(
              :"2",
              HubspotSDK::Cms::Page::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_20 =
            T.let(
              :"20",
              HubspotSDK::Cms::Page::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_21 =
            T.let(
              :"21",
              HubspotSDK::Cms::Page::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_22 =
            T.let(
              :"22",
              HubspotSDK::Cms::Page::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_3 =
            T.let(
              :"3",
              HubspotSDK::Cms::Page::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_4 =
            T.let(
              :"4",
              HubspotSDK::Cms::Page::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_5 =
            T.let(
              :"5",
              HubspotSDK::Cms::Page::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_6 =
            T.let(
              :"6",
              HubspotSDK::Cms::Page::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_7 =
            T.let(
              :"7",
              HubspotSDK::Cms::Page::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_8 =
            T.let(
              :"8",
              HubspotSDK::Cms::Page::ContentTypeCategory::TaggedSymbol
            )
          CONTENT_TYPE_CATEGORY_9 =
            T.let(
              :"9",
              HubspotSDK::Cms::Page::ContentTypeCategory::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::Page::ContentTypeCategory::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # A generated ENUM descibing the current state of this page.
        module CurrentState
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HubspotSDK::Cms::Page::CurrentState) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AGENT_GENERATED =
            T.let(
              :AGENT_GENERATED,
              HubspotSDK::Cms::Page::CurrentState::TaggedSymbol
            )
          AUTOMATED =
            T.let(:AUTOMATED, HubspotSDK::Cms::Page::CurrentState::TaggedSymbol)
          AUTOMATED_AB =
            T.let(
              :AUTOMATED_AB,
              HubspotSDK::Cms::Page::CurrentState::TaggedSymbol
            )
          AUTOMATED_AB_VARIANT =
            T.let(
              :AUTOMATED_AB_VARIANT,
              HubspotSDK::Cms::Page::CurrentState::TaggedSymbol
            )
          AUTOMATED_DRAFT =
            T.let(
              :AUTOMATED_DRAFT,
              HubspotSDK::Cms::Page::CurrentState::TaggedSymbol
            )
          AUTOMATED_DRAFT_AB =
            T.let(
              :AUTOMATED_DRAFT_AB,
              HubspotSDK::Cms::Page::CurrentState::TaggedSymbol
            )
          AUTOMATED_DRAFT_ABVARIANT =
            T.let(
              :AUTOMATED_DRAFT_ABVARIANT,
              HubspotSDK::Cms::Page::CurrentState::TaggedSymbol
            )
          AUTOMATED_FOR_FORM =
            T.let(
              :AUTOMATED_FOR_FORM,
              HubspotSDK::Cms::Page::CurrentState::TaggedSymbol
            )
          AUTOMATED_FOR_FORM_BUFFER =
            T.let(
              :AUTOMATED_FOR_FORM_BUFFER,
              HubspotSDK::Cms::Page::CurrentState::TaggedSymbol
            )
          AUTOMATED_FOR_FORM_DRAFT =
            T.let(
              :AUTOMATED_FOR_FORM_DRAFT,
              HubspotSDK::Cms::Page::CurrentState::TaggedSymbol
            )
          AUTOMATED_FOR_FORM_LEGACY =
            T.let(
              :AUTOMATED_FOR_FORM_LEGACY,
              HubspotSDK::Cms::Page::CurrentState::TaggedSymbol
            )
          AUTOMATED_LOSER_ABVARIANT =
            T.let(
              :AUTOMATED_LOSER_ABVARIANT,
              HubspotSDK::Cms::Page::CurrentState::TaggedSymbol
            )
          AUTOMATED_SENDING =
            T.let(
              :AUTOMATED_SENDING,
              HubspotSDK::Cms::Page::CurrentState::TaggedSymbol
            )
          BLOG_EMAIL_DRAFT =
            T.let(
              :BLOG_EMAIL_DRAFT,
              HubspotSDK::Cms::Page::CurrentState::TaggedSymbol
            )
          BLOG_EMAIL_PUBLISHED =
            T.let(
              :BLOG_EMAIL_PUBLISHED,
              HubspotSDK::Cms::Page::CurrentState::TaggedSymbol
            )
          DRAFT =
            T.let(:DRAFT, HubspotSDK::Cms::Page::CurrentState::TaggedSymbol)
          DRAFT_AB =
            T.let(:DRAFT_AB, HubspotSDK::Cms::Page::CurrentState::TaggedSymbol)
          DRAFT_AB_VARIANT =
            T.let(
              :DRAFT_AB_VARIANT,
              HubspotSDK::Cms::Page::CurrentState::TaggedSymbol
            )
          ERROR =
            T.let(:ERROR, HubspotSDK::Cms::Page::CurrentState::TaggedSymbol)
          LOSER_AB_VARIANT =
            T.let(
              :LOSER_AB_VARIANT,
              HubspotSDK::Cms::Page::CurrentState::TaggedSymbol
            )
          PAGE_STUB =
            T.let(:PAGE_STUB, HubspotSDK::Cms::Page::CurrentState::TaggedSymbol)
          PRE_PROCESSING =
            T.let(
              :PRE_PROCESSING,
              HubspotSDK::Cms::Page::CurrentState::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubspotSDK::Cms::Page::CurrentState::TaggedSymbol
            )
          PUBLISHED =
            T.let(:PUBLISHED, HubspotSDK::Cms::Page::CurrentState::TaggedSymbol)
          PUBLISHED_AB =
            T.let(
              :PUBLISHED_AB,
              HubspotSDK::Cms::Page::CurrentState::TaggedSymbol
            )
          PUBLISHED_AB_VARIANT =
            T.let(
              :PUBLISHED_AB_VARIANT,
              HubspotSDK::Cms::Page::CurrentState::TaggedSymbol
            )
          PUBLISHED_OR_SCHEDULED =
            T.let(
              :PUBLISHED_OR_SCHEDULED,
              HubspotSDK::Cms::Page::CurrentState::TaggedSymbol
            )
          RSS_TO_EMAIL_DRAFT =
            T.let(
              :RSS_TO_EMAIL_DRAFT,
              HubspotSDK::Cms::Page::CurrentState::TaggedSymbol
            )
          RSS_TO_EMAIL_PUBLISHED =
            T.let(
              :RSS_TO_EMAIL_PUBLISHED,
              HubspotSDK::Cms::Page::CurrentState::TaggedSymbol
            )
          SCHEDULED =
            T.let(:SCHEDULED, HubspotSDK::Cms::Page::CurrentState::TaggedSymbol)
          SCHEDULED_AB =
            T.let(
              :SCHEDULED_AB,
              HubspotSDK::Cms::Page::CurrentState::TaggedSymbol
            )
          SCHEDULED_OR_PUBLISHED =
            T.let(
              :SCHEDULED_OR_PUBLISHED,
              HubspotSDK::Cms::Page::CurrentState::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::Page::CurrentState::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # The explicitly defined ISO 639 language code of the page. If null, the page will
        # default to the language of the Domain.
        module Language
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HubspotSDK::Cms::Page::Language) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AA = T.let(:aa, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AB = T.let(:ab, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AE = T.let(:ae, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AF = T.let(:af, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AF_NA = T.let(:"af-na", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AF_ZA = T.let(:"af-za", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AGQ = T.let(:agq, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AGQ_CM =
            T.let(:"agq-cm", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AK = T.let(:ak, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AK_GH = T.let(:"ak-gh", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AM = T.let(:am, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AM_ET = T.let(:"am-et", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AN = T.let(:an, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ANN = T.let(:ann, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ANN_NG =
            T.let(:"ann-ng", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AR = T.let(:ar, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AR_001 =
            T.let(:"ar-001", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AR_AE = T.let(:"ar-ae", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AR_BH = T.let(:"ar-bh", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AR_DJ = T.let(:"ar-dj", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AR_DZ = T.let(:"ar-dz", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AR_EG = T.let(:"ar-eg", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AR_EH = T.let(:"ar-eh", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AR_ER = T.let(:"ar-er", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AR_IL = T.let(:"ar-il", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AR_IQ = T.let(:"ar-iq", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AR_JO = T.let(:"ar-jo", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AR_KM = T.let(:"ar-km", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AR_KW = T.let(:"ar-kw", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AR_LB = T.let(:"ar-lb", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AR_LY = T.let(:"ar-ly", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AR_MA = T.let(:"ar-ma", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AR_MR = T.let(:"ar-mr", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AR_OM = T.let(:"ar-om", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AR_PS = T.let(:"ar-ps", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AR_QA = T.let(:"ar-qa", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AR_SA = T.let(:"ar-sa", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AR_SD = T.let(:"ar-sd", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AR_SO = T.let(:"ar-so", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AR_SS = T.let(:"ar-ss", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AR_SY = T.let(:"ar-sy", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AR_TD = T.let(:"ar-td", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AR_TN = T.let(:"ar-tn", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AR_YE = T.let(:"ar-ye", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AS = T.let(:as, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AS_IN = T.let(:"as-in", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ASA = T.let(:asa, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ASA_TZ =
            T.let(:"asa-tz", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AST = T.let(:ast, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AST_ES =
            T.let(:"ast-es", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AV = T.let(:av, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AY = T.let(:ay, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AZ = T.let(:az, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          AZ_AZ = T.let(:"az-az", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          BA = T.let(:ba, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          BAS = T.let(:bas, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          BAS_CM =
            T.let(:"bas-cm", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          BE = T.let(:be, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          BE_BY = T.let(:"be-by", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          BEM = T.let(:bem, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          BEM_ZM =
            T.let(:"bem-zm", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          BEZ = T.let(:bez, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          BEZ_TZ =
            T.let(:"bez-tz", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          BG = T.let(:bg, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          BG_BG = T.let(:"bg-bg", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          BGC = T.let(:bgc, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          BGC_IN =
            T.let(:"bgc-in", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          BHO = T.let(:bho, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          BHO_IN =
            T.let(:"bho-in", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          BI = T.let(:bi, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          BM = T.let(:bm, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          BM_ML = T.let(:"bm-ml", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          BN = T.let(:bn, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          BN_BD = T.let(:"bn-bd", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          BN_IN = T.let(:"bn-in", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          BO = T.let(:bo, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          BO_CN = T.let(:"bo-cn", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          BO_IN = T.let(:"bo-in", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          BR = T.let(:br, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          BR_FR = T.let(:"br-fr", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          BRX = T.let(:brx, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          BRX_IN =
            T.let(:"brx-in", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          BS = T.let(:bs, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          BS_BA = T.let(:"bs-ba", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          CA = T.let(:ca, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          CA_AD = T.let(:"ca-ad", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          CA_ES = T.let(:"ca-es", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          CA_FR = T.let(:"ca-fr", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          CA_IT = T.let(:"ca-it", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          CCP = T.let(:ccp, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          CCP_BD =
            T.let(:"ccp-bd", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          CCP_IN =
            T.let(:"ccp-in", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          CE = T.let(:ce, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          CE_RU = T.let(:"ce-ru", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          CEB = T.let(:ceb, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          CEB_PH =
            T.let(:"ceb-ph", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          CGG = T.let(:cgg, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          CGG_UG =
            T.let(:"cgg-ug", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          CH = T.let(:ch, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          CHR = T.let(:chr, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          CHR_US =
            T.let(:"chr-us", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          CKB = T.let(:ckb, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          CKB_IQ =
            T.let(:"ckb-iq", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          CKB_IR =
            T.let(:"ckb-ir", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          CO = T.let(:co, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          CR = T.let(:cr, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          CS = T.let(:cs, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          CS_CZ = T.let(:"cs-cz", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          CU = T.let(:cu, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          CU_RU = T.let(:"cu-ru", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          CV = T.let(:cv, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          CV_RU = T.let(:"cv-ru", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          CY = T.let(:cy, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          CY_GB = T.let(:"cy-gb", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          DA = T.let(:da, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          DA_DK = T.let(:"da-dk", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          DA_GL = T.let(:"da-gl", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          DAV = T.let(:dav, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          DAV_KE =
            T.let(:"dav-ke", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          DE = T.let(:de, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          DE_AT = T.let(:"de-at", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          DE_BE = T.let(:"de-be", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          DE_CH = T.let(:"de-ch", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          DE_DE = T.let(:"de-de", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          DE_GR = T.let(:"de-gr", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          DE_IT = T.let(:"de-it", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          DE_LI = T.let(:"de-li", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          DE_LU = T.let(:"de-lu", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          DJE = T.let(:dje, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          DJE_NE =
            T.let(:"dje-ne", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          DOI = T.let(:doi, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          DOI_IN =
            T.let(:"doi-in", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          DSB = T.let(:dsb, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          DSB_DE =
            T.let(:"dsb-de", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          DUA = T.let(:dua, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          DUA_CM =
            T.let(:"dua-cm", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          DV = T.let(:dv, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          DYO = T.let(:dyo, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          DYO_SN =
            T.let(:"dyo-sn", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          DZ = T.let(:dz, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          DZ_BT = T.let(:"dz-bt", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EBU = T.let(:ebu, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EBU_KE =
            T.let(:"ebu-ke", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EE = T.let(:ee, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EE_GH = T.let(:"ee-gh", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EE_TG = T.let(:"ee-tg", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EL = T.let(:el, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EL_CY = T.let(:"el-cy", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EL_GR = T.let(:"el-gr", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN = T.let(:en, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_001 =
            T.let(:"en-001", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_150 =
            T.let(:"en-150", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_AE = T.let(:"en-ae", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_AG = T.let(:"en-ag", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_AI = T.let(:"en-ai", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_AS = T.let(:"en-as", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_AT = T.let(:"en-at", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_AU = T.let(:"en-au", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_BB = T.let(:"en-bb", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_BE = T.let(:"en-be", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_BI = T.let(:"en-bi", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_BM = T.let(:"en-bm", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_BS = T.let(:"en-bs", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_BW = T.let(:"en-bw", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_BZ = T.let(:"en-bz", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_CA = T.let(:"en-ca", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_CC = T.let(:"en-cc", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_CH = T.let(:"en-ch", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_CK = T.let(:"en-ck", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_CM = T.let(:"en-cm", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_CN = T.let(:"en-cn", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_CX = T.let(:"en-cx", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_CY = T.let(:"en-cy", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_DE = T.let(:"en-de", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_DG = T.let(:"en-dg", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_DK = T.let(:"en-dk", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_DM = T.let(:"en-dm", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_EE = T.let(:"en-ee", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_EG = T.let(:"en-eg", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_ER = T.let(:"en-er", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_ES = T.let(:"en-es", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_FI = T.let(:"en-fi", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_FJ = T.let(:"en-fj", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_FK = T.let(:"en-fk", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_FM = T.let(:"en-fm", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_FR = T.let(:"en-fr", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_GB = T.let(:"en-gb", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_GD = T.let(:"en-gd", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_GG = T.let(:"en-gg", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_GH = T.let(:"en-gh", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_GI = T.let(:"en-gi", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_GM = T.let(:"en-gm", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_GU = T.let(:"en-gu", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_GY = T.let(:"en-gy", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_HK = T.let(:"en-hk", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_ID = T.let(:"en-id", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_IE = T.let(:"en-ie", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_IL = T.let(:"en-il", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_IM = T.let(:"en-im", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_IN = T.let(:"en-in", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_IO = T.let(:"en-io", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_JE = T.let(:"en-je", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_JM = T.let(:"en-jm", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_KE = T.let(:"en-ke", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_KI = T.let(:"en-ki", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_KN = T.let(:"en-kn", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_KY = T.let(:"en-ky", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_LC = T.let(:"en-lc", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_LR = T.let(:"en-lr", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_LS = T.let(:"en-ls", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_LU = T.let(:"en-lu", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_MG = T.let(:"en-mg", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_MH = T.let(:"en-mh", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_MO = T.let(:"en-mo", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_MP = T.let(:"en-mp", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_MS = T.let(:"en-ms", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_MT = T.let(:"en-mt", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_MU = T.let(:"en-mu", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_MV = T.let(:"en-mv", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_MW = T.let(:"en-mw", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_MX = T.let(:"en-mx", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_MY = T.let(:"en-my", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_NA = T.let(:"en-na", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_NF = T.let(:"en-nf", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_NG = T.let(:"en-ng", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_NL = T.let(:"en-nl", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_NR = T.let(:"en-nr", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_NU = T.let(:"en-nu", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_NZ = T.let(:"en-nz", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_PG = T.let(:"en-pg", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_PH = T.let(:"en-ph", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_PK = T.let(:"en-pk", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_PN = T.let(:"en-pn", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_PR = T.let(:"en-pr", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_PT = T.let(:"en-pt", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_PW = T.let(:"en-pw", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_RW = T.let(:"en-rw", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_SB = T.let(:"en-sb", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_SC = T.let(:"en-sc", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_SD = T.let(:"en-sd", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_SE = T.let(:"en-se", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_SG = T.let(:"en-sg", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_SH = T.let(:"en-sh", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_SI = T.let(:"en-si", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_SL = T.let(:"en-sl", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_SS = T.let(:"en-ss", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_SX = T.let(:"en-sx", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_SZ = T.let(:"en-sz", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_TC = T.let(:"en-tc", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_TH = T.let(:"en-th", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_TK = T.let(:"en-tk", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_TN = T.let(:"en-tn", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_TO = T.let(:"en-to", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_TT = T.let(:"en-tt", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_TV = T.let(:"en-tv", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_TZ = T.let(:"en-tz", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_UG = T.let(:"en-ug", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_UM = T.let(:"en-um", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_US = T.let(:"en-us", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_VC = T.let(:"en-vc", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_VG = T.let(:"en-vg", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_VI = T.let(:"en-vi", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_VN = T.let(:"en-vn", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_VU = T.let(:"en-vu", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_WS = T.let(:"en-ws", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_ZA = T.let(:"en-za", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_ZM = T.let(:"en-zm", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EN_ZW = T.let(:"en-zw", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EO = T.let(:eo, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EO_001 =
            T.let(:"eo-001", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ES = T.let(:es, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ES_419 =
            T.let(:"es-419", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ES_AR = T.let(:"es-ar", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ES_BO = T.let(:"es-bo", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ES_BR = T.let(:"es-br", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ES_BZ = T.let(:"es-bz", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ES_CL = T.let(:"es-cl", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ES_CO = T.let(:"es-co", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ES_CR = T.let(:"es-cr", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ES_CU = T.let(:"es-cu", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ES_DO = T.let(:"es-do", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ES_EA = T.let(:"es-ea", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ES_EC = T.let(:"es-ec", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ES_ES = T.let(:"es-es", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ES_GQ = T.let(:"es-gq", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ES_GT = T.let(:"es-gt", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ES_HN = T.let(:"es-hn", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ES_IC = T.let(:"es-ic", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ES_MX = T.let(:"es-mx", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ES_NI = T.let(:"es-ni", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ES_PA = T.let(:"es-pa", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ES_PE = T.let(:"es-pe", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ES_PH = T.let(:"es-ph", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ES_PR = T.let(:"es-pr", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ES_PY = T.let(:"es-py", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ES_SV = T.let(:"es-sv", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ES_US = T.let(:"es-us", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ES_UY = T.let(:"es-uy", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ES_VE = T.let(:"es-ve", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ET = T.let(:et, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ET_EE = T.let(:"et-ee", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EU = T.let(:eu, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EU_ES = T.let(:"eu-es", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EWO = T.let(:ewo, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          EWO_CM =
            T.let(:"ewo-cm", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FA = T.let(:fa, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FA_AF = T.let(:"fa-af", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FA_IR = T.let(:"fa-ir", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FF = T.let(:ff, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FF_BF = T.let(:"ff-bf", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FF_CM = T.let(:"ff-cm", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FF_GH = T.let(:"ff-gh", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FF_GM = T.let(:"ff-gm", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FF_GN = T.let(:"ff-gn", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FF_GW = T.let(:"ff-gw", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FF_LR = T.let(:"ff-lr", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FF_MR = T.let(:"ff-mr", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FF_NE = T.let(:"ff-ne", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FF_NG = T.let(:"ff-ng", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FF_SL = T.let(:"ff-sl", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FF_SN = T.let(:"ff-sn", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FI = T.let(:fi, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FI_FI = T.let(:"fi-fi", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FIL = T.let(:fil, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FIL_PH =
            T.let(:"fil-ph", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FJ = T.let(:fj, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FO = T.let(:fo, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FO_DK = T.let(:"fo-dk", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FO_FO = T.let(:"fo-fo", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR = T.let(:fr, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_BE = T.let(:"fr-be", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_BF = T.let(:"fr-bf", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_BI = T.let(:"fr-bi", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_BJ = T.let(:"fr-bj", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_BL = T.let(:"fr-bl", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_CA = T.let(:"fr-ca", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_CD = T.let(:"fr-cd", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_CF = T.let(:"fr-cf", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_CG = T.let(:"fr-cg", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_CH = T.let(:"fr-ch", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_CI = T.let(:"fr-ci", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_CM = T.let(:"fr-cm", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_DJ = T.let(:"fr-dj", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_DZ = T.let(:"fr-dz", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_FR = T.let(:"fr-fr", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_GA = T.let(:"fr-ga", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_GF = T.let(:"fr-gf", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_GN = T.let(:"fr-gn", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_GP = T.let(:"fr-gp", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_GQ = T.let(:"fr-gq", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_HT = T.let(:"fr-ht", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_KM = T.let(:"fr-km", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_LU = T.let(:"fr-lu", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_MA = T.let(:"fr-ma", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_MC = T.let(:"fr-mc", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_MF = T.let(:"fr-mf", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_MG = T.let(:"fr-mg", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_ML = T.let(:"fr-ml", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_MQ = T.let(:"fr-mq", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_MR = T.let(:"fr-mr", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_MU = T.let(:"fr-mu", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_NC = T.let(:"fr-nc", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_NE = T.let(:"fr-ne", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_PF = T.let(:"fr-pf", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_PM = T.let(:"fr-pm", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_RE = T.let(:"fr-re", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_RW = T.let(:"fr-rw", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_SC = T.let(:"fr-sc", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_SN = T.let(:"fr-sn", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_SY = T.let(:"fr-sy", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_TD = T.let(:"fr-td", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_TG = T.let(:"fr-tg", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_TN = T.let(:"fr-tn", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_VU = T.let(:"fr-vu", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_WF = T.let(:"fr-wf", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FR_YT = T.let(:"fr-yt", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FRR = T.let(:frr, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FRR_DE =
            T.let(:"frr-de", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FUR = T.let(:fur, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FUR_IT =
            T.let(:"fur-it", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FY = T.let(:fy, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          FY_NL = T.let(:"fy-nl", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          GA = T.let(:ga, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          GA_GB = T.let(:"ga-gb", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          GA_IE = T.let(:"ga-ie", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          GD = T.let(:gd, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          GD_GB = T.let(:"gd-gb", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          GL = T.let(:gl, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          GL_ES = T.let(:"gl-es", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          GN = T.let(:gn, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          GSW = T.let(:gsw, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          GSW_CH =
            T.let(:"gsw-ch", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          GSW_FR =
            T.let(:"gsw-fr", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          GSW_LI =
            T.let(:"gsw-li", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          GU = T.let(:gu, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          GU_IN = T.let(:"gu-in", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          GUZ = T.let(:guz, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          GUZ_KE =
            T.let(:"guz-ke", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          GV = T.let(:gv, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          GV_IM = T.let(:"gv-im", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          HA = T.let(:ha, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          HA_GH = T.let(:"ha-gh", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          HA_NE = T.let(:"ha-ne", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          HA_NG = T.let(:"ha-ng", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          HAW = T.let(:haw, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          HAW_US =
            T.let(:"haw-us", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          HE = T.let(:he, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          HE_IL = T.let(:"he-il", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          HI = T.let(:hi, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          HI_IN = T.let(:"hi-in", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          HMN = T.let(:hmn, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          HO = T.let(:ho, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          HR = T.let(:hr, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          HR_BA = T.let(:"hr-ba", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          HR_HR = T.let(:"hr-hr", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          HSB = T.let(:hsb, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          HSB_DE =
            T.let(:"hsb-de", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          HT = T.let(:ht, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          HU = T.let(:hu, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          HU_HU = T.let(:"hu-hu", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          HY = T.let(:hy, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          HY_AM = T.let(:"hy-am", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          HZ = T.let(:hz, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          IA = T.let(:ia, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          IA_001 =
            T.let(:"ia-001", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ID = T.let(:id, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ID_ID = T.let(:"id-id", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          IE = T.let(:ie, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          IG = T.let(:ig, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          IG_NG = T.let(:"ig-ng", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          II = T.let(:ii, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          II_CN = T.let(:"ii-cn", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          IK = T.let(:ik, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          IO = T.let(:io, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          IS = T.let(:is, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          IS_IS = T.let(:"is-is", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          IT = T.let(:it, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          IT_CH = T.let(:"it-ch", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          IT_IT = T.let(:"it-it", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          IT_SM = T.let(:"it-sm", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          IT_VA = T.let(:"it-va", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          IU = T.let(:iu, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          JA = T.let(:ja, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          JA_JP = T.let(:"ja-jp", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          JGO = T.let(:jgo, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          JGO_CM =
            T.let(:"jgo-cm", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          JMC = T.let(:jmc, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          JMC_TZ =
            T.let(:"jmc-tz", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          JV = T.let(:jv, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          JV_ID = T.let(:"jv-id", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KA = T.let(:ka, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KA_GE = T.let(:"ka-ge", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KAB = T.let(:kab, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KAB_DZ =
            T.let(:"kab-dz", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KAM = T.let(:kam, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KAM_KE =
            T.let(:"kam-ke", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KAR = T.let(:kar, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KDE = T.let(:kde, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KDE_TZ =
            T.let(:"kde-tz", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KEA = T.let(:kea, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KEA_CV =
            T.let(:"kea-cv", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KG = T.let(:kg, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KGP = T.let(:kgp, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KGP_BR =
            T.let(:"kgp-br", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KH = T.let(:kh, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KHQ = T.let(:khq, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KHQ_ML =
            T.let(:"khq-ml", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KI = T.let(:ki, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KI_KE = T.let(:"ki-ke", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KJ = T.let(:kj, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KK = T.let(:kk, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KK_KZ = T.let(:"kk-kz", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KKJ = T.let(:kkj, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KKJ_CM =
            T.let(:"kkj-cm", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KL = T.let(:kl, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KL_GL = T.let(:"kl-gl", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KLN = T.let(:kln, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KLN_KE =
            T.let(:"kln-ke", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KM = T.let(:km, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KM_KH = T.let(:"km-kh", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KN = T.let(:kn, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KN_IN = T.let(:"kn-in", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KO = T.let(:ko, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KO_KP = T.let(:"ko-kp", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KO_KR = T.let(:"ko-kr", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KOK = T.let(:kok, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KOK_IN =
            T.let(:"kok-in", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KR = T.let(:kr, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KS = T.let(:ks, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KS_IN = T.let(:"ks-in", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KSB = T.let(:ksb, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KSB_TZ =
            T.let(:"ksb-tz", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KSF = T.let(:ksf, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KSF_CM =
            T.let(:"ksf-cm", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KSH = T.let(:ksh, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KSH_DE =
            T.let(:"ksh-de", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KU = T.let(:ku, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KU_TR = T.let(:"ku-tr", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KV = T.let(:kv, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KW = T.let(:kw, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KW_GB = T.let(:"kw-gb", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KY = T.let(:ky, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          KY_KG = T.let(:"ky-kg", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          LA = T.let(:la, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          LAG = T.let(:lag, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          LAG_TZ =
            T.let(:"lag-tz", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          LB = T.let(:lb, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          LB_LU = T.let(:"lb-lu", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          LG = T.let(:lg, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          LG_UG = T.let(:"lg-ug", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          LI = T.let(:li, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          LKT = T.let(:lkt, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          LKT_US =
            T.let(:"lkt-us", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          LN = T.let(:ln, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          LN_AO = T.let(:"ln-ao", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          LN_CD = T.let(:"ln-cd", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          LN_CF = T.let(:"ln-cf", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          LN_CG = T.let(:"ln-cg", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          LO = T.let(:lo, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          LO_LA = T.let(:"lo-la", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          LRC = T.let(:lrc, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          LRC_IQ =
            T.let(:"lrc-iq", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          LRC_IR =
            T.let(:"lrc-ir", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          LT = T.let(:lt, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          LT_LT = T.let(:"lt-lt", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          LU = T.let(:lu, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          LU_CD = T.let(:"lu-cd", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          LUO = T.let(:luo, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          LUO_KE =
            T.let(:"luo-ke", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          LUY = T.let(:luy, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          LUY_KE =
            T.let(:"luy-ke", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          LV = T.let(:lv, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          LV_LV = T.let(:"lv-lv", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MAI = T.let(:mai, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MAI_IN =
            T.let(:"mai-in", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MAS = T.let(:mas, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MAS_KE =
            T.let(:"mas-ke", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MAS_TZ =
            T.let(:"mas-tz", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MDF = T.let(:mdf, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MDF_RU =
            T.let(:"mdf-ru", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MER = T.let(:mer, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MER_KE =
            T.let(:"mer-ke", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MFE = T.let(:mfe, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MFE_MU =
            T.let(:"mfe-mu", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MG = T.let(:mg, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MG_MG = T.let(:"mg-mg", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MGH = T.let(:mgh, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MGH_MZ =
            T.let(:"mgh-mz", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MGO = T.let(:mgo, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MGO_CM =
            T.let(:"mgo-cm", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MH = T.let(:mh, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MI = T.let(:mi, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MI_NZ = T.let(:"mi-nz", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MK = T.let(:mk, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MK_MK = T.let(:"mk-mk", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ML = T.let(:ml, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ML_IN = T.let(:"ml-in", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MN = T.let(:mn, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MN_MN = T.let(:"mn-mn", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MNI = T.let(:mni, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MNI_IN =
            T.let(:"mni-in", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MR = T.let(:mr, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MR_IN = T.let(:"mr-in", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MS = T.let(:ms, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MS_BN = T.let(:"ms-bn", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MS_ID = T.let(:"ms-id", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MS_MY = T.let(:"ms-my", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MS_SG = T.let(:"ms-sg", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MT = T.let(:mt, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MT_MT = T.let(:"mt-mt", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MUA = T.let(:mua, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MUA_CM =
            T.let(:"mua-cm", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MY = T.let(:my, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MY_MM = T.let(:"my-mm", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MZN = T.let(:mzn, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          MZN_IR =
            T.let(:"mzn-ir", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NA = T.let(:na, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NAQ = T.let(:naq, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NAQ_NA =
            T.let(:"naq-na", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NB = T.let(:nb, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NB_NO = T.let(:"nb-no", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NB_SJ = T.let(:"nb-sj", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ND = T.let(:nd, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ND_ZW = T.let(:"nd-zw", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NDS = T.let(:nds, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NDS_DE =
            T.let(:"nds-de", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NDS_NL =
            T.let(:"nds-nl", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NE = T.let(:ne, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NE_IN = T.let(:"ne-in", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NE_NP = T.let(:"ne-np", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NG = T.let(:ng, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NL = T.let(:nl, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NL_AW = T.let(:"nl-aw", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NL_BE = T.let(:"nl-be", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NL_BQ = T.let(:"nl-bq", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NL_CH = T.let(:"nl-ch", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NL_CW = T.let(:"nl-cw", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NL_LU = T.let(:"nl-lu", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NL_NL = T.let(:"nl-nl", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NL_SR = T.let(:"nl-sr", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NL_SX = T.let(:"nl-sx", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NMG = T.let(:nmg, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NMG_CM =
            T.let(:"nmg-cm", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NN = T.let(:nn, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NN_NO = T.let(:"nn-no", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NNH = T.let(:nnh, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NNH_CM =
            T.let(:"nnh-cm", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NO = T.let(:no, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NO_NO = T.let(:"no-no", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NR = T.let(:nr, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NUS = T.let(:nus, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NUS_SS =
            T.let(:"nus-ss", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NV = T.let(:nv, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NY = T.let(:ny, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NYN = T.let(:nyn, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          NYN_UG =
            T.let(:"nyn-ug", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          OC = T.let(:oc, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          OC_ES = T.let(:"oc-es", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          OC_FR = T.let(:"oc-fr", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          OJ = T.let(:oj, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          OM = T.let(:om, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          OM_ET = T.let(:"om-et", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          OM_KE = T.let(:"om-ke", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          OR = T.let(:or, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          OR_IN = T.let(:"or-in", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          OS = T.let(:os, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          OS_GE = T.let(:"os-ge", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          OS_RU = T.let(:"os-ru", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          PA = T.let(:pa, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          PA_IN = T.let(:"pa-in", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          PA_PK = T.let(:"pa-pk", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          PCM = T.let(:pcm, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          PCM_NG =
            T.let(:"pcm-ng", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          PI = T.let(:pi, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          PIS = T.let(:pis, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          PIS_SB =
            T.let(:"pis-sb", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          PL = T.let(:pl, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          PL_PL = T.let(:"pl-pl", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          PRG = T.let(:prg, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          PRG_001 =
            T.let(:"prg-001", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          PS = T.let(:ps, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          PS_AF = T.let(:"ps-af", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          PS_PK = T.let(:"ps-pk", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          PT = T.let(:pt, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          PT_AO = T.let(:"pt-ao", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          PT_BR = T.let(:"pt-br", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          PT_CH = T.let(:"pt-ch", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          PT_CV = T.let(:"pt-cv", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          PT_GQ = T.let(:"pt-gq", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          PT_GW = T.let(:"pt-gw", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          PT_LU = T.let(:"pt-lu", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          PT_MO = T.let(:"pt-mo", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          PT_MZ = T.let(:"pt-mz", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          PT_PT = T.let(:"pt-pt", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          PT_ST = T.let(:"pt-st", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          PT_TL = T.let(:"pt-tl", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          QU = T.let(:qu, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          QU_BO = T.let(:"qu-bo", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          QU_EC = T.let(:"qu-ec", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          QU_PE = T.let(:"qu-pe", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          RAJ = T.let(:raj, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          RAJ_IN =
            T.let(:"raj-in", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          RM = T.let(:rm, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          RM_CH = T.let(:"rm-ch", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          RN = T.let(:rn, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          RN_BI = T.let(:"rn-bi", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          RO = T.let(:ro, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          RO_MD = T.let(:"ro-md", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          RO_RO = T.let(:"ro-ro", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ROF = T.let(:rof, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ROF_TZ =
            T.let(:"rof-tz", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          RU = T.let(:ru, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          RU_BY = T.let(:"ru-by", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          RU_KG = T.let(:"ru-kg", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          RU_KZ = T.let(:"ru-kz", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          RU_MD = T.let(:"ru-md", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          RU_RU = T.let(:"ru-ru", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          RU_UA = T.let(:"ru-ua", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          RW = T.let(:rw, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          RW_RW = T.let(:"rw-rw", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          RWK = T.let(:rwk, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          RWK_TZ =
            T.let(:"rwk-tz", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SA = T.let(:sa, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SA_IN = T.let(:"sa-in", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SAH = T.let(:sah, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SAH_RU =
            T.let(:"sah-ru", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SAQ = T.let(:saq, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SAQ_KE =
            T.let(:"saq-ke", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SAT = T.let(:sat, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SAT_IN =
            T.let(:"sat-in", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SBP = T.let(:sbp, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SBP_TZ =
            T.let(:"sbp-tz", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SC = T.let(:sc, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SC_IT = T.let(:"sc-it", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SD = T.let(:sd, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SD_IN = T.let(:"sd-in", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SD_PK = T.let(:"sd-pk", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SE = T.let(:se, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SE_FI = T.let(:"se-fi", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SE_NO = T.let(:"se-no", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SE_SE = T.let(:"se-se", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SEH = T.let(:seh, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SEH_MZ =
            T.let(:"seh-mz", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SES = T.let(:ses, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SES_ML =
            T.let(:"ses-ml", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SG = T.let(:sg, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SG_CF = T.let(:"sg-cf", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SHI = T.let(:shi, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SHI_MA =
            T.let(:"shi-ma", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SI = T.let(:si, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SI_LK = T.let(:"si-lk", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SK = T.let(:sk, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SK_SK = T.let(:"sk-sk", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SL = T.let(:sl, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SL_SI = T.let(:"sl-si", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SM = T.let(:sm, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SMN = T.let(:smn, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SMN_FI =
            T.let(:"smn-fi", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SMS = T.let(:sms, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SMS_FI =
            T.let(:"sms-fi", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SN = T.let(:sn, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SN_ZW = T.let(:"sn-zw", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SO = T.let(:so, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SO_DJ = T.let(:"so-dj", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SO_ET = T.let(:"so-et", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SO_KE = T.let(:"so-ke", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SO_SO = T.let(:"so-so", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SQ = T.let(:sq, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SQ_AL = T.let(:"sq-al", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SQ_MK = T.let(:"sq-mk", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SQ_XK = T.let(:"sq-xk", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SR = T.let(:sr, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SR_BA = T.let(:"sr-ba", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SR_CS = T.let(:"sr-cs", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SR_ME = T.let(:"sr-me", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SR_RS = T.let(:"sr-rs", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SR_XK = T.let(:"sr-xk", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SS = T.let(:ss, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ST = T.let(:st, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SU = T.let(:su, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SU_ID = T.let(:"su-id", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SV = T.let(:sv, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SV_AX = T.let(:"sv-ax", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SV_FI = T.let(:"sv-fi", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SV_SE = T.let(:"sv-se", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SW = T.let(:sw, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SW_CD = T.let(:"sw-cd", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SW_KE = T.let(:"sw-ke", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SW_TZ = T.let(:"sw-tz", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SW_UG = T.let(:"sw-ug", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          SY = T.let(:sy, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TA = T.let(:ta, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TA_IN = T.let(:"ta-in", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TA_LK = T.let(:"ta-lk", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TA_MY = T.let(:"ta-my", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TA_SG = T.let(:"ta-sg", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TE = T.let(:te, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TE_IN = T.let(:"te-in", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TEO = T.let(:teo, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TEO_KE =
            T.let(:"teo-ke", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TEO_UG =
            T.let(:"teo-ug", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TG = T.let(:tg, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TG_TJ = T.let(:"tg-tj", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TH = T.let(:th, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TH_TH = T.let(:"th-th", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TI = T.let(:ti, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TI_ER = T.let(:"ti-er", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TI_ET = T.let(:"ti-et", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TK = T.let(:tk, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TK_TM = T.let(:"tk-tm", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TL = T.let(:tl, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TN = T.let(:tn, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TO = T.let(:to, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TO_TO = T.let(:"to-to", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TOK = T.let(:tok, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TOK_001 =
            T.let(:"tok-001", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TR = T.let(:tr, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TR_CY = T.let(:"tr-cy", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TR_TR = T.let(:"tr-tr", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TS = T.let(:ts, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TT = T.let(:tt, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TT_RU = T.let(:"tt-ru", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TW = T.let(:tw, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TWQ = T.let(:twq, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TWQ_NE =
            T.let(:"twq-ne", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TY = T.let(:ty, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TZM = T.let(:tzm, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          TZM_MA =
            T.let(:"tzm-ma", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          UG = T.let(:ug, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          UG_CN = T.let(:"ug-cn", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          UK = T.let(:uk, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          UK_UA = T.let(:"uk-ua", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          UR = T.let(:ur, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          UR_IN = T.let(:"ur-in", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          UR_PK = T.let(:"ur-pk", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          UZ = T.let(:uz, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          UZ_AF = T.let(:"uz-af", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          UZ_UZ = T.let(:"uz-uz", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          VAI = T.let(:vai, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          VAI_LR =
            T.let(:"vai-lr", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          VE = T.let(:ve, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          VI = T.let(:vi, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          VI_VN = T.let(:"vi-vn", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          VO = T.let(:vo, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          VO_001 =
            T.let(:"vo-001", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          VUN = T.let(:vun, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          VUN_TZ =
            T.let(:"vun-tz", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          WA = T.let(:wa, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          WAE = T.let(:wae, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          WAE_CH =
            T.let(:"wae-ch", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          WO = T.let(:wo, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          WO_SN = T.let(:"wo-sn", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          XH = T.let(:xh, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          XH_ZA = T.let(:"xh-za", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          XOG = T.let(:xog, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          XOG_UG =
            T.let(:"xog-ug", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          YAV = T.let(:yav, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          YAV_CM =
            T.let(:"yav-cm", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          YI = T.let(:yi, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          YI_001 =
            T.let(:"yi-001", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          YO = T.let(:yo, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          YO_BJ = T.let(:"yo-bj", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          YO_NG = T.let(:"yo-ng", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          YRL = T.let(:yrl, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          YRL_BR =
            T.let(:"yrl-br", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          YRL_CO =
            T.let(:"yrl-co", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          YRL_VE =
            T.let(:"yrl-ve", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          YUE = T.let(:yue, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          YUE_CN =
            T.let(:"yue-cn", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          YUE_HK =
            T.let(:"yue-hk", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ZA = T.let(:za, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ZGH = T.let(:zgh, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ZGH_MA =
            T.let(:"zgh-ma", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ZH = T.let(:zh, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ZH_CN = T.let(:"zh-cn", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ZH_HANS =
            T.let(:"zh-hans", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ZH_HANT =
            T.let(:"zh-hant", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ZH_HK = T.let(:"zh-hk", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ZH_MO = T.let(:"zh-mo", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ZH_SG = T.let(:"zh-sg", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ZH_TW = T.let(:"zh-tw", HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ZU = T.let(:zu, HubspotSDK::Cms::Page::Language::TaggedSymbol)
          ZU_ZA = T.let(:"zu-za", HubspotSDK::Cms::Page::Language::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::Page::Language::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end

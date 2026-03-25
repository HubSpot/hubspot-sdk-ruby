# typed: strong

module HubspotSDK
  module Models
    module Cms
      class URLMappingsURLMapping < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::URLMappingsURLMapping,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the URL mapping, represented as a 64-bit integer.
        sig { returns(Integer) }
        attr_accessor :id

        # A Unix timestamp in milliseconds indicating the embargo time for CDN purge
        # related to the URL mapping.
        sig { returns(Integer) }
        attr_accessor :cdn_purge_embargo_time

        # A 64-bit integer representing the content group associated with the URL mapping.
        sig { returns(Integer) }
        attr_accessor :content_group_id

        # A string representing the type of content object associated with the URL
        # mapping. Valid values include various content types such as 'CONTENT', 'LAYOUT',
        # 'FILE', etc.
        sig do
          returns(
            HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::OrSymbol
          )
        end
        attr_accessor :cos_object_type

        # A Unix timestamp in milliseconds indicating when the URL mapping was created.
        sig { returns(Integer) }
        attr_accessor :created

        # The identifier of the user who created the URL mapping.
        sig { returns(Integer) }
        attr_accessor :created_by_id

        # A Unix timestamp in milliseconds indicating when the URL mapping was deleted.
        sig { returns(Integer) }
        attr_accessor :deleted_at

        # The destination URL to which the routePrefix is redirected.
        sig { returns(String) }
        attr_accessor :destination

        # A boolean indicating if the URL mapping was created internally by the system.
        sig { returns(T::Boolean) }
        attr_accessor :internally_created

        # A boolean indicating if the URL mapping is currently active.
        sig { returns(T::Boolean) }
        attr_accessor :is_active

        # A boolean indicating if the full URL should be matched.
        sig { returns(T::Boolean) }
        attr_accessor :is_match_full_url

        # A boolean indicating if the query string should be matched.
        sig { returns(T::Boolean) }
        attr_accessor :is_match_query_string

        # A boolean indicating if the mapping should only be applied after a 404 Not Found
        # response.
        sig { returns(T::Boolean) }
        attr_accessor :is_only_after_not_found

        # A boolean indicating if the routePrefix is a pattern.
        sig { returns(T::Boolean) }
        attr_accessor :is_pattern

        # A boolean indicating if the mapping should ignore the URL protocol (http/https).
        sig { returns(T::Boolean) }
        attr_accessor :is_protocol_agnostic

        # A boolean indicating if the routePrefix should be treated as a regular
        # expression.
        sig { returns(T::Boolean) }
        attr_accessor :is_regex

        # A boolean indicating if the trailing slash in the URL is optional.
        sig { returns(T::Boolean) }
        attr_accessor :is_trailing_slash_optional

        # A label for the URL mapping.
        sig { returns(String) }
        attr_accessor :label

        # The name of the URL mapping.
        sig { returns(String) }
        attr_accessor :name

        # A string containing notes about the URL mapping.
        sig { returns(String) }
        attr_accessor :note

        # The identifier for the HubSpot portal associated with this URL mapping.
        sig { returns(Integer) }
        attr_accessor :portal_id

        # An integer representing the precedence of the URL mapping, used to determine
        # order of evaluation.
        sig { returns(Integer) }
        attr_accessor :precedence

        # An integer representing the style of redirection used.
        sig { returns(Integer) }
        attr_accessor :redirect_style

        # The prefix of the URL path that is being mapped.
        sig { returns(String) }
        attr_accessor :route_prefix

        # A Unix timestamp in milliseconds indicating when the URL mapping was last
        # updated.
        sig { returns(Integer) }
        attr_accessor :updated

        # The identifier of the user who last updated the URL mapping.
        sig { returns(Integer) }
        attr_accessor :updated_by_id

        sig do
          params(
            id: Integer,
            cdn_purge_embargo_time: Integer,
            content_group_id: Integer,
            cos_object_type:
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::OrSymbol,
            created: Integer,
            created_by_id: Integer,
            deleted_at: Integer,
            destination: String,
            internally_created: T::Boolean,
            is_active: T::Boolean,
            is_match_full_url: T::Boolean,
            is_match_query_string: T::Boolean,
            is_only_after_not_found: T::Boolean,
            is_pattern: T::Boolean,
            is_protocol_agnostic: T::Boolean,
            is_regex: T::Boolean,
            is_trailing_slash_optional: T::Boolean,
            label: String,
            name: String,
            note: String,
            portal_id: Integer,
            precedence: Integer,
            redirect_style: Integer,
            route_prefix: String,
            updated: Integer,
            updated_by_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the URL mapping, represented as a 64-bit integer.
          id:,
          # A Unix timestamp in milliseconds indicating the embargo time for CDN purge
          # related to the URL mapping.
          cdn_purge_embargo_time:,
          # A 64-bit integer representing the content group associated with the URL mapping.
          content_group_id:,
          # A string representing the type of content object associated with the URL
          # mapping. Valid values include various content types such as 'CONTENT', 'LAYOUT',
          # 'FILE', etc.
          cos_object_type:,
          # A Unix timestamp in milliseconds indicating when the URL mapping was created.
          created:,
          # The identifier of the user who created the URL mapping.
          created_by_id:,
          # A Unix timestamp in milliseconds indicating when the URL mapping was deleted.
          deleted_at:,
          # The destination URL to which the routePrefix is redirected.
          destination:,
          # A boolean indicating if the URL mapping was created internally by the system.
          internally_created:,
          # A boolean indicating if the URL mapping is currently active.
          is_active:,
          # A boolean indicating if the full URL should be matched.
          is_match_full_url:,
          # A boolean indicating if the query string should be matched.
          is_match_query_string:,
          # A boolean indicating if the mapping should only be applied after a 404 Not Found
          # response.
          is_only_after_not_found:,
          # A boolean indicating if the routePrefix is a pattern.
          is_pattern:,
          # A boolean indicating if the mapping should ignore the URL protocol (http/https).
          is_protocol_agnostic:,
          # A boolean indicating if the routePrefix should be treated as a regular
          # expression.
          is_regex:,
          # A boolean indicating if the trailing slash in the URL is optional.
          is_trailing_slash_optional:,
          # A label for the URL mapping.
          label:,
          # The name of the URL mapping.
          name:,
          # A string containing notes about the URL mapping.
          note:,
          # The identifier for the HubSpot portal associated with this URL mapping.
          portal_id:,
          # An integer representing the precedence of the URL mapping, used to determine
          # order of evaluation.
          precedence:,
          # An integer representing the style of redirection used.
          redirect_style:,
          # The prefix of the URL path that is being mapped.
          route_prefix:,
          # A Unix timestamp in milliseconds indicating when the URL mapping was last
          # updated.
          updated:,
          # The identifier of the user who last updated the URL mapping.
          updated_by_id:
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              cdn_purge_embargo_time: Integer,
              content_group_id: Integer,
              cos_object_type:
                HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::OrSymbol,
              created: Integer,
              created_by_id: Integer,
              deleted_at: Integer,
              destination: String,
              internally_created: T::Boolean,
              is_active: T::Boolean,
              is_match_full_url: T::Boolean,
              is_match_query_string: T::Boolean,
              is_only_after_not_found: T::Boolean,
              is_pattern: T::Boolean,
              is_protocol_agnostic: T::Boolean,
              is_regex: T::Boolean,
              is_trailing_slash_optional: T::Boolean,
              label: String,
              name: String,
              note: String,
              portal_id: Integer,
              precedence: Integer,
              redirect_style: Integer,
              route_prefix: String,
              updated: Integer,
              updated_by_id: Integer
            }
          )
        end
        def to_hash
        end

        # A string representing the type of content object associated with the URL
        # mapping. Valid values include various content types such as 'CONTENT', 'LAYOUT',
        # 'FILE', etc.
        module CosObjectType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACCESS_GROUP_MEMBERSHIP =
            T.let(
              :ACCESS_GROUP_MEMBERSHIP,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          APP_PAGE =
            T.let(
              :APP_PAGE,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          BLOCK =
            T.let(
              :BLOCK,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          BLOG =
            T.let(
              :BLOG,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          BLOG_AUTHOR =
            T.let(
              :BLOG_AUTHOR,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          BRAND_BUSINESS_UNIT =
            T.let(
              :BRAND_BUSINESS_UNIT,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          BRAND_SETTINGS =
            T.let(
              :BRAND_SETTINGS,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          CONTACT_MEMBERSHIP =
            T.let(
              :CONTACT_MEMBERSHIP,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          CONTENT =
            T.let(
              :CONTENT,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          CONTENT_EMBED =
            T.let(
              :CONTENT_EMBED,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          CONTENT_FOLDER =
            T.let(
              :CONTENT_FOLDER,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          CONTENT_GROUP =
            T.let(
              :CONTENT_GROUP,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          CRM_OBJECT =
            T.let(
              :CRM_OBJECT,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          CRM_OBJECT_TYPE =
            T.let(
              :CRM_OBJECT_TYPE,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          CUSTOM_WIDGET =
            T.let(
              :CUSTOM_WIDGET,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          CUSTOMER_PORTAL =
            T.let(
              :CUSTOMER_PORTAL,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          DATA_QUERY =
            T.let(
              :DATA_QUERY,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          DESIGN_FOLDER =
            T.let(
              :DESIGN_FOLDER,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          DOMAIN =
            T.let(
              :DOMAIN,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          DOMAIN_SETTINGS =
            T.let(
              :DOMAIN_SETTINGS,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          EMAIL_ADDRESS =
            T.let(
              :EMAIL_ADDRESS,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          EXTENSION_RESOURCE =
            T.let(
              :EXTENSION_RESOURCE,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          FILE =
            T.let(
              :FILE,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          FOLDER =
            T.let(
              :FOLDER,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          FOLLOW_ME =
            T.let(
              :FOLLOW_ME,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          FORM =
            T.let(
              :FORM,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          GLOBAL_CONTENT =
            T.let(
              :GLOBAL_CONTENT,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          HUBDB_TABLE =
            T.let(
              :HUBDB_TABLE,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          HUBDB_TABLE_ROW =
            T.let(
              :HUBDB_TABLE_ROW,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          IMAGE =
            T.let(
              :IMAGE,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          JS_PROJECT_COMPONENT =
            T.let(
              :JS_PROJECT_COMPONENT,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          KNOWLEDGE_BASE =
            T.let(
              :KNOWLEDGE_BASE,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          KNOWLEDGE_CATEGORY =
            T.let(
              :KNOWLEDGE_CATEGORY,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          KNOWLEDGE_CATEGORY_TRANSLATION =
            T.let(
              :KNOWLEDGE_CATEGORY_TRANSLATION,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          KNOWLEDGE_HOMEPAGE_CATEGORY =
            T.let(
              :KNOWLEDGE_HOMEPAGE_CATEGORY,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          LAYOUT =
            T.let(
              :LAYOUT,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          LAYOUT_SECTION =
            T.let(
              :LAYOUT_SECTION,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          LIST_MEMBERSHIP =
            T.let(
              :LIST_MEMBERSHIP,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          MARKETPLACE_LISTING =
            T.let(
              :MARKETPLACE_LISTING,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          PASSWORD_PROTECTED =
            T.let(
              :PASSWORD_PROTECTED,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          PAYMENT =
            T.let(
              :PAYMENT,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          PERSONALIZATION_TOKEN =
            T.let(
              :PERSONALIZATION_TOKEN,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          PLACEMENT =
            T.let(
              :PLACEMENT,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          PROJECT =
            T.let(
              :PROJECT,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          QUOTE_TEMPLATE =
            T.let(
              :QUOTE_TEMPLATE,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          RAW_ASSET =
            T.let(
              :RAW_ASSET,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          REDIRECT_URL =
            T.let(
              :REDIRECT_URL,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          SECTION =
            T.let(
              :SECTION,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          SERVERLESS_FUNCTION =
            T.let(
              :SERVERLESS_FUNCTION,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          SITE_MAP =
            T.let(
              :SITE_MAP,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          SITE_MENU =
            T.let(
              :SITE_MENU,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          SITE_SETTINGS =
            T.let(
              :SITE_SETTINGS,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          SUBSCRIPTIONS_SETTINGS =
            T.let(
              :SUBSCRIPTIONS_SETTINGS,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          TAG =
            T.let(
              :TAG,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          THEME =
            T.let(
              :THEME,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          THEME_SETTINGS =
            T.let(
              :THEME_SETTINGS,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          UNRESTRICTED_ACCESS =
            T.let(
              :UNRESTRICTED_ACCESS,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          URL_MAPPING =
            T.let(
              :URL_MAPPING,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          VIDEO_PLAYER =
            T.let(
              :VIDEO_PLAYER,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          WIDGET =
            T.let(
              :WIDGET,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )
          WORKFLOW =
            T.let(
              :WORKFLOW,
              HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end

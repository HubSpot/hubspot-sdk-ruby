# typed: strong

module HubspotSDK
  module Models
    module Cms
      class AuditLogListResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Models::Cms::AuditLogListResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The type of event that took place (CREATED, UPDATED, PUBLISHED, DELETED,
        # UNPUBLISHED).
        sig do
          returns(
            HubspotSDK::Models::Cms::AuditLogListResponse::Event::TaggedSymbol
          )
        end
        attr_accessor :event

        # The name of the user who caused the event.
        sig { returns(String) }
        attr_accessor :full_name

        # The ID of the object.
        sig { returns(String) }
        attr_accessor :object_id_

        # The internal name of the object in HubSpot.
        sig { returns(String) }
        attr_accessor :object_name

        # The type of the object (BLOG, LANDING_PAGE, DOMAIN, HUBDB_TABLE etc.)
        sig do
          returns(
            HubspotSDK::Models::Cms::AuditLogListResponse::ObjectType::TaggedSymbol
          )
        end
        attr_accessor :object_type

        # The timestamp at which the event occurred.
        sig { returns(Time) }
        attr_accessor :timestamp

        # The ID of the user who caused the event.
        sig { returns(String) }
        attr_accessor :user_id

        sig { returns(T.nilable(T.anything)) }
        attr_reader :meta

        sig { params(meta: T.anything).void }
        attr_writer :meta

        sig do
          params(
            event:
              HubspotSDK::Models::Cms::AuditLogListResponse::Event::OrSymbol,
            full_name: String,
            object_id_: String,
            object_name: String,
            object_type:
              HubspotSDK::Models::Cms::AuditLogListResponse::ObjectType::OrSymbol,
            timestamp: Time,
            user_id: String,
            meta: T.anything
          ).returns(T.attached_class)
        end
        def self.new(
          # The type of event that took place (CREATED, UPDATED, PUBLISHED, DELETED,
          # UNPUBLISHED).
          event:,
          # The name of the user who caused the event.
          full_name:,
          # The ID of the object.
          object_id_:,
          # The internal name of the object in HubSpot.
          object_name:,
          # The type of the object (BLOG, LANDING_PAGE, DOMAIN, HUBDB_TABLE etc.)
          object_type:,
          # The timestamp at which the event occurred.
          timestamp:,
          # The ID of the user who caused the event.
          user_id:,
          meta: nil
        )
        end

        sig do
          override.returns(
            {
              event:
                HubspotSDK::Models::Cms::AuditLogListResponse::Event::TaggedSymbol,
              full_name: String,
              object_id_: String,
              object_name: String,
              object_type:
                HubspotSDK::Models::Cms::AuditLogListResponse::ObjectType::TaggedSymbol,
              timestamp: Time,
              user_id: String,
              meta: T.anything
            }
          )
        end
        def to_hash
        end

        # The type of event that took place (CREATED, UPDATED, PUBLISHED, DELETED,
        # UNPUBLISHED).
        module Event
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Models::Cms::AuditLogListResponse::Event
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED =
            T.let(
              :CREATED,
              HubspotSDK::Models::Cms::AuditLogListResponse::Event::TaggedSymbol
            )
          UPDATED =
            T.let(
              :UPDATED,
              HubspotSDK::Models::Cms::AuditLogListResponse::Event::TaggedSymbol
            )
          PUBLISHED =
            T.let(
              :PUBLISHED,
              HubspotSDK::Models::Cms::AuditLogListResponse::Event::TaggedSymbol
            )
          DELETED =
            T.let(
              :DELETED,
              HubspotSDK::Models::Cms::AuditLogListResponse::Event::TaggedSymbol
            )
          UNPUBLISHED =
            T.let(
              :UNPUBLISHED,
              HubspotSDK::Models::Cms::AuditLogListResponse::Event::TaggedSymbol
            )
          RESTORE =
            T.let(
              :RESTORE,
              HubspotSDK::Models::Cms::AuditLogListResponse::Event::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Models::Cms::AuditLogListResponse::Event::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The type of the object (BLOG, LANDING_PAGE, DOMAIN, HUBDB_TABLE etc.)
        module ObjectType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Models::Cms::AuditLogListResponse::ObjectType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BLOG =
            T.let(
              :BLOG,
              HubspotSDK::Models::Cms::AuditLogListResponse::ObjectType::TaggedSymbol
            )
          BLOG_POST =
            T.let(
              :BLOG_POST,
              HubspotSDK::Models::Cms::AuditLogListResponse::ObjectType::TaggedSymbol
            )
          LANDING_PAGE =
            T.let(
              :LANDING_PAGE,
              HubspotSDK::Models::Cms::AuditLogListResponse::ObjectType::TaggedSymbol
            )
          WEBSITE_PAGE =
            T.let(
              :WEBSITE_PAGE,
              HubspotSDK::Models::Cms::AuditLogListResponse::ObjectType::TaggedSymbol
            )
          TEMPLATE =
            T.let(
              :TEMPLATE,
              HubspotSDK::Models::Cms::AuditLogListResponse::ObjectType::TaggedSymbol
            )
          MODULE =
            T.let(
              :MODULE,
              HubspotSDK::Models::Cms::AuditLogListResponse::ObjectType::TaggedSymbol
            )
          GLOBAL_MODULE =
            T.let(
              :GLOBAL_MODULE,
              HubspotSDK::Models::Cms::AuditLogListResponse::ObjectType::TaggedSymbol
            )
          SERVERLESS_FUNCTION =
            T.let(
              :SERVERLESS_FUNCTION,
              HubspotSDK::Models::Cms::AuditLogListResponse::ObjectType::TaggedSymbol
            )
          DOMAIN =
            T.let(
              :DOMAIN,
              HubspotSDK::Models::Cms::AuditLogListResponse::ObjectType::TaggedSymbol
            )
          URL_MAPPING =
            T.let(
              :URL_MAPPING,
              HubspotSDK::Models::Cms::AuditLogListResponse::ObjectType::TaggedSymbol
            )
          EMAIL =
            T.let(
              :EMAIL,
              HubspotSDK::Models::Cms::AuditLogListResponse::ObjectType::TaggedSymbol
            )
          CONTENT_SETTINGS =
            T.let(
              :CONTENT_SETTINGS,
              HubspotSDK::Models::Cms::AuditLogListResponse::ObjectType::TaggedSymbol
            )
          HUBDB_TABLE =
            T.let(
              :HUBDB_TABLE,
              HubspotSDK::Models::Cms::AuditLogListResponse::ObjectType::TaggedSymbol
            )
          KNOWLEDGE_BASE_ARTICLE =
            T.let(
              :KNOWLEDGE_BASE_ARTICLE,
              HubspotSDK::Models::Cms::AuditLogListResponse::ObjectType::TaggedSymbol
            )
          KNOWLEDGE_BASE =
            T.let(
              :KNOWLEDGE_BASE,
              HubspotSDK::Models::Cms::AuditLogListResponse::ObjectType::TaggedSymbol
            )
          THEME =
            T.let(
              :THEME,
              HubspotSDK::Models::Cms::AuditLogListResponse::ObjectType::TaggedSymbol
            )
          CSS =
            T.let(
              :CSS,
              HubspotSDK::Models::Cms::AuditLogListResponse::ObjectType::TaggedSymbol
            )
          JS =
            T.let(
              :JS,
              HubspotSDK::Models::Cms::AuditLogListResponse::ObjectType::TaggedSymbol
            )
          CTA =
            T.let(
              :CTA,
              HubspotSDK::Models::Cms::AuditLogListResponse::ObjectType::TaggedSymbol
            )
          FILE =
            T.let(
              :FILE,
              HubspotSDK::Models::Cms::AuditLogListResponse::ObjectType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Models::Cms::AuditLogListResponse::ObjectType::TaggedSymbol
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

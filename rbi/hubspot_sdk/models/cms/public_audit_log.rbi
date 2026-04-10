# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class PublicAuditLog < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::PublicAuditLog,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The type of event that took place (CREATED, UPDATED, PUBLISHED, DELETED,
        # UNPUBLISHED).
        sig { returns(HubSpotSDK::Cms::PublicAuditLog::Event::TaggedSymbol) }
        attr_accessor :event

        # The name of the user who caused the event.
        sig { returns(String) }
        attr_accessor :full_name

        # Supplementary metadata associated with the audit log entry. It provides
        # additional context about the audited event (ex: rows deleted/updated for a HubDB
        # event, the specific fields that were changed for a Content Settings event).
        sig { returns(T.anything) }
        attr_accessor :meta

        # The ID of the object.
        sig { returns(String) }
        attr_accessor :object_id_

        # The internal name of the object in HubSpot.
        sig { returns(String) }
        attr_accessor :object_name

        # The type of the object (BLOG, LANDING_PAGE, DOMAIN, HUBDB_TABLE etc.)
        sig do
          returns(HubSpotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol)
        end
        attr_accessor :object_type

        # The timestamp at which the event occurred.
        sig { returns(Time) }
        attr_accessor :timestamp

        # The ID of the user who caused the event.
        sig { returns(String) }
        attr_accessor :user_id

        sig do
          params(
            event: HubSpotSDK::Cms::PublicAuditLog::Event::OrSymbol,
            full_name: String,
            meta: T.anything,
            object_id_: String,
            object_name: String,
            object_type: HubSpotSDK::Cms::PublicAuditLog::ObjectType::OrSymbol,
            timestamp: Time,
            user_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The type of event that took place (CREATED, UPDATED, PUBLISHED, DELETED,
          # UNPUBLISHED).
          event:,
          # The name of the user who caused the event.
          full_name:,
          # Supplementary metadata associated with the audit log entry. It provides
          # additional context about the audited event (ex: rows deleted/updated for a HubDB
          # event, the specific fields that were changed for a Content Settings event).
          meta:,
          # The ID of the object.
          object_id_:,
          # The internal name of the object in HubSpot.
          object_name:,
          # The type of the object (BLOG, LANDING_PAGE, DOMAIN, HUBDB_TABLE etc.)
          object_type:,
          # The timestamp at which the event occurred.
          timestamp:,
          # The ID of the user who caused the event.
          user_id:
        )
        end

        sig do
          override.returns(
            {
              event: HubSpotSDK::Cms::PublicAuditLog::Event::TaggedSymbol,
              full_name: String,
              meta: T.anything,
              object_id_: String,
              object_name: String,
              object_type:
                HubSpotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol,
              timestamp: Time,
              user_id: String
            }
          )
        end
        def to_hash
        end

        # The type of event that took place (CREATED, UPDATED, PUBLISHED, DELETED,
        # UNPUBLISHED).
        module Event
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::PublicAuditLog::Event)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED =
            T.let(
              :CREATED,
              HubSpotSDK::Cms::PublicAuditLog::Event::TaggedSymbol
            )
          DELETED =
            T.let(
              :DELETED,
              HubSpotSDK::Cms::PublicAuditLog::Event::TaggedSymbol
            )
          PUBLISHED =
            T.let(
              :PUBLISHED,
              HubSpotSDK::Cms::PublicAuditLog::Event::TaggedSymbol
            )
          RESTORE =
            T.let(
              :RESTORE,
              HubSpotSDK::Cms::PublicAuditLog::Event::TaggedSymbol
            )
          UNPUBLISHED =
            T.let(
              :UNPUBLISHED,
              HubSpotSDK::Cms::PublicAuditLog::Event::TaggedSymbol
            )
          UPDATED =
            T.let(
              :UPDATED,
              HubSpotSDK::Cms::PublicAuditLog::Event::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubSpotSDK::Cms::PublicAuditLog::Event::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # The type of the object (BLOG, LANDING_PAGE, DOMAIN, HUBDB_TABLE etc.)
        module ObjectType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::PublicAuditLog::ObjectType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BLOG =
            T.let(
              :BLOG,
              HubSpotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          BLOG_POST =
            T.let(
              :BLOG_POST,
              HubSpotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          CASE_STUDY =
            T.let(
              :CASE_STUDY,
              HubSpotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          CONTENT_SETTINGS =
            T.let(
              :CONTENT_SETTINGS,
              HubSpotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          CSS =
            T.let(
              :CSS,
              HubSpotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          CTA =
            T.let(
              :CTA,
              HubSpotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          DOMAIN =
            T.let(
              :DOMAIN,
              HubSpotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          EMAIL =
            T.let(
              :EMAIL,
              HubSpotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          FILE =
            T.let(
              :FILE,
              HubSpotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          GLOBAL_MODULE =
            T.let(
              :GLOBAL_MODULE,
              HubSpotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          HUBDB_TABLE =
            T.let(
              :HUBDB_TABLE,
              HubSpotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          JS =
            T.let(
              :JS,
              HubSpotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          KNOWLEDGE_BASE =
            T.let(
              :KNOWLEDGE_BASE,
              HubSpotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          KNOWLEDGE_BASE_ARTICLE =
            T.let(
              :KNOWLEDGE_BASE_ARTICLE,
              HubSpotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          LANDING_PAGE =
            T.let(
              :LANDING_PAGE,
              HubSpotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          MODULE =
            T.let(
              :MODULE,
              HubSpotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          PODCAST =
            T.let(
              :PODCAST,
              HubSpotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          QUOTE =
            T.let(
              :QUOTE,
              HubSpotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          SERVERLESS_FUNCTION =
            T.let(
              :SERVERLESS_FUNCTION,
              HubSpotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          TEMPLATE =
            T.let(
              :TEMPLATE,
              HubSpotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          THEME =
            T.let(
              :THEME,
              HubSpotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          URL_MAPPING =
            T.let(
              :URL_MAPPING,
              HubSpotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          WEB_INTERACTIVE =
            T.let(
              :WEB_INTERACTIVE,
              HubSpotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          WEBSITE_PAGE =
            T.let(
              :WEBSITE_PAGE,
              HubSpotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
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

# typed: strong

module HubspotSDK
  module Models
    module Cms
      class PublicAuditLog < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::PublicAuditLog,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The type of event that took place (CREATED, UPDATED, PUBLISHED, DELETED,
        # UNPUBLISHED).
        sig { returns(HubspotSDK::Cms::PublicAuditLog::Event::TaggedSymbol) }
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
          returns(HubspotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol)
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
            event: HubspotSDK::Cms::PublicAuditLog::Event::OrSymbol,
            full_name: String,
            meta: T.anything,
            object_id_: String,
            object_name: String,
            object_type: HubspotSDK::Cms::PublicAuditLog::ObjectType::OrSymbol,
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
              event: HubspotSDK::Cms::PublicAuditLog::Event::TaggedSymbol,
              full_name: String,
              meta: T.anything,
              object_id_: String,
              object_name: String,
              object_type:
                HubspotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol,
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
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::PublicAuditLog::Event)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED =
            T.let(
              :CREATED,
              HubspotSDK::Cms::PublicAuditLog::Event::TaggedSymbol
            )
          DELETED =
            T.let(
              :DELETED,
              HubspotSDK::Cms::PublicAuditLog::Event::TaggedSymbol
            )
          PUBLISHED =
            T.let(
              :PUBLISHED,
              HubspotSDK::Cms::PublicAuditLog::Event::TaggedSymbol
            )
          RESTORE =
            T.let(
              :RESTORE,
              HubspotSDK::Cms::PublicAuditLog::Event::TaggedSymbol
            )
          UNPUBLISHED =
            T.let(
              :UNPUBLISHED,
              HubspotSDK::Cms::PublicAuditLog::Event::TaggedSymbol
            )
          UPDATED =
            T.let(
              :UPDATED,
              HubspotSDK::Cms::PublicAuditLog::Event::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::PublicAuditLog::Event::TaggedSymbol]
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
              T.all(Symbol, HubspotSDK::Cms::PublicAuditLog::ObjectType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BLOG =
            T.let(
              :BLOG,
              HubspotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          BLOG_POST =
            T.let(
              :BLOG_POST,
              HubspotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          CASE_STUDY =
            T.let(
              :CASE_STUDY,
              HubspotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          CONTENT_SETTINGS =
            T.let(
              :CONTENT_SETTINGS,
              HubspotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          CSS =
            T.let(
              :CSS,
              HubspotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          CTA =
            T.let(
              :CTA,
              HubspotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          DOMAIN =
            T.let(
              :DOMAIN,
              HubspotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          EMAIL =
            T.let(
              :EMAIL,
              HubspotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          FILE =
            T.let(
              :FILE,
              HubspotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          GLOBAL_MODULE =
            T.let(
              :GLOBAL_MODULE,
              HubspotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          HUBDB_TABLE =
            T.let(
              :HUBDB_TABLE,
              HubspotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          JS =
            T.let(
              :JS,
              HubspotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          KNOWLEDGE_BASE =
            T.let(
              :KNOWLEDGE_BASE,
              HubspotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          KNOWLEDGE_BASE_ARTICLE =
            T.let(
              :KNOWLEDGE_BASE_ARTICLE,
              HubspotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          LANDING_PAGE =
            T.let(
              :LANDING_PAGE,
              HubspotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          MODULE =
            T.let(
              :MODULE,
              HubspotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          PODCAST =
            T.let(
              :PODCAST,
              HubspotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          QUOTE =
            T.let(
              :QUOTE,
              HubspotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          SERVERLESS_FUNCTION =
            T.let(
              :SERVERLESS_FUNCTION,
              HubspotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          TEMPLATE =
            T.let(
              :TEMPLATE,
              HubspotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          THEME =
            T.let(
              :THEME,
              HubspotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          URL_MAPPING =
            T.let(
              :URL_MAPPING,
              HubspotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          WEB_INTERACTIVE =
            T.let(
              :WEB_INTERACTIVE,
              HubspotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )
          WEBSITE_PAGE =
            T.let(
              :WEBSITE_PAGE,
              HubspotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::PublicAuditLog::ObjectType::TaggedSymbol
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

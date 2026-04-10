# typed: strong

module HubSpotSDK
  module Models
    CmsAuditLoggingExportSettings = Cms::CmsAuditLoggingExportSettings

    module Cms
      class CmsAuditLoggingExportSettings < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::CmsAuditLoggingExportSettings,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :email

        sig do
          returns(
            HubSpotSDK::Cms::CmsAuditLoggingExportSettings::Format::OrSymbol
          )
        end
        attr_accessor :format_

        sig { returns(Integer) }
        attr_accessor :portal_id

        sig { returns(T::Array[Integer]) }
        attr_accessor :recipient_user_ids

        sig { returns(T::Boolean) }
        attr_accessor :should_mark_export_file_as_sensitive

        sig { returns(String) }
        attr_accessor :type

        sig do
          returns(T.nilable(HubSpotSDK::Cms::CmsAuditLoggingExportFilters))
        end
        attr_reader :filters

        sig do
          params(
            filters: HubSpotSDK::Cms::CmsAuditLoggingExportFilters::OrHash
          ).void
        end
        attr_writer :filters

        sig { returns(T.nilable(Integer)) }
        attr_reader :partition

        sig { params(partition: Integer).void }
        attr_writer :partition

        sig { returns(T.nilable(Integer)) }
        attr_reader :user_id

        sig { params(user_id: Integer).void }
        attr_writer :user_id

        sig { returns(T.nilable(String)) }
        attr_reader :user_time_zone

        sig { params(user_time_zone: String).void }
        attr_writer :user_time_zone

        sig do
          params(
            email: String,
            format_:
              HubSpotSDK::Cms::CmsAuditLoggingExportSettings::Format::OrSymbol,
            portal_id: Integer,
            recipient_user_ids: T::Array[Integer],
            should_mark_export_file_as_sensitive: T::Boolean,
            type: String,
            filters: HubSpotSDK::Cms::CmsAuditLoggingExportFilters::OrHash,
            partition: Integer,
            user_id: Integer,
            user_time_zone: String
          ).returns(T.attached_class)
        end
        def self.new(
          email:,
          format_:,
          portal_id:,
          recipient_user_ids:,
          should_mark_export_file_as_sensitive:,
          type:,
          filters: nil,
          partition: nil,
          user_id: nil,
          user_time_zone: nil
        )
        end

        sig do
          override.returns(
            {
              email: String,
              format_:
                HubSpotSDK::Cms::CmsAuditLoggingExportSettings::Format::OrSymbol,
              portal_id: Integer,
              recipient_user_ids: T::Array[Integer],
              should_mark_export_file_as_sensitive: T::Boolean,
              type: String,
              filters: HubSpotSDK::Cms::CmsAuditLoggingExportFilters,
              partition: Integer,
              user_id: Integer,
              user_time_zone: String
            }
          )
        end
        def to_hash
        end

        module Format
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Cms::CmsAuditLoggingExportSettings::Format
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CSV =
            T.let(
              :CSV,
              HubSpotSDK::Cms::CmsAuditLoggingExportSettings::Format::TaggedSymbol
            )
          XLS =
            T.let(
              :XLS,
              HubSpotSDK::Cms::CmsAuditLoggingExportSettings::Format::TaggedSymbol
            )
          XLSX =
            T.let(
              :XLSX,
              HubSpotSDK::Cms::CmsAuditLoggingExportSettings::Format::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::CmsAuditLoggingExportSettings::Format::TaggedSymbol
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

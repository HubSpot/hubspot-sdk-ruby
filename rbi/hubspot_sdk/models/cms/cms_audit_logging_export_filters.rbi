# typed: strong

module HubspotSDK
  module Models
    CmsAuditLoggingExportFilters = Cms::CmsAuditLoggingExportFilters

    module Cms
      class CmsAuditLoggingExportFilters < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::CmsAuditLoggingExportFilters,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[String]) }
        attr_accessor :object_type

        sig { params(object_type: T::Array[String]).returns(T.attached_class) }
        def self.new(object_type:)
        end

        sig { override.returns({ object_type: T::Array[String] }) }
        def to_hash
        end
      end
    end
  end
end

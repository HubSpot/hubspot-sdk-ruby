# typed: strong

module HubspotSDK
  module Models
    module CRM
      class FilterGroup < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::CRM::FilterGroup, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(T::Array[HubspotSDK::CRM::Filter]) }
        attr_accessor :filters

        sig do
          params(filters: T::Array[HubspotSDK::CRM::Filter::OrHash]).returns(
            T.attached_class
          )
        end
        def self.new(filters:)
        end

        sig { override.returns({ filters: T::Array[HubspotSDK::CRM::Filter] }) }
        def to_hash
        end
      end
    end
  end
end

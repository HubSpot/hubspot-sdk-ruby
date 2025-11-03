# typed: strong

module HubspotSDK
  module Models
    module Crm
      class FilterGroup < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Crm::FilterGroup, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(T::Array[HubspotSDK::Crm::Filter]) }
        attr_accessor :filters

        sig do
          params(filters: T::Array[HubspotSDK::Crm::Filter::OrHash]).returns(
            T.attached_class
          )
        end
        def self.new(filters:)
        end

        sig { override.returns({ filters: T::Array[HubspotSDK::Crm::Filter] }) }
        def to_hash
        end
      end
    end
  end
end

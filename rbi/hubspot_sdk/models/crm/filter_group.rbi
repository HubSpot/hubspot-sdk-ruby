# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class FilterGroup < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Crm::FilterGroup, HubSpotSDK::Internal::AnyHash)
          end

        sig { returns(T::Array[HubSpotSDK::Crm::Filter]) }
        attr_accessor :filters

        sig do
          params(filters: T::Array[HubSpotSDK::Crm::Filter::OrHash]).returns(
            T.attached_class
          )
        end
        def self.new(filters:)
        end

        sig { override.returns({ filters: T::Array[HubSpotSDK::Crm::Filter] }) }
        def to_hash
        end
      end
    end
  end
end

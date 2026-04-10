# typed: strong

module HubSpotSDK
  module Models
    module Automation
      class PublicObjectRequestOptions < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Automation::PublicObjectRequestOptions,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[String]) }
        attr_accessor :properties

        sig { params(properties: T::Array[String]).returns(T.attached_class) }
        def self.new(properties:)
        end

        sig { override.returns({ properties: T::Array[String] }) }
        def to_hash
        end
      end
    end
  end
end

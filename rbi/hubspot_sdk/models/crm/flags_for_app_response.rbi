# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class FlagsForAppResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::FlagsForAppResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[String]) }
        attr_accessor :flags_for_app

        sig do
          params(flags_for_app: T::Array[String]).returns(T.attached_class)
        end
        def self.new(flags_for_app:)
        end

        sig { override.returns({ flags_for_app: T::Array[String] }) }
        def to_hash
        end
      end
    end
  end
end

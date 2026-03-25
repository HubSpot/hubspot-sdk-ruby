# typed: strong

module HubspotSDK
  module Models
    module Settings
      class BatchInputPublicObjectID < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Settings::BatchInputPublicObjectID,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::PublicObjectID]) }
        attr_accessor :inputs

        sig do
          params(inputs: T::Array[HubspotSDK::PublicObjectID::OrHash]).returns(
            T.attached_class
          )
        end
        def self.new(inputs:)
        end

        sig do
          override.returns({ inputs: T::Array[HubspotSDK::PublicObjectID] })
        end
        def to_hash
        end
      end
    end
  end
end

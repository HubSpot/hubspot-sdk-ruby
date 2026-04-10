# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicAssociationMultiArchive < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicAssociationMultiArchive,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Contains the Id of a Public Object
        sig { returns(HubSpotSDK::PublicObjectID) }
        attr_reader :from

        sig { params(from: HubSpotSDK::PublicObjectID::OrHash).void }
        attr_writer :from

        sig { returns(T::Array[HubSpotSDK::PublicObjectID]) }
        attr_accessor :to

        sig do
          params(
            from: HubSpotSDK::PublicObjectID::OrHash,
            to: T::Array[HubSpotSDK::PublicObjectID::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # Contains the Id of a Public Object
          from:,
          to:
        )
        end

        sig do
          override.returns(
            {
              from: HubSpotSDK::PublicObjectID,
              to: T::Array[HubSpotSDK::PublicObjectID]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicAssociationMultiPost < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicAssociationMultiPost,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Contains the Id of a Public Object
        sig { returns(HubSpotSDK::PublicObjectID) }
        attr_reader :from

        sig { params(from: HubSpotSDK::PublicObjectID::OrHash).void }
        attr_writer :from

        # Contains the Id of a Public Object
        sig { returns(HubSpotSDK::PublicObjectID) }
        attr_reader :to

        sig { params(to: HubSpotSDK::PublicObjectID::OrHash).void }
        attr_writer :to

        sig { returns(T::Array[HubSpotSDK::AssociationSpec]) }
        attr_accessor :types

        sig do
          params(
            from: HubSpotSDK::PublicObjectID::OrHash,
            to: HubSpotSDK::PublicObjectID::OrHash,
            types: T::Array[HubSpotSDK::AssociationSpec::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # Contains the Id of a Public Object
          from:,
          # Contains the Id of a Public Object
          to:,
          types:
        )
        end

        sig do
          override.returns(
            {
              from: HubSpotSDK::PublicObjectID,
              to: HubSpotSDK::PublicObjectID,
              types: T::Array[HubSpotSDK::AssociationSpec]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

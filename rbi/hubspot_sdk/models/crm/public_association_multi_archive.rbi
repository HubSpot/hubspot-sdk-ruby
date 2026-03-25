# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicAssociationMultiArchive < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicAssociationMultiArchive,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Contains the Id of a Public Object
        sig { returns(HubspotSDK::PublicObjectID) }
        attr_reader :from

        sig { params(from: HubspotSDK::PublicObjectID::OrHash).void }
        attr_writer :from

        sig { returns(T::Array[HubspotSDK::PublicObjectID]) }
        attr_accessor :to

        sig do
          params(
            from: HubspotSDK::PublicObjectID::OrHash,
            to: T::Array[HubspotSDK::PublicObjectID::OrHash]
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
              from: HubspotSDK::PublicObjectID,
              to: T::Array[HubspotSDK::PublicObjectID]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

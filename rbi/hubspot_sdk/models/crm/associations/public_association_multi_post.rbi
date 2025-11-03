# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Associations
        class PublicAssociationMultiPost < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Associations::PublicAssociationMultiPost,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(HubspotSDK::PublicObjectID) }
          attr_reader :from

          sig { params(from: HubspotSDK::PublicObjectID::OrHash).void }
          attr_writer :from

          sig { returns(HubspotSDK::PublicObjectID) }
          attr_reader :to

          sig { params(to: HubspotSDK::PublicObjectID::OrHash).void }
          attr_writer :to

          sig do
            returns(T::Array[HubspotSDK::Crm::Associations::AssociationSpec1])
          end
          attr_accessor :types

          sig do
            params(
              from: HubspotSDK::PublicObjectID::OrHash,
              to: HubspotSDK::PublicObjectID::OrHash,
              types:
                T::Array[
                  HubspotSDK::Crm::Associations::AssociationSpec1::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(from:, to:, types:)
          end

          sig do
            override.returns(
              {
                from: HubspotSDK::PublicObjectID,
                to: HubspotSDK::PublicObjectID,
                types: T::Array[HubspotSDK::Crm::Associations::AssociationSpec1]
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end

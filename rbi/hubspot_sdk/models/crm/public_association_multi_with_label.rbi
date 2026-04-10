# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicAssociationMultiWithLabel < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicAssociationMultiWithLabel,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Contains the Id of a Public Object
        sig { returns(HubSpotSDK::PublicObjectID) }
        attr_reader :from

        sig { params(from: HubSpotSDK::PublicObjectID::OrHash).void }
        attr_writer :from

        sig do
          returns(T::Array[HubSpotSDK::Crm::MultiAssociatedObjectWithLabel])
        end
        attr_accessor :to

        sig { returns(T.nilable(HubSpotSDK::Paging)) }
        attr_reader :paging

        sig { params(paging: HubSpotSDK::Paging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            from: HubSpotSDK::PublicObjectID::OrHash,
            to:
              T::Array[HubSpotSDK::Crm::MultiAssociatedObjectWithLabel::OrHash],
            paging: HubSpotSDK::Paging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Contains the Id of a Public Object
          from:,
          to:,
          paging: nil
        )
        end

        sig do
          override.returns(
            {
              from: HubSpotSDK::PublicObjectID,
              to: T::Array[HubSpotSDK::Crm::MultiAssociatedObjectWithLabel],
              paging: HubSpotSDK::Paging
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

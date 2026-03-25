# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicAssociationMultiWithLabel < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicAssociationMultiWithLabel,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Contains the Id of a Public Object
        sig { returns(HubspotSDK::PublicObjectID) }
        attr_reader :from

        sig { params(from: HubspotSDK::PublicObjectID::OrHash).void }
        attr_writer :from

        sig do
          returns(T::Array[HubspotSDK::Crm::MultiAssociatedObjectWithLabel])
        end
        attr_accessor :to

        sig { returns(T.nilable(HubspotSDK::Paging)) }
        attr_reader :paging

        sig { params(paging: HubspotSDK::Paging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            from: HubspotSDK::PublicObjectID::OrHash,
            to:
              T::Array[HubspotSDK::Crm::MultiAssociatedObjectWithLabel::OrHash],
            paging: HubspotSDK::Paging::OrHash
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
              from: HubspotSDK::PublicObjectID,
              to: T::Array[HubspotSDK::Crm::MultiAssociatedObjectWithLabel],
              paging: HubspotSDK::Paging
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

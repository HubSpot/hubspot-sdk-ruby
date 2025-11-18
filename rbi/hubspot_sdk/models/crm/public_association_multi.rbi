# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicAssociationMulti < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicAssociationMulti,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubspotSDK::PublicObjectID) }
        attr_reader :from

        sig { params(from: HubspotSDK::PublicObjectID::OrHash).void }
        attr_writer :from

        # The IDs of objects that are associated with the object identified by the ID in
        # 'from'.
        sig { returns(T::Array[HubspotSDK::Crm::AssociatedID]) }
        attr_accessor :to

        sig { returns(T.nilable(HubspotSDK::Paging)) }
        attr_reader :paging

        sig { params(paging: HubspotSDK::Paging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            from: HubspotSDK::PublicObjectID::OrHash,
            to: T::Array[HubspotSDK::Crm::AssociatedID::OrHash],
            paging: HubspotSDK::Paging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          from:,
          # The IDs of objects that are associated with the object identified by the ID in
          # 'from'.
          to:,
          paging: nil
        )
        end

        sig do
          override.returns(
            {
              from: HubspotSDK::PublicObjectID,
              to: T::Array[HubspotSDK::Crm::AssociatedID],
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

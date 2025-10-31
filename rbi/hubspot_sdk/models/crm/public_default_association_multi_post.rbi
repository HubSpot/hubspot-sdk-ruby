# typed: strong

module HubspotSDK
  module Models
    module CRM
      class PublicDefaultAssociationMultiPost < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::PublicDefaultAssociationMultiPost,
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
          params(
            from: HubspotSDK::PublicObjectID::OrHash,
            to: HubspotSDK::PublicObjectID::OrHash
          ).returns(T.attached_class)
        end
        def self.new(from:, to:)
        end

        sig do
          override.returns(
            { from: HubspotSDK::PublicObjectID, to: HubspotSDK::PublicObjectID }
          )
        end
        def to_hash
        end
      end
    end
  end
end

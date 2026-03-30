# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class PublicCampaignBatchUpdateItem < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::PublicCampaignBatchUpdateItem,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the campaign to be updated.
        sig { returns(String) }
        attr_accessor :id

        # A set of key-value pairs representing the properties to be updated for the
        # campaign.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :properties

        sig do
          params(id: String, properties: T::Hash[Symbol, String]).returns(
            T.attached_class
          )
        end
        def self.new(
          # The unique identifier for the campaign to be updated.
          id:,
          # A set of key-value pairs representing the properties to be updated for the
          # campaign.
          properties:
        )
        end

        sig do
          override.returns({ id: String, properties: T::Hash[Symbol, String] })
        end
        def to_hash
        end
      end
    end
  end
end

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

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :properties

        sig do
          params(id: String, properties: T::Hash[Symbol, String]).returns(
            T.attached_class
          )
        end
        def self.new(id:, properties:)
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

# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class PublicCampaignInput < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::PublicCampaignInput,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :properties

        sig do
          params(properties: T::Hash[Symbol, String]).returns(T.attached_class)
        end
        def self.new(properties:)
        end

        sig { override.returns({ properties: T::Hash[Symbol, String] }) }
        def to_hash
        end
      end
    end
  end
end

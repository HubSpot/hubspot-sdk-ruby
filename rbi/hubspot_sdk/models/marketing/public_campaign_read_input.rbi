# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class PublicCampaignReadInput < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::PublicCampaignReadInput,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The unique identifier for a campaign.
        sig { returns(String) }
        attr_accessor :id

        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for a campaign.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end
    end
  end
end

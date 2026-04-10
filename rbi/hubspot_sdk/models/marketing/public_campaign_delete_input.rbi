# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class PublicCampaignDeleteInput < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::PublicCampaignDeleteInput,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the campaign to be deleted.
        sig { returns(String) }
        attr_accessor :id

        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the campaign to be deleted.
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

# typed: strong

module HubSpotSDK
  module Models
    MarketingEventPublicObjectIDDeleteRequest =
      Marketing::MarketingEventPublicObjectIDDeleteRequest

    module Marketing
      class MarketingEventPublicObjectIDDeleteRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::MarketingEventPublicObjectIDDeleteRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The internal ID of the marketing event in HubSpot
        sig { returns(String) }
        attr_accessor :object_id_

        sig { params(object_id_: String).returns(T.attached_class) }
        def self.new(
          # The internal ID of the marketing event in HubSpot
          object_id_:
        )
        end

        sig { override.returns({ object_id_: String }) }
        def to_hash
        end
      end
    end
  end
end

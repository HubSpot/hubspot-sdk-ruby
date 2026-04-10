# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class SubscriberVidResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::SubscriberVidResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The internal ID of the contact
        sig { returns(Integer) }
        attr_accessor :vid

        sig { params(vid: Integer).returns(T.attached_class) }
        def self.new(
          # The internal ID of the contact
          vid:
        )
        end

        sig { override.returns({ vid: Integer }) }
        def to_hash
        end
      end
    end
  end
end

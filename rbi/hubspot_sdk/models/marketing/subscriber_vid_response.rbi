# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class SubscriberVidResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::SubscriberVidResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :vid

        sig { params(vid: Integer).returns(T.attached_class) }
        def self.new(vid:)
        end

        sig { override.returns({ vid: Integer }) }
        def to_hash
        end
      end
    end
  end
end

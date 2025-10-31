# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class SubscriberEmailResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::SubscriberEmailResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :email

        sig { returns(Integer) }
        attr_accessor :vid

        sig { params(email: String, vid: Integer).returns(T.attached_class) }
        def self.new(email:, vid:)
        end

        sig { override.returns({ email: String, vid: Integer }) }
        def to_hash
        end
      end
    end
  end
end

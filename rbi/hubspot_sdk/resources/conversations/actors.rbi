# typed: strong

module HubspotSDK
  module Resources
    class Conversations
      class Actors
        sig do
          params(
            inputs: T::Array[String],
            property: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Conversations::BatchResponsePublicActor)
        end
        def batch_read(
          # Body param: Strings to input.
          inputs:,
          # Query param
          property: nil,
          request_options: {}
        )
        end

        sig do
          params(
            actor_id: String,
            property: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Conversations::PublicActor::Variants)
        end
        def get(actor_id, property: nil, request_options: {})
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end

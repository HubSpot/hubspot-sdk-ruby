# typed: strong

module HubspotSDK
  module Resources
    class Conversations
      class Actors
        # Resolve a set of `ActorId`s to the underlying actors/participants.
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
          # Query param: A specific property to include in the actor response.
          property: nil,
          request_options: {}
        )
        end

        # Retrieve details of a single actor using the actor ID.
        sig do
          params(
            actor_id: String,
            property: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Conversations::PublicActor::Variants)
        end
        def get(
          # The unique ID of the actor.
          actor_id,
          # A specific property to include in the actor response.
          property: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end

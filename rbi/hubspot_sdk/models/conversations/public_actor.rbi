# typed: strong

module HubspotSDK
  module Models
    module Conversations
      module PublicActor
        extend HubspotSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::AgentActor,
              HubspotSDK::Conversations::BotActor,
              HubspotSDK::Conversations::IntegratorActor,
              HubspotSDK::Conversations::SystemActor,
              HubspotSDK::Conversations::VisitorActor,
              HubspotSDK::Conversations::EmailActor,
              HubspotSDK::Conversations::LlmActor
            )
          end

        sig do
          override.returns(
            T::Array[HubspotSDK::Conversations::PublicActor::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end

# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      module PublicActor
        extend HubspotSDK::Internal::Type::Union

        variant -> { HubspotSDK::Conversations::AgentActor }

        variant -> { HubspotSDK::Conversations::BotActor }

        variant -> { HubspotSDK::Conversations::IntegratorActor }

        variant -> { HubspotSDK::Conversations::SystemActor }

        variant -> { HubspotSDK::Conversations::VisitorActor }

        variant -> { HubspotSDK::Conversations::EmailActor }

        variant -> { HubspotSDK::Conversations::LlmActor }

        # @!method self.variants
        #   @return [Array(HubspotSDK::Models::Conversations::AgentActor, HubspotSDK::Models::Conversations::BotActor, HubspotSDK::Models::Conversations::IntegratorActor, HubspotSDK::Models::Conversations::SystemActor, HubspotSDK::Models::Conversations::VisitorActor, HubspotSDK::Models::Conversations::EmailActor, HubspotSDK::Models::Conversations::LlmActor)]
      end
    end
  end
end

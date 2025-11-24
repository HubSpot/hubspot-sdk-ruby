# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Conversations::ActorsTest < HubspotSDK::Test::ResourceTest
  def test_batch_read_required_params
    skip("Prism tests are disabled")

    response = @hubspot.conversations.actors.batch_read(inputs: ["string"])

    assert_pattern do
      response => HubspotSDK::Conversations::BatchResponsePublicActor
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Conversations::PublicActor]),
        started_at: Time,
        status: HubspotSDK::Conversations::BatchResponsePublicActor::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hubspot.conversations.actors.get("actorId")

    assert_pattern do
      response => HubspotSDK::Conversations::PublicActor
    end

    assert_pattern do
      case response
      in HubspotSDK::Conversations::AgentActor
      in HubspotSDK::Conversations::BotActor
      in HubspotSDK::Conversations::IntegratorActor
      in HubspotSDK::Conversations::SystemActor
      in HubspotSDK::Conversations::VisitorActor
      in HubspotSDK::Conversations::EmailActor
      in HubspotSDK::Conversations::LlmActor
      end
    end
  end
end

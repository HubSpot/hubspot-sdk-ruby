# frozen_string_literal: true

require_relative "../../../../test_helper"

class HubspotSDK::Test::Resources::Cms::Hubdb::Rows::BatchTest < HubspotSDK::Test::ResourceTest
  def test_clone_batch_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.hubdb.rows.batch.clone_batch("tableIdOrName", inputs: [{id: "id"}])

    assert_pattern do
      response => HubspotSDK::Cms::BatchResponseHubDBTableRowV3
    end

    assert_pattern do
      response => {
        completed_at: Time | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::HubDBTableRowV3]) | nil,
        started_at: Time | nil,
        status: HubspotSDK::Cms::BatchResponseHubDBTableRowV3::Status | nil
      }
    end
  end

  def test_create_batch_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.hubdb.rows.batch.create_batch("tableIdOrName", inputs: [{values: {foo: {}}}])

    assert_pattern do
      response => HubspotSDK::Cms::BatchResponseHubDBTableRowV3
    end

    assert_pattern do
      response => {
        completed_at: Time | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::HubDBTableRowV3]) | nil,
        started_at: Time | nil,
        status: HubspotSDK::Cms::BatchResponseHubDBTableRowV3::Status | nil
      }
    end
  end

  def test_get_batch_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.hubdb.rows.batch.get_batch("tableIdOrName", inputs: ["string"])

    assert_pattern do
      response => HubspotSDK::Cms::BatchResponseHubDBTableRowV3
    end

    assert_pattern do
      response => {
        completed_at: Time | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::HubDBTableRowV3]) | nil,
        started_at: Time | nil,
        status: HubspotSDK::Cms::BatchResponseHubDBTableRowV3::Status | nil
      }
    end
  end

  def test_get_draft_batch_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.hubdb.rows.batch.get_draft_batch("tableIdOrName", inputs: ["string"])

    assert_pattern do
      response => HubspotSDK::Cms::BatchResponseHubDBTableRowV3
    end

    assert_pattern do
      response => {
        completed_at: Time | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::HubDBTableRowV3]) | nil,
        started_at: Time | nil,
        status: HubspotSDK::Cms::BatchResponseHubDBTableRowV3::Status | nil
      }
    end
  end

  def test_purge_batch_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.hubdb.rows.batch.purge_batch("tableIdOrName", inputs: ["string"])

    assert_pattern do
      response => nil
    end
  end

  def test_replace_batch_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.hubdb.rows.batch.replace_batch("tableIdOrName", inputs: [{id: "id", values: {foo: {}}}])

    assert_pattern do
      response => HubspotSDK::Cms::BatchResponseHubDBTableRowV3
    end

    assert_pattern do
      response => {
        completed_at: Time | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::HubDBTableRowV3]) | nil,
        started_at: Time | nil,
        status: HubspotSDK::Cms::BatchResponseHubDBTableRowV3::Status | nil
      }
    end
  end

  def test_update_batch_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.hubdb.rows.batch.update_batch("tableIdOrName", inputs: [{id: "id", values: {foo: {}}}])

    assert_pattern do
      response => HubspotSDK::Cms::BatchResponseHubDBTableRowV3
    end

    assert_pattern do
      response => {
        completed_at: Time | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::HubDBTableRowV3]) | nil,
        started_at: Time | nil,
        status: HubspotSDK::Cms::BatchResponseHubDBTableRowV3::Status | nil
      }
    end
  end
end

# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Settings::UsersTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.settings.users.create(email: "email", send_welcome_email: true)

    assert_pattern do
      response => HubspotSDK::Settings::PublicUser
    end

    assert_pattern do
      response => {
        id: String,
        email: String,
        role_ids: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        super_admin: HubspotSDK::Internal::Type::Boolean,
        first_name: String | nil,
        last_name: String | nil,
        primary_team_id: String | nil,
        role_id: String | nil,
        secondary_team_ids: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        send_welcome_email: HubspotSDK::Internal::Type::Boolean | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @hubspot.settings.users.update("userId")

    assert_pattern do
      response => HubspotSDK::Settings::PublicUser
    end

    assert_pattern do
      response => {
        id: String,
        email: String,
        role_ids: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        super_admin: HubspotSDK::Internal::Type::Boolean,
        first_name: String | nil,
        last_name: String | nil,
        primary_team_id: String | nil,
        role_id: String | nil,
        secondary_team_ids: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        send_welcome_email: HubspotSDK::Internal::Type::Boolean | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.settings.users.list

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Settings::PublicUser
    end

    assert_pattern do
      row => {
        id: String,
        email: String,
        role_ids: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        super_admin: HubspotSDK::Internal::Type::Boolean,
        first_name: String | nil,
        last_name: String | nil,
        primary_team_id: String | nil,
        role_id: String | nil,
        secondary_team_ids: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        send_welcome_email: HubspotSDK::Internal::Type::Boolean | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @hubspot.settings.users.delete("userId")

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.settings.users.get("userId")

    assert_pattern do
      response => HubspotSDK::Settings::PublicUser
    end

    assert_pattern do
      response => {
        id: String,
        email: String,
        role_ids: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        super_admin: HubspotSDK::Internal::Type::Boolean,
        first_name: String | nil,
        last_name: String | nil,
        primary_team_id: String | nil,
        role_id: String | nil,
        secondary_team_ids: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        send_welcome_email: HubspotSDK::Internal::Type::Boolean | nil
      }
    end
  end

  def test_list_roles
    skip("Mock server tests are disabled")

    response = @hubspot.settings.users.list_roles

    assert_pattern do
      response => HubspotSDK::Settings::CollectionResponsePublicPermissionSetNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Settings::PublicPermissionSet])
      }
    end
  end

  def test_list_teams
    skip("Mock server tests are disabled")

    response = @hubspot.settings.users.list_teams

    assert_pattern do
      response => HubspotSDK::Settings::CollectionResponsePublicTeamNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Settings::PublicTeam])
      }
    end
  end
end

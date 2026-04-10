# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Scheduler::Meetings::BasicTest < HubSpotSDK::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.scheduler.meetings.basic.list

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Scheduler::ExternalLinkMetadata
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        default_link: HubSpotSDK::Internal::Type::Boolean,
        link: String,
        organizer_user_id: String,
        slug: String,
        type: HubSpotSDK::Scheduler::ExternalLinkMetadata::Type,
        user_ids_of_link_members: ^(HubSpotSDK::Internal::Type::ArrayOf[String]),
        name: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_get_availability_by_slug_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.scheduler.meetings.basic.get_availability_by_slug("slug", timezone: "timezone")

    assert_pattern do
      response => HubSpotSDK::Scheduler::ExternalLinkAvailabilityAndBusyTimes
    end

    assert_pattern do
      response => {
        all_users_busy_times: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Scheduler::ExternalUserBusyTimes]),
        link_availability: HubSpotSDK::Scheduler::ExternalLinkAvailability | nil
      }
    end
  end

  def test_get_booking_info_by_slug_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.scheduler.meetings.basic.get_booking_info_by_slug("slug", timezone: "timezone")

    assert_pattern do
      response => HubSpotSDK::Scheduler::ExternalBookingInfo
    end

    assert_pattern do
      response => {
        all_users_busy_times: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Scheduler::ExternalUserBusyTimes]),
        custom_params: HubSpotSDK::Scheduler::ExternalMeetingsLinkSettings,
        is_offline: HubSpotSDK::Internal::Type::Boolean,
        link_id: String,
        link_type: HubSpotSDK::Scheduler::ExternalBookingInfo::LinkType,
        branding_metadata: HubSpotSDK::Scheduler::ExternalBrandingMetadata | nil,
        link_availability: HubSpotSDK::Scheduler::ExternalLinkAvailability | nil
      }
    end
  end
end

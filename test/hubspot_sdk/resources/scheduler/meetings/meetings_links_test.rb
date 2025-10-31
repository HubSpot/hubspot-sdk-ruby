# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Scheduler::Meetings::MeetingsLinksTest < HubspotSDK::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @hub_spot.scheduler.meetings.meetings_links.list

    assert_pattern do
      response => HubspotSDK::Scheduler::CollectionResponseWithTotalExternalLinkMetadataForwardPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Scheduler::ExternalLinkMetadata]),
        total: Integer,
        paging: HubspotSDK::ForwardPaging | nil
      }
    end
  end

  def test_book_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.scheduler.meetings.meetings_links.book(
        duration: 0,
        email: "email",
        first_name: "firstName",
        form_fields: [{name: "name", value: "value"}],
        last_name: "lastName",
        legal_consent_responses: [{communicationTypeId: "communicationTypeId", consented: true}],
        likely_available_user_ids: ["string"],
        slug: "slug",
        start_time: "2019-12-27T18:11:19.117Z"
      )

    assert_pattern do
      response => HubspotSDK::Scheduler::ExternalMeetingBookingResponse
    end

    assert_pattern do
      response => {
        booking_timezone: String,
        calendar_event_id: String,
        contact_id: String,
        duration: Integer,
        end_: Time,
        form_fields: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Scheduler::ExternalValidatedFormField]),
        guest_emails: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        is_offline: HubspotSDK::Internal::Type::Boolean,
        legal_consent_responses: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Scheduler::ExternalLegalConsentResponse]),
        start: Time,
        subject: String,
        locale: String | nil,
        location: String | nil,
        web_conference_meeting_id: String | nil,
        web_conference_url: String | nil
      }
    end
  end

  def test_get_availability_by_slug
    skip("Prism tests are disabled")

    response = @hub_spot.scheduler.meetings.meetings_links.get_availability_by_slug("slug")

    assert_pattern do
      response => HubspotSDK::Scheduler::ExternalLinkAvailabilityAndBusyTimes
    end

    assert_pattern do
      response => {
        all_users_busy_times: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Scheduler::ExternalUserBusyTimes]),
        link_availability: HubspotSDK::Scheduler::ExternalLinkAvailability | nil
      }
    end
  end

  def test_get_booking_info_by_slug
    skip("Prism tests are disabled")

    response = @hub_spot.scheduler.meetings.meetings_links.get_booking_info_by_slug("slug")

    assert_pattern do
      response => HubspotSDK::Scheduler::ExternalBookingInfo
    end

    assert_pattern do
      response => {
        all_users_busy_times: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Scheduler::ExternalUserBusyTimes]),
        custom_params: HubspotSDK::Scheduler::ExternalMeetingsLinkSettings,
        is_offline: HubspotSDK::Internal::Type::Boolean,
        link_id: String,
        link_type: HubspotSDK::Scheduler::ExternalBookingInfo::LinkType,
        branding_metadata: HubspotSDK::Scheduler::ExternalBrandingMetadata | nil,
        link_availability: HubspotSDK::Scheduler::ExternalLinkAvailability | nil
      }
    end
  end
end

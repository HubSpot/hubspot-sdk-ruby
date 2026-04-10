# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        # @see HubSpotSDK::Resources::Crm::Extensions::Calling#create_recording_settings
        class RecordingSettingsResponse < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute url_to_retrieve_authed_recording
          #   The URL used to retrieve authenticated call recordings.
          #
          #   @return [String]
          required :url_to_retrieve_authed_recording, String, api_name: :urlToRetrieveAuthedRecording

          # @!method initialize(url_to_retrieve_authed_recording:)
          #   @param url_to_retrieve_authed_recording [String] The URL used to retrieve authenticated call recordings.
        end
      end
    end
  end
end

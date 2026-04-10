# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class RecordingSettingsPatchRequest < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute url_to_retrieve_authed_recording
          #   The URL used to access authenticated call recordings.
          #
          #   @return [String, nil]
          optional :url_to_retrieve_authed_recording, String, api_name: :urlToRetrieveAuthedRecording

          # @!method initialize(url_to_retrieve_authed_recording: nil)
          #   @param url_to_retrieve_authed_recording [String] The URL used to access authenticated call recordings.
        end
      end
    end
  end
end

# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Associations
        class ReportCreationResponse < HubspotSDK::Internal::Type::BaseModel
          # @!attribute enqueue_time
          #
          #   @return [HubspotSDK::Models::CRM::Associations::DateTime]
          required :enqueue_time, -> { HubspotSDK::CRM::Associations::DateTime }, api_name: :enqueueTime

          # @!attribute user_email
          #
          #   @return [String]
          required :user_email, String, api_name: :userEmail

          # @!attribute user_id
          #
          #   @return [Integer]
          required :user_id, Integer, api_name: :userId

          # @!method initialize(enqueue_time:, user_email:, user_id:)
          #   @param enqueue_time [HubspotSDK::Models::CRM::Associations::DateTime]
          #   @param user_email [String]
          #   @param user_id [Integer]
        end
      end
    end
  end
end

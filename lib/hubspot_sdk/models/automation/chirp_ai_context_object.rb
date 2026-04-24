# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class ChirpAIContextObject < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute application_group
        #   The group to which the application belongs.
        #
        #   @return [String]
        required :application_group, String, api_name: :applicationGroup

        # @!attribute application_id
        #   The identifier for the application associated with the context.
        #
        #   @return [String]
        required :application_id, String, api_name: :applicationId

        # @!attribute metadata
        #   Additional metadata related to the context, represented as key-value pairs.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, HubSpotSDK::Internal::Type::HashOf[String]

        # @!attribute otel_context_holder
        #   Holds OpenTelemetry context information as key-value pairs.
        #
        #   @return [Hash{Symbol=>String}]
        required :otel_context_holder,
                 HubSpotSDK::Internal::Type::HashOf[String],
                 api_name: :otelContextHolder

        # @!attribute unstructured_sources
        #
        #   @return [Array<Symbol, HubSpotSDK::Models::Automation::ChirpAIContextObject::UnstructuredSource>]
        required :unstructured_sources,
                 -> {
                   HubSpotSDK::Internal::Type::ArrayOf[enum: HubSpotSDK::Automation::ChirpAIContextObject::UnstructuredSource]
                 },
                 api_name: :unstructuredSources

        # @!attribute compliance_ids
        #
        #   @return [HubSpotSDK::Models::Automation::ComplianceIDs, nil]
        optional :compliance_ids, -> { HubSpotSDK::Automation::ComplianceIDs }, api_name: :complianceIds

        # @!attribute conversation_id
        #
        #   @return [String, nil]
        optional :conversation_id, String, api_name: :conversationId

        # @!attribute feature_id
        #   The identifier for the feature associated with the context.
        #
        #   @return [String, nil]
        optional :feature_id, String, api_name: :featureId

        # @!attribute inference_id
        #   The identifier for the inference associated with the context.
        #
        #   @return [String, nil]
        optional :inference_id, String, api_name: :inferenceId

        # @!attribute trajectory_id
        #   The identifier for the trajectory, formatted as a UUID.
        #
        #   @return [String, nil]
        optional :trajectory_id, String, api_name: :trajectoryId

        # @!method initialize(application_group:, application_id:, metadata:, otel_context_holder:, unstructured_sources:, compliance_ids: nil, conversation_id: nil, feature_id: nil, inference_id: nil, trajectory_id: nil)
        #   @param application_group [String] The group to which the application belongs.
        #
        #   @param application_id [String] The identifier for the application associated with the context.
        #
        #   @param metadata [Hash{Symbol=>String}] Additional metadata related to the context, represented as key-value pairs.
        #
        #   @param otel_context_holder [Hash{Symbol=>String}] Holds OpenTelemetry context information as key-value pairs.
        #
        #   @param unstructured_sources [Array<Symbol, HubSpotSDK::Models::Automation::ChirpAIContextObject::UnstructuredSource>]
        #
        #   @param compliance_ids [HubSpotSDK::Models::Automation::ComplianceIDs]
        #
        #   @param conversation_id [String]
        #
        #   @param feature_id [String] The identifier for the feature associated with the context.
        #
        #   @param inference_id [String] The identifier for the inference associated with the context.
        #
        #   @param trajectory_id [String] The identifier for the trajectory, formatted as a UUID.

        module UnstructuredSource
          extend HubSpotSDK::Internal::Type::Enum

          NONE = :NONE
          USER_INPUT = :USER_INPUT
          LOGGED_EMAIL = :LOGGED_EMAIL
          VIDEO_CALL = :VIDEO_CALL
          AUDIO_CALL = :AUDIO_CALL
          CALL_TRANSCRIPT = :CALL_TRANSCRIPT
          MEETING_TRANSCRIPT = :MEETING_TRANSCRIPT
          FORMS = :FORMS
          FEEDBACK_SURVEY = :FEEDBACK_SURVEY
          PDF = :PDF
          QUOTE = :QUOTE
          INVOICE = :INVOICE
          OTHER_ATTACHMENT_DOC = :OTHER_ATTACHMENT_DOC
          WHATSAPP = :WHATSAPP
          SMS = :SMS
          CHAT = :CHAT
          FACEBOOK_MESSENGER = :FACEBOOK_MESSENGER
          CUSTOM_CHANNEL_OR_API = :CUSTOM_CHANNEL_OR_API
          MANY = :MANY
          NOTE = :NOTE
          DERIVED = :DERIVED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end

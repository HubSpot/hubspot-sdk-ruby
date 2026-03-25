# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Objects
        # @see HubspotSDK::Resources::Crm::Objects::Notes#delete
        class NoteDeleteParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute note_id
          #
          #   @return [String]
          required :note_id, String

          # @!method initialize(note_id:, request_options: {})
          #   @param note_id [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end

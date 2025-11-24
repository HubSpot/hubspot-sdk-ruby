# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Objects
        module Projects
          # @see HubspotSDK::Resources::Crm::Objects::Projects::Associations#update
          class AssociationUpdateParams < HubspotSDK::Internal::Type::BaseModel
            extend HubspotSDK::Internal::Type::RequestParameters::Converter
            include HubspotSDK::Internal::Type::RequestParameters

            # @!attribute project_id
            #
            #   @return [String]
            required :project_id, String

            # @!attribute to_object_type
            #
            #   @return [String]
            required :to_object_type, String

            # @!attribute to_object_id
            #
            #   @return [String]
            required :to_object_id, String

            # @!method initialize(project_id:, to_object_type:, to_object_id:, request_options: {})
            #   @param project_id [String]
            #   @param to_object_type [String]
            #   @param to_object_id [String]
            #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end

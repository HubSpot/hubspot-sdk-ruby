# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Objects
        module Projects
          # @see HubspotSDK::Resources::Crm::Objects::Projects::Associations#list
          class AssociationListParams < HubspotSDK::Internal::Type::BaseModel
            extend HubspotSDK::Internal::Type::RequestParameters::Converter
            include HubspotSDK::Internal::Type::RequestParameters

            # @!attribute project_id
            #
            #   @return [String]
            required :project_id, String

            # @!attribute after
            #
            #   @return [String, nil]
            optional :after, String

            # @!attribute include_fa
            #
            #   @return [Boolean, nil]
            optional :include_fa, HubspotSDK::Internal::Type::Boolean

            # @!attribute limit
            #
            #   @return [Integer, nil]
            optional :limit, Integer

            # @!method initialize(project_id:, after: nil, include_fa: nil, limit: nil, request_options: {})
            #   @param project_id [String]
            #   @param after [String]
            #   @param include_fa [Boolean]
            #   @param limit [Integer]
            #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end

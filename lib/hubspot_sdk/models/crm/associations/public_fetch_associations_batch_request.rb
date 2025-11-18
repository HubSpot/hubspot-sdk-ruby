# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Associations
        class PublicFetchAssociationsBatchRequest < HubspotSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The unique identifier for the object whose associations are being fetched.
          #
          #   @return [String]
          required :id, String

          # @!attribute after
          #   A paging cursor token used to retrieve the next set of results in a paginated
          #   response.
          #
          #   @return [String, nil]
          optional :after, String

          # @!method initialize(id:, after: nil)
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Crm::Associations::PublicFetchAssociationsBatchRequest} for
          #   more details.
          #
          #   @param id [String] The unique identifier for the object whose associations are being fetched.
          #
          #   @param after [String] A paging cursor token used to retrieve the next set of results in a paginated re
        end
      end
    end
  end
end

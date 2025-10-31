# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Associations
        class PreviousPage1 < HubspotSDK::Internal::Type::BaseModel
          # @!attribute before
          #   A paging cursor token for retrieving previous pages.
          #
          #   @return [String]
          required :before, String

          # @!attribute link
          #   A URL that can be used to retrieve the previous pages' results.
          #
          #   @return [String, nil]
          optional :link, String

          # @!method initialize(before:, link: nil)
          #   specifies the paging information needed to retrieve the previous set of results
          #   in a paginated API response
          #
          #   @param before [String] A paging cursor token for retrieving previous pages.
          #
          #   @param link [String] A URL that can be used to retrieve the previous pages' results.
        end
      end
    end
  end
end

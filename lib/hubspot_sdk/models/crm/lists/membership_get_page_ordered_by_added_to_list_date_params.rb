# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Lists
        # @see HubspotSDK::Resources::Crm::Lists::Memberships#get_page_ordered_by_added_to_list_date
        class MembershipGetPageOrderedByAddedToListDateParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute after
          #   The paging offset token for the page that comes `after` the previously requested
          #   records.
          #
          #   If provided, then the records in the response will be the records following the
          #   offset, sorted in _ascending_ order. Takes precedence over the `before` offset.
          #
          #   @return [String, nil]
          optional :after, String

          # @!attribute before
          #   The paging offset token for the page that comes `before` the previously
          #   requested records.
          #
          #   If provided, then the records in the response will be the records preceding the
          #   offset, sorted in _descending_ order.
          #
          #   @return [String, nil]
          optional :before, String

          # @!attribute limit
          #   The number of records to return in the response. The maximum `limit` is 250.
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!method initialize(after: nil, before: nil, limit: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Crm::Lists::MembershipGetPageOrderedByAddedToListDateParams}
          #   for more details.
          #
          #   @param after [String] The paging offset token for the page that comes `after` the previously requested
          #
          #   @param before [String] The paging offset token for the page that comes `before` the previously requeste
          #
          #   @param limit [Integer] The number of records to return in the response. The maximum `limit` is 250.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end

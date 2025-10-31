# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::Forms#list
      class FormListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute after
        #   The paging cursor token of the last successfully read resource will be returned
        #   as the `paging.next.after` JSON property of a paged response containing more
        #   results.
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute archived
        #   Whether to return only results that have been archived.
        #
        #   @return [Boolean, nil]
        optional :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute form_types
        #   The form types to be included in the results.
        #
        #   @return [Array<Symbol, HubspotSDK::Models::Marketing::FormListParams::FormType>, nil]
        optional :form_types,
                 -> { HubspotSDK::Internal::Type::ArrayOf[enum: HubspotSDK::Marketing::FormListParams::FormType] }

        # @!attribute limit
        #   The maximum number of results to display per page.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!method initialize(after: nil, archived: nil, form_types: nil, limit: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::FormListParams} for more details.
        #
        #   @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        #   @param archived [Boolean] Whether to return only results that have been archived.
        #
        #   @param form_types [Array<Symbol, HubspotSDK::Models::Marketing::FormListParams::FormType>] The form types to be included in the results.
        #
        #   @param limit [Integer] The maximum number of results to display per page.
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

        module FormType
          extend HubspotSDK::Internal::Type::Enum

          HUBSPOT = :hubspot
          CAPTURED = :captured
          FLOW = :flow
          BLOG_COMMENT = :blog_comment
          ALL = :all

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end

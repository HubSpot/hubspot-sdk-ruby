# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicWebinarFilter < HubspotSDK::Internal::Type::BaseModel
        # @!attribute filter_type
        #   Indicates the type of filter, (WEBINAR).
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicWebinarFilter::FilterType]
        required :filter_type,
                 enum: -> { HubspotSDK::Crm::PublicWebinarFilter::FilterType },
                 api_name: :filterType

        # @!attribute operator
        #   Specifies the operation to be performed by the filter (HAS_WEBINAR_REGISTRATION,
        #   NOT_HAS_WEBINAR_REGISTRATION, HAS_WEBINAR_ATTENDANCE,
        #   NOT_HAS_WEBINAR_ATTENDANCE).
        #
        #   @return [String]
        required :operator, String

        # @!attribute webinar_id
        #   The ID of the webinar associated with the filter.
        #
        #   @return [String, nil]
        optional :webinar_id, String, api_name: :webinarId

        # @!method initialize(filter_type:, operator:, webinar_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicWebinarFilter} for more details.
        #
        #   @param filter_type [Symbol, HubspotSDK::Models::Crm::PublicWebinarFilter::FilterType] Indicates the type of filter, (WEBINAR).
        #
        #   @param operator [String] Specifies the operation to be performed by the filter (HAS_WEBINAR_REGISTRATION,
        #
        #   @param webinar_id [String] The ID of the webinar associated with the filter.

        # Indicates the type of filter, (WEBINAR).
        #
        # @see HubspotSDK::Models::Crm::PublicWebinarFilter#filter_type
        module FilterType
          extend HubspotSDK::Internal::Type::Enum

          WEBINAR = :WEBINAR

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end

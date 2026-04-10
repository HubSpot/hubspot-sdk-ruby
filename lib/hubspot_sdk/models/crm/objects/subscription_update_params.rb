# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Objects
        # @see HubSpotSDK::Resources::Crm::Objects::Subscriptions#update
        class SubscriptionUpdateParams < HubSpotSDK::Models::Crm::SimplePublicObjectInput
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute subscription_id
          #
          #   @return [String]
          required :subscription_id, String

          # @!attribute id_property
          #   The name of a property whose values are unique for this object type
          #
          #   @return [String, nil]
          optional :id_property, String

          # @!method initialize(subscription_id:, id_property: nil, request_options: {})
          #   @param subscription_id [String]
          #
          #   @param id_property [String] The name of a property whose values are unique for this object type
          #
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end

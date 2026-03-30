# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      # @see HubspotSDK::Resources::Events::Occurrences#list
      class OccurrenceListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [Array<String>, nil]
        optional :id, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute after
        #   The paging cursor token of the last successfully read resource will be returned
        #   as the `paging.next.after` JSON property of a paged response containing more
        #   results.
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute before
        #
        #   @return [String, nil]
        optional :before, String

        # @!attribute event_type
        #
        #   @return [String, nil]
        optional :event_type, String

        # @!attribute limit
        #   The maximum number of results to display per page.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute object_id_
        #
        #   @return [Integer, nil]
        optional :object_id_, Integer

        # @!attribute object_property
        #
        #   @return [HubspotSDK::Models::Events::OccurrenceListParams::ObjectProperty, nil]
        optional :object_property, -> { HubspotSDK::Events::OccurrenceListParams::ObjectProperty }

        # @!attribute object_type
        #
        #   @return [String, nil]
        optional :object_type, String

        # @!attribute occurred_after
        #
        #   @return [Time, nil]
        optional :occurred_after, Time

        # @!attribute occurred_before
        #
        #   @return [Time, nil]
        optional :occurred_before, Time

        # @!attribute properties
        #
        #   @return [Array<String>, nil]
        optional :properties, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute property
        #
        #   @return [HubspotSDK::Models::Events::OccurrenceListParams::Property, nil]
        optional :property, -> { HubspotSDK::Events::OccurrenceListParams::Property }

        # @!attribute sort
        #
        #   @return [Array<String>, nil]
        optional :sort, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(id: nil, after: nil, before: nil, event_type: nil, limit: nil, object_id_: nil, object_property: nil, object_type: nil, occurred_after: nil, occurred_before: nil, properties: nil, property: nil, sort: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Events::OccurrenceListParams} for more details.
        #
        #   @param id [Array<String>]
        #
        #   @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        #   @param before [String]
        #
        #   @param event_type [String]
        #
        #   @param limit [Integer] The maximum number of results to display per page.
        #
        #   @param object_id_ [Integer]
        #
        #   @param object_property [HubspotSDK::Models::Events::OccurrenceListParams::ObjectProperty]
        #
        #   @param object_type [String]
        #
        #   @param occurred_after [Time]
        #
        #   @param occurred_before [Time]
        #
        #   @param properties [Array<String>]
        #
        #   @param property [HubspotSDK::Models::Events::OccurrenceListParams::Property]
        #
        #   @param sort [Array<String>]
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

        class ObjectProperty < HubspotSDK::Internal::Type::BaseModel
          # @!attribute propname
          #
          #   @return [Object, nil]
          optional :propname, HubspotSDK::Internal::Type::Unknown, api_name: :"{propname}"

          # @!method initialize(propname: nil)
          #   @param propname [Object]
        end

        class Property < HubspotSDK::Internal::Type::BaseModel
          # @!attribute propname
          #
          #   @return [Object, nil]
          optional :propname, HubspotSDK::Internal::Type::Unknown, api_name: :"{propname}"

          # @!method initialize(propname: nil)
          #   @param propname [Object]
        end
      end
    end
  end
end

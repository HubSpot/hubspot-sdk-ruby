# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      # @see HubspotSDK::Resources::Events::Occurrences#list
      class OccurrenceListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute id
        #   An array of event IDs to filter by.
        #
        #   @return [Array<String>, nil]
        optional :id, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute after
        #   A cursor token for pagination. Use the value from the previous response's
        #   paging.next.after field.
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute before
        #   A cursor token to retrieve results before a specific point.
        #
        #   @return [String, nil]
        optional :before, String

        # @!attribute event_type
        #   The type of event to filter by.
        #
        #   @return [String, nil]
        optional :event_type, String

        # @!attribute limit
        #   The maximum number of results to display per page.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute object_id_
        #   The unique identifier of the object associated with the events.
        #
        #   @return [Integer, nil]
        optional :object_id_, Integer

        # @!attribute object_property
        #
        #   @return [HubspotSDK::Models::Events::OccurrenceListParams::ObjectProperty, nil]
        optional :object_property, -> { HubspotSDK::Events::OccurrenceListParams::ObjectProperty }

        # @!attribute object_type
        #   The type of object associated with the events.
        #
        #   @return [String, nil]
        optional :object_type, String

        # @!attribute occurred_after
        #   Filter events that occurred after this date-time.
        #
        #   @return [Time, nil]
        optional :occurred_after, Time

        # @!attribute occurred_before
        #   Filter events that occurred before this date-time.
        #
        #   @return [Time, nil]
        optional :occurred_before, Time

        # @!attribute properties
        #   An array of property names to include in the response.
        #
        #   @return [Array<String>, nil]
        optional :properties, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute property
        #
        #   @return [HubspotSDK::Models::Events::OccurrenceListParams::Property, nil]
        optional :property, -> { HubspotSDK::Events::OccurrenceListParams::Property }

        # @!attribute sort
        #   An array of fields to sort the results by.
        #
        #   @return [Array<String>, nil]
        optional :sort, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(id: nil, after: nil, before: nil, event_type: nil, limit: nil, object_id_: nil, object_property: nil, object_type: nil, occurred_after: nil, occurred_before: nil, properties: nil, property: nil, sort: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Events::OccurrenceListParams} for more details.
        #
        #   @param id [Array<String>] An array of event IDs to filter by.
        #
        #   @param after [String] A cursor token for pagination. Use the value from the previous response's paging
        #
        #   @param before [String] A cursor token to retrieve results before a specific point.
        #
        #   @param event_type [String] The type of event to filter by.
        #
        #   @param limit [Integer] The maximum number of results to display per page.
        #
        #   @param object_id_ [Integer] The unique identifier of the object associated with the events.
        #
        #   @param object_property [HubspotSDK::Models::Events::OccurrenceListParams::ObjectProperty]
        #
        #   @param object_type [String] The type of object associated with the events.
        #
        #   @param occurred_after [Time] Filter events that occurred after this date-time.
        #
        #   @param occurred_before [Time] Filter events that occurred before this date-time.
        #
        #   @param properties [Array<String>] An array of property names to include in the response.
        #
        #   @param property [HubspotSDK::Models::Events::OccurrenceListParams::Property]
        #
        #   @param sort [Array<String>] An array of fields to sort the results by.
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

        class ObjectProperty < HubspotSDK::Internal::Type::BaseModel
          # @!attribute propname
          #   Filter events by specific object properties.
          #
          #   @return [Object, nil]
          optional :propname, HubspotSDK::Internal::Type::Unknown, api_name: :"{propname}"

          # @!method initialize(propname: nil)
          #   @param propname [Object] Filter events by specific object properties.
        end

        class Property < HubspotSDK::Internal::Type::BaseModel
          # @!attribute propname
          #   Filter events by specific event properties.
          #
          #   @return [Object, nil]
          optional :propname, HubspotSDK::Internal::Type::Unknown, api_name: :"{propname}"

          # @!method initialize(propname: nil)
          #   @param propname [Object] Filter events by specific event properties.
        end
      end
    end
  end
end

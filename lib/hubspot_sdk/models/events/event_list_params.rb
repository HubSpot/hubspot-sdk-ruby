# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      # @see HubspotSDK::Resources::Events#list
      class EventListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute id
        #   ID of an event instance. IDs are 1:1 with event instances. If you provide this
        #   filter and additional filters, the other filters must match the values on the
        #   event instance to yield results.
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
        #   The event type name. You can retrieve available event types using the
        #   [event types endpoint](#get-%2Fevents%2Fv3%2Fevents%2Fevent-types).
        #
        #   @return [String, nil]
        optional :event_type, String

        # @!attribute limit
        #   The maximum number of results to display per page.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute object_id_
        #   The ID of the CRM Object to filter event instances on. When including this
        #   parameter, you must also include the `objectType` parameter.
        #
        #   @return [Integer, nil]
        optional :object_id_, Integer

        # @!attribute object_property
        #
        #   @return [HubspotSDK::Models::Events::EventListParams::ObjectProperty, nil]
        optional :object_property, -> { HubspotSDK::Events::EventListParams::ObjectProperty }

        # @!attribute object_type
        #   The type of CRM object to filter event instances on (e.g., `contact`). To
        #   retrieve event data for a specific CRM record, include the additional `objectId`
        #   query parameter (below).
        #
        #   @return [String, nil]
        optional :object_type, String

        # @!attribute occurred_after
        #   Filter for event data that occurred after a specific datetime.
        #
        #   @return [Time, nil]
        optional :occurred_after, Time

        # @!attribute occurred_before
        #   Filter for event data that occurred before a specific datetime.
        #
        #   @return [Time, nil]
        optional :occurred_before, Time

        # @!attribute property
        #
        #   @return [HubspotSDK::Models::Events::EventListParams::Property, nil]
        optional :property, -> { HubspotSDK::Events::EventListParams::Property }

        # @!attribute sort
        #   Sort direction based on the timestamp of the event instance, `ASCENDING` or
        #   `DESCENDING`.
        #
        #   @return [Array<String>, nil]
        optional :sort, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(id: nil, after: nil, before: nil, event_type: nil, limit: nil, object_id_: nil, object_property: nil, object_type: nil, occurred_after: nil, occurred_before: nil, property: nil, sort: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Events::EventListParams} for more details.
        #
        #   @param id [Array<String>] ID of an event instance. IDs are 1:1 with event instances. If you provide this f
        #
        #   @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        #   @param before [String]
        #
        #   @param event_type [String] The event type name. You can retrieve available event types using the [event typ
        #
        #   @param limit [Integer] The maximum number of results to display per page.
        #
        #   @param object_id_ [Integer] The ID of the CRM Object to filter event instances on. When including this param
        #
        #   @param object_property [HubspotSDK::Models::Events::EventListParams::ObjectProperty]
        #
        #   @param object_type [String] The type of CRM object to filter event instances on (e.g., `contact`). To retrie
        #
        #   @param occurred_after [Time] Filter for event data that occurred after a specific datetime.
        #
        #   @param occurred_before [Time] Filter for event data that occurred before a specific datetime.
        #
        #   @param property [HubspotSDK::Models::Events::EventListParams::Property]
        #
        #   @param sort [Array<String>] Sort direction based on the timestamp of the event instance, `ASCENDING` or `DES
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

        class ObjectProperty < HubspotSDK::Internal::Type::BaseModel
          # @!attribute propname
          #   Instead of retrieving event data for a specific object by its ID, you can
          #   specify a unique identifier property. For contacts, you can use the `email`
          #   property. (e.g., `objectProperty.email=name@domain.com`).
          #
          #   @return [Object, nil]
          optional :propname, HubspotSDK::Internal::Type::Unknown, api_name: :"{propname}"

          # @!method initialize(propname: nil)
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Events::EventListParams::ObjectProperty} for more details.
          #
          #   @param propname [Object] Instead of retrieving event data for a specific object by its ID, you can specif
        end

        class Property < HubspotSDK::Internal::Type::BaseModel
          # @!attribute propname
          #   Filter for event completions that contain a specific value for an event property
          #   (e.g., `property.hs_city=portland`). For properties values with spaces, replaces
          #   spaces with `%20` or `+` (e.g., `property.hs_city=new+york`).
          #
          #   @return [Object, nil]
          optional :propname, HubspotSDK::Internal::Type::Unknown, api_name: :"{propname}"

          # @!method initialize(propname: nil)
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Events::EventListParams::Property} for more details.
          #
          #   @param propname [Object] Filter for event completions that contain a specific value for an event property
        end
      end
    end
  end
end

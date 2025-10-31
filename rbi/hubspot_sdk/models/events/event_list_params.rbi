# typed: strong

module HubspotSDK
  module Models
    module Events
      class EventListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::EventListParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # ID of an event instance. IDs are 1:1 with event instances. If you provide this
        # filter and additional filters, the other filters must match the values on the
        # event instance to yield results.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :id

        sig { params(id: T::Array[String]).void }
        attr_writer :id

        # The paging cursor token of the last successfully read resource will be returned
        # as the `paging.next.after` JSON property of a paged response containing more
        # results.
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        sig { returns(T.nilable(String)) }
        attr_reader :before

        sig { params(before: String).void }
        attr_writer :before

        # The event type name. You can retrieve available event types using the
        # [event types endpoint](#get-%2Fevents%2Fv3%2Fevents%2Fevent-types).
        sig { returns(T.nilable(String)) }
        attr_reader :event_type

        sig { params(event_type: String).void }
        attr_writer :event_type

        # The maximum number of results to display per page.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # The ID of the CRM Object to filter event instances on. When including this
        # parameter, you must also include the `objectType` parameter.
        sig { returns(T.nilable(Integer)) }
        attr_reader :object_id_

        sig { params(object_id_: Integer).void }
        attr_writer :object_id_

        sig do
          returns(
            T.nilable(HubspotSDK::Events::EventListParams::ObjectProperty)
          )
        end
        attr_reader :object_property

        sig do
          params(
            object_property:
              HubspotSDK::Events::EventListParams::ObjectProperty::OrHash
          ).void
        end
        attr_writer :object_property

        # The type of CRM object to filter event instances on (e.g., `contact`). To
        # retrieve event data for a specific CRM record, include the additional `objectId`
        # query parameter (below).
        sig { returns(T.nilable(String)) }
        attr_reader :object_type

        sig { params(object_type: String).void }
        attr_writer :object_type

        # Filter for event data that occurred after a specific datetime.
        sig { returns(T.nilable(Time)) }
        attr_reader :occurred_after

        sig { params(occurred_after: Time).void }
        attr_writer :occurred_after

        # Filter for event data that occurred before a specific datetime.
        sig { returns(T.nilable(Time)) }
        attr_reader :occurred_before

        sig { params(occurred_before: Time).void }
        attr_writer :occurred_before

        sig do
          returns(T.nilable(HubspotSDK::Events::EventListParams::Property))
        end
        attr_reader :property

        sig do
          params(
            property: HubspotSDK::Events::EventListParams::Property::OrHash
          ).void
        end
        attr_writer :property

        # Sort direction based on the timestamp of the event instance, `ASCENDING` or
        # `DESCENDING`.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :sort

        sig { params(sort: T::Array[String]).void }
        attr_writer :sort

        sig do
          params(
            id: T::Array[String],
            after: String,
            before: String,
            event_type: String,
            limit: Integer,
            object_id_: Integer,
            object_property:
              HubspotSDK::Events::EventListParams::ObjectProperty::OrHash,
            object_type: String,
            occurred_after: Time,
            occurred_before: Time,
            property: HubspotSDK::Events::EventListParams::Property::OrHash,
            sort: T::Array[String],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of an event instance. IDs are 1:1 with event instances. If you provide this
          # filter and additional filters, the other filters must match the values on the
          # event instance to yield results.
          id: nil,
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          before: nil,
          # The event type name. You can retrieve available event types using the
          # [event types endpoint](#get-%2Fevents%2Fv3%2Fevents%2Fevent-types).
          event_type: nil,
          # The maximum number of results to display per page.
          limit: nil,
          # The ID of the CRM Object to filter event instances on. When including this
          # parameter, you must also include the `objectType` parameter.
          object_id_: nil,
          object_property: nil,
          # The type of CRM object to filter event instances on (e.g., `contact`). To
          # retrieve event data for a specific CRM record, include the additional `objectId`
          # query parameter (below).
          object_type: nil,
          # Filter for event data that occurred after a specific datetime.
          occurred_after: nil,
          # Filter for event data that occurred before a specific datetime.
          occurred_before: nil,
          property: nil,
          # Sort direction based on the timestamp of the event instance, `ASCENDING` or
          # `DESCENDING`.
          sort: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: T::Array[String],
              after: String,
              before: String,
              event_type: String,
              limit: Integer,
              object_id_: Integer,
              object_property:
                HubspotSDK::Events::EventListParams::ObjectProperty,
              object_type: String,
              occurred_after: Time,
              occurred_before: Time,
              property: HubspotSDK::Events::EventListParams::Property,
              sort: T::Array[String],
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        class ObjectProperty < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Events::EventListParams::ObjectProperty,
                HubspotSDK::Internal::AnyHash
              )
            end

          # Instead of retrieving event data for a specific object by its ID, you can
          # specify a unique identifier property. For contacts, you can use the `email`
          # property. (e.g., `objectProperty.email=name@domain.com`).
          sig { returns(T.nilable(T.anything)) }
          attr_reader :propname

          sig { params(propname: T.anything).void }
          attr_writer :propname

          sig { params(propname: T.anything).returns(T.attached_class) }
          def self.new(
            # Instead of retrieving event data for a specific object by its ID, you can
            # specify a unique identifier property. For contacts, you can use the `email`
            # property. (e.g., `objectProperty.email=name@domain.com`).
            propname: nil
          )
          end

          sig { override.returns({ propname: T.anything }) }
          def to_hash
          end
        end

        class Property < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Events::EventListParams::Property,
                HubspotSDK::Internal::AnyHash
              )
            end

          # Filter for event completions that contain a specific value for an event property
          # (e.g., `property.hs_city=portland`). For properties values with spaces, replaces
          # spaces with `%20` or `+` (e.g., `property.hs_city=new+york`).
          sig { returns(T.nilable(T.anything)) }
          attr_reader :propname

          sig { params(propname: T.anything).void }
          attr_writer :propname

          sig { params(propname: T.anything).returns(T.attached_class) }
          def self.new(
            # Filter for event completions that contain a specific value for an event property
            # (e.g., `property.hs_city=portland`). For properties values with spaces, replaces
            # spaces with `%20` or `+` (e.g., `property.hs_city=new+york`).
            propname: nil
          )
          end

          sig { override.returns({ propname: T.anything }) }
          def to_hash
          end
        end
      end
    end
  end
end

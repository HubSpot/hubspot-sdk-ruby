# typed: strong

module HubspotSDK
  module Models
    module Events
      class OccurrenceListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::OccurrenceListParams,
              HubspotSDK::Internal::AnyHash
            )
          end

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

        sig { returns(T.nilable(String)) }
        attr_reader :event_type

        sig { params(event_type: String).void }
        attr_writer :event_type

        # The maximum number of results to display per page.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        sig { returns(T.nilable(Integer)) }
        attr_reader :object_id_

        sig { params(object_id_: Integer).void }
        attr_writer :object_id_

        sig do
          returns(
            T.nilable(HubspotSDK::Events::OccurrenceListParams::ObjectProperty)
          )
        end
        attr_reader :object_property

        sig do
          params(
            object_property:
              HubspotSDK::Events::OccurrenceListParams::ObjectProperty::OrHash
          ).void
        end
        attr_writer :object_property

        sig { returns(T.nilable(String)) }
        attr_reader :object_type

        sig { params(object_type: String).void }
        attr_writer :object_type

        sig { returns(T.nilable(Time)) }
        attr_reader :occurred_after

        sig { params(occurred_after: Time).void }
        attr_writer :occurred_after

        sig { returns(T.nilable(Time)) }
        attr_reader :occurred_before

        sig { params(occurred_before: Time).void }
        attr_writer :occurred_before

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :properties

        sig { params(properties: T::Array[String]).void }
        attr_writer :properties

        sig do
          returns(T.nilable(HubspotSDK::Events::OccurrenceListParams::Property))
        end
        attr_reader :property

        sig do
          params(
            property: HubspotSDK::Events::OccurrenceListParams::Property::OrHash
          ).void
        end
        attr_writer :property

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
              HubspotSDK::Events::OccurrenceListParams::ObjectProperty::OrHash,
            object_type: String,
            occurred_after: Time,
            occurred_before: Time,
            properties: T::Array[String],
            property:
              HubspotSDK::Events::OccurrenceListParams::Property::OrHash,
            sort: T::Array[String],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          before: nil,
          event_type: nil,
          # The maximum number of results to display per page.
          limit: nil,
          object_id_: nil,
          object_property: nil,
          object_type: nil,
          occurred_after: nil,
          occurred_before: nil,
          properties: nil,
          property: nil,
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
                HubspotSDK::Events::OccurrenceListParams::ObjectProperty,
              object_type: String,
              occurred_after: Time,
              occurred_before: Time,
              properties: T::Array[String],
              property: HubspotSDK::Events::OccurrenceListParams::Property,
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
                HubspotSDK::Events::OccurrenceListParams::ObjectProperty,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T.anything)) }
          attr_reader :propname

          sig { params(propname: T.anything).void }
          attr_writer :propname

          sig { params(propname: T.anything).returns(T.attached_class) }
          def self.new(propname: nil)
          end

          sig { override.returns({ propname: T.anything }) }
          def to_hash
          end
        end

        class Property < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Events::OccurrenceListParams::Property,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T.anything)) }
          attr_reader :propname

          sig { params(propname: T.anything).void }
          attr_writer :propname

          sig { params(propname: T.anything).returns(T.attached_class) }
          def self.new(propname: nil)
          end

          sig { override.returns({ propname: T.anything }) }
          def to_hash
          end
        end
      end
    end
  end
end

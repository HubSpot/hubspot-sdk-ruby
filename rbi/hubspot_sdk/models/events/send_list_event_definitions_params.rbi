# typed: strong

module HubspotSDK
  module Models
    module Events
      class SendListEventDefinitionsParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::SendListEventDefinitionsParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The paging cursor token of the last successfully read resource will be returned
        # as the `paging.next.after` JSON property of a paged response containing more
        # results.
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_properties

        sig { params(include_properties: T::Boolean).void }
        attr_writer :include_properties

        # The maximum number of results to display per page.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        sig { returns(T.nilable(String)) }
        attr_reader :search_string

        sig { params(search_string: String).void }
        attr_writer :search_string

        sig { returns(T.nilable(String)) }
        attr_reader :sort_order

        sig { params(sort_order: String).void }
        attr_writer :sort_order

        sig do
          params(
            after: String,
            include_properties: T::Boolean,
            limit: Integer,
            search_string: String,
            sort_order: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          include_properties: nil,
          # The maximum number of results to display per page.
          limit: nil,
          search_string: nil,
          sort_order: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              after: String,
              include_properties: T::Boolean,
              limit: Integer,
              search_string: String,
              sort_order: String,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

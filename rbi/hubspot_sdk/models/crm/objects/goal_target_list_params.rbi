# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Objects
        class GoalTargetListParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Objects::GoalTargetListParams,
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

          # Whether to return only results that have been archived.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :archived

          sig { params(archived: T::Boolean).void }
          attr_writer :archived

          # A comma separated list of object types to retrieve associated IDs for. If any of
          # the specified associations do not exist, they will be ignored.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :associations

          sig { params(associations: T::Array[String]).void }
          attr_writer :associations

          # The maximum number of results to display per page.
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          # A comma separated list of the properties to be returned in the response. If any
          # of the specified properties are not present on the requested object(s), they
          # will be ignored.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :properties

          sig { params(properties: T::Array[String]).void }
          attr_writer :properties

          # A comma separated list of the properties to be returned along with their history
          # of previous values. If any of the specified properties are not present on the
          # requested object(s), they will be ignored. Usage of this parameter will reduce
          # the maximum number of goal targets that can be read by a single request.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :properties_with_history

          sig { params(properties_with_history: T::Array[String]).void }
          attr_writer :properties_with_history

          sig do
            params(
              after: String,
              archived: T::Boolean,
              associations: T::Array[String],
              limit: Integer,
              properties: T::Array[String],
              properties_with_history: T::Array[String],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The paging cursor token of the last successfully read resource will be returned
            # as the `paging.next.after` JSON property of a paged response containing more
            # results.
            after: nil,
            # Whether to return only results that have been archived.
            archived: nil,
            # A comma separated list of object types to retrieve associated IDs for. If any of
            # the specified associations do not exist, they will be ignored.
            associations: nil,
            # The maximum number of results to display per page.
            limit: nil,
            # A comma separated list of the properties to be returned in the response. If any
            # of the specified properties are not present on the requested object(s), they
            # will be ignored.
            properties: nil,
            # A comma separated list of the properties to be returned along with their history
            # of previous values. If any of the specified properties are not present on the
            # requested object(s), they will be ignored. Usage of this parameter will reduce
            # the maximum number of goal targets that can be read by a single request.
            properties_with_history: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                after: String,
                archived: T::Boolean,
                associations: T::Array[String],
                limit: Integer,
                properties: T::Array[String],
                properties_with_history: T::Array[String],
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
end

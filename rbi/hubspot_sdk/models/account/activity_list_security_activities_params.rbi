# typed: strong

module HubspotSDK
  module Models
    module Account
      class ActivityListSecurityActivitiesParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Account::ActivityListSecurityActivitiesParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The cursor token value to get the next set of results. You can get this from the
        # `paging.next.after` JSON property of a paged response containing more results.
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        # Limit to activities created after this epoch timestamp.
        sig { returns(T.nilable(Integer)) }
        attr_reader :from_timestamp

        sig { params(from_timestamp: Integer).void }
        attr_writer :from_timestamp

        # The maximum number of results to display per page. Max value of limit is 200.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Limit to activities created before this epoch timestamp.
        sig { returns(T.nilable(Integer)) }
        attr_reader :to_timestamp

        sig { params(to_timestamp: Integer).void }
        attr_writer :to_timestamp

        # Identifier of user to retrieve activities for
        sig { returns(T.nilable(Integer)) }
        attr_reader :user_id

        sig { params(user_id: Integer).void }
        attr_writer :user_id

        sig do
          params(
            after: String,
            from_timestamp: Integer,
            limit: Integer,
            to_timestamp: Integer,
            user_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The cursor token value to get the next set of results. You can get this from the
          # `paging.next.after` JSON property of a paged response containing more results.
          after: nil,
          # Limit to activities created after this epoch timestamp.
          from_timestamp: nil,
          # The maximum number of results to display per page. Max value of limit is 200.
          limit: nil,
          # Limit to activities created before this epoch timestamp.
          to_timestamp: nil,
          # Identifier of user to retrieve activities for
          user_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              after: String,
              from_timestamp: Integer,
              limit: Integer,
              to_timestamp: Integer,
              user_id: Integer,
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

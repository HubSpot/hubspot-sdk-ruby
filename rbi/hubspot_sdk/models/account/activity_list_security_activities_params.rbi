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

        # The start time, for retrieving logs within a specific timeframe.
        sig { returns(T.nilable(Integer)) }
        attr_reader :from_timestamp

        sig { params(from_timestamp: Integer).void }
        attr_writer :from_timestamp

        # The maximum number of results to display per page. Max value of limit is 200.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # The end time, for retrieving logs within a specific timeframe.
        sig { returns(T.nilable(Integer)) }
        attr_reader :to_timestamp

        sig { params(to_timestamp: Integer).void }
        attr_writer :to_timestamp

        # The ID of a user, for retrieving user-specific logs.
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
          # The start time, for retrieving logs within a specific timeframe.
          from_timestamp: nil,
          # The maximum number of results to display per page. Max value of limit is 200.
          limit: nil,
          # The end time, for retrieving logs within a specific timeframe.
          to_timestamp: nil,
          # The ID of a user, for retrieving user-specific logs.
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

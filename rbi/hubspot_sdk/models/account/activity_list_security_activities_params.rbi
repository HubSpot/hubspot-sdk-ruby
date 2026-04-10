# typed: strong

module HubSpotSDK
  module Models
    module Account
      class ActivityListSecurityActivitiesParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Account::ActivityListSecurityActivitiesParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The paging cursor token of the last successfully read resource will be returned
        # as the `paging.next.after` JSON property of a paged response containing more
        # results.
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        sig { returns(T.nilable(Integer)) }
        attr_reader :from_timestamp

        sig { params(from_timestamp: Integer).void }
        attr_writer :from_timestamp

        # The maximum number of results to display per page.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        sig { returns(T.nilable(Integer)) }
        attr_reader :to_timestamp

        sig { params(to_timestamp: Integer).void }
        attr_writer :to_timestamp

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
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          from_timestamp: nil,
          # The maximum number of results to display per page.
          limit: nil,
          to_timestamp: nil,
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
              request_options: HubSpotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

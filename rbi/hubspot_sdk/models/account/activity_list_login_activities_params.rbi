# typed: strong

module HubspotSDK
  module Models
    module Account
      class ActivityListLoginActivitiesParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Account::ActivityListLoginActivitiesParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The cursor token value to get the next set of results. You can get this from the
        # `paging.next.after` JSON property of a paged response containing more results.
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        # The maximum number of results to display per page. Max value of limit is 200.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Identifier of user to retrieve activities for
        sig { returns(T.nilable(Integer)) }
        attr_reader :user_id

        sig { params(user_id: Integer).void }
        attr_writer :user_id

        sig do
          params(
            after: String,
            limit: Integer,
            user_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The cursor token value to get the next set of results. You can get this from the
          # `paging.next.after` JSON property of a paged response containing more results.
          after: nil,
          # The maximum number of results to display per page. Max value of limit is 200.
          limit: nil,
          # Identifier of user to retrieve activities for
          user_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              after: String,
              limit: Integer,
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

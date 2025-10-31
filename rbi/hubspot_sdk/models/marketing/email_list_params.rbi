# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class EmailListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::EmailListParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The cursor token value to get the next set of results. You can get this from the
        # `paging.next.after` JSON property of a paged response containing more results.
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        # Specifies whether to return archived emails. Defaults to `false`.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :archived

        sig { params(archived: T::Boolean).void }
        attr_writer :archived

        # Filter by campaign GUID. All emails will be returned if not present.
        sig { returns(T.nilable(String)) }
        attr_reader :campaign

        sig { params(campaign: String).void }
        attr_writer :campaign

        # Only return emails created after the specified time.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_after

        sig { params(created_after: Time).void }
        attr_writer :created_after

        # Only return emails created at exactly the specified time.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Only return emails created before the specified time.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_before

        sig { params(created_before: Time).void }
        attr_writer :created_before

        # Limit the response to only include this specified list of properties.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :included_properties

        sig { params(included_properties: T::Array[String]).void }
        attr_writer :included_properties

        # Include statistics with emails.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_stats

        sig { params(include_stats: T::Boolean).void }
        attr_writer :include_stats

        # Filter by published/draft emails. All emails will be returned if not present.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_published

        sig { params(is_published: T::Boolean).void }
        attr_writer :is_published

        # The maximum number of results to return. Default is 10.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Include the names for any associated marketing campaigns.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :marketing_campaign_names

        sig { params(marketing_campaign_names: T::Boolean).void }
        attr_writer :marketing_campaign_names

        # Specifies which fields to use for sorting results. Valid fields are `name`,
        # `createdAt`, `updatedAt`, `createdBy`, `updatedBy`. `createdAt` will be used by
        # default.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :sort

        sig { params(sort: T::Array[String]).void }
        attr_writer :sort

        # Email types to be filtered by. Multiple types can be included. All emails will
        # be returned if not present.
        sig do
          returns(
            T.nilable(HubspotSDK::Marketing::EmailListParams::Type::OrSymbol)
          )
        end
        attr_reader :type

        sig do
          params(
            type: HubspotSDK::Marketing::EmailListParams::Type::OrSymbol
          ).void
        end
        attr_writer :type

        # Only return emails last updated after the specified time.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_after

        sig { params(updated_after: Time).void }
        attr_writer :updated_after

        # Only return emails last updated at exactly the specified time.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        # Only return emails last updated before the specified time.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_before

        sig { params(updated_before: Time).void }
        attr_writer :updated_before

        # Include the names of any workflows associated with the returned emails.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :workflow_names

        sig { params(workflow_names: T::Boolean).void }
        attr_writer :workflow_names

        sig do
          params(
            after: String,
            archived: T::Boolean,
            campaign: String,
            created_after: Time,
            created_at: Time,
            created_before: Time,
            included_properties: T::Array[String],
            include_stats: T::Boolean,
            is_published: T::Boolean,
            limit: Integer,
            marketing_campaign_names: T::Boolean,
            sort: T::Array[String],
            type: HubspotSDK::Marketing::EmailListParams::Type::OrSymbol,
            updated_after: Time,
            updated_at: Time,
            updated_before: Time,
            workflow_names: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The cursor token value to get the next set of results. You can get this from the
          # `paging.next.after` JSON property of a paged response containing more results.
          after: nil,
          # Specifies whether to return archived emails. Defaults to `false`.
          archived: nil,
          # Filter by campaign GUID. All emails will be returned if not present.
          campaign: nil,
          # Only return emails created after the specified time.
          created_after: nil,
          # Only return emails created at exactly the specified time.
          created_at: nil,
          # Only return emails created before the specified time.
          created_before: nil,
          # Limit the response to only include this specified list of properties.
          included_properties: nil,
          # Include statistics with emails.
          include_stats: nil,
          # Filter by published/draft emails. All emails will be returned if not present.
          is_published: nil,
          # The maximum number of results to return. Default is 10.
          limit: nil,
          # Include the names for any associated marketing campaigns.
          marketing_campaign_names: nil,
          # Specifies which fields to use for sorting results. Valid fields are `name`,
          # `createdAt`, `updatedAt`, `createdBy`, `updatedBy`. `createdAt` will be used by
          # default.
          sort: nil,
          # Email types to be filtered by. Multiple types can be included. All emails will
          # be returned if not present.
          type: nil,
          # Only return emails last updated after the specified time.
          updated_after: nil,
          # Only return emails last updated at exactly the specified time.
          updated_at: nil,
          # Only return emails last updated before the specified time.
          updated_before: nil,
          # Include the names of any workflows associated with the returned emails.
          workflow_names: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              after: String,
              archived: T::Boolean,
              campaign: String,
              created_after: Time,
              created_at: Time,
              created_before: Time,
              included_properties: T::Array[String],
              include_stats: T::Boolean,
              is_published: T::Boolean,
              limit: Integer,
              marketing_campaign_names: T::Boolean,
              sort: T::Array[String],
              type: HubspotSDK::Marketing::EmailListParams::Type::OrSymbol,
              updated_after: Time,
              updated_at: Time,
              updated_before: Time,
              workflow_names: T::Boolean,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Email types to be filtered by. Multiple types can be included. All emails will
        # be returned if not present.
        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Marketing::EmailListParams::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AB_EMAIL =
            T.let(
              :AB_EMAIL,
              HubspotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          BATCH_EMAIL =
            T.let(
              :BATCH_EMAIL,
              HubspotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          LOCALTIME_EMAIL =
            T.let(
              :LOCALTIME_EMAIL,
              HubspotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          AUTOMATED_AB_EMAIL =
            T.let(
              :AUTOMATED_AB_EMAIL,
              HubspotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          BLOG_EMAIL =
            T.let(
              :BLOG_EMAIL,
              HubspotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          BLOG_EMAIL_CHILD =
            T.let(
              :BLOG_EMAIL_CHILD,
              HubspotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          RSS_EMAIL =
            T.let(
              :RSS_EMAIL,
              HubspotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          RSS_EMAIL_CHILD =
            T.let(
              :RSS_EMAIL_CHILD,
              HubspotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          RESUBSCRIBE_EMAIL =
            T.let(
              :RESUBSCRIBE_EMAIL,
              HubspotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          OPTIN_EMAIL =
            T.let(
              :OPTIN_EMAIL,
              HubspotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          OPTIN_FOLLOWUP_EMAIL =
            T.let(
              :OPTIN_FOLLOWUP_EMAIL,
              HubspotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          AUTOMATED_EMAIL =
            T.let(
              :AUTOMATED_EMAIL,
              HubspotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          FEEDBACK_CES_EMAIL =
            T.let(
              :FEEDBACK_CES_EMAIL,
              HubspotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          FEEDBACK_CUSTOM_EMAIL =
            T.let(
              :FEEDBACK_CUSTOM_EMAIL,
              HubspotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          FEEDBACK_CUSTOM_SURVEY_EMAIL =
            T.let(
              :FEEDBACK_CUSTOM_SURVEY_EMAIL,
              HubspotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          FEEDBACK_NPS_EMAIL =
            T.let(
              :FEEDBACK_NPS_EMAIL,
              HubspotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          FOLLOWUP_EMAIL =
            T.let(
              :FOLLOWUP_EMAIL,
              HubspotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          LEADFLOW_EMAIL =
            T.let(
              :LEADFLOW_EMAIL,
              HubspotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          SINGLE_SEND_API =
            T.let(
              :SINGLE_SEND_API,
              HubspotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          MARKETING_SINGLE_SEND_API =
            T.let(
              :MARKETING_SINGLE_SEND_API,
              HubspotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          SMTP_TOKEN =
            T.let(
              :SMTP_TOKEN,
              HubspotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          TICKET_EMAIL =
            T.let(
              :TICKET_EMAIL,
              HubspotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          MEMBERSHIP_REGISTRATION_EMAIL =
            T.let(
              :MEMBERSHIP_REGISTRATION_EMAIL,
              HubspotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          MEMBERSHIP_PASSWORD_SAVED_EMAIL =
            T.let(
              :MEMBERSHIP_PASSWORD_SAVED_EMAIL,
              HubspotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          MEMBERSHIP_PASSWORD_RESET_EMAIL =
            T.let(
              :MEMBERSHIP_PASSWORD_RESET_EMAIL,
              HubspotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          MEMBERSHIP_EMAIL_VERIFICATION_EMAIL =
            T.let(
              :MEMBERSHIP_EMAIL_VERIFICATION_EMAIL,
              HubspotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          MEMBERSHIP_PASSWORDLESS_AUTH_EMAIL =
            T.let(
              :MEMBERSHIP_PASSWORDLESS_AUTH_EMAIL,
              HubspotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          MEMBERSHIP_REGISTRATION_FOLLOW_UP_EMAIL =
            T.let(
              :MEMBERSHIP_REGISTRATION_FOLLOW_UP_EMAIL,
              HubspotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          MEMBERSHIP_OTP_LOGIN_EMAIL =
            T.let(
              :MEMBERSHIP_OTP_LOGIN_EMAIL,
              HubspotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          MEMBERSHIP_FOLLOW_UP_EMAIL =
            T.let(
              :MEMBERSHIP_FOLLOW_UP_EMAIL,
              HubspotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          MEMBERSHIP_VERIFICATION_EMAIL =
            T.let(
              :MEMBERSHIP_VERIFICATION_EMAIL,
              HubspotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::EmailListParams::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end

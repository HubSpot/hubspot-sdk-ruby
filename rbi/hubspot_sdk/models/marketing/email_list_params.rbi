# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class EmailListParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::EmailListParams,
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

        # Whether to return only results that have been archived.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :archived

        sig { params(archived: T::Boolean).void }
        attr_writer :archived

        sig { returns(T.nilable(String)) }
        attr_reader :campaign

        sig { params(campaign: String).void }
        attr_writer :campaign

        sig { returns(T.nilable(Time)) }
        attr_reader :created_after

        sig { params(created_after: Time).void }
        attr_writer :created_after

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        sig { returns(T.nilable(Time)) }
        attr_reader :created_before

        sig { params(created_before: Time).void }
        attr_writer :created_before

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :included_properties

        sig { params(included_properties: T::Array[String]).void }
        attr_writer :included_properties

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_stats

        sig { params(include_stats: T::Boolean).void }
        attr_writer :include_stats

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_published

        sig { params(is_published: T::Boolean).void }
        attr_writer :is_published

        # The maximum number of results to display per page.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :marketing_campaign_names

        sig { params(marketing_campaign_names: T::Boolean).void }
        attr_writer :marketing_campaign_names

        sig { returns(T.nilable(Time)) }
        attr_reader :published_after

        sig { params(published_after: Time).void }
        attr_writer :published_after

        sig { returns(T.nilable(Time)) }
        attr_reader :published_at

        sig { params(published_at: Time).void }
        attr_writer :published_at

        sig { returns(T.nilable(Time)) }
        attr_reader :published_before

        sig { params(published_before: Time).void }
        attr_writer :published_before

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :sort

        sig { params(sort: T::Array[String]).void }
        attr_writer :sort

        sig do
          returns(
            T.nilable(HubSpotSDK::Marketing::EmailListParams::Type::OrSymbol)
          )
        end
        attr_reader :type

        sig do
          params(
            type: HubSpotSDK::Marketing::EmailListParams::Type::OrSymbol
          ).void
        end
        attr_writer :type

        sig { returns(T.nilable(Time)) }
        attr_reader :updated_after

        sig { params(updated_after: Time).void }
        attr_writer :updated_after

        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig { returns(T.nilable(Time)) }
        attr_reader :updated_before

        sig { params(updated_before: Time).void }
        attr_writer :updated_before

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :variant_stats

        sig { params(variant_stats: T::Boolean).void }
        attr_writer :variant_stats

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
            published_after: Time,
            published_at: Time,
            published_before: Time,
            sort: T::Array[String],
            type: HubSpotSDK::Marketing::EmailListParams::Type::OrSymbol,
            updated_after: Time,
            updated_at: Time,
            updated_before: Time,
            variant_stats: T::Boolean,
            workflow_names: T::Boolean,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          # Whether to return only results that have been archived.
          archived: nil,
          campaign: nil,
          created_after: nil,
          created_at: nil,
          created_before: nil,
          included_properties: nil,
          include_stats: nil,
          is_published: nil,
          # The maximum number of results to display per page.
          limit: nil,
          marketing_campaign_names: nil,
          published_after: nil,
          published_at: nil,
          published_before: nil,
          sort: nil,
          type: nil,
          updated_after: nil,
          updated_at: nil,
          updated_before: nil,
          variant_stats: nil,
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
              published_after: Time,
              published_at: Time,
              published_before: Time,
              sort: T::Array[String],
              type: HubSpotSDK::Marketing::EmailListParams::Type::OrSymbol,
              updated_after: Time,
              updated_at: Time,
              updated_before: Time,
              variant_stats: T::Boolean,
              workflow_names: T::Boolean,
              request_options: HubSpotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Marketing::EmailListParams::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AB_EMAIL =
            T.let(
              :AB_EMAIL,
              HubSpotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          AUTOMATED_AB_EMAIL =
            T.let(
              :AUTOMATED_AB_EMAIL,
              HubSpotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          AUTOMATED_EMAIL =
            T.let(
              :AUTOMATED_EMAIL,
              HubSpotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          BATCH_EMAIL =
            T.let(
              :BATCH_EMAIL,
              HubSpotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          BLOG_EMAIL =
            T.let(
              :BLOG_EMAIL,
              HubSpotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          BLOG_EMAIL_CHILD =
            T.let(
              :BLOG_EMAIL_CHILD,
              HubSpotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          FEEDBACK_CES_EMAIL =
            T.let(
              :FEEDBACK_CES_EMAIL,
              HubSpotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          FEEDBACK_CUSTOM_EMAIL =
            T.let(
              :FEEDBACK_CUSTOM_EMAIL,
              HubSpotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          FEEDBACK_CUSTOM_SURVEY_EMAIL =
            T.let(
              :FEEDBACK_CUSTOM_SURVEY_EMAIL,
              HubSpotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          FEEDBACK_NPS_EMAIL =
            T.let(
              :FEEDBACK_NPS_EMAIL,
              HubSpotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          FOLLOWUP_EMAIL =
            T.let(
              :FOLLOWUP_EMAIL,
              HubSpotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          LEADFLOW_EMAIL =
            T.let(
              :LEADFLOW_EMAIL,
              HubSpotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          LOCALTIME_EMAIL =
            T.let(
              :LOCALTIME_EMAIL,
              HubSpotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          MANAGE_PREFERENCES_EMAIL =
            T.let(
              :MANAGE_PREFERENCES_EMAIL,
              HubSpotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          MARKETING_SINGLE_SEND_API =
            T.let(
              :MARKETING_SINGLE_SEND_API,
              HubSpotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          MEMBERSHIP_EMAIL_VERIFICATION_EMAIL =
            T.let(
              :MEMBERSHIP_EMAIL_VERIFICATION_EMAIL,
              HubSpotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          MEMBERSHIP_FOLLOW_UP_EMAIL =
            T.let(
              :MEMBERSHIP_FOLLOW_UP_EMAIL,
              HubSpotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          MEMBERSHIP_OTP_LOGIN_EMAIL =
            T.let(
              :MEMBERSHIP_OTP_LOGIN_EMAIL,
              HubSpotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          MEMBERSHIP_PASSWORD_RESET_EMAIL =
            T.let(
              :MEMBERSHIP_PASSWORD_RESET_EMAIL,
              HubSpotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          MEMBERSHIP_PASSWORD_SAVED_EMAIL =
            T.let(
              :MEMBERSHIP_PASSWORD_SAVED_EMAIL,
              HubSpotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          MEMBERSHIP_PASSWORDLESS_AUTH_EMAIL =
            T.let(
              :MEMBERSHIP_PASSWORDLESS_AUTH_EMAIL,
              HubSpotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          MEMBERSHIP_REGISTRATION_EMAIL =
            T.let(
              :MEMBERSHIP_REGISTRATION_EMAIL,
              HubSpotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          MEMBERSHIP_REGISTRATION_FOLLOW_UP_EMAIL =
            T.let(
              :MEMBERSHIP_REGISTRATION_FOLLOW_UP_EMAIL,
              HubSpotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          MEMBERSHIP_VERIFICATION_EMAIL =
            T.let(
              :MEMBERSHIP_VERIFICATION_EMAIL,
              HubSpotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          OPTIN_EMAIL =
            T.let(
              :OPTIN_EMAIL,
              HubSpotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          OPTIN_FOLLOWUP_EMAIL =
            T.let(
              :OPTIN_FOLLOWUP_EMAIL,
              HubSpotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          RESUBSCRIBE_EMAIL =
            T.let(
              :RESUBSCRIBE_EMAIL,
              HubSpotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          RSS_EMAIL =
            T.let(
              :RSS_EMAIL,
              HubSpotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          RSS_EMAIL_CHILD =
            T.let(
              :RSS_EMAIL_CHILD,
              HubSpotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          SINGLE_SEND_API =
            T.let(
              :SINGLE_SEND_API,
              HubSpotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          SMTP_TOKEN =
            T.let(
              :SMTP_TOKEN,
              HubSpotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )
          TICKET_EMAIL =
            T.let(
              :TICKET_EMAIL,
              HubSpotSDK::Marketing::EmailListParams::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Marketing::EmailListParams::Type::TaggedSymbol
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

# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class PublicEmail < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::PublicEmail,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The email ID.
        sig { returns(String) }
        attr_accessor :id

        # Data structure representing the content of the email.
        sig { returns(HubspotSDK::Marketing::PublicEmailContent) }
        attr_reader :content

        sig do
          params(
            content: HubspotSDK::Marketing::PublicEmailContent::OrHash
          ).void
        end
        attr_writer :content

        # Data structure representing the from fields on the email.
        sig { returns(HubspotSDK::Marketing::PublicEmailFromDetails) }
        attr_reader :from

        sig do
          params(
            from: HubspotSDK::Marketing::PublicEmailFromDetails::OrHash
          ).void
        end
        attr_writer :from

        # The name of the email, as displayed on the email dashboard.
        sig { returns(String) }
        attr_accessor :name

        # Determines whether the email will be sent immediately on publish.
        sig { returns(T::Boolean) }
        attr_accessor :send_on_publish

        # The email state.
        sig { returns(HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol) }
        attr_accessor :state

        # The email subcategory.
        sig { returns(String) }
        attr_accessor :subcategory

        # The subject of the email.
        sig { returns(String) }
        attr_accessor :subject

        # Data structure representing the to fields of the email.
        sig { returns(HubspotSDK::Marketing::PublicEmailToDetails) }
        attr_reader :to

        sig do
          params(to: HubspotSDK::Marketing::PublicEmailToDetails::OrHash).void
        end
        attr_writer :to

        # The active domain of the email.
        sig { returns(T.nilable(String)) }
        attr_reader :active_domain

        sig { params(active_domain: String).void }
        attr_writer :active_domain

        # List of emailCampaignIds.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :all_email_campaign_ids

        sig { params(all_email_campaign_ids: T::Array[String]).void }
        attr_writer :all_email_campaign_ids

        # Determines if the email is archived or not.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :archived

        sig { params(archived: T::Boolean).void }
        attr_writer :archived

        sig { returns(T.nilable(String)) }
        attr_reader :business_unit_id

        sig { params(business_unit_id: String).void }
        attr_writer :business_unit_id

        # The campaign GUID on the email.
        sig { returns(T.nilable(String)) }
        attr_reader :campaign

        sig { params(campaign: String).void }
        attr_writer :campaign

        # The name of the campaign.
        sig { returns(T.nilable(String)) }
        attr_reader :campaign_name

        sig { params(campaign_name: String).void }
        attr_writer :campaign_name

        sig { returns(T.nilable(String)) }
        attr_reader :campaign_utm

        sig { params(campaign_utm: String).void }
        attr_writer :campaign_utm

        # The ID of the email this email was cloned from.
        sig { returns(T.nilable(String)) }
        attr_reader :cloned_from

        sig { params(cloned_from: String).void }
        attr_writer :cloned_from

        # The date and time of the email's creation, in ISO8601 representation.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # The id of the user who created the email.
        sig { returns(T.nilable(String)) }
        attr_reader :created_by_id

        sig { params(created_by_id: String).void }
        attr_writer :created_by_id

        # The date and time the email was deleted at, in ISO8601 representation.
        sig { returns(T.nilable(Time)) }
        attr_reader :deleted_at

        sig { params(deleted_at: Time).void }
        attr_writer :deleted_at

        sig { returns(T.nilable(String)) }
        attr_reader :email_campaign_group_id

        sig { params(email_campaign_group_id: String).void }
        attr_writer :email_campaign_group_id

        sig do
          returns(
            T.nilable(
              HubspotSDK::Marketing::PublicEmail::EmailTemplateMode::TaggedSymbol
            )
          )
        end
        attr_reader :email_template_mode

        sig do
          params(
            email_template_mode:
              HubspotSDK::Marketing::PublicEmail::EmailTemplateMode::OrSymbol
          ).void
        end
        attr_writer :email_template_mode

        # The ID of the feedback survey linked to the email.
        sig { returns(T.nilable(String)) }
        attr_reader :feedback_survey_id

        sig { params(feedback_survey_id: String).void }
        attr_writer :feedback_survey_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :folder_id

        sig { params(folder_id: Integer).void }
        attr_writer :folder_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :folder_id_v2

        sig { params(folder_id_v2: Integer).void }
        attr_writer :folder_id_v2

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_ab

        sig { params(is_ab: T::Boolean).void }
        attr_writer :is_ab

        # Returns the published status of the email. This is read only.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_published

        sig { params(is_published: T::Boolean).void }
        attr_writer :is_published

        # Returns whether the email is a transactional email or not. This is read only.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_transactional

        sig { params(is_transactional: T::Boolean).void }
        attr_writer :is_transactional

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :jitter_send_time

        sig { params(jitter_send_time: T::Boolean).void }
        attr_writer :jitter_send_time

        sig do
          returns(
            T.nilable(
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          )
        end
        attr_reader :language

        sig do
          params(
            language: HubspotSDK::Marketing::PublicEmail::Language::OrSymbol
          ).void
        end
        attr_writer :language

        sig { returns(T.nilable(String)) }
        attr_reader :preview_key

        sig { params(preview_key: String).void }
        attr_writer :preview_key

        sig { returns(T.nilable(String)) }
        attr_reader :primary_email_campaign_id

        sig { params(primary_email_campaign_id: String).void }
        attr_writer :primary_email_campaign_id

        # The date and time the email is scheduled for, in ISO8601 representation. This is
        # only used in local time or scheduled emails.
        sig { returns(T.nilable(Time)) }
        attr_reader :publish_date

        sig { params(publish_date: Time).void }
        attr_writer :publish_date

        # The date and time the email was published at, in ISO8601 representation.
        sig { returns(T.nilable(Time)) }
        attr_reader :published_at

        sig { params(published_at: Time).void }
        attr_writer :published_at

        # Email of the user who published/sent the email.
        sig { returns(T.nilable(String)) }
        attr_reader :published_by_email

        sig { params(published_by_email: String).void }
        attr_writer :published_by_email

        # The ID of the user who published the email.
        sig { returns(T.nilable(String)) }
        attr_reader :published_by_id

        sig { params(published_by_id: String).void }
        attr_writer :published_by_id

        # Name of the user who published the email.
        sig { returns(T.nilable(String)) }
        attr_reader :published_by_name

        sig { params(published_by_name: String).void }
        attr_writer :published_by_name

        # RSS related data if it is a blog or rss email.
        sig { returns(T.nilable(HubspotSDK::Marketing::PublicRssEmailDetails)) }
        attr_reader :rss_data

        sig do
          params(
            rss_data: HubspotSDK::Marketing::PublicRssEmailDetails::OrHash
          ).void
        end
        attr_writer :rss_data

        sig { returns(T.nilable(HubspotSDK::Marketing::EmailStatisticsData)) }
        attr_reader :stats

        sig do
          params(stats: HubspotSDK::Marketing::EmailStatisticsData::OrHash).void
        end
        attr_writer :stats

        # Data structure representing the subscription fields of the email.
        sig do
          returns(
            T.nilable(HubspotSDK::Marketing::PublicEmailSubscriptionDetails)
          )
        end
        attr_reader :subscription_details

        sig do
          params(
            subscription_details:
              HubspotSDK::Marketing::PublicEmailSubscriptionDetails::OrHash
          ).void
        end
        attr_writer :subscription_details

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :teams_with_access

        sig { params(teams_with_access: T::Array[String]).void }
        attr_writer :teams_with_access

        # AB testing related data. This property is only returned for AB type emails.
        sig do
          returns(T.nilable(HubspotSDK::Marketing::PublicEmailTestingDetails))
        end
        attr_reader :testing

        sig do
          params(
            testing: HubspotSDK::Marketing::PublicEmailTestingDetails::OrHash
          ).void
        end
        attr_writer :testing

        # The email type, this is derived from other properties on the email such as
        # subcategory.
        sig do
          returns(
            T.nilable(HubspotSDK::Marketing::PublicEmail::Type::TaggedSymbol)
          )
        end
        attr_reader :type

        sig do
          params(type: HubspotSDK::Marketing::PublicEmail::Type::OrSymbol).void
        end
        attr_writer :type

        sig { returns(T.nilable(Time)) }
        attr_reader :unpublished_at

        sig { params(unpublished_at: Time).void }
        attr_writer :unpublished_at

        # The date and time of the last update to the email, in ISO8601 representation.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        # The ID of the user who last updated the email.
        sig { returns(T.nilable(String)) }
        attr_reader :updated_by_id

        sig { params(updated_by_id: String).void }
        attr_writer :updated_by_id

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :users_with_access

        sig { params(users_with_access: T::Array[String]).void }
        attr_writer :users_with_access

        sig do
          returns(T.nilable(HubspotSDK::Marketing::PublicWebversionDetails))
        end
        attr_reader :webversion

        sig do
          params(
            webversion: HubspotSDK::Marketing::PublicWebversionDetails::OrHash
          ).void
        end
        attr_writer :webversion

        # Names of workflows in which the email is used within a "send email" action.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :workflow_names

        sig { params(workflow_names: T::Array[String]).void }
        attr_writer :workflow_names

        # A marketing email
        sig do
          params(
            id: String,
            content: HubspotSDK::Marketing::PublicEmailContent::OrHash,
            from: HubspotSDK::Marketing::PublicEmailFromDetails::OrHash,
            name: String,
            send_on_publish: T::Boolean,
            state: HubspotSDK::Marketing::PublicEmail::State::OrSymbol,
            subcategory: String,
            subject: String,
            to: HubspotSDK::Marketing::PublicEmailToDetails::OrHash,
            active_domain: String,
            all_email_campaign_ids: T::Array[String],
            archived: T::Boolean,
            business_unit_id: String,
            campaign: String,
            campaign_name: String,
            campaign_utm: String,
            cloned_from: String,
            created_at: Time,
            created_by_id: String,
            deleted_at: Time,
            email_campaign_group_id: String,
            email_template_mode:
              HubspotSDK::Marketing::PublicEmail::EmailTemplateMode::OrSymbol,
            feedback_survey_id: String,
            folder_id: Integer,
            folder_id_v2: Integer,
            is_ab: T::Boolean,
            is_published: T::Boolean,
            is_transactional: T::Boolean,
            jitter_send_time: T::Boolean,
            language: HubspotSDK::Marketing::PublicEmail::Language::OrSymbol,
            preview_key: String,
            primary_email_campaign_id: String,
            publish_date: Time,
            published_at: Time,
            published_by_email: String,
            published_by_id: String,
            published_by_name: String,
            rss_data: HubspotSDK::Marketing::PublicRssEmailDetails::OrHash,
            stats: HubspotSDK::Marketing::EmailStatisticsData::OrHash,
            subscription_details:
              HubspotSDK::Marketing::PublicEmailSubscriptionDetails::OrHash,
            teams_with_access: T::Array[String],
            testing: HubspotSDK::Marketing::PublicEmailTestingDetails::OrHash,
            type: HubspotSDK::Marketing::PublicEmail::Type::OrSymbol,
            unpublished_at: Time,
            updated_at: Time,
            updated_by_id: String,
            users_with_access: T::Array[String],
            webversion: HubspotSDK::Marketing::PublicWebversionDetails::OrHash,
            workflow_names: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # The email ID.
          id:,
          # Data structure representing the content of the email.
          content:,
          # Data structure representing the from fields on the email.
          from:,
          # The name of the email, as displayed on the email dashboard.
          name:,
          # Determines whether the email will be sent immediately on publish.
          send_on_publish:,
          # The email state.
          state:,
          # The email subcategory.
          subcategory:,
          # The subject of the email.
          subject:,
          # Data structure representing the to fields of the email.
          to:,
          # The active domain of the email.
          active_domain: nil,
          # List of emailCampaignIds.
          all_email_campaign_ids: nil,
          # Determines if the email is archived or not.
          archived: nil,
          business_unit_id: nil,
          # The campaign GUID on the email.
          campaign: nil,
          # The name of the campaign.
          campaign_name: nil,
          campaign_utm: nil,
          # The ID of the email this email was cloned from.
          cloned_from: nil,
          # The date and time of the email's creation, in ISO8601 representation.
          created_at: nil,
          # The id of the user who created the email.
          created_by_id: nil,
          # The date and time the email was deleted at, in ISO8601 representation.
          deleted_at: nil,
          email_campaign_group_id: nil,
          email_template_mode: nil,
          # The ID of the feedback survey linked to the email.
          feedback_survey_id: nil,
          folder_id: nil,
          folder_id_v2: nil,
          is_ab: nil,
          # Returns the published status of the email. This is read only.
          is_published: nil,
          # Returns whether the email is a transactional email or not. This is read only.
          is_transactional: nil,
          jitter_send_time: nil,
          language: nil,
          preview_key: nil,
          primary_email_campaign_id: nil,
          # The date and time the email is scheduled for, in ISO8601 representation. This is
          # only used in local time or scheduled emails.
          publish_date: nil,
          # The date and time the email was published at, in ISO8601 representation.
          published_at: nil,
          # Email of the user who published/sent the email.
          published_by_email: nil,
          # The ID of the user who published the email.
          published_by_id: nil,
          # Name of the user who published the email.
          published_by_name: nil,
          # RSS related data if it is a blog or rss email.
          rss_data: nil,
          stats: nil,
          # Data structure representing the subscription fields of the email.
          subscription_details: nil,
          teams_with_access: nil,
          # AB testing related data. This property is only returned for AB type emails.
          testing: nil,
          # The email type, this is derived from other properties on the email such as
          # subcategory.
          type: nil,
          unpublished_at: nil,
          # The date and time of the last update to the email, in ISO8601 representation.
          updated_at: nil,
          # The ID of the user who last updated the email.
          updated_by_id: nil,
          users_with_access: nil,
          webversion: nil,
          # Names of workflows in which the email is used within a "send email" action.
          workflow_names: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              content: HubspotSDK::Marketing::PublicEmailContent,
              from: HubspotSDK::Marketing::PublicEmailFromDetails,
              name: String,
              send_on_publish: T::Boolean,
              state: HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol,
              subcategory: String,
              subject: String,
              to: HubspotSDK::Marketing::PublicEmailToDetails,
              active_domain: String,
              all_email_campaign_ids: T::Array[String],
              archived: T::Boolean,
              business_unit_id: String,
              campaign: String,
              campaign_name: String,
              campaign_utm: String,
              cloned_from: String,
              created_at: Time,
              created_by_id: String,
              deleted_at: Time,
              email_campaign_group_id: String,
              email_template_mode:
                HubspotSDK::Marketing::PublicEmail::EmailTemplateMode::TaggedSymbol,
              feedback_survey_id: String,
              folder_id: Integer,
              folder_id_v2: Integer,
              is_ab: T::Boolean,
              is_published: T::Boolean,
              is_transactional: T::Boolean,
              jitter_send_time: T::Boolean,
              language:
                HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol,
              preview_key: String,
              primary_email_campaign_id: String,
              publish_date: Time,
              published_at: Time,
              published_by_email: String,
              published_by_id: String,
              published_by_name: String,
              rss_data: HubspotSDK::Marketing::PublicRssEmailDetails,
              stats: HubspotSDK::Marketing::EmailStatisticsData,
              subscription_details:
                HubspotSDK::Marketing::PublicEmailSubscriptionDetails,
              teams_with_access: T::Array[String],
              testing: HubspotSDK::Marketing::PublicEmailTestingDetails,
              type: HubspotSDK::Marketing::PublicEmail::Type::TaggedSymbol,
              unpublished_at: Time,
              updated_at: Time,
              updated_by_id: String,
              users_with_access: T::Array[String],
              webversion: HubspotSDK::Marketing::PublicWebversionDetails,
              workflow_names: T::Array[String]
            }
          )
        end
        def to_hash
        end

        # The email state.
        module State
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Marketing::PublicEmail::State)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUTOMATED =
            T.let(
              :AUTOMATED,
              HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          AUTOMATED_DRAFT =
            T.let(
              :AUTOMATED_DRAFT,
              HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          AUTOMATED_SENDING =
            T.let(
              :AUTOMATED_SENDING,
              HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          AUTOMATED_FOR_FORM =
            T.let(
              :AUTOMATED_FOR_FORM,
              HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          AUTOMATED_FOR_FORM_BUFFER =
            T.let(
              :AUTOMATED_FOR_FORM_BUFFER,
              HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          AUTOMATED_FOR_FORM_DRAFT =
            T.let(
              :AUTOMATED_FOR_FORM_DRAFT,
              HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          AUTOMATED_FOR_FORM_LEGACY =
            T.let(
              :AUTOMATED_FOR_FORM_LEGACY,
              HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          BLOG_EMAIL_DRAFT =
            T.let(
              :BLOG_EMAIL_DRAFT,
              HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          BLOG_EMAIL_PUBLISHED =
            T.let(
              :BLOG_EMAIL_PUBLISHED,
              HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          DRAFT =
            T.let(
              :DRAFT,
              HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          DRAFT_AB =
            T.let(
              :DRAFT_AB,
              HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          DRAFT_AB_VARIANT =
            T.let(
              :DRAFT_AB_VARIANT,
              HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          ERROR =
            T.let(
              :ERROR,
              HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          LOSER_AB_VARIANT =
            T.let(
              :LOSER_AB_VARIANT,
              HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          PAGE_STUB =
            T.let(
              :PAGE_STUB,
              HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          PRE_PROCESSING =
            T.let(
              :PRE_PROCESSING,
              HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          PUBLISHED =
            T.let(
              :PUBLISHED,
              HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          PUBLISHED_AB =
            T.let(
              :PUBLISHED_AB,
              HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          PUBLISHED_AB_VARIANT =
            T.let(
              :PUBLISHED_AB_VARIANT,
              HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          PUBLISHED_OR_SCHEDULED =
            T.let(
              :PUBLISHED_OR_SCHEDULED,
              HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          RSS_TO_EMAIL_DRAFT =
            T.let(
              :RSS_TO_EMAIL_DRAFT,
              HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          RSS_TO_EMAIL_PUBLISHED =
            T.let(
              :RSS_TO_EMAIL_PUBLISHED,
              HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          SCHEDULED =
            T.let(
              :SCHEDULED,
              HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          SCHEDULED_AB =
            T.let(
              :SCHEDULED_AB,
              HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          SCHEDULED_OR_PUBLISHED =
            T.let(
              :SCHEDULED_OR_PUBLISHED,
              HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          AUTOMATED_AB =
            T.let(
              :AUTOMATED_AB,
              HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          AUTOMATED_AB_VARIANT =
            T.let(
              :AUTOMATED_AB_VARIANT,
              HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          AUTOMATED_DRAFT_AB =
            T.let(
              :AUTOMATED_DRAFT_AB,
              HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          AUTOMATED_DRAFT_ABVARIANT =
            T.let(
              :AUTOMATED_DRAFT_ABVARIANT,
              HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          AUTOMATED_LOSER_ABVARIANT =
            T.let(
              :AUTOMATED_LOSER_ABVARIANT,
              HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          AGENT_GENERATED =
            T.let(
              :AGENT_GENERATED,
              HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::Marketing::PublicEmail::State::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        module EmailTemplateMode
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Marketing::PublicEmail::EmailTemplateMode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DESIGN_MANAGER =
            T.let(
              :DESIGN_MANAGER,
              HubspotSDK::Marketing::PublicEmail::EmailTemplateMode::TaggedSymbol
            )
          DRAG_AND_DROP =
            T.let(
              :DRAG_AND_DROP,
              HubspotSDK::Marketing::PublicEmail::EmailTemplateMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::PublicEmail::EmailTemplateMode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Language
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Marketing::PublicEmail::Language)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AF =
            T.let(
              :af,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AF_NA =
            T.let(
              :"af-na",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AF_ZA =
            T.let(
              :"af-za",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AGQ =
            T.let(
              :agq,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AGQ_CM =
            T.let(
              :"agq-cm",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AK =
            T.let(
              :ak,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AK_GH =
            T.let(
              :"ak-gh",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AM =
            T.let(
              :am,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AM_ET =
            T.let(
              :"am-et",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ANN =
            T.let(
              :ann,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ANN_NG =
            T.let(
              :"ann-ng",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR =
            T.let(
              :ar,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_001 =
            T.let(
              :"ar-001",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_AE =
            T.let(
              :"ar-ae",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_BH =
            T.let(
              :"ar-bh",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_DJ =
            T.let(
              :"ar-dj",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_DZ =
            T.let(
              :"ar-dz",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_EG =
            T.let(
              :"ar-eg",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_EH =
            T.let(
              :"ar-eh",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_ER =
            T.let(
              :"ar-er",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_IL =
            T.let(
              :"ar-il",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_IQ =
            T.let(
              :"ar-iq",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_JO =
            T.let(
              :"ar-jo",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_KM =
            T.let(
              :"ar-km",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_KW =
            T.let(
              :"ar-kw",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_LB =
            T.let(
              :"ar-lb",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_LY =
            T.let(
              :"ar-ly",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_MA =
            T.let(
              :"ar-ma",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_MR =
            T.let(
              :"ar-mr",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_OM =
            T.let(
              :"ar-om",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_PS =
            T.let(
              :"ar-ps",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_QA =
            T.let(
              :"ar-qa",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_SA =
            T.let(
              :"ar-sa",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_SD =
            T.let(
              :"ar-sd",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_SO =
            T.let(
              :"ar-so",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_SS =
            T.let(
              :"ar-ss",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_SY =
            T.let(
              :"ar-sy",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_TD =
            T.let(
              :"ar-td",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_TN =
            T.let(
              :"ar-tn",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_YE =
            T.let(
              :"ar-ye",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AS =
            T.let(
              :as,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ASA =
            T.let(
              :asa,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ASA_TZ =
            T.let(
              :"asa-tz",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AST =
            T.let(
              :ast,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AST_ES =
            T.let(
              :"ast-es",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AS_IN =
            T.let(
              :"as-in",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AZ =
            T.let(
              :az,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AZ_AZ =
            T.let(
              :"az-az",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BAS =
            T.let(
              :bas,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BAS_CM =
            T.let(
              :"bas-cm",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BE =
            T.let(
              :be,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BEM =
            T.let(
              :bem,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BEM_ZM =
            T.let(
              :"bem-zm",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BEZ =
            T.let(
              :bez,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BEZ_TZ =
            T.let(
              :"bez-tz",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BE_BY =
            T.let(
              :"be-by",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BG =
            T.let(
              :bg,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BGC =
            T.let(
              :bgc,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BGC_IN =
            T.let(
              :"bgc-in",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BG_BG =
            T.let(
              :"bg-bg",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BHO =
            T.let(
              :bho,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BHO_IN =
            T.let(
              :"bho-in",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BM =
            T.let(
              :bm,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BM_ML =
            T.let(
              :"bm-ml",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BN =
            T.let(
              :bn,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BN_BD =
            T.let(
              :"bn-bd",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BN_IN =
            T.let(
              :"bn-in",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BO =
            T.let(
              :bo,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BO_CN =
            T.let(
              :"bo-cn",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BO_IN =
            T.let(
              :"bo-in",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BR =
            T.let(
              :br,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BRX =
            T.let(
              :brx,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BRX_IN =
            T.let(
              :"brx-in",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BR_FR =
            T.let(
              :"br-fr",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BS =
            T.let(
              :bs,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BS_BA =
            T.let(
              :"bs-ba",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CA =
            T.let(
              :ca,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CA_AD =
            T.let(
              :"ca-ad",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CA_ES =
            T.let(
              :"ca-es",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CA_FR =
            T.let(
              :"ca-fr",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CA_IT =
            T.let(
              :"ca-it",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CCP =
            T.let(
              :ccp,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CCP_BD =
            T.let(
              :"ccp-bd",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CCP_IN =
            T.let(
              :"ccp-in",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CE =
            T.let(
              :ce,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CEB =
            T.let(
              :ceb,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CEB_PH =
            T.let(
              :"ceb-ph",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CE_RU =
            T.let(
              :"ce-ru",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CGG =
            T.let(
              :cgg,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CGG_UG =
            T.let(
              :"cgg-ug",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CHR =
            T.let(
              :chr,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CHR_US =
            T.let(
              :"chr-us",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CKB =
            T.let(
              :ckb,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CKB_IQ =
            T.let(
              :"ckb-iq",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CKB_IR =
            T.let(
              :"ckb-ir",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CS =
            T.let(
              :cs,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CS_CZ =
            T.let(
              :"cs-cz",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CU =
            T.let(
              :cu,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CU_RU =
            T.let(
              :"cu-ru",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CV =
            T.let(
              :cv,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CV_RU =
            T.let(
              :"cv-ru",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CY =
            T.let(
              :cy,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CY_GB =
            T.let(
              :"cy-gb",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DA =
            T.let(
              :da,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DAV =
            T.let(
              :dav,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DAV_KE =
            T.let(
              :"dav-ke",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DA_DK =
            T.let(
              :"da-dk",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DA_GL =
            T.let(
              :"da-gl",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DE =
            T.let(
              :de,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DE_AT =
            T.let(
              :"de-at",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DE_BE =
            T.let(
              :"de-be",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DE_CH =
            T.let(
              :"de-ch",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DE_DE =
            T.let(
              :"de-de",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DE_GR =
            T.let(
              :"de-gr",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DE_IT =
            T.let(
              :"de-it",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DE_LI =
            T.let(
              :"de-li",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DE_LU =
            T.let(
              :"de-lu",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DJE =
            T.let(
              :dje,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DJE_NE =
            T.let(
              :"dje-ne",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DOI =
            T.let(
              :doi,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DOI_IN =
            T.let(
              :"doi-in",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DSB =
            T.let(
              :dsb,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DSB_DE =
            T.let(
              :"dsb-de",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DUA =
            T.let(
              :dua,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DUA_CM =
            T.let(
              :"dua-cm",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DYO =
            T.let(
              :dyo,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DYO_SN =
            T.let(
              :"dyo-sn",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DZ =
            T.let(
              :dz,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DZ_BT =
            T.let(
              :"dz-bt",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EBU =
            T.let(
              :ebu,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EBU_KE =
            T.let(
              :"ebu-ke",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EE =
            T.let(
              :ee,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EE_GH =
            T.let(
              :"ee-gh",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EE_TG =
            T.let(
              :"ee-tg",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EL =
            T.let(
              :el,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EL_CY =
            T.let(
              :"el-cy",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EL_GR =
            T.let(
              :"el-gr",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN =
            T.let(
              :en,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_001 =
            T.let(
              :"en-001",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_150 =
            T.let(
              :"en-150",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_AE =
            T.let(
              :"en-ae",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_AG =
            T.let(
              :"en-ag",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_AI =
            T.let(
              :"en-ai",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_AS =
            T.let(
              :"en-as",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_AT =
            T.let(
              :"en-at",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_AU =
            T.let(
              :"en-au",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_BB =
            T.let(
              :"en-bb",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_BE =
            T.let(
              :"en-be",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_BI =
            T.let(
              :"en-bi",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_BM =
            T.let(
              :"en-bm",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_BS =
            T.let(
              :"en-bs",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_BW =
            T.let(
              :"en-bw",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_BZ =
            T.let(
              :"en-bz",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_CA =
            T.let(
              :"en-ca",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_CC =
            T.let(
              :"en-cc",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_CH =
            T.let(
              :"en-ch",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_CK =
            T.let(
              :"en-ck",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_CM =
            T.let(
              :"en-cm",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_CN =
            T.let(
              :"en-cn",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_CX =
            T.let(
              :"en-cx",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_CY =
            T.let(
              :"en-cy",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_DE =
            T.let(
              :"en-de",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_DG =
            T.let(
              :"en-dg",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_DK =
            T.let(
              :"en-dk",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_DM =
            T.let(
              :"en-dm",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_EE =
            T.let(
              :"en-ee",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_EG =
            T.let(
              :"en-eg",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_ER =
            T.let(
              :"en-er",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_ES =
            T.let(
              :"en-es",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_FI =
            T.let(
              :"en-fi",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_FJ =
            T.let(
              :"en-fj",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_FK =
            T.let(
              :"en-fk",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_FM =
            T.let(
              :"en-fm",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_FR =
            T.let(
              :"en-fr",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_GB =
            T.let(
              :"en-gb",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_GD =
            T.let(
              :"en-gd",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_GG =
            T.let(
              :"en-gg",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_GH =
            T.let(
              :"en-gh",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_GI =
            T.let(
              :"en-gi",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_GM =
            T.let(
              :"en-gm",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_GU =
            T.let(
              :"en-gu",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_GY =
            T.let(
              :"en-gy",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_HK =
            T.let(
              :"en-hk",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_IE =
            T.let(
              :"en-ie",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_IL =
            T.let(
              :"en-il",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_IM =
            T.let(
              :"en-im",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_IN =
            T.let(
              :"en-in",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_IO =
            T.let(
              :"en-io",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_JE =
            T.let(
              :"en-je",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_JM =
            T.let(
              :"en-jm",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_KE =
            T.let(
              :"en-ke",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_KI =
            T.let(
              :"en-ki",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_KN =
            T.let(
              :"en-kn",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_KY =
            T.let(
              :"en-ky",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_LC =
            T.let(
              :"en-lc",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_LR =
            T.let(
              :"en-lr",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_LS =
            T.let(
              :"en-ls",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_LU =
            T.let(
              :"en-lu",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_MG =
            T.let(
              :"en-mg",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_MH =
            T.let(
              :"en-mh",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_MO =
            T.let(
              :"en-mo",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_MP =
            T.let(
              :"en-mp",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_MS =
            T.let(
              :"en-ms",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_MT =
            T.let(
              :"en-mt",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_MU =
            T.let(
              :"en-mu",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_MV =
            T.let(
              :"en-mv",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_MW =
            T.let(
              :"en-mw",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_MX =
            T.let(
              :"en-mx",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_MY =
            T.let(
              :"en-my",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_NA =
            T.let(
              :"en-na",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_NF =
            T.let(
              :"en-nf",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_NG =
            T.let(
              :"en-ng",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_NL =
            T.let(
              :"en-nl",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_NR =
            T.let(
              :"en-nr",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_NU =
            T.let(
              :"en-nu",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_NZ =
            T.let(
              :"en-nz",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_PG =
            T.let(
              :"en-pg",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_PH =
            T.let(
              :"en-ph",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_PK =
            T.let(
              :"en-pk",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_PN =
            T.let(
              :"en-pn",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_PR =
            T.let(
              :"en-pr",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_PW =
            T.let(
              :"en-pw",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_RW =
            T.let(
              :"en-rw",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_SB =
            T.let(
              :"en-sb",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_SC =
            T.let(
              :"en-sc",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_SD =
            T.let(
              :"en-sd",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_SE =
            T.let(
              :"en-se",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_SG =
            T.let(
              :"en-sg",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_SH =
            T.let(
              :"en-sh",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_SI =
            T.let(
              :"en-si",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_SL =
            T.let(
              :"en-sl",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_SS =
            T.let(
              :"en-ss",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_SX =
            T.let(
              :"en-sx",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_SZ =
            T.let(
              :"en-sz",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_TC =
            T.let(
              :"en-tc",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_TK =
            T.let(
              :"en-tk",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_TN =
            T.let(
              :"en-tn",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_TO =
            T.let(
              :"en-to",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_TT =
            T.let(
              :"en-tt",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_TV =
            T.let(
              :"en-tv",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_TZ =
            T.let(
              :"en-tz",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_UG =
            T.let(
              :"en-ug",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_UM =
            T.let(
              :"en-um",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_US =
            T.let(
              :"en-us",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_VC =
            T.let(
              :"en-vc",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_VG =
            T.let(
              :"en-vg",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_VI =
            T.let(
              :"en-vi",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_VU =
            T.let(
              :"en-vu",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_WS =
            T.let(
              :"en-ws",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_ZA =
            T.let(
              :"en-za",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_ZM =
            T.let(
              :"en-zm",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_ZW =
            T.let(
              :"en-zw",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EO =
            T.let(
              :eo,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EO_001 =
            T.let(
              :"eo-001",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES =
            T.let(
              :es,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_419 =
            T.let(
              :"es-419",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_AR =
            T.let(
              :"es-ar",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_BO =
            T.let(
              :"es-bo",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_BR =
            T.let(
              :"es-br",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_BZ =
            T.let(
              :"es-bz",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_CL =
            T.let(
              :"es-cl",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_CO =
            T.let(
              :"es-co",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_CR =
            T.let(
              :"es-cr",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_CU =
            T.let(
              :"es-cu",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_DO =
            T.let(
              :"es-do",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_EA =
            T.let(
              :"es-ea",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_EC =
            T.let(
              :"es-ec",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_ES =
            T.let(
              :"es-es",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_GQ =
            T.let(
              :"es-gq",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_GT =
            T.let(
              :"es-gt",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_HN =
            T.let(
              :"es-hn",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_IC =
            T.let(
              :"es-ic",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_MX =
            T.let(
              :"es-mx",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_NI =
            T.let(
              :"es-ni",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_PA =
            T.let(
              :"es-pa",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_PE =
            T.let(
              :"es-pe",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_PH =
            T.let(
              :"es-ph",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_PR =
            T.let(
              :"es-pr",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_PY =
            T.let(
              :"es-py",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_SV =
            T.let(
              :"es-sv",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_US =
            T.let(
              :"es-us",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_UY =
            T.let(
              :"es-uy",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_VE =
            T.let(
              :"es-ve",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ET =
            T.let(
              :et,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ET_EE =
            T.let(
              :"et-ee",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EU =
            T.let(
              :eu,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EU_ES =
            T.let(
              :"eu-es",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EWO =
            T.let(
              :ewo,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EWO_CM =
            T.let(
              :"ewo-cm",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FA =
            T.let(
              :fa,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FA_AF =
            T.let(
              :"fa-af",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FA_IR =
            T.let(
              :"fa-ir",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FF =
            T.let(
              :ff,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FF_BF =
            T.let(
              :"ff-bf",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FF_CM =
            T.let(
              :"ff-cm",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FF_GH =
            T.let(
              :"ff-gh",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FF_GM =
            T.let(
              :"ff-gm",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FF_GN =
            T.let(
              :"ff-gn",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FF_GW =
            T.let(
              :"ff-gw",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FF_LR =
            T.let(
              :"ff-lr",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FF_MR =
            T.let(
              :"ff-mr",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FF_NE =
            T.let(
              :"ff-ne",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FF_NG =
            T.let(
              :"ff-ng",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FF_SL =
            T.let(
              :"ff-sl",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FF_SN =
            T.let(
              :"ff-sn",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FI =
            T.let(
              :fi,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FIL =
            T.let(
              :fil,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FIL_PH =
            T.let(
              :"fil-ph",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FI_FI =
            T.let(
              :"fi-fi",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FO =
            T.let(
              :fo,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FO_DK =
            T.let(
              :"fo-dk",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FO_FO =
            T.let(
              :"fo-fo",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR =
            T.let(
              :fr,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FRR =
            T.let(
              :frr,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FRR_DE =
            T.let(
              :"frr-de",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_BE =
            T.let(
              :"fr-be",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_BF =
            T.let(
              :"fr-bf",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_BI =
            T.let(
              :"fr-bi",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_BJ =
            T.let(
              :"fr-bj",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_BL =
            T.let(
              :"fr-bl",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_CA =
            T.let(
              :"fr-ca",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_CD =
            T.let(
              :"fr-cd",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_CF =
            T.let(
              :"fr-cf",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_CG =
            T.let(
              :"fr-cg",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_CH =
            T.let(
              :"fr-ch",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_CI =
            T.let(
              :"fr-ci",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_CM =
            T.let(
              :"fr-cm",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_DJ =
            T.let(
              :"fr-dj",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_DZ =
            T.let(
              :"fr-dz",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_FR =
            T.let(
              :"fr-fr",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_GA =
            T.let(
              :"fr-ga",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_GF =
            T.let(
              :"fr-gf",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_GN =
            T.let(
              :"fr-gn",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_GP =
            T.let(
              :"fr-gp",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_GQ =
            T.let(
              :"fr-gq",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_HT =
            T.let(
              :"fr-ht",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_KM =
            T.let(
              :"fr-km",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_LU =
            T.let(
              :"fr-lu",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_MA =
            T.let(
              :"fr-ma",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_MC =
            T.let(
              :"fr-mc",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_MF =
            T.let(
              :"fr-mf",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_MG =
            T.let(
              :"fr-mg",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_ML =
            T.let(
              :"fr-ml",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_MQ =
            T.let(
              :"fr-mq",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_MR =
            T.let(
              :"fr-mr",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_MU =
            T.let(
              :"fr-mu",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_NC =
            T.let(
              :"fr-nc",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_NE =
            T.let(
              :"fr-ne",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_PF =
            T.let(
              :"fr-pf",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_PM =
            T.let(
              :"fr-pm",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_RE =
            T.let(
              :"fr-re",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_RW =
            T.let(
              :"fr-rw",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_SC =
            T.let(
              :"fr-sc",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_SN =
            T.let(
              :"fr-sn",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_SY =
            T.let(
              :"fr-sy",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_TD =
            T.let(
              :"fr-td",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_TG =
            T.let(
              :"fr-tg",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_TN =
            T.let(
              :"fr-tn",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_VU =
            T.let(
              :"fr-vu",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_WF =
            T.let(
              :"fr-wf",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_YT =
            T.let(
              :"fr-yt",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FUR =
            T.let(
              :fur,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FUR_IT =
            T.let(
              :"fur-it",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FY =
            T.let(
              :fy,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FY_NL =
            T.let(
              :"fy-nl",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GA =
            T.let(
              :ga,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GA_GB =
            T.let(
              :"ga-gb",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GA_IE =
            T.let(
              :"ga-ie",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GD =
            T.let(
              :gd,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GD_GB =
            T.let(
              :"gd-gb",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GL =
            T.let(
              :gl,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GL_ES =
            T.let(
              :"gl-es",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GSW =
            T.let(
              :gsw,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GSW_CH =
            T.let(
              :"gsw-ch",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GSW_FR =
            T.let(
              :"gsw-fr",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GSW_LI =
            T.let(
              :"gsw-li",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GU =
            T.let(
              :gu,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GUZ =
            T.let(
              :guz,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GUZ_KE =
            T.let(
              :"guz-ke",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GU_IN =
            T.let(
              :"gu-in",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GV =
            T.let(
              :gv,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GV_IM =
            T.let(
              :"gv-im",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HA =
            T.let(
              :ha,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HAW =
            T.let(
              :haw,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HAW_US =
            T.let(
              :"haw-us",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HA_GH =
            T.let(
              :"ha-gh",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HA_NE =
            T.let(
              :"ha-ne",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HA_NG =
            T.let(
              :"ha-ng",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HE =
            T.let(
              :he,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HE_IL =
            T.let(
              :"he-il",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HI =
            T.let(
              :hi,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HI_IN =
            T.let(
              :"hi-in",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HR =
            T.let(
              :hr,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HR_BA =
            T.let(
              :"hr-ba",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HR_HR =
            T.let(
              :"hr-hr",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HSB =
            T.let(
              :hsb,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HSB_DE =
            T.let(
              :"hsb-de",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HU =
            T.let(
              :hu,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HU_HU =
            T.let(
              :"hu-hu",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HY =
            T.let(
              :hy,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HY_AM =
            T.let(
              :"hy-am",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          IA =
            T.let(
              :ia,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          IA_001 =
            T.let(
              :"ia-001",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ID =
            T.let(
              :id,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          IG =
            T.let(
              :ig,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          IG_NG =
            T.let(
              :"ig-ng",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          II =
            T.let(
              :ii,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          II_CN =
            T.let(
              :"ii-cn",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ID_ID =
            T.let(
              :"id-id",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          IS =
            T.let(
              :is,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          IS_IS =
            T.let(
              :"is-is",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          IT =
            T.let(
              :it,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          IT_CH =
            T.let(
              :"it-ch",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          IT_IT =
            T.let(
              :"it-it",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          IT_SM =
            T.let(
              :"it-sm",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          IT_VA =
            T.let(
              :"it-va",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          JA =
            T.let(
              :ja,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          JA_JP =
            T.let(
              :"ja-jp",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          JGO =
            T.let(
              :jgo,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          JGO_CM =
            T.let(
              :"jgo-cm",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          YI =
            T.let(
              :yi,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          YI_001 =
            T.let(
              :"yi-001",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          JMC =
            T.let(
              :jmc,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          JMC_TZ =
            T.let(
              :"jmc-tz",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          JV =
            T.let(
              :jv,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          JV_ID =
            T.let(
              :"jv-id",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KA =
            T.let(
              :ka,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KAB =
            T.let(
              :kab,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KAB_DZ =
            T.let(
              :"kab-dz",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KAM =
            T.let(
              :kam,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KAM_KE =
            T.let(
              :"kam-ke",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KA_GE =
            T.let(
              :"ka-ge",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KDE =
            T.let(
              :kde,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KDE_TZ =
            T.let(
              :"kde-tz",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KEA =
            T.let(
              :kea,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KEA_CV =
            T.let(
              :"kea-cv",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KGP =
            T.let(
              :kgp,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KGP_BR =
            T.let(
              :"kgp-br",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KHQ =
            T.let(
              :khq,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KHQ_ML =
            T.let(
              :"khq-ml",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KI =
            T.let(
              :ki,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KI_KE =
            T.let(
              :"ki-ke",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KK =
            T.let(
              :kk,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KKJ =
            T.let(
              :kkj,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KKJ_CM =
            T.let(
              :"kkj-cm",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KK_KZ =
            T.let(
              :"kk-kz",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KL =
            T.let(
              :kl,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KLN =
            T.let(
              :kln,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KLN_KE =
            T.let(
              :"kln-ke",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KL_GL =
            T.let(
              :"kl-gl",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KM =
            T.let(
              :km,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KM_KH =
            T.let(
              :"km-kh",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KN =
            T.let(
              :kn,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KN_IN =
            T.let(
              :"kn-in",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KO =
            T.let(
              :ko,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KOK =
            T.let(
              :kok,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KOK_IN =
            T.let(
              :"kok-in",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KO_KP =
            T.let(
              :"ko-kp",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KO_KR =
            T.let(
              :"ko-kr",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KS =
            T.let(
              :ks,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KSB =
            T.let(
              :ksb,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KSB_TZ =
            T.let(
              :"ksb-tz",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KSF =
            T.let(
              :ksf,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KSF_CM =
            T.let(
              :"ksf-cm",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KSH =
            T.let(
              :ksh,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KSH_DE =
            T.let(
              :"ksh-de",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KS_IN =
            T.let(
              :"ks-in",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KU =
            T.let(
              :ku,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KU_TR =
            T.let(
              :"ku-tr",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KW =
            T.let(
              :kw,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KW_GB =
            T.let(
              :"kw-gb",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KY =
            T.let(
              :ky,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KY_KG =
            T.let(
              :"ky-kg",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LAG =
            T.let(
              :lag,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LAG_TZ =
            T.let(
              :"lag-tz",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LB =
            T.let(
              :lb,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LB_LU =
            T.let(
              :"lb-lu",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LG =
            T.let(
              :lg,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LG_UG =
            T.let(
              :"lg-ug",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LKT =
            T.let(
              :lkt,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LKT_US =
            T.let(
              :"lkt-us",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LN =
            T.let(
              :ln,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LN_AO =
            T.let(
              :"ln-ao",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LN_CD =
            T.let(
              :"ln-cd",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LN_CF =
            T.let(
              :"ln-cf",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LN_CG =
            T.let(
              :"ln-cg",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LO =
            T.let(
              :lo,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LO_LA =
            T.let(
              :"lo-la",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LRC =
            T.let(
              :lrc,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LRC_IQ =
            T.let(
              :"lrc-iq",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LRC_IR =
            T.let(
              :"lrc-ir",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LT =
            T.let(
              :lt,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LT_LT =
            T.let(
              :"lt-lt",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LU =
            T.let(
              :lu,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LUO =
            T.let(
              :luo,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LUO_KE =
            T.let(
              :"luo-ke",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LUY =
            T.let(
              :luy,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LUY_KE =
            T.let(
              :"luy-ke",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LU_CD =
            T.let(
              :"lu-cd",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LV =
            T.let(
              :lv,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LV_LV =
            T.let(
              :"lv-lv",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MAI =
            T.let(
              :mai,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MAI_IN =
            T.let(
              :"mai-in",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MAS =
            T.let(
              :mas,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MAS_KE =
            T.let(
              :"mas-ke",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MAS_TZ =
            T.let(
              :"mas-tz",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MDF =
            T.let(
              :mdf,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MDF_RU =
            T.let(
              :"mdf-ru",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MER =
            T.let(
              :mer,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MER_KE =
            T.let(
              :"mer-ke",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MFE =
            T.let(
              :mfe,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MFE_MU =
            T.let(
              :"mfe-mu",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MG =
            T.let(
              :mg,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MGH =
            T.let(
              :mgh,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MGH_MZ =
            T.let(
              :"mgh-mz",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MGO =
            T.let(
              :mgo,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MGO_CM =
            T.let(
              :"mgo-cm",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MG_MG =
            T.let(
              :"mg-mg",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MI =
            T.let(
              :mi,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MI_NZ =
            T.let(
              :"mi-nz",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MK =
            T.let(
              :mk,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MK_MK =
            T.let(
              :"mk-mk",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ML =
            T.let(
              :ml,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ML_IN =
            T.let(
              :"ml-in",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MN =
            T.let(
              :mn,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MNI =
            T.let(
              :mni,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MNI_IN =
            T.let(
              :"mni-in",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MN_MN =
            T.let(
              :"mn-mn",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MR =
            T.let(
              :mr,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MR_IN =
            T.let(
              :"mr-in",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MS =
            T.let(
              :ms,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MS_BN =
            T.let(
              :"ms-bn",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MS_ID =
            T.let(
              :"ms-id",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MS_MY =
            T.let(
              :"ms-my",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MS_SG =
            T.let(
              :"ms-sg",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MT =
            T.let(
              :mt,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MT_MT =
            T.let(
              :"mt-mt",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MUA =
            T.let(
              :mua,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MUA_CM =
            T.let(
              :"mua-cm",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MY =
            T.let(
              :my,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MY_MM =
            T.let(
              :"my-mm",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MZN =
            T.let(
              :mzn,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MZN_IR =
            T.let(
              :"mzn-ir",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NAQ =
            T.let(
              :naq,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NAQ_NA =
            T.let(
              :"naq-na",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NB =
            T.let(
              :nb,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NB_NO =
            T.let(
              :"nb-no",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NB_SJ =
            T.let(
              :"nb-sj",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ND =
            T.let(
              :nd,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NDS =
            T.let(
              :nds,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NDS_DE =
            T.let(
              :"nds-de",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NDS_NL =
            T.let(
              :"nds-nl",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ND_ZW =
            T.let(
              :"nd-zw",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NE =
            T.let(
              :ne,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NE_IN =
            T.let(
              :"ne-in",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NE_NP =
            T.let(
              :"ne-np",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NL =
            T.let(
              :nl,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NL_AW =
            T.let(
              :"nl-aw",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NL_BE =
            T.let(
              :"nl-be",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NL_BQ =
            T.let(
              :"nl-bq",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NL_CH =
            T.let(
              :"nl-ch",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NL_CW =
            T.let(
              :"nl-cw",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NL_LU =
            T.let(
              :"nl-lu",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NL_NL =
            T.let(
              :"nl-nl",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NL_SR =
            T.let(
              :"nl-sr",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NL_SX =
            T.let(
              :"nl-sx",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NMG =
            T.let(
              :nmg,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NMG_CM =
            T.let(
              :"nmg-cm",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NN =
            T.let(
              :nn,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NNH =
            T.let(
              :nnh,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NNH_CM =
            T.let(
              :"nnh-cm",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NN_NO =
            T.let(
              :"nn-no",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NO =
            T.let(
              :no,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NO_NO =
            T.let(
              :"no-no",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NUS =
            T.let(
              :nus,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NUS_SS =
            T.let(
              :"nus-ss",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NYN =
            T.let(
              :nyn,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NYN_UG =
            T.let(
              :"nyn-ug",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          OC =
            T.let(
              :oc,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          OC_ES =
            T.let(
              :"oc-es",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          OC_FR =
            T.let(
              :"oc-fr",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          OM =
            T.let(
              :om,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          OM_ET =
            T.let(
              :"om-et",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          OM_KE =
            T.let(
              :"om-ke",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          OR =
            T.let(
              :or,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          OR_IN =
            T.let(
              :"or-in",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          OS =
            T.let(
              :os,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          OS_GE =
            T.let(
              :"os-ge",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          OS_RU =
            T.let(
              :"os-ru",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PA =
            T.let(
              :pa,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PA_IN =
            T.let(
              :"pa-in",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PA_PK =
            T.let(
              :"pa-pk",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PCM =
            T.let(
              :pcm,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PCM_NG =
            T.let(
              :"pcm-ng",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PIS =
            T.let(
              :pis,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PIS_SB =
            T.let(
              :"pis-sb",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PL =
            T.let(
              :pl,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PL_PL =
            T.let(
              :"pl-pl",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PRG =
            T.let(
              :prg,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PRG_001 =
            T.let(
              :"prg-001",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PS =
            T.let(
              :ps,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PS_AF =
            T.let(
              :"ps-af",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PS_PK =
            T.let(
              :"ps-pk",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PT =
            T.let(
              :pt,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PT_AO =
            T.let(
              :"pt-ao",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PT_BR =
            T.let(
              :"pt-br",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PT_CH =
            T.let(
              :"pt-ch",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PT_CV =
            T.let(
              :"pt-cv",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PT_GQ =
            T.let(
              :"pt-gq",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PT_GW =
            T.let(
              :"pt-gw",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PT_LU =
            T.let(
              :"pt-lu",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PT_MO =
            T.let(
              :"pt-mo",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PT_MZ =
            T.let(
              :"pt-mz",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PT_PT =
            T.let(
              :"pt-pt",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PT_ST =
            T.let(
              :"pt-st",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PT_TL =
            T.let(
              :"pt-tl",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          QU =
            T.let(
              :qu,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          QU_BO =
            T.let(
              :"qu-bo",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          QU_EC =
            T.let(
              :"qu-ec",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          QU_PE =
            T.let(
              :"qu-pe",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RAJ =
            T.let(
              :raj,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RAJ_IN =
            T.let(
              :"raj-in",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RM =
            T.let(
              :rm,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RM_CH =
            T.let(
              :"rm-ch",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RN =
            T.let(
              :rn,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RN_BI =
            T.let(
              :"rn-bi",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RO =
            T.let(
              :ro,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ROF =
            T.let(
              :rof,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ROF_TZ =
            T.let(
              :"rof-tz",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RO_MD =
            T.let(
              :"ro-md",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RO_RO =
            T.let(
              :"ro-ro",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RU =
            T.let(
              :ru,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RU_BY =
            T.let(
              :"ru-by",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RU_KG =
            T.let(
              :"ru-kg",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RU_KZ =
            T.let(
              :"ru-kz",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RU_MD =
            T.let(
              :"ru-md",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RU_RU =
            T.let(
              :"ru-ru",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RU_UA =
            T.let(
              :"ru-ua",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RW =
            T.let(
              :rw,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RWK =
            T.let(
              :rwk,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RWK_TZ =
            T.let(
              :"rwk-tz",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RW_RW =
            T.let(
              :"rw-rw",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SA =
            T.let(
              :sa,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SAH =
            T.let(
              :sah,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SAH_RU =
            T.let(
              :"sah-ru",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SAQ =
            T.let(
              :saq,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SAQ_KE =
            T.let(
              :"saq-ke",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SAT =
            T.let(
              :sat,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SAT_IN =
            T.let(
              :"sat-in",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SA_IN =
            T.let(
              :"sa-in",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SBP =
            T.let(
              :sbp,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SBP_TZ =
            T.let(
              :"sbp-tz",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SC =
            T.let(
              :sc,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SC_IT =
            T.let(
              :"sc-it",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SD =
            T.let(
              :sd,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SD_IN =
            T.let(
              :"sd-in",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SD_PK =
            T.let(
              :"sd-pk",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SE =
            T.let(
              :se,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SEH =
            T.let(
              :seh,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SEH_MZ =
            T.let(
              :"seh-mz",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SES =
            T.let(
              :ses,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SES_ML =
            T.let(
              :"ses-ml",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SE_FI =
            T.let(
              :"se-fi",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SE_NO =
            T.let(
              :"se-no",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SE_SE =
            T.let(
              :"se-se",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SG =
            T.let(
              :sg,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SG_CF =
            T.let(
              :"sg-cf",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SHI =
            T.let(
              :shi,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SHI_MA =
            T.let(
              :"shi-ma",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SI =
            T.let(
              :si,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SI_LK =
            T.let(
              :"si-lk",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SK =
            T.let(
              :sk,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SK_SK =
            T.let(
              :"sk-sk",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SL =
            T.let(
              :sl,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SL_SI =
            T.let(
              :"sl-si",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SMN =
            T.let(
              :smn,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SMN_FI =
            T.let(
              :"smn-fi",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SMS =
            T.let(
              :sms,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SMS_FI =
            T.let(
              :"sms-fi",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SN =
            T.let(
              :sn,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SN_ZW =
            T.let(
              :"sn-zw",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SO =
            T.let(
              :so,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SO_DJ =
            T.let(
              :"so-dj",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SO_ET =
            T.let(
              :"so-et",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SO_KE =
            T.let(
              :"so-ke",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SO_SO =
            T.let(
              :"so-so",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SQ =
            T.let(
              :sq,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SQ_AL =
            T.let(
              :"sq-al",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SQ_MK =
            T.let(
              :"sq-mk",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SQ_XK =
            T.let(
              :"sq-xk",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SR =
            T.let(
              :sr,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SR_BA =
            T.let(
              :"sr-ba",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SR_CS =
            T.let(
              :"sr-cs",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SR_ME =
            T.let(
              :"sr-me",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SR_RS =
            T.let(
              :"sr-rs",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SR_XK =
            T.let(
              :"sr-xk",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SU =
            T.let(
              :su,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SU_ID =
            T.let(
              :"su-id",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SV =
            T.let(
              :sv,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SV_AX =
            T.let(
              :"sv-ax",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SV_FI =
            T.let(
              :"sv-fi",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SV_SE =
            T.let(
              :"sv-se",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SW =
            T.let(
              :sw,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SW_CD =
            T.let(
              :"sw-cd",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SW_KE =
            T.let(
              :"sw-ke",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SW_TZ =
            T.let(
              :"sw-tz",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SW_UG =
            T.let(
              :"sw-ug",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SY =
            T.let(
              :sy,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TA =
            T.let(
              :ta,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TA_IN =
            T.let(
              :"ta-in",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TA_LK =
            T.let(
              :"ta-lk",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TA_MY =
            T.let(
              :"ta-my",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TA_SG =
            T.let(
              :"ta-sg",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TE =
            T.let(
              :te,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TEO =
            T.let(
              :teo,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TEO_KE =
            T.let(
              :"teo-ke",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TEO_UG =
            T.let(
              :"teo-ug",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TE_IN =
            T.let(
              :"te-in",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TG =
            T.let(
              :tg,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TG_TJ =
            T.let(
              :"tg-tj",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TH =
            T.let(
              :th,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TH_TH =
            T.let(
              :"th-th",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TI =
            T.let(
              :ti,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TI_ER =
            T.let(
              :"ti-er",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TI_ET =
            T.let(
              :"ti-et",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TK =
            T.let(
              :tk,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TK_TM =
            T.let(
              :"tk-tm",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TL =
            T.let(
              :tl,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TO =
            T.let(
              :to,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TOK =
            T.let(
              :tok,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TOK_001 =
            T.let(
              :"tok-001",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TO_TO =
            T.let(
              :"to-to",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TR =
            T.let(
              :tr,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TR_CY =
            T.let(
              :"tr-cy",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TR_TR =
            T.let(
              :"tr-tr",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TT =
            T.let(
              :tt,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TT_RU =
            T.let(
              :"tt-ru",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TWQ =
            T.let(
              :twq,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TWQ_NE =
            T.let(
              :"twq-ne",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TZM =
            T.let(
              :tzm,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TZM_MA =
            T.let(
              :"tzm-ma",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          UG =
            T.let(
              :ug,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          UG_CN =
            T.let(
              :"ug-cn",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          UK =
            T.let(
              :uk,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          UK_UA =
            T.let(
              :"uk-ua",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          UR =
            T.let(
              :ur,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          UR_IN =
            T.let(
              :"ur-in",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          UR_PK =
            T.let(
              :"ur-pk",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          UZ =
            T.let(
              :uz,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          UZ_AF =
            T.let(
              :"uz-af",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          UZ_UZ =
            T.let(
              :"uz-uz",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          VAI =
            T.let(
              :vai,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          VAI_LR =
            T.let(
              :"vai-lr",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          VI =
            T.let(
              :vi,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          VI_VN =
            T.let(
              :"vi-vn",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          VO =
            T.let(
              :vo,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          VO_001 =
            T.let(
              :"vo-001",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          VUN =
            T.let(
              :vun,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          VUN_TZ =
            T.let(
              :"vun-tz",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          WAE =
            T.let(
              :wae,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          WAE_CH =
            T.let(
              :"wae-ch",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          WO =
            T.let(
              :wo,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          WO_SN =
            T.let(
              :"wo-sn",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          XH =
            T.let(
              :xh,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          XH_ZA =
            T.let(
              :"xh-za",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          XOG =
            T.let(
              :xog,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          XOG_UG =
            T.let(
              :"xog-ug",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          YAV =
            T.let(
              :yav,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          YAV_CM =
            T.let(
              :"yav-cm",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          YO =
            T.let(
              :yo,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          YO_BJ =
            T.let(
              :"yo-bj",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          YO_NG =
            T.let(
              :"yo-ng",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          YRL =
            T.let(
              :yrl,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          YRL_BR =
            T.let(
              :"yrl-br",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          YRL_CO =
            T.let(
              :"yrl-co",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          YRL_VE =
            T.let(
              :"yrl-ve",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          YUE =
            T.let(
              :yue,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          YUE_CN =
            T.let(
              :"yue-cn",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          YUE_HK =
            T.let(
              :"yue-hk",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ZGH =
            T.let(
              :zgh,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ZGH_MA =
            T.let(
              :"zgh-ma",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ZH =
            T.let(
              :zh,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ZH_CN =
            T.let(
              :"zh-cn",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ZH_HANS =
            T.let(
              :"zh-hans",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ZH_HANT =
            T.let(
              :"zh-hant",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ZH_HK =
            T.let(
              :"zh-hk",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ZH_MO =
            T.let(
              :"zh-mo",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ZH_SG =
            T.let(
              :"zh-sg",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ZH_TW =
            T.let(
              :"zh-tw",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ZU =
            T.let(
              :zu,
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ZU_ZA =
            T.let(
              :"zu-za",
              HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::PublicEmail::Language::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The email type, this is derived from other properties on the email such as
        # subcategory.
        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Marketing::PublicEmail::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AB_EMAIL =
            T.let(
              :AB_EMAIL,
              HubspotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          BATCH_EMAIL =
            T.let(
              :BATCH_EMAIL,
              HubspotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          LOCALTIME_EMAIL =
            T.let(
              :LOCALTIME_EMAIL,
              HubspotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          AUTOMATED_AB_EMAIL =
            T.let(
              :AUTOMATED_AB_EMAIL,
              HubspotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          BLOG_EMAIL =
            T.let(
              :BLOG_EMAIL,
              HubspotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          BLOG_EMAIL_CHILD =
            T.let(
              :BLOG_EMAIL_CHILD,
              HubspotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          RSS_EMAIL =
            T.let(
              :RSS_EMAIL,
              HubspotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          RSS_EMAIL_CHILD =
            T.let(
              :RSS_EMAIL_CHILD,
              HubspotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          RESUBSCRIBE_EMAIL =
            T.let(
              :RESUBSCRIBE_EMAIL,
              HubspotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          OPTIN_EMAIL =
            T.let(
              :OPTIN_EMAIL,
              HubspotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          OPTIN_FOLLOWUP_EMAIL =
            T.let(
              :OPTIN_FOLLOWUP_EMAIL,
              HubspotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          AUTOMATED_EMAIL =
            T.let(
              :AUTOMATED_EMAIL,
              HubspotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          FEEDBACK_CES_EMAIL =
            T.let(
              :FEEDBACK_CES_EMAIL,
              HubspotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          FEEDBACK_CUSTOM_EMAIL =
            T.let(
              :FEEDBACK_CUSTOM_EMAIL,
              HubspotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          FEEDBACK_CUSTOM_SURVEY_EMAIL =
            T.let(
              :FEEDBACK_CUSTOM_SURVEY_EMAIL,
              HubspotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          FEEDBACK_NPS_EMAIL =
            T.let(
              :FEEDBACK_NPS_EMAIL,
              HubspotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          FOLLOWUP_EMAIL =
            T.let(
              :FOLLOWUP_EMAIL,
              HubspotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          LEADFLOW_EMAIL =
            T.let(
              :LEADFLOW_EMAIL,
              HubspotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          SINGLE_SEND_API =
            T.let(
              :SINGLE_SEND_API,
              HubspotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          MARKETING_SINGLE_SEND_API =
            T.let(
              :MARKETING_SINGLE_SEND_API,
              HubspotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          SMTP_TOKEN =
            T.let(
              :SMTP_TOKEN,
              HubspotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          TICKET_EMAIL =
            T.let(
              :TICKET_EMAIL,
              HubspotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          MEMBERSHIP_REGISTRATION_EMAIL =
            T.let(
              :MEMBERSHIP_REGISTRATION_EMAIL,
              HubspotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          MEMBERSHIP_PASSWORD_SAVED_EMAIL =
            T.let(
              :MEMBERSHIP_PASSWORD_SAVED_EMAIL,
              HubspotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          MEMBERSHIP_PASSWORD_RESET_EMAIL =
            T.let(
              :MEMBERSHIP_PASSWORD_RESET_EMAIL,
              HubspotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          MEMBERSHIP_EMAIL_VERIFICATION_EMAIL =
            T.let(
              :MEMBERSHIP_EMAIL_VERIFICATION_EMAIL,
              HubspotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          MEMBERSHIP_PASSWORDLESS_AUTH_EMAIL =
            T.let(
              :MEMBERSHIP_PASSWORDLESS_AUTH_EMAIL,
              HubspotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          MEMBERSHIP_REGISTRATION_FOLLOW_UP_EMAIL =
            T.let(
              :MEMBERSHIP_REGISTRATION_FOLLOW_UP_EMAIL,
              HubspotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          MEMBERSHIP_OTP_LOGIN_EMAIL =
            T.let(
              :MEMBERSHIP_OTP_LOGIN_EMAIL,
              HubspotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          MEMBERSHIP_FOLLOW_UP_EMAIL =
            T.let(
              :MEMBERSHIP_FOLLOW_UP_EMAIL,
              HubspotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          MEMBERSHIP_VERIFICATION_EMAIL =
            T.let(
              :MEMBERSHIP_VERIFICATION_EMAIL,
              HubspotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::Marketing::PublicEmail::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end

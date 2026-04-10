# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class PublicEmail < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::PublicEmail,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :is_ab

        # The email ID.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

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

        # The ID of the campaign this email is associated to.
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

        sig { returns(T.nilable(HubSpotSDK::Marketing::PublicEmailContent)) }
        attr_reader :content

        sig do
          params(
            content: HubSpotSDK::Marketing::PublicEmailContent::OrHash
          ).void
        end
        attr_writer :content

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
              HubSpotSDK::Marketing::PublicEmail::EmailTemplateMode::TaggedSymbol
            )
          )
        end
        attr_reader :email_template_mode

        sig do
          params(
            email_template_mode:
              HubSpotSDK::Marketing::PublicEmail::EmailTemplateMode::OrSymbol
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

        sig do
          returns(T.nilable(HubSpotSDK::Marketing::PublicEmailFromDetails))
        end
        attr_reader :from

        sig do
          params(
            from: HubSpotSDK::Marketing::PublicEmailFromDetails::OrHash
          ).void
        end
        attr_writer :from

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
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          )
        end
        attr_reader :language

        sig do
          params(
            language: HubSpotSDK::Marketing::PublicEmail::Language::OrSymbol
          ).void
        end
        attr_writer :language

        # The name of the email, as displayed on the email dashboard.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

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

        sig { returns(T.nilable(HubSpotSDK::Marketing::PublicRssEmailDetails)) }
        attr_reader :rss_data

        sig do
          params(
            rss_data: HubSpotSDK::Marketing::PublicRssEmailDetails::OrHash
          ).void
        end
        attr_writer :rss_data

        # Determines whether the email will be sent immediately on publish.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :send_on_publish

        sig { params(send_on_publish: T::Boolean).void }
        attr_writer :send_on_publish

        # The email state.
        sig do
          returns(
            T.nilable(HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol)
          )
        end
        attr_reader :state

        sig do
          params(
            state: HubSpotSDK::Marketing::PublicEmail::State::OrSymbol
          ).void
        end
        attr_writer :state

        sig { returns(T.nilable(HubSpotSDK::Marketing::EmailStatisticsData)) }
        attr_reader :stats

        sig do
          params(stats: HubSpotSDK::Marketing::EmailStatisticsData::OrHash).void
        end
        attr_writer :stats

        # The email subcategory.
        sig { returns(T.nilable(String)) }
        attr_reader :subcategory

        sig { params(subcategory: String).void }
        attr_writer :subcategory

        # The subject of the email.
        sig { returns(T.nilable(String)) }
        attr_reader :subject

        sig { params(subject: String).void }
        attr_writer :subject

        sig do
          returns(
            T.nilable(HubSpotSDK::Marketing::PublicEmailSubscriptionDetails)
          )
        end
        attr_reader :subscription_details

        sig do
          params(
            subscription_details:
              HubSpotSDK::Marketing::PublicEmailSubscriptionDetails::OrHash
          ).void
        end
        attr_writer :subscription_details

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :teams_with_access

        sig { params(teams_with_access: T::Array[String]).void }
        attr_writer :teams_with_access

        sig do
          returns(T.nilable(HubSpotSDK::Marketing::PublicEmailTestingDetails))
        end
        attr_reader :testing

        sig do
          params(
            testing: HubSpotSDK::Marketing::PublicEmailTestingDetails::OrHash
          ).void
        end
        attr_writer :testing

        sig { returns(T.nilable(HubSpotSDK::Marketing::PublicEmailToDetails)) }
        attr_reader :to

        sig do
          params(to: HubSpotSDK::Marketing::PublicEmailToDetails::OrHash).void
        end
        attr_writer :to

        # The email type, this is derived from other properties on the email such as
        # subcategory.
        sig do
          returns(
            T.nilable(HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol)
          )
        end
        attr_reader :type

        sig do
          params(type: HubSpotSDK::Marketing::PublicEmail::Type::OrSymbol).void
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

        # The id of the user who last updated the email.
        sig { returns(T.nilable(String)) }
        attr_reader :updated_by_id

        sig { params(updated_by_id: String).void }
        attr_writer :updated_by_id

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :users_with_access

        sig { params(users_with_access: T::Array[String]).void }
        attr_writer :users_with_access

        sig do
          returns(T.nilable(HubSpotSDK::Marketing::PublicWebversionDetails))
        end
        attr_reader :webversion

        sig do
          params(
            webversion: HubSpotSDK::Marketing::PublicWebversionDetails::OrHash
          ).void
        end
        attr_writer :webversion

        # Names of workflows in which the email is used within a "send email" action.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :workflow_names

        sig { params(workflow_names: T::Array[String]).void }
        attr_writer :workflow_names

        sig do
          params(
            is_ab: T::Boolean,
            id: String,
            active_domain: String,
            all_email_campaign_ids: T::Array[String],
            archived: T::Boolean,
            business_unit_id: String,
            campaign: String,
            campaign_name: String,
            campaign_utm: String,
            cloned_from: String,
            content: HubSpotSDK::Marketing::PublicEmailContent::OrHash,
            created_at: Time,
            created_by_id: String,
            deleted_at: Time,
            email_campaign_group_id: String,
            email_template_mode:
              HubSpotSDK::Marketing::PublicEmail::EmailTemplateMode::OrSymbol,
            feedback_survey_id: String,
            folder_id: Integer,
            folder_id_v2: Integer,
            from: HubSpotSDK::Marketing::PublicEmailFromDetails::OrHash,
            is_published: T::Boolean,
            is_transactional: T::Boolean,
            jitter_send_time: T::Boolean,
            language: HubSpotSDK::Marketing::PublicEmail::Language::OrSymbol,
            name: String,
            preview_key: String,
            primary_email_campaign_id: String,
            publish_date: Time,
            published_at: Time,
            published_by_email: String,
            published_by_id: String,
            published_by_name: String,
            rss_data: HubSpotSDK::Marketing::PublicRssEmailDetails::OrHash,
            send_on_publish: T::Boolean,
            state: HubSpotSDK::Marketing::PublicEmail::State::OrSymbol,
            stats: HubSpotSDK::Marketing::EmailStatisticsData::OrHash,
            subcategory: String,
            subject: String,
            subscription_details:
              HubSpotSDK::Marketing::PublicEmailSubscriptionDetails::OrHash,
            teams_with_access: T::Array[String],
            testing: HubSpotSDK::Marketing::PublicEmailTestingDetails::OrHash,
            to: HubSpotSDK::Marketing::PublicEmailToDetails::OrHash,
            type: HubSpotSDK::Marketing::PublicEmail::Type::OrSymbol,
            unpublished_at: Time,
            updated_at: Time,
            updated_by_id: String,
            users_with_access: T::Array[String],
            webversion: HubSpotSDK::Marketing::PublicWebversionDetails::OrHash,
            workflow_names: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          is_ab:,
          # The email ID.
          id: nil,
          # The active domain of the email.
          active_domain: nil,
          # List of emailCampaignIds.
          all_email_campaign_ids: nil,
          # Determines if the email is archived or not.
          archived: nil,
          business_unit_id: nil,
          # The ID of the campaign this email is associated to.
          campaign: nil,
          # The name of the campaign.
          campaign_name: nil,
          campaign_utm: nil,
          # The ID of the email this email was cloned from.
          cloned_from: nil,
          content: nil,
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
          from: nil,
          # Returns the published status of the email. This is read only.
          is_published: nil,
          # Returns whether the email is a transactional email or not. This is read only.
          is_transactional: nil,
          jitter_send_time: nil,
          language: nil,
          # The name of the email, as displayed on the email dashboard.
          name: nil,
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
          rss_data: nil,
          # Determines whether the email will be sent immediately on publish.
          send_on_publish: nil,
          # The email state.
          state: nil,
          stats: nil,
          # The email subcategory.
          subcategory: nil,
          # The subject of the email.
          subject: nil,
          subscription_details: nil,
          teams_with_access: nil,
          testing: nil,
          to: nil,
          # The email type, this is derived from other properties on the email such as
          # subcategory.
          type: nil,
          unpublished_at: nil,
          # The date and time of the last update to the email, in ISO8601 representation.
          updated_at: nil,
          # The id of the user who last updated the email.
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
              is_ab: T::Boolean,
              id: String,
              active_domain: String,
              all_email_campaign_ids: T::Array[String],
              archived: T::Boolean,
              business_unit_id: String,
              campaign: String,
              campaign_name: String,
              campaign_utm: String,
              cloned_from: String,
              content: HubSpotSDK::Marketing::PublicEmailContent,
              created_at: Time,
              created_by_id: String,
              deleted_at: Time,
              email_campaign_group_id: String,
              email_template_mode:
                HubSpotSDK::Marketing::PublicEmail::EmailTemplateMode::TaggedSymbol,
              feedback_survey_id: String,
              folder_id: Integer,
              folder_id_v2: Integer,
              from: HubSpotSDK::Marketing::PublicEmailFromDetails,
              is_published: T::Boolean,
              is_transactional: T::Boolean,
              jitter_send_time: T::Boolean,
              language:
                HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol,
              name: String,
              preview_key: String,
              primary_email_campaign_id: String,
              publish_date: Time,
              published_at: Time,
              published_by_email: String,
              published_by_id: String,
              published_by_name: String,
              rss_data: HubSpotSDK::Marketing::PublicRssEmailDetails,
              send_on_publish: T::Boolean,
              state: HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol,
              stats: HubSpotSDK::Marketing::EmailStatisticsData,
              subcategory: String,
              subject: String,
              subscription_details:
                HubSpotSDK::Marketing::PublicEmailSubscriptionDetails,
              teams_with_access: T::Array[String],
              testing: HubSpotSDK::Marketing::PublicEmailTestingDetails,
              to: HubSpotSDK::Marketing::PublicEmailToDetails,
              type: HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol,
              unpublished_at: Time,
              updated_at: Time,
              updated_by_id: String,
              users_with_access: T::Array[String],
              webversion: HubSpotSDK::Marketing::PublicWebversionDetails,
              workflow_names: T::Array[String]
            }
          )
        end
        def to_hash
        end

        module EmailTemplateMode
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Marketing::PublicEmail::EmailTemplateMode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DESIGN_MANAGER =
            T.let(
              :DESIGN_MANAGER,
              HubSpotSDK::Marketing::PublicEmail::EmailTemplateMode::TaggedSymbol
            )
          DRAG_AND_DROP =
            T.let(
              :DRAG_AND_DROP,
              HubSpotSDK::Marketing::PublicEmail::EmailTemplateMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Marketing::PublicEmail::EmailTemplateMode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Language
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Marketing::PublicEmail::Language)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AA =
            T.let(
              :aa,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AB =
            T.let(
              :ab,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AE =
            T.let(
              :ae,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AF =
            T.let(
              :af,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AF_NA =
            T.let(
              :"af-na",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AF_ZA =
            T.let(
              :"af-za",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AGQ =
            T.let(
              :agq,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AGQ_CM =
            T.let(
              :"agq-cm",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AK =
            T.let(
              :ak,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AK_GH =
            T.let(
              :"ak-gh",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AM =
            T.let(
              :am,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AM_ET =
            T.let(
              :"am-et",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AN =
            T.let(
              :an,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ANN =
            T.let(
              :ann,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ANN_NG =
            T.let(
              :"ann-ng",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR =
            T.let(
              :ar,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_001 =
            T.let(
              :"ar-001",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_AE =
            T.let(
              :"ar-ae",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_BH =
            T.let(
              :"ar-bh",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_DJ =
            T.let(
              :"ar-dj",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_DZ =
            T.let(
              :"ar-dz",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_EG =
            T.let(
              :"ar-eg",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_EH =
            T.let(
              :"ar-eh",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_ER =
            T.let(
              :"ar-er",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_IL =
            T.let(
              :"ar-il",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_IQ =
            T.let(
              :"ar-iq",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_JO =
            T.let(
              :"ar-jo",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_KM =
            T.let(
              :"ar-km",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_KW =
            T.let(
              :"ar-kw",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_LB =
            T.let(
              :"ar-lb",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_LY =
            T.let(
              :"ar-ly",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_MA =
            T.let(
              :"ar-ma",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_MR =
            T.let(
              :"ar-mr",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_OM =
            T.let(
              :"ar-om",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_PS =
            T.let(
              :"ar-ps",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_QA =
            T.let(
              :"ar-qa",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_SA =
            T.let(
              :"ar-sa",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_SD =
            T.let(
              :"ar-sd",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_SO =
            T.let(
              :"ar-so",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_SS =
            T.let(
              :"ar-ss",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_SY =
            T.let(
              :"ar-sy",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_TD =
            T.let(
              :"ar-td",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_TN =
            T.let(
              :"ar-tn",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AR_YE =
            T.let(
              :"ar-ye",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AS =
            T.let(
              :as,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AS_IN =
            T.let(
              :"as-in",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ASA =
            T.let(
              :asa,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ASA_TZ =
            T.let(
              :"asa-tz",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AST =
            T.let(
              :ast,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AST_ES =
            T.let(
              :"ast-es",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AV =
            T.let(
              :av,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AY =
            T.let(
              :ay,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AZ =
            T.let(
              :az,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          AZ_AZ =
            T.let(
              :"az-az",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BA =
            T.let(
              :ba,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BAS =
            T.let(
              :bas,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BAS_CM =
            T.let(
              :"bas-cm",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BE =
            T.let(
              :be,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BE_BY =
            T.let(
              :"be-by",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BEM =
            T.let(
              :bem,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BEM_ZM =
            T.let(
              :"bem-zm",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BEZ =
            T.let(
              :bez,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BEZ_TZ =
            T.let(
              :"bez-tz",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BG =
            T.let(
              :bg,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BG_BG =
            T.let(
              :"bg-bg",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BGC =
            T.let(
              :bgc,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BGC_IN =
            T.let(
              :"bgc-in",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BHO =
            T.let(
              :bho,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BHO_IN =
            T.let(
              :"bho-in",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BI =
            T.let(
              :bi,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BM =
            T.let(
              :bm,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BM_ML =
            T.let(
              :"bm-ml",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BN =
            T.let(
              :bn,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BN_BD =
            T.let(
              :"bn-bd",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BN_IN =
            T.let(
              :"bn-in",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BO =
            T.let(
              :bo,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BO_CN =
            T.let(
              :"bo-cn",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BO_IN =
            T.let(
              :"bo-in",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BR =
            T.let(
              :br,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BR_FR =
            T.let(
              :"br-fr",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BRX =
            T.let(
              :brx,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BRX_IN =
            T.let(
              :"brx-in",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BS =
            T.let(
              :bs,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          BS_BA =
            T.let(
              :"bs-ba",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CA =
            T.let(
              :ca,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CA_AD =
            T.let(
              :"ca-ad",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CA_ES =
            T.let(
              :"ca-es",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CA_FR =
            T.let(
              :"ca-fr",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CA_IT =
            T.let(
              :"ca-it",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CCP =
            T.let(
              :ccp,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CCP_BD =
            T.let(
              :"ccp-bd",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CCP_IN =
            T.let(
              :"ccp-in",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CE =
            T.let(
              :ce,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CE_RU =
            T.let(
              :"ce-ru",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CEB =
            T.let(
              :ceb,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CEB_PH =
            T.let(
              :"ceb-ph",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CGG =
            T.let(
              :cgg,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CGG_UG =
            T.let(
              :"cgg-ug",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CH =
            T.let(
              :ch,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CHR =
            T.let(
              :chr,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CHR_US =
            T.let(
              :"chr-us",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CKB =
            T.let(
              :ckb,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CKB_IQ =
            T.let(
              :"ckb-iq",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CKB_IR =
            T.let(
              :"ckb-ir",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CO =
            T.let(
              :co,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CR =
            T.let(
              :cr,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CS =
            T.let(
              :cs,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CS_CZ =
            T.let(
              :"cs-cz",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CU =
            T.let(
              :cu,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CU_RU =
            T.let(
              :"cu-ru",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CV =
            T.let(
              :cv,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CV_RU =
            T.let(
              :"cv-ru",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CY =
            T.let(
              :cy,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          CY_GB =
            T.let(
              :"cy-gb",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DA =
            T.let(
              :da,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DA_DK =
            T.let(
              :"da-dk",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DA_GL =
            T.let(
              :"da-gl",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DAV =
            T.let(
              :dav,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DAV_KE =
            T.let(
              :"dav-ke",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DE =
            T.let(
              :de,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DE_AT =
            T.let(
              :"de-at",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DE_BE =
            T.let(
              :"de-be",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DE_CH =
            T.let(
              :"de-ch",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DE_DE =
            T.let(
              :"de-de",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DE_GR =
            T.let(
              :"de-gr",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DE_IT =
            T.let(
              :"de-it",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DE_LI =
            T.let(
              :"de-li",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DE_LU =
            T.let(
              :"de-lu",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DJE =
            T.let(
              :dje,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DJE_NE =
            T.let(
              :"dje-ne",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DOI =
            T.let(
              :doi,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DOI_IN =
            T.let(
              :"doi-in",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DSB =
            T.let(
              :dsb,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DSB_DE =
            T.let(
              :"dsb-de",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DUA =
            T.let(
              :dua,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DUA_CM =
            T.let(
              :"dua-cm",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DV =
            T.let(
              :dv,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DYO =
            T.let(
              :dyo,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DYO_SN =
            T.let(
              :"dyo-sn",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DZ =
            T.let(
              :dz,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          DZ_BT =
            T.let(
              :"dz-bt",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EBU =
            T.let(
              :ebu,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EBU_KE =
            T.let(
              :"ebu-ke",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EE =
            T.let(
              :ee,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EE_GH =
            T.let(
              :"ee-gh",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EE_TG =
            T.let(
              :"ee-tg",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EL =
            T.let(
              :el,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EL_CY =
            T.let(
              :"el-cy",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EL_GR =
            T.let(
              :"el-gr",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN =
            T.let(
              :en,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_001 =
            T.let(
              :"en-001",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_150 =
            T.let(
              :"en-150",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_AE =
            T.let(
              :"en-ae",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_AG =
            T.let(
              :"en-ag",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_AI =
            T.let(
              :"en-ai",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_AS =
            T.let(
              :"en-as",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_AT =
            T.let(
              :"en-at",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_AU =
            T.let(
              :"en-au",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_BB =
            T.let(
              :"en-bb",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_BE =
            T.let(
              :"en-be",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_BI =
            T.let(
              :"en-bi",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_BM =
            T.let(
              :"en-bm",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_BS =
            T.let(
              :"en-bs",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_BW =
            T.let(
              :"en-bw",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_BZ =
            T.let(
              :"en-bz",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_CA =
            T.let(
              :"en-ca",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_CC =
            T.let(
              :"en-cc",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_CH =
            T.let(
              :"en-ch",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_CK =
            T.let(
              :"en-ck",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_CM =
            T.let(
              :"en-cm",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_CN =
            T.let(
              :"en-cn",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_CX =
            T.let(
              :"en-cx",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_CY =
            T.let(
              :"en-cy",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_DE =
            T.let(
              :"en-de",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_DG =
            T.let(
              :"en-dg",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_DK =
            T.let(
              :"en-dk",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_DM =
            T.let(
              :"en-dm",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_EE =
            T.let(
              :"en-ee",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_EG =
            T.let(
              :"en-eg",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_ER =
            T.let(
              :"en-er",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_ES =
            T.let(
              :"en-es",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_FI =
            T.let(
              :"en-fi",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_FJ =
            T.let(
              :"en-fj",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_FK =
            T.let(
              :"en-fk",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_FM =
            T.let(
              :"en-fm",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_FR =
            T.let(
              :"en-fr",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_GB =
            T.let(
              :"en-gb",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_GD =
            T.let(
              :"en-gd",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_GG =
            T.let(
              :"en-gg",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_GH =
            T.let(
              :"en-gh",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_GI =
            T.let(
              :"en-gi",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_GM =
            T.let(
              :"en-gm",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_GU =
            T.let(
              :"en-gu",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_GY =
            T.let(
              :"en-gy",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_HK =
            T.let(
              :"en-hk",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_ID =
            T.let(
              :"en-id",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_IE =
            T.let(
              :"en-ie",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_IL =
            T.let(
              :"en-il",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_IM =
            T.let(
              :"en-im",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_IN =
            T.let(
              :"en-in",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_IO =
            T.let(
              :"en-io",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_JE =
            T.let(
              :"en-je",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_JM =
            T.let(
              :"en-jm",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_KE =
            T.let(
              :"en-ke",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_KI =
            T.let(
              :"en-ki",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_KN =
            T.let(
              :"en-kn",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_KY =
            T.let(
              :"en-ky",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_LC =
            T.let(
              :"en-lc",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_LR =
            T.let(
              :"en-lr",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_LS =
            T.let(
              :"en-ls",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_LU =
            T.let(
              :"en-lu",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_MG =
            T.let(
              :"en-mg",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_MH =
            T.let(
              :"en-mh",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_MO =
            T.let(
              :"en-mo",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_MP =
            T.let(
              :"en-mp",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_MS =
            T.let(
              :"en-ms",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_MT =
            T.let(
              :"en-mt",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_MU =
            T.let(
              :"en-mu",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_MV =
            T.let(
              :"en-mv",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_MW =
            T.let(
              :"en-mw",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_MX =
            T.let(
              :"en-mx",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_MY =
            T.let(
              :"en-my",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_NA =
            T.let(
              :"en-na",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_NF =
            T.let(
              :"en-nf",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_NG =
            T.let(
              :"en-ng",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_NL =
            T.let(
              :"en-nl",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_NR =
            T.let(
              :"en-nr",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_NU =
            T.let(
              :"en-nu",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_NZ =
            T.let(
              :"en-nz",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_PG =
            T.let(
              :"en-pg",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_PH =
            T.let(
              :"en-ph",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_PK =
            T.let(
              :"en-pk",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_PN =
            T.let(
              :"en-pn",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_PR =
            T.let(
              :"en-pr",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_PT =
            T.let(
              :"en-pt",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_PW =
            T.let(
              :"en-pw",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_RW =
            T.let(
              :"en-rw",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_SB =
            T.let(
              :"en-sb",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_SC =
            T.let(
              :"en-sc",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_SD =
            T.let(
              :"en-sd",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_SE =
            T.let(
              :"en-se",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_SG =
            T.let(
              :"en-sg",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_SH =
            T.let(
              :"en-sh",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_SI =
            T.let(
              :"en-si",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_SL =
            T.let(
              :"en-sl",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_SS =
            T.let(
              :"en-ss",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_SX =
            T.let(
              :"en-sx",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_SZ =
            T.let(
              :"en-sz",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_TC =
            T.let(
              :"en-tc",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_TH =
            T.let(
              :"en-th",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_TK =
            T.let(
              :"en-tk",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_TN =
            T.let(
              :"en-tn",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_TO =
            T.let(
              :"en-to",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_TT =
            T.let(
              :"en-tt",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_TV =
            T.let(
              :"en-tv",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_TZ =
            T.let(
              :"en-tz",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_UG =
            T.let(
              :"en-ug",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_UM =
            T.let(
              :"en-um",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_US =
            T.let(
              :"en-us",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_VC =
            T.let(
              :"en-vc",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_VG =
            T.let(
              :"en-vg",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_VI =
            T.let(
              :"en-vi",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_VN =
            T.let(
              :"en-vn",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_VU =
            T.let(
              :"en-vu",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_WS =
            T.let(
              :"en-ws",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_ZA =
            T.let(
              :"en-za",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_ZM =
            T.let(
              :"en-zm",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EN_ZW =
            T.let(
              :"en-zw",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EO =
            T.let(
              :eo,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EO_001 =
            T.let(
              :"eo-001",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES =
            T.let(
              :es,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_419 =
            T.let(
              :"es-419",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_AR =
            T.let(
              :"es-ar",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_BO =
            T.let(
              :"es-bo",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_BR =
            T.let(
              :"es-br",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_BZ =
            T.let(
              :"es-bz",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_CL =
            T.let(
              :"es-cl",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_CO =
            T.let(
              :"es-co",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_CR =
            T.let(
              :"es-cr",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_CU =
            T.let(
              :"es-cu",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_DO =
            T.let(
              :"es-do",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_EA =
            T.let(
              :"es-ea",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_EC =
            T.let(
              :"es-ec",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_ES =
            T.let(
              :"es-es",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_GQ =
            T.let(
              :"es-gq",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_GT =
            T.let(
              :"es-gt",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_HN =
            T.let(
              :"es-hn",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_IC =
            T.let(
              :"es-ic",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_MX =
            T.let(
              :"es-mx",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_NI =
            T.let(
              :"es-ni",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_PA =
            T.let(
              :"es-pa",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_PE =
            T.let(
              :"es-pe",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_PH =
            T.let(
              :"es-ph",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_PR =
            T.let(
              :"es-pr",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_PY =
            T.let(
              :"es-py",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_SV =
            T.let(
              :"es-sv",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_US =
            T.let(
              :"es-us",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_UY =
            T.let(
              :"es-uy",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ES_VE =
            T.let(
              :"es-ve",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ET =
            T.let(
              :et,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ET_EE =
            T.let(
              :"et-ee",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EU =
            T.let(
              :eu,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EU_ES =
            T.let(
              :"eu-es",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EWO =
            T.let(
              :ewo,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          EWO_CM =
            T.let(
              :"ewo-cm",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FA =
            T.let(
              :fa,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FA_AF =
            T.let(
              :"fa-af",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FA_IR =
            T.let(
              :"fa-ir",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FF =
            T.let(
              :ff,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FF_BF =
            T.let(
              :"ff-bf",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FF_CM =
            T.let(
              :"ff-cm",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FF_GH =
            T.let(
              :"ff-gh",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FF_GM =
            T.let(
              :"ff-gm",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FF_GN =
            T.let(
              :"ff-gn",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FF_GW =
            T.let(
              :"ff-gw",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FF_LR =
            T.let(
              :"ff-lr",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FF_MR =
            T.let(
              :"ff-mr",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FF_NE =
            T.let(
              :"ff-ne",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FF_NG =
            T.let(
              :"ff-ng",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FF_SL =
            T.let(
              :"ff-sl",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FF_SN =
            T.let(
              :"ff-sn",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FI =
            T.let(
              :fi,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FI_FI =
            T.let(
              :"fi-fi",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FIL =
            T.let(
              :fil,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FIL_PH =
            T.let(
              :"fil-ph",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FJ =
            T.let(
              :fj,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FO =
            T.let(
              :fo,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FO_DK =
            T.let(
              :"fo-dk",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FO_FO =
            T.let(
              :"fo-fo",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR =
            T.let(
              :fr,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_BE =
            T.let(
              :"fr-be",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_BF =
            T.let(
              :"fr-bf",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_BI =
            T.let(
              :"fr-bi",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_BJ =
            T.let(
              :"fr-bj",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_BL =
            T.let(
              :"fr-bl",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_CA =
            T.let(
              :"fr-ca",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_CD =
            T.let(
              :"fr-cd",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_CF =
            T.let(
              :"fr-cf",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_CG =
            T.let(
              :"fr-cg",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_CH =
            T.let(
              :"fr-ch",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_CI =
            T.let(
              :"fr-ci",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_CM =
            T.let(
              :"fr-cm",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_DJ =
            T.let(
              :"fr-dj",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_DZ =
            T.let(
              :"fr-dz",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_FR =
            T.let(
              :"fr-fr",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_GA =
            T.let(
              :"fr-ga",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_GF =
            T.let(
              :"fr-gf",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_GN =
            T.let(
              :"fr-gn",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_GP =
            T.let(
              :"fr-gp",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_GQ =
            T.let(
              :"fr-gq",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_HT =
            T.let(
              :"fr-ht",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_KM =
            T.let(
              :"fr-km",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_LU =
            T.let(
              :"fr-lu",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_MA =
            T.let(
              :"fr-ma",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_MC =
            T.let(
              :"fr-mc",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_MF =
            T.let(
              :"fr-mf",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_MG =
            T.let(
              :"fr-mg",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_ML =
            T.let(
              :"fr-ml",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_MQ =
            T.let(
              :"fr-mq",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_MR =
            T.let(
              :"fr-mr",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_MU =
            T.let(
              :"fr-mu",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_NC =
            T.let(
              :"fr-nc",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_NE =
            T.let(
              :"fr-ne",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_PF =
            T.let(
              :"fr-pf",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_PM =
            T.let(
              :"fr-pm",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_RE =
            T.let(
              :"fr-re",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_RW =
            T.let(
              :"fr-rw",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_SC =
            T.let(
              :"fr-sc",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_SN =
            T.let(
              :"fr-sn",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_SY =
            T.let(
              :"fr-sy",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_TD =
            T.let(
              :"fr-td",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_TG =
            T.let(
              :"fr-tg",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_TN =
            T.let(
              :"fr-tn",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_VU =
            T.let(
              :"fr-vu",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_WF =
            T.let(
              :"fr-wf",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FR_YT =
            T.let(
              :"fr-yt",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FRR =
            T.let(
              :frr,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FRR_DE =
            T.let(
              :"frr-de",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FUR =
            T.let(
              :fur,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FUR_IT =
            T.let(
              :"fur-it",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FY =
            T.let(
              :fy,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          FY_NL =
            T.let(
              :"fy-nl",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GA =
            T.let(
              :ga,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GA_GB =
            T.let(
              :"ga-gb",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GA_IE =
            T.let(
              :"ga-ie",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GD =
            T.let(
              :gd,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GD_GB =
            T.let(
              :"gd-gb",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GL =
            T.let(
              :gl,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GL_ES =
            T.let(
              :"gl-es",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GN =
            T.let(
              :gn,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GSW =
            T.let(
              :gsw,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GSW_CH =
            T.let(
              :"gsw-ch",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GSW_FR =
            T.let(
              :"gsw-fr",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GSW_LI =
            T.let(
              :"gsw-li",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GU =
            T.let(
              :gu,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GU_IN =
            T.let(
              :"gu-in",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GUZ =
            T.let(
              :guz,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GUZ_KE =
            T.let(
              :"guz-ke",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GV =
            T.let(
              :gv,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          GV_IM =
            T.let(
              :"gv-im",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HA =
            T.let(
              :ha,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HA_GH =
            T.let(
              :"ha-gh",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HA_NE =
            T.let(
              :"ha-ne",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HA_NG =
            T.let(
              :"ha-ng",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HAW =
            T.let(
              :haw,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HAW_US =
            T.let(
              :"haw-us",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HE =
            T.let(
              :he,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HE_IL =
            T.let(
              :"he-il",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HI =
            T.let(
              :hi,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HI_IN =
            T.let(
              :"hi-in",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HMN =
            T.let(
              :hmn,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HO =
            T.let(
              :ho,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HR =
            T.let(
              :hr,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HR_BA =
            T.let(
              :"hr-ba",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HR_HR =
            T.let(
              :"hr-hr",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HSB =
            T.let(
              :hsb,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HSB_DE =
            T.let(
              :"hsb-de",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HT =
            T.let(
              :ht,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HU =
            T.let(
              :hu,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HU_HU =
            T.let(
              :"hu-hu",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HY =
            T.let(
              :hy,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HY_AM =
            T.let(
              :"hy-am",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          HZ =
            T.let(
              :hz,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          IA =
            T.let(
              :ia,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          IA_001 =
            T.let(
              :"ia-001",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ID =
            T.let(
              :id,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ID_ID =
            T.let(
              :"id-id",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          IE =
            T.let(
              :ie,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          IG =
            T.let(
              :ig,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          IG_NG =
            T.let(
              :"ig-ng",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          II =
            T.let(
              :ii,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          II_CN =
            T.let(
              :"ii-cn",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          IK =
            T.let(
              :ik,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          IO =
            T.let(
              :io,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          IS =
            T.let(
              :is,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          IS_IS =
            T.let(
              :"is-is",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          IT =
            T.let(
              :it,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          IT_CH =
            T.let(
              :"it-ch",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          IT_IT =
            T.let(
              :"it-it",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          IT_SM =
            T.let(
              :"it-sm",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          IT_VA =
            T.let(
              :"it-va",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          IU =
            T.let(
              :iu,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          JA =
            T.let(
              :ja,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          JA_JP =
            T.let(
              :"ja-jp",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          JGO =
            T.let(
              :jgo,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          JGO_CM =
            T.let(
              :"jgo-cm",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          JMC =
            T.let(
              :jmc,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          JMC_TZ =
            T.let(
              :"jmc-tz",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          JV =
            T.let(
              :jv,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          JV_ID =
            T.let(
              :"jv-id",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KA =
            T.let(
              :ka,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KA_GE =
            T.let(
              :"ka-ge",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KAB =
            T.let(
              :kab,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KAB_DZ =
            T.let(
              :"kab-dz",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KAM =
            T.let(
              :kam,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KAM_KE =
            T.let(
              :"kam-ke",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KAR =
            T.let(
              :kar,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KDE =
            T.let(
              :kde,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KDE_TZ =
            T.let(
              :"kde-tz",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KEA =
            T.let(
              :kea,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KEA_CV =
            T.let(
              :"kea-cv",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KG =
            T.let(
              :kg,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KGP =
            T.let(
              :kgp,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KGP_BR =
            T.let(
              :"kgp-br",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KH =
            T.let(
              :kh,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KHQ =
            T.let(
              :khq,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KHQ_ML =
            T.let(
              :"khq-ml",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KI =
            T.let(
              :ki,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KI_KE =
            T.let(
              :"ki-ke",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KJ =
            T.let(
              :kj,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KK =
            T.let(
              :kk,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KK_KZ =
            T.let(
              :"kk-kz",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KKJ =
            T.let(
              :kkj,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KKJ_CM =
            T.let(
              :"kkj-cm",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KL =
            T.let(
              :kl,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KL_GL =
            T.let(
              :"kl-gl",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KLN =
            T.let(
              :kln,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KLN_KE =
            T.let(
              :"kln-ke",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KM =
            T.let(
              :km,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KM_KH =
            T.let(
              :"km-kh",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KN =
            T.let(
              :kn,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KN_IN =
            T.let(
              :"kn-in",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KO =
            T.let(
              :ko,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KO_KP =
            T.let(
              :"ko-kp",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KO_KR =
            T.let(
              :"ko-kr",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KOK =
            T.let(
              :kok,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KOK_IN =
            T.let(
              :"kok-in",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KR =
            T.let(
              :kr,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KS =
            T.let(
              :ks,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KS_IN =
            T.let(
              :"ks-in",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KSB =
            T.let(
              :ksb,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KSB_TZ =
            T.let(
              :"ksb-tz",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KSF =
            T.let(
              :ksf,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KSF_CM =
            T.let(
              :"ksf-cm",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KSH =
            T.let(
              :ksh,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KSH_DE =
            T.let(
              :"ksh-de",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KU =
            T.let(
              :ku,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KU_TR =
            T.let(
              :"ku-tr",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KV =
            T.let(
              :kv,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KW =
            T.let(
              :kw,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KW_GB =
            T.let(
              :"kw-gb",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KY =
            T.let(
              :ky,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          KY_KG =
            T.let(
              :"ky-kg",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LA =
            T.let(
              :la,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LAG =
            T.let(
              :lag,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LAG_TZ =
            T.let(
              :"lag-tz",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LB =
            T.let(
              :lb,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LB_LU =
            T.let(
              :"lb-lu",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LG =
            T.let(
              :lg,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LG_UG =
            T.let(
              :"lg-ug",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LI =
            T.let(
              :li,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LKT =
            T.let(
              :lkt,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LKT_US =
            T.let(
              :"lkt-us",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LN =
            T.let(
              :ln,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LN_AO =
            T.let(
              :"ln-ao",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LN_CD =
            T.let(
              :"ln-cd",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LN_CF =
            T.let(
              :"ln-cf",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LN_CG =
            T.let(
              :"ln-cg",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LO =
            T.let(
              :lo,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LO_LA =
            T.let(
              :"lo-la",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LRC =
            T.let(
              :lrc,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LRC_IQ =
            T.let(
              :"lrc-iq",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LRC_IR =
            T.let(
              :"lrc-ir",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LT =
            T.let(
              :lt,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LT_LT =
            T.let(
              :"lt-lt",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LU =
            T.let(
              :lu,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LU_CD =
            T.let(
              :"lu-cd",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LUO =
            T.let(
              :luo,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LUO_KE =
            T.let(
              :"luo-ke",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LUY =
            T.let(
              :luy,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LUY_KE =
            T.let(
              :"luy-ke",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LV =
            T.let(
              :lv,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          LV_LV =
            T.let(
              :"lv-lv",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MAI =
            T.let(
              :mai,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MAI_IN =
            T.let(
              :"mai-in",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MAS =
            T.let(
              :mas,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MAS_KE =
            T.let(
              :"mas-ke",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MAS_TZ =
            T.let(
              :"mas-tz",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MDF =
            T.let(
              :mdf,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MDF_RU =
            T.let(
              :"mdf-ru",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MER =
            T.let(
              :mer,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MER_KE =
            T.let(
              :"mer-ke",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MFE =
            T.let(
              :mfe,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MFE_MU =
            T.let(
              :"mfe-mu",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MG =
            T.let(
              :mg,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MG_MG =
            T.let(
              :"mg-mg",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MGH =
            T.let(
              :mgh,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MGH_MZ =
            T.let(
              :"mgh-mz",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MGO =
            T.let(
              :mgo,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MGO_CM =
            T.let(
              :"mgo-cm",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MH =
            T.let(
              :mh,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MI =
            T.let(
              :mi,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MI_NZ =
            T.let(
              :"mi-nz",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MK =
            T.let(
              :mk,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MK_MK =
            T.let(
              :"mk-mk",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ML =
            T.let(
              :ml,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ML_IN =
            T.let(
              :"ml-in",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MN =
            T.let(
              :mn,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MN_MN =
            T.let(
              :"mn-mn",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MNI =
            T.let(
              :mni,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MNI_IN =
            T.let(
              :"mni-in",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MR =
            T.let(
              :mr,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MR_IN =
            T.let(
              :"mr-in",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MS =
            T.let(
              :ms,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MS_BN =
            T.let(
              :"ms-bn",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MS_ID =
            T.let(
              :"ms-id",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MS_MY =
            T.let(
              :"ms-my",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MS_SG =
            T.let(
              :"ms-sg",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MT =
            T.let(
              :mt,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MT_MT =
            T.let(
              :"mt-mt",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MUA =
            T.let(
              :mua,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MUA_CM =
            T.let(
              :"mua-cm",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MY =
            T.let(
              :my,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MY_MM =
            T.let(
              :"my-mm",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MZN =
            T.let(
              :mzn,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          MZN_IR =
            T.let(
              :"mzn-ir",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NA =
            T.let(
              :na,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NAQ =
            T.let(
              :naq,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NAQ_NA =
            T.let(
              :"naq-na",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NB =
            T.let(
              :nb,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NB_NO =
            T.let(
              :"nb-no",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NB_SJ =
            T.let(
              :"nb-sj",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ND =
            T.let(
              :nd,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ND_ZW =
            T.let(
              :"nd-zw",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NDS =
            T.let(
              :nds,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NDS_DE =
            T.let(
              :"nds-de",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NDS_NL =
            T.let(
              :"nds-nl",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NE =
            T.let(
              :ne,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NE_IN =
            T.let(
              :"ne-in",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NE_NP =
            T.let(
              :"ne-np",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NG =
            T.let(
              :ng,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NL =
            T.let(
              :nl,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NL_AW =
            T.let(
              :"nl-aw",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NL_BE =
            T.let(
              :"nl-be",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NL_BQ =
            T.let(
              :"nl-bq",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NL_CH =
            T.let(
              :"nl-ch",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NL_CW =
            T.let(
              :"nl-cw",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NL_LU =
            T.let(
              :"nl-lu",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NL_NL =
            T.let(
              :"nl-nl",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NL_SR =
            T.let(
              :"nl-sr",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NL_SX =
            T.let(
              :"nl-sx",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NMG =
            T.let(
              :nmg,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NMG_CM =
            T.let(
              :"nmg-cm",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NN =
            T.let(
              :nn,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NN_NO =
            T.let(
              :"nn-no",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NNH =
            T.let(
              :nnh,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NNH_CM =
            T.let(
              :"nnh-cm",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NO =
            T.let(
              :no,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NO_NO =
            T.let(
              :"no-no",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NR =
            T.let(
              :nr,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NUS =
            T.let(
              :nus,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NUS_SS =
            T.let(
              :"nus-ss",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NV =
            T.let(
              :nv,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NY =
            T.let(
              :ny,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NYN =
            T.let(
              :nyn,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          NYN_UG =
            T.let(
              :"nyn-ug",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          OC =
            T.let(
              :oc,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          OC_ES =
            T.let(
              :"oc-es",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          OC_FR =
            T.let(
              :"oc-fr",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          OJ =
            T.let(
              :oj,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          OM =
            T.let(
              :om,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          OM_ET =
            T.let(
              :"om-et",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          OM_KE =
            T.let(
              :"om-ke",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          OR =
            T.let(
              :or,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          OR_IN =
            T.let(
              :"or-in",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          OS =
            T.let(
              :os,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          OS_GE =
            T.let(
              :"os-ge",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          OS_RU =
            T.let(
              :"os-ru",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PA =
            T.let(
              :pa,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PA_IN =
            T.let(
              :"pa-in",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PA_PK =
            T.let(
              :"pa-pk",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PCM =
            T.let(
              :pcm,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PCM_NG =
            T.let(
              :"pcm-ng",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PI =
            T.let(
              :pi,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PIS =
            T.let(
              :pis,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PIS_SB =
            T.let(
              :"pis-sb",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PL =
            T.let(
              :pl,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PL_PL =
            T.let(
              :"pl-pl",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PRG =
            T.let(
              :prg,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PRG_001 =
            T.let(
              :"prg-001",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PS =
            T.let(
              :ps,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PS_AF =
            T.let(
              :"ps-af",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PS_PK =
            T.let(
              :"ps-pk",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PT =
            T.let(
              :pt,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PT_AO =
            T.let(
              :"pt-ao",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PT_BR =
            T.let(
              :"pt-br",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PT_CH =
            T.let(
              :"pt-ch",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PT_CV =
            T.let(
              :"pt-cv",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PT_GQ =
            T.let(
              :"pt-gq",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PT_GW =
            T.let(
              :"pt-gw",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PT_LU =
            T.let(
              :"pt-lu",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PT_MO =
            T.let(
              :"pt-mo",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PT_MZ =
            T.let(
              :"pt-mz",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PT_PT =
            T.let(
              :"pt-pt",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PT_ST =
            T.let(
              :"pt-st",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          PT_TL =
            T.let(
              :"pt-tl",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          QU =
            T.let(
              :qu,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          QU_BO =
            T.let(
              :"qu-bo",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          QU_EC =
            T.let(
              :"qu-ec",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          QU_PE =
            T.let(
              :"qu-pe",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RAJ =
            T.let(
              :raj,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RAJ_IN =
            T.let(
              :"raj-in",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RM =
            T.let(
              :rm,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RM_CH =
            T.let(
              :"rm-ch",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RN =
            T.let(
              :rn,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RN_BI =
            T.let(
              :"rn-bi",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RO =
            T.let(
              :ro,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RO_MD =
            T.let(
              :"ro-md",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RO_RO =
            T.let(
              :"ro-ro",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ROF =
            T.let(
              :rof,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ROF_TZ =
            T.let(
              :"rof-tz",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RU =
            T.let(
              :ru,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RU_BY =
            T.let(
              :"ru-by",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RU_KG =
            T.let(
              :"ru-kg",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RU_KZ =
            T.let(
              :"ru-kz",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RU_MD =
            T.let(
              :"ru-md",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RU_RU =
            T.let(
              :"ru-ru",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RU_UA =
            T.let(
              :"ru-ua",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RW =
            T.let(
              :rw,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RW_RW =
            T.let(
              :"rw-rw",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RWK =
            T.let(
              :rwk,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          RWK_TZ =
            T.let(
              :"rwk-tz",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SA =
            T.let(
              :sa,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SA_IN =
            T.let(
              :"sa-in",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SAH =
            T.let(
              :sah,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SAH_RU =
            T.let(
              :"sah-ru",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SAQ =
            T.let(
              :saq,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SAQ_KE =
            T.let(
              :"saq-ke",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SAT =
            T.let(
              :sat,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SAT_IN =
            T.let(
              :"sat-in",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SBP =
            T.let(
              :sbp,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SBP_TZ =
            T.let(
              :"sbp-tz",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SC =
            T.let(
              :sc,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SC_IT =
            T.let(
              :"sc-it",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SD =
            T.let(
              :sd,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SD_IN =
            T.let(
              :"sd-in",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SD_PK =
            T.let(
              :"sd-pk",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SE =
            T.let(
              :se,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SE_FI =
            T.let(
              :"se-fi",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SE_NO =
            T.let(
              :"se-no",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SE_SE =
            T.let(
              :"se-se",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SEH =
            T.let(
              :seh,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SEH_MZ =
            T.let(
              :"seh-mz",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SES =
            T.let(
              :ses,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SES_ML =
            T.let(
              :"ses-ml",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SG =
            T.let(
              :sg,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SG_CF =
            T.let(
              :"sg-cf",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SHI =
            T.let(
              :shi,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SHI_MA =
            T.let(
              :"shi-ma",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SI =
            T.let(
              :si,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SI_LK =
            T.let(
              :"si-lk",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SK =
            T.let(
              :sk,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SK_SK =
            T.let(
              :"sk-sk",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SL =
            T.let(
              :sl,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SL_SI =
            T.let(
              :"sl-si",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SM =
            T.let(
              :sm,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SMN =
            T.let(
              :smn,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SMN_FI =
            T.let(
              :"smn-fi",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SMS =
            T.let(
              :sms,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SMS_FI =
            T.let(
              :"sms-fi",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SN =
            T.let(
              :sn,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SN_ZW =
            T.let(
              :"sn-zw",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SO =
            T.let(
              :so,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SO_DJ =
            T.let(
              :"so-dj",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SO_ET =
            T.let(
              :"so-et",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SO_KE =
            T.let(
              :"so-ke",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SO_SO =
            T.let(
              :"so-so",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SQ =
            T.let(
              :sq,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SQ_AL =
            T.let(
              :"sq-al",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SQ_MK =
            T.let(
              :"sq-mk",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SQ_XK =
            T.let(
              :"sq-xk",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SR =
            T.let(
              :sr,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SR_BA =
            T.let(
              :"sr-ba",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SR_CS =
            T.let(
              :"sr-cs",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SR_ME =
            T.let(
              :"sr-me",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SR_RS =
            T.let(
              :"sr-rs",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SR_XK =
            T.let(
              :"sr-xk",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SS =
            T.let(
              :ss,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ST =
            T.let(
              :st,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SU =
            T.let(
              :su,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SU_ID =
            T.let(
              :"su-id",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SV =
            T.let(
              :sv,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SV_AX =
            T.let(
              :"sv-ax",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SV_FI =
            T.let(
              :"sv-fi",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SV_SE =
            T.let(
              :"sv-se",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SW =
            T.let(
              :sw,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SW_CD =
            T.let(
              :"sw-cd",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SW_KE =
            T.let(
              :"sw-ke",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SW_TZ =
            T.let(
              :"sw-tz",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SW_UG =
            T.let(
              :"sw-ug",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          SY =
            T.let(
              :sy,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TA =
            T.let(
              :ta,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TA_IN =
            T.let(
              :"ta-in",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TA_LK =
            T.let(
              :"ta-lk",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TA_MY =
            T.let(
              :"ta-my",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TA_SG =
            T.let(
              :"ta-sg",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TE =
            T.let(
              :te,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TE_IN =
            T.let(
              :"te-in",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TEO =
            T.let(
              :teo,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TEO_KE =
            T.let(
              :"teo-ke",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TEO_UG =
            T.let(
              :"teo-ug",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TG =
            T.let(
              :tg,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TG_TJ =
            T.let(
              :"tg-tj",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TH =
            T.let(
              :th,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TH_TH =
            T.let(
              :"th-th",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TI =
            T.let(
              :ti,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TI_ER =
            T.let(
              :"ti-er",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TI_ET =
            T.let(
              :"ti-et",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TK =
            T.let(
              :tk,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TK_TM =
            T.let(
              :"tk-tm",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TL =
            T.let(
              :tl,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TN =
            T.let(
              :tn,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TO =
            T.let(
              :to,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TO_TO =
            T.let(
              :"to-to",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TOK =
            T.let(
              :tok,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TOK_001 =
            T.let(
              :"tok-001",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TR =
            T.let(
              :tr,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TR_CY =
            T.let(
              :"tr-cy",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TR_TR =
            T.let(
              :"tr-tr",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TS =
            T.let(
              :ts,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TT =
            T.let(
              :tt,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TT_RU =
            T.let(
              :"tt-ru",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TW =
            T.let(
              :tw,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TWQ =
            T.let(
              :twq,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TWQ_NE =
            T.let(
              :"twq-ne",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TY =
            T.let(
              :ty,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TZM =
            T.let(
              :tzm,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          TZM_MA =
            T.let(
              :"tzm-ma",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          UG =
            T.let(
              :ug,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          UG_CN =
            T.let(
              :"ug-cn",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          UK =
            T.let(
              :uk,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          UK_UA =
            T.let(
              :"uk-ua",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          UR =
            T.let(
              :ur,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          UR_IN =
            T.let(
              :"ur-in",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          UR_PK =
            T.let(
              :"ur-pk",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          UZ =
            T.let(
              :uz,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          UZ_AF =
            T.let(
              :"uz-af",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          UZ_UZ =
            T.let(
              :"uz-uz",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          VAI =
            T.let(
              :vai,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          VAI_LR =
            T.let(
              :"vai-lr",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          VE =
            T.let(
              :ve,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          VI =
            T.let(
              :vi,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          VI_VN =
            T.let(
              :"vi-vn",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          VO =
            T.let(
              :vo,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          VO_001 =
            T.let(
              :"vo-001",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          VUN =
            T.let(
              :vun,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          VUN_TZ =
            T.let(
              :"vun-tz",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          WA =
            T.let(
              :wa,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          WAE =
            T.let(
              :wae,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          WAE_CH =
            T.let(
              :"wae-ch",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          WO =
            T.let(
              :wo,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          WO_SN =
            T.let(
              :"wo-sn",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          XH =
            T.let(
              :xh,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          XH_ZA =
            T.let(
              :"xh-za",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          XOG =
            T.let(
              :xog,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          XOG_UG =
            T.let(
              :"xog-ug",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          YAV =
            T.let(
              :yav,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          YAV_CM =
            T.let(
              :"yav-cm",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          YI =
            T.let(
              :yi,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          YI_001 =
            T.let(
              :"yi-001",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          YO =
            T.let(
              :yo,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          YO_BJ =
            T.let(
              :"yo-bj",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          YO_NG =
            T.let(
              :"yo-ng",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          YRL =
            T.let(
              :yrl,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          YRL_BR =
            T.let(
              :"yrl-br",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          YRL_CO =
            T.let(
              :"yrl-co",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          YRL_VE =
            T.let(
              :"yrl-ve",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          YUE =
            T.let(
              :yue,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          YUE_CN =
            T.let(
              :"yue-cn",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          YUE_HK =
            T.let(
              :"yue-hk",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ZA =
            T.let(
              :za,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ZGH =
            T.let(
              :zgh,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ZGH_MA =
            T.let(
              :"zgh-ma",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ZH =
            T.let(
              :zh,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ZH_CN =
            T.let(
              :"zh-cn",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ZH_HANS =
            T.let(
              :"zh-hans",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ZH_HANT =
            T.let(
              :"zh-hant",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ZH_HK =
            T.let(
              :"zh-hk",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ZH_MO =
            T.let(
              :"zh-mo",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ZH_SG =
            T.let(
              :"zh-sg",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ZH_TW =
            T.let(
              :"zh-tw",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ZU =
            T.let(
              :zu,
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )
          ZU_ZA =
            T.let(
              :"zu-za",
              HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Marketing::PublicEmail::Language::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The email state.
        module State
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Marketing::PublicEmail::State)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AGENT_GENERATED =
            T.let(
              :AGENT_GENERATED,
              HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          AUTOMATED =
            T.let(
              :AUTOMATED,
              HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          AUTOMATED_AB =
            T.let(
              :AUTOMATED_AB,
              HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          AUTOMATED_AB_VARIANT =
            T.let(
              :AUTOMATED_AB_VARIANT,
              HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          AUTOMATED_DRAFT =
            T.let(
              :AUTOMATED_DRAFT,
              HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          AUTOMATED_DRAFT_AB =
            T.let(
              :AUTOMATED_DRAFT_AB,
              HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          AUTOMATED_DRAFT_ABVARIANT =
            T.let(
              :AUTOMATED_DRAFT_ABVARIANT,
              HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          AUTOMATED_FOR_FORM =
            T.let(
              :AUTOMATED_FOR_FORM,
              HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          AUTOMATED_FOR_FORM_BUFFER =
            T.let(
              :AUTOMATED_FOR_FORM_BUFFER,
              HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          AUTOMATED_FOR_FORM_DRAFT =
            T.let(
              :AUTOMATED_FOR_FORM_DRAFT,
              HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          AUTOMATED_FOR_FORM_LEGACY =
            T.let(
              :AUTOMATED_FOR_FORM_LEGACY,
              HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          AUTOMATED_LOSER_ABVARIANT =
            T.let(
              :AUTOMATED_LOSER_ABVARIANT,
              HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          AUTOMATED_SENDING =
            T.let(
              :AUTOMATED_SENDING,
              HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          BLOG_EMAIL_DRAFT =
            T.let(
              :BLOG_EMAIL_DRAFT,
              HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          BLOG_EMAIL_PUBLISHED =
            T.let(
              :BLOG_EMAIL_PUBLISHED,
              HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          DRAFT =
            T.let(
              :DRAFT,
              HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          DRAFT_AB =
            T.let(
              :DRAFT_AB,
              HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          DRAFT_AB_VARIANT =
            T.let(
              :DRAFT_AB_VARIANT,
              HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          ERROR =
            T.let(
              :ERROR,
              HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          LOSER_AB_VARIANT =
            T.let(
              :LOSER_AB_VARIANT,
              HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          PAGE_STUB =
            T.let(
              :PAGE_STUB,
              HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          PRE_PROCESSING =
            T.let(
              :PRE_PROCESSING,
              HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          PUBLISHED =
            T.let(
              :PUBLISHED,
              HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          PUBLISHED_AB =
            T.let(
              :PUBLISHED_AB,
              HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          PUBLISHED_AB_VARIANT =
            T.let(
              :PUBLISHED_AB_VARIANT,
              HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          PUBLISHED_OR_SCHEDULED =
            T.let(
              :PUBLISHED_OR_SCHEDULED,
              HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          RSS_TO_EMAIL_DRAFT =
            T.let(
              :RSS_TO_EMAIL_DRAFT,
              HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          RSS_TO_EMAIL_PUBLISHED =
            T.let(
              :RSS_TO_EMAIL_PUBLISHED,
              HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          SCHEDULED =
            T.let(
              :SCHEDULED,
              HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          SCHEDULED_AB =
            T.let(
              :SCHEDULED_AB,
              HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )
          SCHEDULED_OR_PUBLISHED =
            T.let(
              :SCHEDULED_OR_PUBLISHED,
              HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubSpotSDK::Marketing::PublicEmail::State::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # The email type, this is derived from other properties on the email such as
        # subcategory.
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Marketing::PublicEmail::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AB_EMAIL =
            T.let(
              :AB_EMAIL,
              HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          AUTOMATED_AB_EMAIL =
            T.let(
              :AUTOMATED_AB_EMAIL,
              HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          AUTOMATED_EMAIL =
            T.let(
              :AUTOMATED_EMAIL,
              HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          BATCH_EMAIL =
            T.let(
              :BATCH_EMAIL,
              HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          BLOG_EMAIL =
            T.let(
              :BLOG_EMAIL,
              HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          BLOG_EMAIL_CHILD =
            T.let(
              :BLOG_EMAIL_CHILD,
              HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          FEEDBACK_CES_EMAIL =
            T.let(
              :FEEDBACK_CES_EMAIL,
              HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          FEEDBACK_CUSTOM_EMAIL =
            T.let(
              :FEEDBACK_CUSTOM_EMAIL,
              HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          FEEDBACK_CUSTOM_SURVEY_EMAIL =
            T.let(
              :FEEDBACK_CUSTOM_SURVEY_EMAIL,
              HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          FEEDBACK_NPS_EMAIL =
            T.let(
              :FEEDBACK_NPS_EMAIL,
              HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          FOLLOWUP_EMAIL =
            T.let(
              :FOLLOWUP_EMAIL,
              HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          LEADFLOW_EMAIL =
            T.let(
              :LEADFLOW_EMAIL,
              HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          LOCALTIME_EMAIL =
            T.let(
              :LOCALTIME_EMAIL,
              HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          MANAGE_PREFERENCES_EMAIL =
            T.let(
              :MANAGE_PREFERENCES_EMAIL,
              HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          MARKETING_SINGLE_SEND_API =
            T.let(
              :MARKETING_SINGLE_SEND_API,
              HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          MEMBERSHIP_EMAIL_VERIFICATION_EMAIL =
            T.let(
              :MEMBERSHIP_EMAIL_VERIFICATION_EMAIL,
              HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          MEMBERSHIP_FOLLOW_UP_EMAIL =
            T.let(
              :MEMBERSHIP_FOLLOW_UP_EMAIL,
              HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          MEMBERSHIP_OTP_LOGIN_EMAIL =
            T.let(
              :MEMBERSHIP_OTP_LOGIN_EMAIL,
              HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          MEMBERSHIP_PASSWORD_RESET_EMAIL =
            T.let(
              :MEMBERSHIP_PASSWORD_RESET_EMAIL,
              HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          MEMBERSHIP_PASSWORD_SAVED_EMAIL =
            T.let(
              :MEMBERSHIP_PASSWORD_SAVED_EMAIL,
              HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          MEMBERSHIP_PASSWORDLESS_AUTH_EMAIL =
            T.let(
              :MEMBERSHIP_PASSWORDLESS_AUTH_EMAIL,
              HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          MEMBERSHIP_REGISTRATION_EMAIL =
            T.let(
              :MEMBERSHIP_REGISTRATION_EMAIL,
              HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          MEMBERSHIP_REGISTRATION_FOLLOW_UP_EMAIL =
            T.let(
              :MEMBERSHIP_REGISTRATION_FOLLOW_UP_EMAIL,
              HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          MEMBERSHIP_VERIFICATION_EMAIL =
            T.let(
              :MEMBERSHIP_VERIFICATION_EMAIL,
              HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          OPTIN_EMAIL =
            T.let(
              :OPTIN_EMAIL,
              HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          OPTIN_FOLLOWUP_EMAIL =
            T.let(
              :OPTIN_FOLLOWUP_EMAIL,
              HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          RESUBSCRIBE_EMAIL =
            T.let(
              :RESUBSCRIBE_EMAIL,
              HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          RSS_EMAIL =
            T.let(
              :RSS_EMAIL,
              HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          RSS_EMAIL_CHILD =
            T.let(
              :RSS_EMAIL_CHILD,
              HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          SINGLE_SEND_API =
            T.let(
              :SINGLE_SEND_API,
              HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          SMTP_TOKEN =
            T.let(
              :SMTP_TOKEN,
              HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )
          TICKET_EMAIL =
            T.let(
              :TICKET_EMAIL,
              HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubSpotSDK::Marketing::PublicEmail::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end

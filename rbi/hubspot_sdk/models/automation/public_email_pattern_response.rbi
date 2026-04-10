# typed: strong

module HubSpotSDK
  module Models
    module Automation
      class PublicEmailPatternResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Automation::PublicEmailPatternResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The unique identifier of the email pattern.
        sig { returns(String) }
        attr_accessor :id

        # The date and time when the email pattern was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # The unique identifier of the email template associated with the pattern.
        sig { returns(String) }
        attr_accessor :template_id

        # The date and time when the email pattern was last updated.
        sig { returns(Time) }
        attr_accessor :updated_at

        # The order identifying the previous step to which the email thread is linked.
        sig { returns(T.nilable(Integer)) }
        attr_reader :thread_email_to_step_order

        sig { params(thread_email_to_step_order: Integer).void }
        attr_writer :thread_email_to_step_order

        sig do
          params(
            id: String,
            created_at: Time,
            template_id: String,
            updated_at: Time,
            thread_email_to_step_order: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier of the email pattern.
          id:,
          # The date and time when the email pattern was created.
          created_at:,
          # The unique identifier of the email template associated with the pattern.
          template_id:,
          # The date and time when the email pattern was last updated.
          updated_at:,
          # The order identifying the previous step to which the email thread is linked.
          thread_email_to_step_order: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              template_id: String,
              updated_at: Time,
              thread_email_to_step_order: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

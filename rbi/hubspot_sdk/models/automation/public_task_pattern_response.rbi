# typed: strong

module HubspotSDK
  module Models
    module Automation
      class PublicTaskPatternResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::PublicTaskPatternResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :task_priority

        sig { returns(String) }
        attr_accessor :task_type

        sig { returns(Time) }
        attr_accessor :updated_at

        sig { returns(T.nilable(String)) }
        attr_reader :notes

        sig { params(notes: String).void }
        attr_writer :notes

        sig { returns(T.nilable(Integer)) }
        attr_reader :queue_id

        sig { params(queue_id: Integer).void }
        attr_writer :queue_id

        sig { returns(T.nilable(String)) }
        attr_reader :subject

        sig { params(subject: String).void }
        attr_writer :subject

        sig { returns(T.nilable(Integer)) }
        attr_reader :template_id

        sig { params(template_id: Integer).void }
        attr_writer :template_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :thread_email_to_step_order

        sig { params(thread_email_to_step_order: Integer).void }
        attr_writer :thread_email_to_step_order

        sig do
          params(
            id: String,
            created_at: Time,
            task_priority: String,
            task_type: String,
            updated_at: Time,
            notes: String,
            queue_id: Integer,
            subject: String,
            template_id: Integer,
            thread_email_to_step_order: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          created_at:,
          task_priority:,
          task_type:,
          updated_at:,
          notes: nil,
          queue_id: nil,
          subject: nil,
          template_id: nil,
          thread_email_to_step_order: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              task_priority: String,
              task_type: String,
              updated_at: Time,
              notes: String,
              queue_id: Integer,
              subject: String,
              template_id: Integer,
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

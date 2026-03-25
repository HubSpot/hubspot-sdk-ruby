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

        # The unique identifier for the task pattern.
        sig { returns(String) }
        attr_accessor :id

        # The date and time when the task pattern was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # The priority level assigned to the task.
        sig do
          returns(
            HubspotSDK::Automation::PublicTaskPatternResponse::TaskPriority::TaggedSymbol
          )
        end
        attr_accessor :task_priority

        # The type of task, such as an email or call.
        sig do
          returns(
            HubspotSDK::Automation::PublicTaskPatternResponse::TaskType::TaggedSymbol
          )
        end
        attr_accessor :task_type

        # The date and time when the task pattern was last updated.
        sig { returns(Time) }
        attr_accessor :updated_at

        # Additional notes or comments associated with the task.
        sig { returns(T.nilable(String)) }
        attr_reader :notes

        sig { params(notes: String).void }
        attr_writer :notes

        # The identifier for the queue associated with the task.
        sig { returns(T.nilable(Integer)) }
        attr_reader :queue_id

        sig { params(queue_id: Integer).void }
        attr_writer :queue_id

        # The subject line of the task.
        sig { returns(T.nilable(String)) }
        attr_reader :subject

        sig { params(subject: String).void }
        attr_writer :subject

        # The identifier for the template used in the task.
        sig { returns(T.nilable(Integer)) }
        attr_reader :template_id

        sig { params(template_id: Integer).void }
        attr_writer :template_id

        # The order of the step to which the email thread is related.
        sig { returns(T.nilable(Integer)) }
        attr_reader :thread_email_to_step_order

        sig { params(thread_email_to_step_order: Integer).void }
        attr_writer :thread_email_to_step_order

        sig do
          params(
            id: String,
            created_at: Time,
            task_priority:
              HubspotSDK::Automation::PublicTaskPatternResponse::TaskPriority::OrSymbol,
            task_type:
              HubspotSDK::Automation::PublicTaskPatternResponse::TaskType::OrSymbol,
            updated_at: Time,
            notes: String,
            queue_id: Integer,
            subject: String,
            template_id: Integer,
            thread_email_to_step_order: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the task pattern.
          id:,
          # The date and time when the task pattern was created.
          created_at:,
          # The priority level assigned to the task.
          task_priority:,
          # The type of task, such as an email or call.
          task_type:,
          # The date and time when the task pattern was last updated.
          updated_at:,
          # Additional notes or comments associated with the task.
          notes: nil,
          # The identifier for the queue associated with the task.
          queue_id: nil,
          # The subject line of the task.
          subject: nil,
          # The identifier for the template used in the task.
          template_id: nil,
          # The order of the step to which the email thread is related.
          thread_email_to_step_order: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              task_priority:
                HubspotSDK::Automation::PublicTaskPatternResponse::TaskPriority::TaggedSymbol,
              task_type:
                HubspotSDK::Automation::PublicTaskPatternResponse::TaskType::TaggedSymbol,
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

        # The priority level assigned to the task.
        module TaskPriority
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::PublicTaskPatternResponse::TaskPriority
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HIGH =
            T.let(
              :HIGH,
              HubspotSDK::Automation::PublicTaskPatternResponse::TaskPriority::TaggedSymbol
            )
          LOW =
            T.let(
              :LOW,
              HubspotSDK::Automation::PublicTaskPatternResponse::TaskPriority::TaggedSymbol
            )
          MEDIUM =
            T.let(
              :MEDIUM,
              HubspotSDK::Automation::PublicTaskPatternResponse::TaskPriority::TaggedSymbol
            )
          NONE =
            T.let(
              :NONE,
              HubspotSDK::Automation::PublicTaskPatternResponse::TaskPriority::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::PublicTaskPatternResponse::TaskPriority::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The type of task, such as an email or call.
        module TaskType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::PublicTaskPatternResponse::TaskType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CALL =
            T.let(
              :CALL,
              HubspotSDK::Automation::PublicTaskPatternResponse::TaskType::TaggedSymbol
            )
          EMAIL =
            T.let(
              :EMAIL,
              HubspotSDK::Automation::PublicTaskPatternResponse::TaskType::TaggedSymbol
            )
          LINKED_IN_CONNECT =
            T.let(
              :LINKED_IN_CONNECT,
              HubspotSDK::Automation::PublicTaskPatternResponse::TaskType::TaggedSymbol
            )
          LINKED_IN_MESSAGE =
            T.let(
              :LINKED_IN_MESSAGE,
              HubspotSDK::Automation::PublicTaskPatternResponse::TaskType::TaggedSymbol
            )
          MEETING =
            T.let(
              :MEETING,
              HubspotSDK::Automation::PublicTaskPatternResponse::TaskType::TaggedSymbol
            )
          TODO =
            T.let(
              :TODO,
              HubspotSDK::Automation::PublicTaskPatternResponse::TaskType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::PublicTaskPatternResponse::TaskType::TaggedSymbol
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

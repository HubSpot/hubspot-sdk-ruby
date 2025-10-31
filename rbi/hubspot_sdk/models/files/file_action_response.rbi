# typed: strong

module HubspotSDK
  module Models
    module Files
      class FileActionResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Files::FileActionResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Time of completion of task.
        sig { returns(Time) }
        attr_accessor :completed_at

        # Timestamp of when the task was started.
        sig { returns(Time) }
        attr_accessor :started_at

        # Current status of the task.
        sig do
          returns(HubspotSDK::Files::FileActionResponse::Status::TaggedSymbol)
        end
        attr_accessor :status

        # ID of the requested task.
        sig { returns(String) }
        attr_accessor :task_id

        # Descriptive error messages.
        sig { returns(T.nilable(T::Array[HubspotSDK::StandardError])) }
        attr_reader :errors

        sig { params(errors: T::Array[HubspotSDK::StandardError::OrHash]).void }
        attr_writer :errors

        # Link to check the status of the requested task.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        # Number of errors resulting from the task.
        sig { returns(T.nilable(Integer)) }
        attr_reader :num_errors

        sig { params(num_errors: Integer).void }
        attr_writer :num_errors

        # Timestamp of when the task was requested.
        sig { returns(T.nilable(Time)) }
        attr_reader :requested_at

        sig { params(requested_at: Time).void }
        attr_writer :requested_at

        # File
        sig { returns(T.nilable(HubspotSDK::Files::File)) }
        attr_reader :result

        sig { params(result: HubspotSDK::Files::File::OrHash).void }
        attr_writer :result

        sig do
          params(
            completed_at: Time,
            started_at: Time,
            status: HubspotSDK::Files::FileActionResponse::Status::OrSymbol,
            task_id: String,
            errors: T::Array[HubspotSDK::StandardError::OrHash],
            links: T::Hash[Symbol, String],
            num_errors: Integer,
            requested_at: Time,
            result: HubspotSDK::Files::File::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Time of completion of task.
          completed_at:,
          # Timestamp of when the task was started.
          started_at:,
          # Current status of the task.
          status:,
          # ID of the requested task.
          task_id:,
          # Descriptive error messages.
          errors: nil,
          # Link to check the status of the requested task.
          links: nil,
          # Number of errors resulting from the task.
          num_errors: nil,
          # Timestamp of when the task was requested.
          requested_at: nil,
          # File
          result: nil
        )
        end

        sig do
          override.returns(
            {
              completed_at: Time,
              started_at: Time,
              status:
                HubspotSDK::Files::FileActionResponse::Status::TaggedSymbol,
              task_id: String,
              errors: T::Array[HubspotSDK::StandardError],
              links: T::Hash[Symbol, String],
              num_errors: Integer,
              requested_at: Time,
              result: HubspotSDK::Files::File
            }
          )
        end
        def to_hash
        end

        # Current status of the task.
        module Status
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Files::FileActionResponse::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :PENDING,
              HubspotSDK::Files::FileActionResponse::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubspotSDK::Files::FileActionResponse::Status::TaggedSymbol
            )
          CANCELED =
            T.let(
              :CANCELED,
              HubspotSDK::Files::FileActionResponse::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubspotSDK::Files::FileActionResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Files::FileActionResponse::Status::TaggedSymbol
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

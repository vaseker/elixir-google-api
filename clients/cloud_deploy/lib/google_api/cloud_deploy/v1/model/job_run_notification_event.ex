# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.CloudDeploy.V1.Model.JobRunNotificationEvent do
  @moduledoc """
  Payload proto for "clouddeploy.googleapis.com/jobrun_notification" Platform Log event that describes the failure to send JobRun resource update Pub/Sub notification.

  ## Attributes

  *   `jobRun` (*type:* `String.t`, *default:* `nil`) - The name of the `JobRun`.
  *   `message` (*type:* `String.t`, *default:* `nil`) - Debug message for when a notification fails to send.
  *   `pipelineUid` (*type:* `String.t`, *default:* `nil`) - Unique identifier of the `DeliveryPipeline`.
  *   `releaseUid` (*type:* `String.t`, *default:* `nil`) - Unique identifier of the `Release`.
  *   `rolloutUid` (*type:* `String.t`, *default:* `nil`) - Unique identifier of the `Rollout`.
  *   `targetId` (*type:* `String.t`, *default:* `nil`) - ID of the `Target`.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Type of this notification, e.g. for a Pub/Sub failure.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :jobRun => String.t() | nil,
          :message => String.t() | nil,
          :pipelineUid => String.t() | nil,
          :releaseUid => String.t() | nil,
          :rolloutUid => String.t() | nil,
          :targetId => String.t() | nil,
          :type => String.t() | nil
        }

  field(:jobRun)
  field(:message)
  field(:pipelineUid)
  field(:releaseUid)
  field(:rolloutUid)
  field(:targetId)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDeploy.V1.Model.JobRunNotificationEvent do
  def decode(value, options) do
    GoogleApi.CloudDeploy.V1.Model.JobRunNotificationEvent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDeploy.V1.Model.JobRunNotificationEvent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

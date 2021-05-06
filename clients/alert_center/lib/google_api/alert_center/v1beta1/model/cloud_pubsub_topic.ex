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

defmodule GoogleApi.AlertCenter.V1beta1.Model.CloudPubsubTopic do
  @moduledoc """
  A reference to a Cloud Pubsub topic. To register for notifications, the owner of the topic must grant `alerts-api-push-notifications@system.gserviceaccount.com` the `projects.topics.publish` permission.

  ## Attributes

  *   `payloadFormat` (*type:* `String.t`, *default:* `nil`) - Optional. The format of the payload that would be sent. If not specified the format will be JSON.
  *   `topicName` (*type:* `String.t`, *default:* `nil`) - The `name` field of a Cloud Pubsub [Topic] (https://cloud.google.com/pubsub/docs/reference/rest/v1/projects.topics#Topic).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :payloadFormat => String.t() | nil,
          :topicName => String.t() | nil
        }

  field(:payloadFormat)
  field(:topicName)
end

defimpl Poison.Decoder, for: GoogleApi.AlertCenter.V1beta1.Model.CloudPubsubTopic do
  def decode(value, options) do
    GoogleApi.AlertCenter.V1beta1.Model.CloudPubsubTopic.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AlertCenter.V1beta1.Model.CloudPubsubTopic do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
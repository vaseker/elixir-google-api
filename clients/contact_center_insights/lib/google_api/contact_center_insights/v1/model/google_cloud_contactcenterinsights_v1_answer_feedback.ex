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

defmodule GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1AnswerFeedback do
  @moduledoc """
  The feedback that the customer has about a certain answer in the conversation.

  ## Attributes

  *   `clicked` (*type:* `boolean()`, *default:* `nil`) - Indicates whether an answer or item was clicked by the human agent.
  *   `correctnessLevel` (*type:* `String.t`, *default:* `nil`) - The correctness level of an answer.
  *   `displayed` (*type:* `boolean()`, *default:* `nil`) - Indicates whether an answer or item was displayed to the human agent in the agent desktop UI.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clicked => boolean() | nil,
          :correctnessLevel => String.t() | nil,
          :displayed => boolean() | nil
        }

  field(:clicked)
  field(:correctnessLevel)
  field(:displayed)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1AnswerFeedback do
  def decode(value, options) do
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1AnswerFeedback.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1AnswerFeedback do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
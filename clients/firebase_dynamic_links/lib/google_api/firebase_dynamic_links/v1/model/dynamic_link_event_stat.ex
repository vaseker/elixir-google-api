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

defmodule GoogleApi.FirebaseDynamicLinks.V1.Model.DynamicLinkEventStat do
  @moduledoc """
  Dynamic Link event stat.

  ## Attributes

  *   `count` (*type:* `String.t`, *default:* `nil`) - The number of times this event occurred.
  *   `event` (*type:* `String.t`, *default:* `nil`) - Link event.
  *   `platform` (*type:* `String.t`, *default:* `nil`) - Requested platform.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :count => String.t() | nil,
          :event => String.t() | nil,
          :platform => String.t() | nil
        }

  field(:count)
  field(:event)
  field(:platform)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseDynamicLinks.V1.Model.DynamicLinkEventStat do
  def decode(value, options) do
    GoogleApi.FirebaseDynamicLinks.V1.Model.DynamicLinkEventStat.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseDynamicLinks.V1.Model.DynamicLinkEventStat do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

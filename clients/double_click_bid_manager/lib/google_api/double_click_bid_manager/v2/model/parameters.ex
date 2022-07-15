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

defmodule GoogleApi.DoubleClickBidManager.V2.Model.Parameters do
  @moduledoc """
  Parameters of a query or report.

  ## Attributes

  *   `filters` (*type:* `list(GoogleApi.DoubleClickBidManager.V2.Model.FilterPair.t)`, *default:* `nil`) - Filters used to match traffic data in your report.
  *   `groupBys` (*type:* `list(String.t)`, *default:* `nil`) - Data is grouped by the filters listed in this field.
  *   `metrics` (*type:* `list(String.t)`, *default:* `nil`) - Metrics to include as columns in your report.
  *   `options` (*type:* `GoogleApi.DoubleClickBidManager.V2.Model.Options.t`, *default:* `nil`) - Additional query options.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of the report. The type of the report will dictate what dimesions, filters, and metrics can be used.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :filters => list(GoogleApi.DoubleClickBidManager.V2.Model.FilterPair.t()) | nil,
          :groupBys => list(String.t()) | nil,
          :metrics => list(String.t()) | nil,
          :options => GoogleApi.DoubleClickBidManager.V2.Model.Options.t() | nil,
          :type => String.t() | nil
        }

  field(:filters, as: GoogleApi.DoubleClickBidManager.V2.Model.FilterPair, type: :list)
  field(:groupBys, type: :list)
  field(:metrics, type: :list)
  field(:options, as: GoogleApi.DoubleClickBidManager.V2.Model.Options)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickBidManager.V2.Model.Parameters do
  def decode(value, options) do
    GoogleApi.DoubleClickBidManager.V2.Model.Parameters.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickBidManager.V2.Model.Parameters do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
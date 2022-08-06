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

defmodule GoogleApi.CloudSearch.V1.Model.SelectionControl do
  @moduledoc """


  ## Attributes

  *   `items` (*type:* `list(GoogleApi.CloudSearch.V1.Model.SelectionItem.t)`, *default:* `nil`) - For radio button, at most one of the items will be selected.
  *   `label` (*type:* `String.t`, *default:* `nil`) - Label used to be displayed ahead of the selection control. It is optional.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the text field which is will be used in FormInput.
  *   `onChange` (*type:* `GoogleApi.CloudSearch.V1.Model.FormAction.t`, *default:* `nil`) - If specified, form is submitted when selection changed. If not specified, developer will need to specify a separate button.
  *   `type` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :items => list(GoogleApi.CloudSearch.V1.Model.SelectionItem.t()) | nil,
          :label => String.t() | nil,
          :name => String.t() | nil,
          :onChange => GoogleApi.CloudSearch.V1.Model.FormAction.t() | nil,
          :type => String.t() | nil
        }

  field(:items, as: GoogleApi.CloudSearch.V1.Model.SelectionItem, type: :list)
  field(:label)
  field(:name)
  field(:onChange, as: GoogleApi.CloudSearch.V1.Model.FormAction)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.SelectionControl do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.SelectionControl.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.SelectionControl do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
class AccessControl < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    ip               :string
    description      :string
    internet_allowed :boolean
    bw_rate          :integer
    bw_max           :integer
    timestamps
  end

  belongs_to :bw_class

  def name
    ip
  end

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end

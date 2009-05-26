class BwClass < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name     :string
    bw_rate  :integer
    bw_max   :integer
    priority :integer
    timestamps
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

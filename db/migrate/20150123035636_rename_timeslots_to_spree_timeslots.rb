class RenameTimeslotsToSpreeTimeslots < ActiveRecord::Migration
  def change
    rename_table :timeslots, :spree_timeslots
  end
end

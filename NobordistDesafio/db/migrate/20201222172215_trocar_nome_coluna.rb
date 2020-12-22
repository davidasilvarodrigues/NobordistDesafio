class TrocarNomeColuna < ActiveRecord::Migration[6.0]
  def change
    rename_column :veiculos, :modelo, :modelo
  end
end

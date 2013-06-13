module Admin::Resources::DataTypes::ScopeFilterHelper

  def scope_filter_selection(filter)
    items = [[Typus::I18n.t("Show by %{attribute}", :attribute => filter.to_s.underscore), ""]]
    items += set_context.send(key.to_s.pluralize).to_a
  end

end

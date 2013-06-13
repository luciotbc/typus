module Admin::Resources::DataTypes::ScopeFilterHelper

  def scope_filter_selection(filter)
    items = [[Typus::I18n.t("Show by %{attribute}", :attribute => filter.underscore), ""]]
    items += set_context.send(key.to_s.pluralize).to_a
  end

end

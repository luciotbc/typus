module Admin::Resources::DataTypes::ScopeFilterHelper

  def scope_filter_selection(filter)
    items = [[Typus::I18n.t("Show by %{attribute}", :attribute => filter.to_s.humanize.downcase), ""]]
    items += set_context.send(filter.to_s.pluralize).to_a
  end

end

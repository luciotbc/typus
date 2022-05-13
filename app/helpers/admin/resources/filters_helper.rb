module Admin::Resources::FiltersHelper

  def build_filters(resource = @resource, params = self.params)
    if (typus_filters = resource.typus_filters(admin_user.role)).any?
      locals = {}

      locals[:filters] = typus_filters.map do |key, value|
                           { :key => set_filter(key, value),
                             :value => send("#{value}_filter", key) }
                         end

      rejections = %w(controller action locale utf8 sort_order order_by) + locals[:filters].map { |f| f[:key] }
      locals[:hidden_filters] = params.to_unsafe_h.delete_if { |k, _| rejections.include?(k) }

      locals[:scope_filters] = resource.get_typus_scope_filters(admin_user.role).map do |key, value|
                                 { key: key,
                                   value: scope_filter_selection(key) }
                               end

      rejections = %w(controller action locale utf8 sort_order order_by page) + locals[:filters].map { |f| f[:key] } + locals[:scope_filters].map { |f| f[:key].to_s }
      locals[:hidden_filters] = params.to_unsafe_h.delete_if { |k, _| rejections.include?(k) }
      render "helpers/admin/resources/filters", locals
    end
  end

  def set_filter(key, value)
    return key unless value == :belongs_to

    att_assoc = @resource.reflect_on_association(key.to_sym)
    class_name = att_assoc.options[:class_name] || key.capitalize.camelize
    resource = class_name.constantize
    att_assoc.foreign_key
  end

end

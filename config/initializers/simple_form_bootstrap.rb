# Use this setup block to configure all options available in SimpleForm.
SimpleForm.setup do |config|
  config.error_notification_class = 'alert alert-danger'
  config.button_class = 'btn btn-primary'
  config.boolean_label_class = nil

  config.wrappers :horizontal_form, tag: 'div', class: 'form-group', error_class: 'has-danger' do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :label

    b.wrapper tag: 'div' do |ba|
      ba.use :input, class: 'form-control', error_html: { class: 'form-control-danger' }
      ba.use :error, wrap_with: { tag: 'span', class: 'form-control-label' }
      ba.use :hint,  wrap_with: { tag: 'p', class: 'form-text text-muted' }
    end
  end

end

get '/*' do |path|
  resource = Module.const_get( path.split('_').map(&:capitalize).join ) rescue false
  if resource
    @title = resource.name
    @columns = resource.column_names
    @resources = resource.all
    erb :index
  else
    return "Sorry can't find that model"
  end
end

class BlogDatatable < AjaxDatatablesRails::ActiveRecord

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      # id: { source: "User.id", cond: :eq },
      # name: { source: "User.name", cond: :like }
      id:          { source: "Blog.id" },
      title:       { source: "Blog.title" },
      description: { source: "Blog.description" },
      comments:    { source: "Blog.comments", searchable: false },
      tag:         { source: "Blog.tag" },
    }
  end

  def data
    records.map do |record|
      {
          id:          record.id,
          title:       record.title,
          description: record.description,
          comments:    record.comments,
          tag:         record.tag,
          DT_RowId:    record.id,
      }
    end
  end

  def get_raw_records
    Blog.all
  end

end

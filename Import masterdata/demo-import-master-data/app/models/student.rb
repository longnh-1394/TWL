class Student < ApplicationRecord
  class << self
    def import_file file
    # file có thể ở dạng file hoặc là path của file đều được xử lý chính xác bởi method open
      spreadsheet = Roo::Spreadsheet.open file
      # lấy cột header (column name)
      header = spreadsheet.row 1
      (2..spreadsheet.last_row).each do |i|
        # lấy ra bản ghi và biến đổi thành hash để có thể tạo record tương ứng
        row = [header, spreadsheet.row(i)].transpose.to_h
        create! row
      end
    end
  end
end

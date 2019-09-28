class Task < ApplicationRecord
  enum priority: {
    低:0, 高:1
  }
  
  enum status: {
    未着手:0, 処理中:1, 完了:2
  }
end

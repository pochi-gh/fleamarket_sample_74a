class State < ActiveHash::Base
  self.data = [
    {id: 1, name: '新品、未使用'}, {id: 2, name: '未使用に近い'}, {id: 3, name: 'やや傷や汚れあり'},
    {id: 4, name: '傷や汚れあり'}, {id: 5, name: '全体的に状態が悪い'}
  ]
end
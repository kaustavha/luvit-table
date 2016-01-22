local table = require('./main').table
local safeMerge = table.safeMerge

require('tap')(function(test)
  test('Test for safeMerge: string insert', function()
    local a = {}
    local expected = {'string'}
    safeMerge(a, 'string')
    assert(a[1] == 'string')
  end)
  test('Test for safeMerge: merge', function()
    local expected = {a = 'string1', b = 'string2'}
    local a = {}
    a.a = 'string1'
    local b = {}
    b.b = 'string2'
    safeMerge(a, b)
    assert(a.a == 'string1')
    assert(a.b == 'string2')
  end)

  test('Test for safeMerge: nil', function()
    local a = {}
    local expected = {}
    safeMerge(a, nil)
    assert(not next(a))
  end)
end)

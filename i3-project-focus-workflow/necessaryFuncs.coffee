_ = require('lodash')

getValidWorkspaceNums = (wkList, num) ->
  num = +num
  wkNums = _.pluck(wkList,'num')
  if wkNums.length == 0
    return(undefined)
  maxWKNum = _.max(wkNums)
  fullWKNums = [0..(maxWKNum-1)]
  goodWKNums  = _.difference(fullWKNums, wkNums)
  if num <= goodWKNums.length
    return goodWKNums[0..(num-1)]
  else
    return goodWKNums.concat ([(maxWKNum + 1)..(maxWKNum + num - goodWKNums.length)])

module.exports = getValidWorkspaceNums;
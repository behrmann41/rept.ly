module.exports = {
 formatRes: function(items){
   var res = {
     "data": []
   }
   items.forEach(function(item){
     res.data.push({
       "type": item,
       "id": item.id,
       "attributes": {
         "old_days": item.old_days,
         "these_days": item.these_days,
         "year": item.year
       }
     })
   })
   return res;
 }
}

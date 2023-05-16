%dw 2.0
output application/json
---
{
variation: payload.productVariantOptions map ((item, index) -> {
   id : item.optionId,
   value: item.optionValue pluck ((value, key, index) -> {
   name: key,
   value: item.optionValue[key]
})
})
}


//as per the requested output we have used map function to map the optionId and with the use of pluck function we have created different objects and their values.
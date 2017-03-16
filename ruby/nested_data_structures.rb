suitcase = {
  toiletry_bag: {
      makeup_bag: [
        "face moisturizer", 
        "mascara", 
        "brush"],
      medicine_bag: [
        "aleve",
        "tea tree oil"]
   },
   clothing_bag: {
      clean_clothes: [
        "sweater",
        "jeans",
        "shirt"],
      dirty_clothes: [
      ],
   },
   shoe_bag: {
      shoes: [
        "sneakers",
        "boots"],
      socks: [
        "ankle cut",
        "fuzzy"]
   }
}

p suitcase[:shoe_bag][:shoes][1]

p suitcase[:toiletry_bag][:makeup_bag]

p suitcase[:clothing_bag][:clean_clothes].reverse

p suitcase[:shoe_bag][:socks][0].upcase

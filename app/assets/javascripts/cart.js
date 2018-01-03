charged()
getPrice = /\d+(.|,)\d/
$("li input").on("change",function () {
    charged()
})
function charged(){
    totalPrice = 0
    price = document.getElementsByClassName("price");
    quantity = document.getElementsByClassName("quantity");
    for (var i = 0; i < price.length; i++){
        totalPrice =totalPrice +  parseFloat(getPrice.exec(price[i].textContent)[0]) * parseFloat(quantity[i].value)
    }
    $("#total").html("Tổng tiền : " + totalPrice)
}
function update_cart(){
    id = $(".col-sm-6 ul li");
    idArray = []
    price = document.getElementsByClassName("price");
    quantity = document.getElementsByClassName("quantity");
    quantityArray = []
    priceArray = []
    for(var i =0; i < id.length;i++){
        idArray.push(id[i].id)
        quantityArray.push(quantity[i].value)
    }
    return {
        idarr: idArray,
        quanarr: quantityArray
    };

}
$(".btn-success").on("click",function () {
    console.log("done")
    var ids = update_cart().idarr
    var quantitys = update_cart().quanarr;
    $.ajax({
        url: "/carts",
        type: "put",
        dataType: "json",
        data: {cart:{id: ids,quantity: quantitys}},
        success: function (res) {
            console.log(res.status)
        }
    })
})
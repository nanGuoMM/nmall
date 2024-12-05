// 模拟购物车数据
let cart = [];

// 从服务器加载购物车数据
function loadCart() {
    // 模拟AJAX获取购物车数据
    const xhr = new XMLHttpRequest();
    xhr.open("GET", "/cart-data", true);
    xhr.onload = function() {
        if (xhr.status === 200) {
            cart = JSON.parse(xhr.responseText);
            renderCart();
        }
    };
    xhr.send();
}

// 渲染购物车内容
function renderCart() {
    const cartTableBody = document.querySelector("#cart-table tbody");
    const totalPriceElement = document.getElementById("total-price");

    cartTableBody.innerHTML = ""; // 清空表格内容
    let totalPrice = 0;

    cart.forEach((item, index) => {
        const row = document.createElement("tr");
        row.innerHTML = `
            <td>${item.productName}</td>
            <td>￥${item.price.toFixed(2)}</td>
            <td>${item.quantity}</td>
            <td>￥${(item.price * item.quantity).toFixed(2)}</td>
            <td>
                <button onclick="updateQuantity(${index}, 1)">+</button>
                <button onclick="updateQuantity(${index}, -1)">-</button>
            </td>
        `;
        cartTableBody.appendChild(row);

        totalPrice += item.price * item.quantity;
    });

    totalPriceElement.textContent = totalPrice.toFixed(2);
}

// 更新商品数量
function updateQuantity(index, change) {
    // 更新本地数据
    cart[index].quantity += change;

    if (cart[index].quantity <= 0) {
        cart.splice(index, 1); // 数量为0时移除商品
    }

    renderCart(); // 重新渲染购物车

    // 向服务器发送更新请求
    const xhr = new XMLHttpRequest();
    xhr.open("POST", "/update-cart", true);
    xhr.setRequestHeader("Content-Type", "application/json");
    xhr.send(JSON.stringify(cart));
}

// 初始化加载购物车
loadCart();

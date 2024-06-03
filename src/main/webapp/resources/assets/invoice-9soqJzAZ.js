(function(){let n=document.querySelector(".check-all");n.addEventListener("click",i);function i(){n.checked?document.querySelectorAll(".invoice-checkbox input").forEach(function(e){e.closest(".invoice-list").classList.add("selected"),e.checked=!0}):document.querySelectorAll(".invoice-checkbox input").forEach(function(e){e.closest(".invoice-list").classList.remove("selected"),e.checked=!1})}document.querySelectorAll(".invoice-add-item").forEach(e=>{e.onclick=()=>{let c=`<tr class="invoice-list"> 
        <td>
            <input type="number" class="form-control form-control-lg" placeholder="1">
        </td>
        <td>
            <input type="text" class="form-control form-control-lg" placeholder="Product Nme">
        </td>
        <td class="invoice-quantity-container">
            <div class="input-group border rounded flex-nowrap">
                <button class="btn btn-icon btn-primary input-group-text flex-fill product-quantity-minus"><i class="ri-subtract-line"></i></button>
                <input type="text" class="form-control form-control-sm border-0 text-center w-100" aria-label="quantity" id="product-quantity4" value="1">
                <button class="btn btn-icon btn-primary input-group-text flex-fill product-quantity-plus"><i class="ri-add-line"></i></button>
            </div>
        </td>
        <td><input class="form-control form-control-lg" placeholder="" type="number"></td>
        <td><input class="form-control form-control-lg" placeholder="Total Amount" type="text" ></td>
        <td>
            <button class="invoice-btn btn btn-sm btn-icon btn-danger-light"><i class="ri-delete-bin-5-line"></i></button>
        </td>
    </tr> `;document.querySelectorAll(".invoice-body").forEach(s=>{let l=document.createElement("tr");l.classList.add("invoice-list"),l.innerHTML=c,s.appendChild(l)})}});var t=1,r=0,u=30;let d=document.querySelectorAll(".product-quantity-minus"),a=document.querySelectorAll(".product-quantity-plus");d.forEach(e=>{e.onclick=()=>{t=Number(e.parentElement.childNodes[3].value),t>r&&(t=Number(e.parentElement.childNodes[3].value)-1,e.parentElement.childNodes[3].value=t)}}),a.forEach(e=>{e.onclick=()=>{t<u&&(t=Number(e.parentElement.childNodes[3].value)+1,e.parentElement.childNodes[3].value=t)}}),document.addEventListener("DOMContentLoaded",function(){var e=document.querySelectorAll("[data-trigger]");for(let o=0;o<e.length;++o){var c=e[o];new Choices(c,{allowHTML:!0,searchEnabled:!1,removeItemButton:!0})}}),document.querySelectorAll(".invoice-btn").forEach(e=>{e.onclick=()=>{console.log("dfkshdfiuh"),document.querySelectorAll(".tooltip").forEach(o=>{o.remove()}),e.closest(".invoice-list").remove()}}),document.getElementById("invoice-create").onclick=()=>{document.querySelector(".invoice-title").innerHTML="Create Invoice"}})();

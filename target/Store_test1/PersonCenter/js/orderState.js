// function ChangeOrderState(BookId,state) {
//     var xhr=new XMLHttpRequest();
//     xhr.open("post","/order/ChangeOrderStateByBookId");
//     xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
//     xhr.send("BookId="+BookId+"&state="+state);
//     xhr.onreadystatechange=function (){
//         if(xhr.readyState==4&&xhr.status==200){
//             if(xhr.responseText=="true"){
//                 var div=document.getElementById("div"+i);
//                 div.parentNode.removeChild(div);
//             }else {
//
//                 alert("LOST!");
//             }
//         }
//     }
// }
// function delete(){
//
// }
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//function updateRecruitJob(id, obj){
//    event.preventDefault();
//    
//    fetch("/JobHuntingWebsite/recruit-RecruitJob/", {
//        method: 'put',
//        body: JSON.stringify({
//            "id": id,
//            "quantity": parseInt(obj.value)
//        }),
//        headers: {
//            "Content-Type": "application/json"
//        }
//    }).then(function(res){
//        return res.json();
//    }).then(function(data){
//        let d = document.getElementsByClassName("cartCounter");
//        for (let i = 0; i< d.length; i++)
//            d[i].innerText = data.totalQuantity;
//        
//        let a = document.getElementById("amountId");
//        a.innerText = data.totalAmount;
//    }).catch(function(err){
//        console.error(err);
//    });
//}

function deleteRecruitJob(id) {
    event.preventDefault();
    if (confirm("Confirm Delete?") === true) {
        fetch("/JobHuntingWebsite/api/delete-recruitJob/{id}", {
            method: 'delete',
            headers: {
                "Content-Type": "application/json"
            }
        }).then(res => {
            if (res.status === 200) {
                location.reload();
            } else
                alert("Error!!");
        })
    }
}


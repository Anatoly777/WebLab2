function x_checkbox_click(id){
    let checkboxes = document.getElementsByName('x_checkbox')
    for (let i = 0; i < checkboxes.length; i++) {
        if (checkboxes[i].id !== id) {
            checkboxes[i].checked = false
        }
    }
}

function get_x(){
    let x = -3
    document.getElementsByName("x_checkbox").forEach(checkbox => {
        if (checkbox.checked) {
            x = checkbox.value
        }
    })
    return x
}
function check_input_numeric(string) {
    if (string.length > 5) return false
    return !isNaN(parseFloat(string));

}

function check_y(y) {
    return -5 <= y && 5 >= y;
}

function check_r(r) {
    return 1 <= r && 5 >= r;
}

function check_x() {
    let checkboxes = document.getElementsByName("x_checkbox")
    let isChecked = false
    checkboxes.forEach(checkbox => {
        if (checkbox.checked === true) {
            isChecked = true
        }
    })
    return isChecked
}

function shoot_request(x, y, r){
    let request = new XMLHttpRequest();
    request.open('get', "./controller?x="+x+"&y="+y+"&r="+r, true)
    request.overrideMimeType("text/html");
    request.onload = function () {
        let text = request.responseText
        add_table_row(text)
        render_canvas(r)
    }
    request.send()
    sleep(300)
    location.reload()
    sleep(300)
    render_canvas(r)
    sleep(300)
    r_input_click()
}

function sleep(milliseconds) {
    const date = Date.now();
    let currentDate = null;
    do {
        currentDate = Date.now();
    } while (currentDate - date < milliseconds);
}

function shoot() {
    let x = get_x()
    let y = document.getElementById("y_input").value
    let r = get_r()
    if (!check_input_numeric(y)) {
        alert("Недопустимые данные в форме");
        return
    }
    if (!check_x() || !check_y(y) || !check_r(r)) {
        alert("Введённые данные выходят за допустимые пределы");
        return
    }
    shoot_request(x, y, r)


}
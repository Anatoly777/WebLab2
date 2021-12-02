
function r_input_click(){
    let r = get_r()
    if (1 <= r && 5 >= r){render_canvas(get_r())}
    else {render_canvas(0)}
}

function get_r(){
    return document.getElementById("r_input").value
}
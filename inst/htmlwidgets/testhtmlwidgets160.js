HTMLWidgets.widget({

  name: 'testhtmlwidgets160',

  type: 'output',

  factory: function(el, width, height) {

    // TODO: define shared variables for this instance

    return {

      renderValue: function(x) {
        el.innerText = x.message;
        el.style.backgroundColor = "red";
        el.style.color = "white";
        el.style.padding = "10px";
        el.style.fontFamily = "sans-serif";
        el.style.fontSize = "20px";
        el.style.boxSizing = "border-box";
        el.style.border = "3px solid green";
        // Add a div that contains the width and height of the widget
        var div = document.createElement("div");
        div.id = "dimensions";
        el.appendChild(div);
        // Write the initial width and height to the dimensions div
        div.innerText = "width: " + width + ", height: " + height + " (initial)";
      },

      resize: function(width, height) {
        console.log("width: ", width);
        console.log("height: ", height);
        // write given width and height to the dimensions div
        var div = document.getElementById("dimensions");
        div.innerText = "width: " + width + ", height: " + height + " (resized)";
      }

    };
  }
});

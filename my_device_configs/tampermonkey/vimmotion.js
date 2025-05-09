// ==UserScript==
// @name         Vim Motion
// @namespace    http://tampermonkey.net/
// @version      2025-05-09
// @description  try to take over the world!
// @author       You
// @match        http*://*/*
// @icon         data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==
// @grant        none
// ==/UserScript==


function keydownfunction(event){
    let key = event.key;
    let whatyoudoing = event.target.tagName;
    if( whatyoudoing == 'INPUT' || whatyoudoing == 'SELECT' || whatyoudoing == 'TEXTAREA' || event.target.isContentEditable){
        return;
    }

    //key = key.toLowerCase();


    let VerticalJump = 200;
    let HorizantalJump = 50;

    if(event.shiftKey && event.controlKey){
        let VerticalJump = 400;
        let HorizantalJump = 100;
    }

    if(key == "k"){//UP
        console.log("UP");
        window.scrollY -= VerticalJump;
        event.preventDefault();
        event.stopImmediatePropagation();

    }else if(key == "j"){ //down
        console.log("DOWN");
        window.scrollY += VerticalJump;
        event.preventDefault();
        event.stopImmediatePropagation();

    }else if(key == "l"){//right
        console.log("RIGHT");
        window.scrollX += HorizantalJump;
        event.preventDefault();
        event.stopImmediatePropagation();

    }else if(key == "h"){//left
        console.log("LEFT");
        window.scrollX -= HorizantalJump;
        event.preventDefault();
        event.stopImmediatePropagation();
    }
        window.scrollTo(window.scrollX,window.scrollY)

}


document.addEventListener("keydown",keydownfunction,true);

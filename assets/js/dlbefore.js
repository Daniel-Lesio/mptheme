var target = document.querySelectorAll('.sub-menu');
Array.prototype.forEach.call(target, function(element){
    element.removeAttribute('style');
});



const topMenuBtns = document.querySelectorAll("#top-menu")
topMenuBtns.forEach(btn =>{
    btn.addEventListener("mouseover", el=>{
         const menusy = document.querySelectorAll(".sub-menu")
         let y = topMenuBtns[0].getBoundingClientRect().bottom
         console.log(y)
         menusy.forEach(el=>{
            el.style.cssText = `
            top : ${y}px!important; 
            position : fixed!important; 
            width:90vw!important;
            transform : translateX(-50%);
            left: 50%;
            overflow-y: auto;
            height : auto;
            padding-bottom : 50px
            `
         })
        
    })

})
const topM = document.querySelector("#top-menu")
topM.addEventListener("mouseover", ()=>{

}) 
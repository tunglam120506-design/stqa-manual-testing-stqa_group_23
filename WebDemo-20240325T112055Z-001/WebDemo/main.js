/* document.addEventListener("DOMContentLoaded", function(){
    const productCopy = document.querySelector(".product-copy");
    const productImage = document.querySelector(".product-img img");
    const segmentHeight = (productCopy.scrollHeight - window.innerHeight) / 8;

    window.addEventListener("scroll", function(){
        let currentSegment = Math.floor(window.scrollY / segmentHeight) + 1;
        currentSegment = Math.min(9, Math.max(1, currentSegment));
        productImage.src = "./" + currentSegment + ".png";

    });
});

document.addEventListener("DOMContentLoaded", function(){
    function randomCharacter() {
        const chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        return chars[Math.floor(Math.random() * chars.length)];

    }

    function setInitialDataTextAttribute() {
        const paragraphs = document.querySelectorAll("p");
        paragraphs.forEach((p) => {
            const textContent = p.textContent.trim();
            if(!p.getAttribute("data-text") && textContent){
                p.setAttribute("data-text", textContent);
                p.textContent = "";
            }
        });
    }
    function revealedText(element)
{
    const originalText = element.getAttribute("data-text");
}

    function revealNextLetter(){
        if(index < orginalText.length){
            revealedText += originalText[index];
            let tempText = revealedText;

            for(let i = index + 1; i<originalText.length; i++){
                tempText += randomCharacter();
            }
            element.textContent = tempText;
            index++;

            setTimeout(revealNextLetter, 50);

        } else{
            element.textContent = originalText;
        }
        
    }
}); */



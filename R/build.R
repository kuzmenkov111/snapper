build_call <- function(type,arg,opts,ui){

  if(nzchar(opts)){
    opts <- sprintf(',%s',opts)
  }

  sprintf(canvas_template, ui, opts, call_contents(type,arg))

}

call_contents <- function(type = c('preview','download'),arg){

  switch(type,
         'preview' = {
           sprintf('var img = document.createElement("img");
                    img.src = canvas.toDataURL("png");
                    img.width = parseInt(canvas.style.width);
                    img.height = parseInt(canvas.style.height);
                    $("#%s").empty();
                    $("#%s").append(img);',
                   arg,arg)
         },
         'download' = {
           sprintf('saveAs(canvas.toDataURL("png"), "%s");',arg)
         })

}

canvas_template <- '(function () {
    html2canvas($("%s")[0]%s).then(canvas=>{
      %s
    });
    })();'

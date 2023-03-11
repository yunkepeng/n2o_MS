#a function to combine multiple visreg figures
visreg_ggplot <- function(obj,var_name,color1,color2,xlab_name,ylab_name){
  final1 <- ggplot() + geom_line(data = obj, aes_string(var_name, "visregFit", group="plt", color="plt"),size=2) +
    theme_classic()+theme(text = element_text(size=20),legend.position="none")+
    geom_ribbon(data = obj,aes_string(var_name, ymin="visregLwr", ymax="visregUpr",fill="plt"),alpha=0.5)+
    scale_colour_manual(values=c(Measurement=color1,LPX=color2))+
    scale_fill_manual(values=c(Measurement=color1,LPX=color2))+xlab(xlab_name) + ylab(ylab_name)
  
  return(final1)
}